package am.gitc.mportal.dao;

import am.gitc.mportal.domain.MentorCategory;

import java.util.List;

/**
 * Created by RuBen on 01.12.2016.
 */
public interface MentorCategoryDao {
    List<Integer> getUserIdByCategoryId(int id);
}
