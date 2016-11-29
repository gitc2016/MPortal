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
        session = HibernateUtil.createSessionFactory().openSession();
    }

    @Override
    public void create(User user) {
        session.beginTransaction();
        session.save(user);
        session.getTransaction().commit();
    }

    @Override
    public User getById(int id) {
        return null;
    }

    @Override
    public void update(User user) {

    }


    public void update_Is_register(User user) {
        session.beginTransaction();
        session.update(user);
        session.getTransaction().commit();
    }

    @Override
    public List<User> getAll() {
        return null;
    }


    @Override
    public User getUserByEmail(String email) {
        Criteria criteria = session.createCriteria(User.class);
        return (User) criteria.add(Restrictions.eq("email", email)).uniqueResult();
    }

    @Override
    public User getUserByEmailPassword(String email, String password) {
        Criteria criteria = session.createCriteria(User.class);
        return (User) criteria.add(Restrictions.and(Restrictions.eq("email", email), Restrictions.eq("password", password))).uniqueResult();
    }


    public User getUserByEmailCode(String hashcode) {
        Criteria criteria = session.createCriteria(User.class);
        return (User) criteria.add(Restrictions.eq("password", hashcode)).uniqueResult();
    }

    public List<User> getSearchUserListByName(String name){
        Criteria criteria = session.createCriteria(User.class);
        Criterion result = Restrictions.like("name",name + "%");
        return (List<User>) criteria.add(result).list();
    }

}
