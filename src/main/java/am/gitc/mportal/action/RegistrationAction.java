package am.gitc.mportal.action;

import am.gitc.mportal.action.utils.MD5;
import am.gitc.mportal.dao.impl.CountryDaoImpl;
import am.gitc.mportal.dao.impl.UserDaoImpl;
import am.gitc.mportal.domain.User;
import am.gitc.mportal.domain.Country;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.interceptor.validation.SkipValidation;

/**
 * Created by Stella on 13.11.2016.
 */
public class RegistrationAction extends ActionSupport implements ModelDriven<User> {

    private User user = new User();
    private String hashcode;//TODO request param from url send to user
    UserDaoImpl userDaoImpl;
    CountryDaoImpl countryDaoImpl;
    private int countryId;

    public RegistrationAction() throws Exception {
        userDaoImpl = new UserDaoImpl();
        countryDaoImpl = new CountryDaoImpl();

    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getCountryId() {
        return countryId;
    }

    public void setCountryId(int countryId) {
        this.countryId = countryId;
    }

    @Override
    public User getModel() {
        return user;
    }

    public String getHashcode() {
        return hashcode;
    }

    public void setHashcode(String hashcode) {
        this.hashcode = hashcode;
    }

    @Override
    public String execute() throws Exception {
        System.out.println(user.toString());
        Country country = countryDaoImpl.getById(countryId);
        user.setCountry(country);
        user.setHashCode(MD5.encryptPassword(user.getEmail()));
        user.setPassword(MD5.encryptPassword(user.getPassword()));
        userDaoImpl.create(user);
        String result = SendEmailAction.sendEmail(user.getEmail());
        if (ERROR.equals(result)) {
            return ERROR;
        }
        return SUCCESS;
    }


    @SkipValidation
    public String activateProfile() throws Exception {
        User user = userDaoImpl.getUserByHashCode(hashcode);
        System.out.println(user.toString()+"hashcode");
        if (user != null) {
            user.setActive(true);
            userDaoImpl.update(user);
            return SUCCESS;
        }
        return LOGIN;

    }


    @Override
    public void validate() {
        try {
            if (userDaoImpl.getUserByEmail(user.getEmail()) != null) {
                addFieldError("user.email", "This email is already exist");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
