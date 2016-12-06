package am.gitc.mportal.dao.impl;

import am.gitc.mportal.dao.UserDao;
import am.gitc.mportal.domain.Role;
import am.gitc.mportal.domain.User;
import am.gitc.mportal.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import java.util.ArrayList;
import java.util.List;

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

    @Override
    public List<User> getSearchUserListByName(String name) {
        Criteria criteria = session.createCriteria(User.class);
        Criterion result = Restrictions.like("name",name + "%");
        return (List<User>) criteria.add(result).list();
    }

    public User getUserByHashCode(String hashCode)throws Exception {//TODO think about better way to generate link for useractiovation
        Criteria criteria = session.createCriteria(User.class);
        return (User) criteria.add(Restrictions.eq("hashCode", hashCode)).uniqueResult();
    }

    @Override
    public User getUserAdvanceSearch(int id,String name) {
        return (User) session.createCriteria(User.class).add(Restrictions.and(Restrictions.eq("id",id),Restrictions.like("name",name+"%"),Restrictions.eq("role",Role.MENTOR))).uniqueResult();
    }
}