package am.gitc.mportal.dao;

import am.gitc.mportal.domain.Country;
import am.gitc.mportal.domain.User;

import java.util.List;

/**
 * Created by gtc-user34 on 11/20/2016.
 */
public interface UserDao extends GlobalDao<User> {

    @Override
    void create(User user);

    @Override
    User getById(int id);

    @Override
    void update(User user);

    @Override
    List<User> getAll();

    User getUserByEmail(String email);

    User getUserByEmailPassword(String email, String password);

    List<User> getSearchUserListByName(String name);


}
