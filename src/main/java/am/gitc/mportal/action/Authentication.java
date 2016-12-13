package am.gitc.mportal.action;

import am.gitc.mportal.domain.User;
import am.gitc.mportal.util.Global_Keys;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import java.util.Map;

/**
 * Created by gtc-user34 on 11/17/2016.
 */
public class Authentication extends AbstractInterceptor {
    @Override
    public String intercept(ActionInvocation invocation) throws Exception {

        Map<String, Object> mapSession = invocation.getInvocationContext().getSession();
        if (mapSession.get(Global_Keys.LOGIN) == null) {
            return Action.LOGIN;
        }
        return invocation.invoke();
    }
}
