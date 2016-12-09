package am.gitc.mportal.action;

import am.gitc.mportal.dao.impl.CountryDaoImpl;
import am.gitc.mportal.dao.impl.UserDaoImpl;
import am.gitc.mportal.domain.Country;
import am.gitc.mportal.domain.User;
import am.gitc.mportal.util.Global_Keys;
import com.opensymphony.xwork2.ModelDriven;
import com.sun.webkit.dom.CounterImpl;

/**
 * Created by gtc-user29 on 12/8/2016.
 */
public class UpdateAction extends GlobalAction implements ModelDriven {
    private UserDaoImpl userDao;
    private CountryDaoImpl countryDao;
    private User users = new User();
    private User user;
    private boolean update = true;
    private int countryId;


    public UpdateAction() throws Exception {
        userDao = new UserDaoImpl();
        countryDao = new CountryDaoImpl();
    }

    public User getUser() {
        return users;
    }

    public void setUser(User users) {
        this.users = users;
    }

    public UserDaoImpl getUserDao() {
        return userDao;
    }

    public void setUserDao(UserDaoImpl userDao) {
        this.userDao = userDao;
    }

    public boolean isUpdate() {
        return update;
    }

    public void setUpdate(boolean update) {
        this.update = update;
    }

    public User getUsers() {
        return users;
    }

    public void setUsers(User users) {
        this.users = users;
    }

    public int getCountryId() {
        return countryId;
    }

    public void setCountryId(int countryId) {
        this.countryId = countryId;
    }

    public String execute() throws Exception {
        update = false;
        int id = (Integer) mapSession.get(Global_Keys.LOGIN);
        user = userDao.getById(id);
        System.out.println(countryId);
        Country country = countryDao.getById(countryId);
        System.out.println(update + "" + users + "user");
        user.setName(users.getName());
        user.setSurname(users.getSurname());
        user.setBirthDate(users.getBirthDate());
        user.setCountry(country);
        userDao.update(user);
        System.out.println(user);
        return SUCCESS;
    }


    @Override
    public Object getModel() {
        return users;
    }
}
