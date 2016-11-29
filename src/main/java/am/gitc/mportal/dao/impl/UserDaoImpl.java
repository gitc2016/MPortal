package am.gitc.mportal.dao.impl;

import am.gitc.mportal.dao.UserDao;
import am.gitc.mportal.domain.User;
import am.gitc.mportal.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by gtc-user34 on 11/20/2016.
 */
public class UserDaoImpl implements UserDao {//TODO for all throws exception

    private Session session;


    public UserDaoImpl() throws Exception {
        session = HibernateUtil.createSessionFactory().openSession();
    }

    @Override
    public void create(User user) throws Exception{//TODO thorows exception
        session.beginTransaction();
        session.save(user);
        session.getTransaction().commit();
    }

    @Override
    public User getById(int id) throws Exception {
        return null;
    }

    @Override
    public void update(User user) throws Exception{

    }


    public void updateIsRegister(User user) throws Exception{//TODO change name update status
        session.beginTransaction();
        session.update(user);
        session.getTransaction().commit();
    }

    @Override
    public List<User> getAll()throws Exception {
        return null;
    }


    @Override
    public User getUserByEmail(String email) throws Exception{
        Criteria criteria = session.createCriteria(User.class);
        return (User) criteria.add(Restrictions.eq("email", email)).uniqueResult();
    }

    @Override
    public User getUserByEmailPassword(String email, String password)throws Exception {
        Criteria criteria = session.createCriteria(User.class);
        return (User) criteria.add(Restrictions.and(Restrictions.eq("email", email), Restrictions.eq("password", password),Restrictions.eq("isRegister",true))).uniqueResult();
    }


    public User getUserByHashCode(String hashCode)throws Exception {//TODO think about better way to generate link for useractiovation
        Criteria criteria = session.createCriteria(User.class);
        return (User) criteria.add(Restrictions.eq("hashCode", hashCode)).uniqueResult();
    }


}
