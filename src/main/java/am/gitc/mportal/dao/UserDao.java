package am.gitc.mportal.dao;
import am.gitc.mportal.domain.User;

import java.util.List;

/**
 * Created by gtc-user34 on 11/20/2016.
 */
public interface UserDao extends GlobalDao<User> {

    @Override
    void create(User user) throws Exception;

    @Override
    User getById(int id) throws Exception;

    @Override
    void update(User user) throws Exception;

    @Override
    List<User> getAll() throws Exception;

    User getUserByEmail(String email) throws Exception;

    User getUserByEmailPassword(String email, String password) throws Exception;



}
