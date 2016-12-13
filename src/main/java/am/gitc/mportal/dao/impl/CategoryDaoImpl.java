package am.gitc.mportal.dao.impl;

import am.gitc.mportal.dao.CategoryDao;
import am.gitc.mportal.domain.Category;
import am.gitc.mportal.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class CategoryDaoImpl implements CategoryDao {

    private Session session;

    public CategoryDaoImpl(){
    session = HibernateUtil.createSessionFactory().openSession();
    }

    @Override
    public List<Category> getCategoryByParentId() {
        Criteria criteria = session.createCriteria(Category.class);
        Criterion result = Restrictions.eq("parentId", 0);
        return criteria.add(result).list();
    }


    public Category getParentId(String name) {
        Criteria criteria = session.createCriteria(Category.class);
        Criterion result = Restrictions.eq("name", name);
        return (Category) criteria.add(result).uniqueResult();
    }

    public List<Category> getSubCategory(int id){
        Criteria criteria = session.createCriteria(Category.class);
        Criterion result = Restrictions.eq("parentId", id);
        return (List<Category>) criteria.add(result).list();
    }




    @Override
    public void addCategory(Category category) {
        session.beginTransaction();
        session.save(category);
        session.getTransaction().commit();
    }
}
