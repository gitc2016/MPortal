package am.gitc.mportal.dao;
import am.gitc.mportal.domain.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

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



}
