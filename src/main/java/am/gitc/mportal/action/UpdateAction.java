package am.gitc.mportal.action;

import am.gitc.mportal.dao.impl.UserDaoImpl;

/**
 * Created by gtc-user29 on 12/8/2016.
 */
public class UpdateAction extends GlobalAction {
    private UserDaoImpl userDao;


    public UpdateAction() throws Exception {
        userDao= new UserDaoImpl();
    }

    public String execute() {

        return SUCCESS;
    }
}
