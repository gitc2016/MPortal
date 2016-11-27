package am.gitc.mportal.action;

import am.gitc.mportal.dao.UserDao;
import am.gitc.mportal.domain.User;
import am.gitc.mportal.manager.UserManager;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

/**
 * Created by Lilit on 11/25/2016.
 */
public class UserActions extends ActionSupport implements SessionAware {
    private String name;
    private String surname;
    private String password;
    private Map session;


    public String updateUser() {
        User user = (User) session.get("loggedUser");
        if (user != null) {
            user.setName(name);
            user.setSurname(surname);
            user.setPassword(password);
            UserManager manager = new UserManager();
            manager.updateUser(user);
            return SUCCESS;
//...
        } else {
            return ERROR;

        }
    }

    public String deleteUser() {
        User user = (User) session.get("loggedUser");
        if (user != null) {
            UserManager manager = new UserManager();
            manager.deleteUser(user);
            return SUCCESS;
        }else {
            return ERROR;
        }

    }

    @Override
    public void setSession(Map<String, Object> map) {
        session = map;

    }

    public String getName() {
        return name;
    }

    public void setUsername(String username) {
        this.name = username;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
