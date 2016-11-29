package am.gitc.mportal.action;

import am.gitc.mportal.dao.impl.UserDaoImpl;
import am.gitc.mportal.domain.User;

import java.util.List;

public class SearchAction extends GlobalAction {

    private UserDaoImpl userDao;
    private String searchKeyword;
    private  List<User> userList;

    public SearchAction() {
        try {
            userDao = new UserDaoImpl();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public String execute() throws Exception {

         userList = userDao.getSearchUserListByName(searchKeyword);
        return SUCCESS;
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
}
