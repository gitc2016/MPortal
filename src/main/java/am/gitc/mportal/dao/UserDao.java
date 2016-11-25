package am.gitc.mportal.dao;

import am.gitc.mportal.domain.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

/**
 * Created by Lilit on 11/25/2016.
 */
public class UserDao {
    Configuration configuration = new Configuration().configure("hibernate.cfg.xml");

    ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(
            configuration.getProperties()).buildServiceRegistry();

    SessionFactory sessionFactory = configuration.buildSessionFactory(serviceRegistry);
    Session session = sessionFactory.openSession();

    public void updateUser(User user) {
        session.beginTransaction();
        session.save(user);
        session.getTransaction().commit();
    }

    public void deleteUser(User user) {
        session.beginTransaction();
        session.delete(user);
        session.getTransaction().commit();

    }

    public void addUser(User user) {
        session.beginTransaction();
        session.save(user);
        session.getTransaction().commit();
        session.close();

    }


}
