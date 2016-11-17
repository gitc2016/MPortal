package am.gitc.mportal.action;

import am.gitc.mportal.domain.Country;
import am.gitc.mportal.domain.Gender;
import am.gitc.mportal.domain.Role;
import am.gitc.mportal.domain.User;
import am.gitc.mportal.util.Global_Keys;
import com.opensymphony.xwork2.validator.annotations.*;
import org.apache.struts2.interceptor.validation.SkipValidation;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.Random;

/**
 * Created by Stella on 13.11.2016.
 */
public class RegistrationAction extends GlobalAction {

    private  String from = "student.gitc.2016@gmail.com";
    private  String fromPassword="student2016";
    private String name;
    private String surname;
    private String email;
    private String password;
    private String confirmPassword;
    private String role;
    private String country;
    private String gender;
    private long countryId;
    private Random random = new Random();
    private int emailCode = random.nextInt(10000);
    private String mailcode;


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

    @RequiredStringValidator(message = "Please enter your surname.")
    @EmailValidator(message = "Please enter valid mail")
    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    @RequiredStringValidator(message = "Please enter your surname.")
    @RegexFieldValidator(regex = "[A-Z,a-z,0-9]{8,20}", message = "This password is not valid")
    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    @RequiredStringValidator(message = "Please enter your surname.")
    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getRole() {
        return role;
    }

    @RequiredStringValidator(message = "Please enter your role")
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

    @RequiredStringValidator(message = "Please enter your role")
    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMailcode() {
        return mailcode;
    }

    public void setMailcode(String mailcode) {
        this.mailcode = mailcode;
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
            message.setText("Please enter this code" + emailCode + "that you will be able to register in MPortal page");
            Transport.send(message);
        } catch (Exception e) {
            ret = ERROR;
            e.printStackTrace();
        }
        if(!ret.equals(ERROR)) {
            mapSession.put(Global_Keys.REGISTER, user);
        }
        return ret;
    }

    @Override
    public String execute() throws Exception {
        User user = new User();
        Country countries = new Country();
        countries.setName(country);
        user.setName(name);
        user.setSurname(surname);
        user.setEmail(email);
        user.setRole(Role.valueOf(role));
        user.setCountry(countries);
        user.setGender(Gender.valueOf(gender));
        user.setPassword(password);
        user.setRegisterCode(emailCode);
        sendEmail(user);
        return SUCCESS;
    }

    @SkipValidation
    public String add() {
        User user = (User) mapSession.get(Global_Keys.REGISTER);
        System.out.println(user.toString());
        if (user == null) {
            return ERROR;
        }
        if(Integer.parseInt(mailcode)==(user.getRegisterCode())){
            return SUCCESS;
        }
        return INPUT;
    }


    @Override
    public void validate() {
        if (!password.equals(confirmPassword)) {
            addFieldError("confirmPassword", "Confirm password is not valid");
        }
    }


}
