package am.gitc.mportal.dao.impl;

import am.gitc.mportal.dao.CountryDao;
import am.gitc.mportal.domain.Country;
import am.gitc.mportal.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by gtc-user29 on 11/22/2016.
 */
public class CountryDaoImpl implements CountryDao {

    private Session session;


    public CountryDaoImpl() throws Exception {

        session= HibernateUtil.createSessionFactory().openSession();
    }

    @Override
    public void create(Country entity) throws Exception{

    }

    @Override
    public void update(Country entity) throws Exception{

    }


    @Override
    public List<Country> getAll()throws Exception {
        return session.createCriteria(Country.class).list();
    }

    @Override
    public void delete(Country entity) throws Exception {

    }


    @Override
    public Country getById(int id) throws Exception{
        Criteria criteria = session.createCriteria(Country.class);
        Criterion result = Restrictions.eq("id", id);
        return (Country) criteria.add(result).uniqueResult();
    }



}
