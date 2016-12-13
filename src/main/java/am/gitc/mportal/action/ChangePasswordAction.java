package am.gitc.mportal.action;

import am.gitc.mportal.action.utils.MD5;
import am.gitc.mportal.dao.impl.UserDaoImpl;
import am.gitc.mportal.domain.User;
import am.gitc.mportal.util.Global_Keys;

/**
 * Created by gtc-user29 on 12/9/2016.
 */
public class ChangePasswordAction extends GlobalAction {

    private String currentPassword;
    private String newPassword;
    private String confirmPassword;
    private User user;
    private UserDaoImpl userDao;
    private boolean updatePassword = true;
    private int id;


    public ChangePasswordAction() throws Exception {
        userDao = new UserDaoImpl();

    }

    public String getCurrentPassword() {
        return currentPassword;
    }

    public void setCurrentPassword(String currentPassword) {
        this.currentPassword = currentPassword;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public boolean isUpdatePassword() {
        return updatePassword;
    }

    public void setUpdatePassword(boolean updatePassword) {
        this.updatePassword = updatePassword;
    }

    @Override
    public String execute() throws Exception {
        updatePassword = false;
        id = (Integer) mapSession.get(Global_Keys.LOGIN);
        user = userDao.getById(id);
        user.setPassword(MD5.encryptPassword(newPassword));
        userDao.update(user);
        return SUCCESS;
    }

    @Override
    public void validate() {
        id = (Integer) mapSession.get(Global_Keys.LOGIN);
        try {
            if (!MD5.encryptPassword(currentPassword).equals(userDao.getById(id).getPassword())) {
                addFieldError("currentPassword", "this current passsword is not valid");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
