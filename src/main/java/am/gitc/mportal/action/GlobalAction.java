package am.gitc.mportal.action;

import am.gitc.mportal.domain.Country;
import am.gitc.mportal.domain.Gender;
import am.gitc.mportal.domain.Role;
import am.gitc.mportal.domain.User;
import am.gitc.mportal.manager.CountryManager;
import am.gitc.mportal.manager.UserManager;
import am.gitc.mportal.util.Global_Keys;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;
import java.util.List;
import java.util.Map;

/**
 * Created by gtc-user34 on 11/17/2016.
 */
public class GlobalAction extends ActionSupport implements SessionAware, ApplicationAware {

    Map<String, Object> mapSession;
    Map<String, Object> mapApp;
    CountryManager countryManager;
    private Role[] roles=Role.values();
    private Gender [] genders =Gender.values();

    @Override
    public void setSession(Map<String, Object> map) {
        mapSession = map;
    }


    @Override
    public void setApplication(Map<String, Object> map) {
        mapApp = map;
    }

    @Override
    public String execute() throws Exception {
        countryManager = new CountryManager();
        List<Country> countries = countryManager.getAllCountry();
        mapApp.put(Global_Keys.COUNTRY, countries);
        mapApp.put(Global_Keys.ROLE,roles);
        mapApp.put(Global_Keys.GENDER,genders);
        System.out.println(mapApp.get(Global_Keys.COUNTRY));
        return SUCCESS;
    }
}
