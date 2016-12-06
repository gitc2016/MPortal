package am.gitc.mportal.action;

import am.gitc.mportal.dao.impl.CountryDaoImpl;
import am.gitc.mportal.domain.Country;
import am.gitc.mportal.domain.Gender;
import am.gitc.mportal.domain.Role;
import am.gitc.mportal.util.Global_Keys;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.List;
import java.util.Map;

/**
 * Created by gtc-user34 on 11/17/2016.
 */
public class GlobalAction extends ActionSupport implements SessionAware, ApplicationAware {

    Map<String, Object> mapSession;
    Map<String, Object> mapApp;
    CountryDaoImpl countryDaoImpl;
    private Gender[] genders = Gender.values();

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
        countryDaoImpl = new CountryDaoImpl();
        List<Country> countries = countryDaoImpl.getAll();
        mapApp.put(Global_Keys.COUNTRY, countries);
        mapApp.put(Global_Keys.GENDER, genders);
        return SUCCESS;
    }
}
