package am.gitc.mportal.dao.impl;

import am.gitc.mportal.dao.MentorCategoryDao;
import am.gitc.mportal.domain.Category;
import am.gitc.mportal.domain.MentorCategory;
import am.gitc.mportal.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by RuBen on 01.12.2016.
 */
public class MentorCategoryImpl implements MentorCategoryDao {
    private Session session;

    public MentorCategoryImpl() {
        session = HibernateUtil.createSessionFactory().openSession();
    }

    @Override
    public List<Integer> getUserIdByCategoryId(int id) {
        Query query =session.createSQLQuery("select user_id from mentor_category WHERE category_id='"+id+"'");
        System.out.println(query.list().toString()+"query");
        return (List<Integer>) query.list();
    }
}
