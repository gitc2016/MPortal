package am.gitc.mportal.action;

import am.gitc.mportal.dao.impl.RequestDaoImpl;
import am.gitc.mportal.dao.impl.UserDaoImpl;
import am.gitc.mportal.domain.Request;
import am.gitc.mportal.domain.User;
import am.gitc.mportal.util.Global_Keys;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by gtc-user29 on 12/8/2016.
 */
public class UserAction extends GlobalAction {

    private User user = new User();
    private User senderUser = new User();
    private UserDaoImpl userDao;
    private List<Request> requestDbList;
    private RequestDaoImpl requestDao;
    private List<Request> requestList;
    private List<User> userList;
    private int requestCount;

    public UserAction() throws Exception {
        userDao = new UserDaoImpl();
        requestDao = new RequestDaoImpl();
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String execute() throws Exception {
        int id = (Integer) mapSession.get(Global_Keys.LOGIN);
        user = userDao.getById(id);
        return SUCCESS;
    }

    public String mentor() throws Exception {
        int id = (Integer) mapSession.get(Global_Keys.LOGIN);
        user = userDao.getById(id);

        requestList = new ArrayList<Request>();
        requestDbList = requestDao.getRequestListByAccepted();
        userList = new ArrayList<User>();

        for (Request request : requestDbList) {
            if (request.getAcceptrID() == id) {
                requestCount++;
                requestList.add(request);
                senderUser = userDao.getById(request.getSenderID());
                userList.add(senderUser);
            }
        }
        return SUCCESS;
    }

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    public User getSenderUser() {
        return senderUser;
    }

    public void setSenderUser(User senderUser) {
        this.senderUser = senderUser;
    }

    public List<Request> getRequestList() {
        return requestList;
    }

    public void setRequestList(List<Request> requestList) {
        this.requestList = requestList;
    }

    public int getRequestCount() {
        return requestCount;
    }

    public void setRequestCount(int requestCount) {
        this.requestCount = requestCount;
    }
}


