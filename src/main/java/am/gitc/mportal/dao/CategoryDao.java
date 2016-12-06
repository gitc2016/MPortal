package am.gitc.mportal.dao;

import am.gitc.mportal.domain.Category;

import java.util.List;

public interface CategoryDao {

    List<Category> getCategoryByParentId();

    void addCategory(Category category);

}
