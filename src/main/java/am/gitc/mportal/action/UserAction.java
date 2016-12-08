package am.gitc.mportal.action;

import am.gitc.mportal.dao.impl.UserDaoImpl;
import am.gitc.mportal.domain.User;
import am.gitc.mportal.util.Global_Keys;

/**
 * Created by gtc-user29 on 12/8/2016.
 */
public class UserAction extends GlobalAction {

    private User user = new User();
    private UserDaoImpl userDao;

    public UserAction() throws Exception {
        userDao= new UserDaoImpl();
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String execute() throws Exception{
        int id=(Integer)mapSession.get(Global_Keys.LOGIN);
        user =userDao.getById(id);
        return SUCCESS;
    }

}
