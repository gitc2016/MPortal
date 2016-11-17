package am.gitc.mportal.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

/**
 * Created by gtc-user34 on 11/17/2016.
 */
public class GlobalAction extends ActionSupport implements SessionAware {

    Map<String, Object> mapSession;

    @Override
    public void setSession(Map<String, Object> map) {
        mapSession = map;
    }
}
