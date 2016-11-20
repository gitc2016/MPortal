package am.gitc.mportal.manager;

import am.gitc.mportal.dao.UserDaoImpl;
import am.gitc.mportal.domain.Country;
import am.gitc.mportal.domain.User;

/**
 * Created by Stella on 19.11.2016.
 */
public class UserManager {

    UserDaoImpl userDao;

    public UserManager() {
        userDao = new UserDaoImpl();
    }

    public void add(User user) {
        userDao.create(user);
    }

    public Country getCoutryById(int id){
        return userDao.getCountryById(id);
    }

}
