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
//region fields
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
    private User user = new User();;

    Map<String, Object> mapApp;
    Map<String, List<Category>> map;
    //endregion
    public SearchAction() throws Exception{
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
        int id = (Integer) mapSession.get(Global_Keys.LOGIN);
        user = userDao.getById(id);

        userList = userDao.getSearchUserListByName(searchKeyword);
        if(userList.size()==0){
            addFieldError("searchKeyword","Nothing is find");
        }
        return SUCCESS;
    }

    @SkipValidation
    public String advancedSearch() throws Exception{
        int id = (Integer) mapSession.get(Global_Keys.LOGIN);
        user = userDao.getById(id);

        int sessionUserId = (Integer) mapSession.get(Global_Keys.LOGIN);
        advanceSerachList = new ArrayList<User>();
        List<Integer> userIdList = mentorCategory.getUserIdByCategoryId(categoryId);
        for (int userId : userIdList) {
            User userObj=null;
            if (userName == null) {
                userObj = userDao.getUserAdvanceSearch(userId, "");
            } else if (userName != null) {
                userObj = userDao.getUserAdvanceSearch(userId, userName);
            }
            if (sessionUserId != userId) {
                advanceSerachList.add(userObj);
            }
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
//region geter And seter
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
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    //endregion
}
