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

    //region getter setter

    public User getUsers() {
        return users;
    }

    public void setUsers(User users) {
        this.users = users;
    }

    public User getUser() {
        return users;
    }

    public void setUser(User users) {
        this.users = users;
    }

    public boolean isUpdate() {
        return update;
    }

    public void setUpdate(boolean update) {
        this.update = update;
    }

    public int getCountryId() {
        return countryId;
    }

    public void setCountryId(int countryId) {
        this.countryId = countryId;
    }

//endregion

    public String execute() throws Exception {
        update = false;
        int id = (Integer) mapSession.get(Global_Keys.LOGIN);
        user = userDao.getById(id);
        Country country = countryDao.getById(countryId);
        user.setName(users.getName());
        user.setSurname(users.getSurname());
        user.setCountry(country);
        userDao.update(user);
        return SUCCESS;
    }



    @Override
    public Object getModel() {
        return users;
    }
}