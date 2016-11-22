package am.gitc.mportal.manager;

import am.gitc.mportal.dao.UserDaoImpl;
import am.gitc.mportal.domain.Country;
import am.gitc.mportal.domain.User;

/**
 * Created by Stella on 19.11.2016.
 */
public class UserManager {

    UserDaoImpl userDaoImpl;

    public UserManager() {
        userDaoImpl = new UserDaoImpl();
    }

    public void add(User user) {
        userDaoImpl.create(user);
    }



    public boolean isEmailAndPassword(String email, String password) {
        if (userDaoImpl.getUserByEmailPassword(email, password) != null) return true;
        return false;
    }

    public boolean isEmailExist(String email) {
        if (userDaoImpl.getUserByEmail(email) != null) return true;
        return false;
    }

    public User getUserByEmailPassword(String email, String password) {
        return userDaoImpl.getUserByEmailPassword(email, password);
    }

}
