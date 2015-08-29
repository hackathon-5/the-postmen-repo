package controllers;

import com.avaje.ebean.Ebean;
import models.AppUser;
import play.mvc.Controller;
import play.mvc.Result;

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

}
