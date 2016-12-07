package am.gitc.mportal.action;

import am.gitc.mportal.dao.impl.CategoryDaoImpl;
import am.gitc.mportal.dao.impl.CountryDaoImpl;
import am.gitc.mportal.dao.impl.MentorCategoryImpl;
import am.gitc.mportal.dao.impl.UserDaoImpl;
import am.gitc.mportal.domain.Category;
import am.gitc.mportal.domain.Country;
import am.gitc.mportal.domain.MentorCategory;
import am.gitc.mportal.domain.User;
import am.gitc.mportal.util.Global_Keys;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.validation.SkipValidation;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class SearchAction extends GlobalAction implements ApplicationAware {

    private UserDaoImpl userDao;
    private String searchKeyword;
    private List<User> userList;
    private CountryDaoImpl countryDaoImpl;
    private int countryId;
    private CategoryDaoImpl categoryDao;
    private MentorCategoryImpl mentorCategory;
    private int categoryId;
    private String userName;
    private List<User> advanceSerachList;

    Map<String, Object> mapApp;
    Map<String, List<Category>> map;

    public SearchAction() {
        try {
            userDao = new UserDaoImpl();
            countryDaoImpl = new CountryDaoImpl();
            categoryDao = new CategoryDaoImpl();
            mentorCategory = new MentorCategoryImpl();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public String execute() throws Exception {
        userList = userDao.getSearchUserListByName(searchKeyword);
        if(userList.size()==0){
            addFieldError("searchKeyword","Nothing is find");
        }
        return SUCCESS;
    }

    @SkipValidation
    public String categoryAndSubCategory() {
        map = new HashMap<String, List<Category>>();
        List<Category> categoryList = categoryDao.getCategoryByParentId();
        for (Category list : categoryList) {
            String name = list.getName();
            int id = list.getId();
            List<Category> subCategoryList = categoryDao.getSubCategory(id);
            map.put(name, subCategoryList);
        }
        mapApp.put(Global_Keys.CATEGORY, map);
        return SUCCESS;
    }

    @SkipValidation
    public String advancedSearch() {
        advanceSerachList = new ArrayList<User>();
        List<Integer> userIdList = mentorCategory.getUserIdByCategoryId(categoryId);
        for (int userId : userIdList) {
            User user=null;
            if (userName == null) {
                user = userDao.getUserAdvanceSearch(userId, "");
            } else if (userName != null) {
                user = userDao.getUserAdvanceSearch(userId, userName);
            }

            advanceSerachList.add(user);
        }
        if(advanceSerachList.size()==0){
            addFieldError("searchKeyword","Nothing is find");
        }
        return SUCCESS;
    }

    @Override
    public void setApplication(Map<String, Object> map) {
        mapApp = map;
    }

    public String getSearchKeyword() {
        return searchKeyword;
    }

    public void setSearchKeyword(String searchKeyword) {
        this.searchKeyword = searchKeyword;
    }

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    public int getCountryId() {
        return countryId;
    }

    public void setCountryId(int countryId) {
        this.countryId = countryId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public List<User> getAdvanceSerachList() {
        return advanceSerachList;
    }

    public void setAdvanceSerachList(List<User> advanceSerachList) {
        this.advanceSerachList = advanceSerachList;
    }
}
