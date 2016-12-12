package am.gitc.mportal.action;

import am.gitc.mportal.util.Global_Keys;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.interceptor.validation.SkipValidation;

import java.util.Map;

/**
 * Created by gtc-user34 on 12/7/2016.
 */
public class LogOutAction extends GlobalAction {

    public LogOutAction() throws Exception {

    }

    @Override
    public String execute(){
        mapSession.remove(Global_Keys.LOGIN);
        return SUCCESS;
    }
}
