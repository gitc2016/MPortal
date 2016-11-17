package am.gitc.mportal.action;

import am.gitc.mportal.util.Global_Keys;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;
import org.apache.struts2.interceptor.validation.SkipValidation;

import java.util.Map;

/**
 * Created by admin on 11/14/2016.
 */
public class LoginAction extends GlobalAction {

    private String login;
    private String password;


    public String getLogin() {
        return login;
    }

    @RequiredStringValidator(message = "Please enter login")
    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    @RequiredStringValidator(message = "Please enter password")
    public void setPassword(String password) {
        this.password = password;
    }

    public String execute() {
        return "success";
    }

    @SkipValidation
    public String logout(){
        Map session = ActionContext.getContext().getSession();
        session.remove(Global_Keys.LOGIN);
        return SUCCESS;
    }
}
