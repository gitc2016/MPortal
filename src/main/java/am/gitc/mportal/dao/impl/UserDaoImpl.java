package am.gitc.mportal.dao.impl;

import am.gitc.mportal.dao.UserDao;
import am.gitc.mportal.domain.MentorCategory;
import am.gitc.mportal.domain.User;
import am.gitc.mportal.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class UserDaoImpl implements UserDao {

    private Session session;


    public UserDaoImpl() throws Exception {
        session = HibernateUtil.createSessionFactory().openSession();
    }

    @Override
    public void create(User user) throws Exception {
        session.beginTransaction();
        session.save(user);
        session.getTransaction().commit();
    }

    @Override
    public void delete(User user) {
        session.beginTransaction();
        session.delete(user);
        session.getTransaction().commit();
    }

    @Override
    public User getById(int id) throws Exception {
        Criteria criteria = session.createCriteria(User.class);
        return (User) criteria.add(Restrictions.eq("id", id)).uniqueResult();
    }




    public void update(User user) throws Exception {
        session.beginTransaction();
        session.update(user);
        session.getTransaction().commit();
    }

    @Override
    public List<User> getAll() throws Exception {
        return null;
    }


    @Override
    public User getUserByEmail(String email) throws Exception {
        Criteria criteria = session.createCriteria(User.class);
        return (User) criteria.add(Restrictions.eq("email", email)).uniqueResult();
    }

    @Override
    public User getUserByEmailPassword(String email, String password) throws Exception {
        Criteria criteria = session.createCriteria(User.class);

        return (User) criteria.add(Restrictions.and(Restrictions.eq("email", email), Restrictions.eq("password", password))).uniqueResult();

    }

    @Override
    public List<User> getSearchUserListByName(String name) {
        Criteria criteria = session.createCriteria(User.class);
        Criterion result = Restrictions.like("name", name + "%");
        return (List<User>) criteria.add(result).list();
//        SQLQuery query = session.createSQLQuery
//                ("SELECT us.`name` FROM mentor_category INNER JOIN `user` as us ON mentor_category.`user_id` = us.id where us.name LIKE '"+name+"%"+"'");
//        return sqlQuery.list();
    }

    public User getUserByHashCode(String hashCode) throws Exception {//TODO think about better way to generate link for useractiovation
        Criteria criteria = session.createCriteria(User.class);
        return (User) criteria.add(Restrictions.eq("hashCode", hashCode)).uniqueResult();
    }

    @Override
    public User getUserAdvanceSearch(int id, String name) {
        return (User) session.createCriteria(User.class).add(Restrictions.and(Restrictions.eq("id", id), Restrictions.like("name", name + "%"))).uniqueResult();
    }


}
