package am.gitc.mportal.dao.impl;

import am.gitc.mportal.dao.FriendDao;
import am.gitc.mportal.domain.Friend;
import am.gitc.mportal.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by RuBen on 09.12.2016.
 */
public class FriendDaoImpl implements FriendDao{

    private Session session;

    public FriendDaoImpl() {
        session = HibernateUtil.createSessionFactory().openSession();
    }

    @Override
    public void createFriend(Friend friend) {
        session.beginTransaction();
        session.save(friend);
        session.getTransaction().commit();
    }

    @Override
    public void deleteFriend(Friend friend) {
        session.beginTransaction();
        session.delete(friend);
        session.getTransaction().commit();
    }

    @Override
    public List<Friend> getFriendsList(int id) {
        Criteria criteria = session.createCriteria(Friend.class);
        Criterion result = Restrictions.eq("userId",id);
        return (List<Friend>) criteria.add(result).list();
    }
}
