package am.gitc.mportal.dao;

import am.gitc.mportal.domain.Country;
import am.gitc.mportal.domain.User;

import java.util.List;

/**
 * Created by gtc-user34 on 11/20/2016.
 */
public interface UserDao {

    void create(User user);

    User getUserById(int id);

    void update(User user);

    List<User> getAllUser();

    Country getCountryById(int id);

    User getUserByEmail(String email);

}
