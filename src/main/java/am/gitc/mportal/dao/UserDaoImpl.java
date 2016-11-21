package am.gitc.mportal.dao;

import am.gitc.mportal.domain.Country;
import am.gitc.mportal.domain.User;
import am.gitc.mportal.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by gtc-user34 on 11/20/2016.
 */
public class UserDaoImpl implements UserDao {

    private Session session;


    public UserDaoImpl() {
        session= HibernateUtil.createSessionFactory().openSession();
    }

    @Override
    public void create(User user) {
        session.beginTransaction();
        session.save(user);
        session.getTransaction().commit();
    }

    @Override
    public User getUserById(int id) {
        return null;
    }


    @Override
    public void update(User user) {

    }

    @Override
    public List<User> getAllUser() {
        return null;
    }

    @Override
    public Country getCountryById(int id) {
        Criteria criteria = session.createCriteria(Country.class);
        Criterion result = Restrictions.eq("id", id);
        return (Country) criteria.add(result).uniqueResult();
    }

    @Override
    public User getUserByEmail(String email) {
        Criteria criteria = session.createCriteria(User.class);
        return (User) criteria.add(Restrictions.eq("email", email)).uniqueResult();
    }


    public User getUserByEmsilAndPassword(String email,String password) {

        Criteria criteria = session.createCriteria(User.class);
        return (User)criteria.add(Restrictions.and(Restrictions.eq("email",email),Restrictions.eq("password",password))).uniqueResult();

    }
}
