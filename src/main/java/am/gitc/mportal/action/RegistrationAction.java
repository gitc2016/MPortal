package am.gitc.mportal.action;

import am.gitc.mportal.domain.Country;
import am.gitc.mportal.domain.Gender;
import am.gitc.mportal.domain.Role;
import am.gitc.mportal.domain.User;
import am.gitc.mportal.manager.CountryManager;
import am.gitc.mportal.manager.UserManager;
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
public class RegistrationAction extends GlobalAction {

    private String from = "student.gitc.2016@gmail.com";
    private String fromPassword = "student2016";
    private String name;
    private String surname;
    private String email;
    private String password;
    private String confirmPassword;
    private String role;
    private String country;
    private String gender;
    private Date date;
    private String hashcode;
    private String id;
    UserManager userManager;
    CountryManager countryManager;

    public RegistrationAction() {
        userManager = new UserManager();
        countryManager = new CountryManager();
    }

    public String getName() {
        return name;
    }

    @RequiredStringValidator(message = "Please enter your  name")
    @StringLengthFieldValidator(minLength = "2", maxLength = "20", message = "Please enter valid name")
    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    @RequiredStringValidator(message = "Please enter your surname.")
    @StringLengthFieldValidator(minLength = "2", maxLength = "20", message = "Please enter valid surname")
    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    @RequiredStringValidator(message = "Please enter your e-mail.")
    @EmailValidator(message = "Please enter valid e-mail")
    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    @RequiredStringValidator(message = "Please enter your password.")
    @RegexFieldValidator(regex = "[A-Z,a-z,0-9]{8,20}", message = "This password is not valid")
    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    @RequiredStringValidator(message = "Please enter your password.")
    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getHashcode() {
        return hashcode;
    }

    public void setHashcode(String hashcode) {
        this.hashcode = hashcode;
    }

    public Date getDate() {
        return date;
    }

    @DateRangeFieldValidator(max = "01/01/1999", message = "Please enter valid birthday")
    public void setDate(Date date) {
        this.date = date;
    }


    static Properties properties = new Properties();

    static {
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.socketFactory.port", "465");
        properties.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.port", "465");
    }


    private String sendEmail(User user) {
        String ret = SUCCESS;
        try {
            Session session = Session.getDefaultInstance(properties,
                    new javax.mail.Authenticator() {
                        protected PasswordAuthentication
                        getPasswordAuthentication() {
                            return new
                                    PasswordAuthentication(from, fromPassword);
                        }
                    });

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(email));
            message.setSubject("MPortal");
            message.setText("Please enter this code http://localhost:8085/pages/mailRegister.action?hashcode=" + MD5.getMd5(password) + "   that you will be able to register in MPortal page");
            Transport.send(message);
        } catch (Exception e) {
            ret = ERROR;
            e.printStackTrace();
        }
        return ret;
    }

    @Override
    public String execute() throws Exception {
        Country country = countryManager.getCountryById(1);
        User user = new User(name, surname, email, MD5.getMd5(password), "gr", Role.valueOf(role), Gender.valueOf(gender), country, date, true, false);
        userManager.add(user);
        sendEmail(user);
        if ("error".equals(sendEmail(user))) {
            return ERROR;
        }
        return SUCCESS;
    }

    @SkipValidation
    public String add() {
        User user = userManager.getUserByHashCode(hashcode);
//        String getHashcode=user.getPassword();
//        if (hashcode.equals(getHashcode)){
//            user.setIs_register(true);
//            userManager.updateIs_register(user);
//            return SUCCESS;
//        }
//            return LOGIN;
        if (user != null) {
            user.setIs_register(true);
            userManager.updateIs_register(user);
            return SUCCESS;
        }
        return LOGIN;


    }


    @Override
    public void validate() {
        if (!MD5.getMd5(password).equals(MD5.getMd5(confirmPassword))) {
            addFieldError("confirmPassword", "Confirm password is not valid");
        }
        if (userManager.isEmailExist(email)) {
            addFieldError("email", "This email is already exist");
        }
    }

}
