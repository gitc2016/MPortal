package am.gitc.mportal.action;

import am.gitc.mportal.domain.User;
import am.gitc.mportal.manager.UserManager;

import java.util.List;

public class SearchAction extends GlobalAction {

    private UserManager userManager;
    private String searchKeyword;
    private  List<User> userList;

    public SearchAction() {
        userManager = new UserManager();
    }

    @Override
    public String execute() throws Exception {

         userList = userManager.getSearchUserByName(searchKeyword);
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
