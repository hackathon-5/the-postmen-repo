package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "app_user")
public class AppUser extends Model {

    public static Finder<Long,AppUser> find = new Finder<Long,AppUser>(
        Long.class, AppUser.class
    );


    @Id
    public Long id;

    public String email;

    public String password;

    public String userType;
}
