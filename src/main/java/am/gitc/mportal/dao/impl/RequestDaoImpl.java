package am.gitc.mportal.dao.impl;

import am.gitc.mportal.dao.RequestDao;
import am.gitc.mportal.domain.Request;
import am.gitc.mportal.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class RequestDaoImpl implements RequestDao {

    private Session session;

    public RequestDaoImpl() {
        session = HibernateUtil.createSessionFactory().openSession();
    }

    @Override
    public void create(Request request) throws Exception {
        session.beginTransaction();
        session.save(request);
        session.getTransaction().commit();
    }

    @Override
    public void delete(Request request) {
        session.beginTransaction();
        session.delete(Request.class);
        session.getTransaction().commit();
    }

    @Override
    public List<Request> getRequestListByAccepted() {
        Criteria criteria = session.createCriteria(Request.class);
        Criterion result = Restrictions.eq("accepted",1);
        return (List<Request>)criteria.add(result).list();
    }

    @Override
    public Request getRequestByAccepted() {
        Criteria criteria = session.createCriteria(Request.class);
        Criterion result = Restrictions.eq("accepted",1);
        return (Request) criteria.add(result).uniqueResult();
    }
}
