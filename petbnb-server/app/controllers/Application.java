package controllers;

import com.avaje.ebean.Ebean;
import com.fasterxml.jackson.databind.JsonNode;
import models.AppUser;
import play.mvc.Controller;
import play.mvc.Result;

import javax.persistence.OptimisticLockException;
import java.util.Date;

public class Application extends Controller {
    
    public static Result index() {
        return ok(views.html.index.render("Hello Play Framework"));
    }

    public static Result test() {
        AppUser user = new AppUser();
        user.setEmail(new Date().getTime() + "@b.com");
        user.setPassword("googlerules");
        user.setUserType("guest");
        Ebean.save(user);
        return ok("WE ARE THREE HANDSOME GENTLEMEN");
    }

//    public static Result createUser(String email, String password) {
//        AppUser user = new AppUser();
//        user.setEmail(email);
//        user.setPassword(password);
//        user.setUserType(type);
//        Ebean.save(user);
//    }

    public static Result getUser(String email) {
//        AppUser user = AppUser.find.where()
//                                    .eq("email", email).findUnique();
        AppUser user = Ebean.find(AppUser.class).where().ilike("email", "%"+email+"%").findUnique();

        if((user != null) && (user.getUserType() != null)) {
            return ok(user.getUserType());
        }
        else {
            return ok("");
        }
    }

    public static Result createUser() {
        String retVal;

        JsonNode json = request().body().asJson();
        String email = json.get("username").textValue();
        String password = json.get("password").textValue();
        String type = json.get("userType").textValue();

        AppUser user = new AppUser();
        user.setEmail(email);
        user.setPassword(password);
        user.setUserType(type);

        try {
            Ebean.save(user);
            retVal = "SUCCESS";
        }
        catch(OptimisticLockException ole) {
            retVal = "ERROR";
        }

        return ok(retVal);
    }

}
