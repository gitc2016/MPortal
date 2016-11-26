package am.gitc.mportal.action;

import am.gitc.mportal.domain.*;
import am.gitc.mportal.manager.CountryManager;
import am.gitc.mportal.manager.UserManager;
import am.gitc.mportal.util.Global_Keys;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.validator.annotations.*;
import org.apache.struts2.interceptor.validation.SkipValidation;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;

/**
 * Created by Stella on 13.11.2016.
 */
public class RegistrationAction extends ActionSupport implements ModelDriven<User> {

    private User user = new User();
    private String from = "student.gitc.2016@gmail.com";
    private String fromPassword = "student2016";
    private String confirmPassword;
    private String hashcode;
    private String id;
    UserManager userManager;
    CountryManager countryManager;

    public RegistrationAction() {
        userManager = new UserManager();
        countryManager = new CountryManager();
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    @Override
    public String execute() throws Exception {
        System.out.println(user.toString());

        return SUCCESS;
    }

    @Override
    public User getModel() {
        return user;
    }
}
