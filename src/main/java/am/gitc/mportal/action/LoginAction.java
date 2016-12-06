package am.gitc.mportal.action;

import am.gitc.mportal.action.GlobalAction;
import am.gitc.mportal.action.utils.MD5;
import am.gitc.mportal.dao.impl.UserDaoImpl;
import am.gitc.mportal.domain.User;
import am.gitc.mportal.util.Global_Keys;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import org.apache.struts2.interceptor.validation.SkipValidation;

import java.util.Map;

/**
 * Created by admin on 11/14/2016.
 */
public class LoginAction extends GlobalAction {

    private String login;
    private String password;
    private UserDaoImpl userDaoImpl;

    public LoginAction() throws Exception {
        userDaoImpl = new UserDaoImpl();

    }

    public String execute() throws Exception {
        User user = userDaoImpl.getUserByEmailPassword(login, MD5.encryptPassword(password));
        mapSession.put(Global_Keys.LOGIN, user.getId());
        System.out.println(mapSession.get(Global_Keys.LOGIN));
        return "success";
    }

    @SkipValidation
    public String logout() {
        Map session = ActionContext.getContext().getSession();
        session.remove(Global_Keys.LOGIN);
        return SUCCESS;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public void validate() {
        try {
            User user = userDaoImpl.getUserByEmailPassword(login, MD5.encryptPassword(password));
            if (login.length() != 0 && password.length() != 0 && user == null) {
                addFieldError("login", "Your login or password is invalid");
            } else if (user != null && !user.isActive()) {
                addFieldError("login", "Please activate your profile ");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
