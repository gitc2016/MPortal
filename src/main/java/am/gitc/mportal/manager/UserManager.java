package am.gitc.mportal.manager;

import am.gitc.mportal.dao.UserDaoImpl;
import am.gitc.mportal.domain.Country;
import am.gitc.mportal.domain.User;

import javax.jws.soap.SOAPBinding;

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
        System.out.println(userDaoImpl.getUserByEmailPassword(email,password));
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

    public User getUserByHashCode(String hashcode){
        return userDaoImpl.getUserByEmailCode(hashcode);
    }

    public void updateIs_register(User user){
        userDaoImpl.update_Is_register(user);
    }

}
