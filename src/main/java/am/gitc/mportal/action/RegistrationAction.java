package am.gitc.mportal.action;

import am.gitc.mportal.domain.*;
import am.gitc.mportal.manager.CountryManager;
import am.gitc.mportal.manager.UserManager;
import am.gitc.mportal.util.Global_Keys;
import com.opensymphony.xwork2.ActionSupport;
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
public class RegistrationAction extends ActionSupport {


    private User user;
    private Category category;
    private UserManager userManager;
    private CountryManager countryManager;

    public RegistrationAction() {
        userManager = new UserManager();
        countryManager = new CountryManager();
    }

    @Override
    public String execute() throws Exception {
System.out.println(user.getPassword());
        return SUCCESS;
    }


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;

    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
