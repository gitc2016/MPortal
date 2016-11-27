package am.gitc.mportal.manager;

import am.gitc.mportal.dao.CountryDaoImpl;
import am.gitc.mportal.domain.Country;

import java.util.List;

/**
 * Created by gtc-user29 on 11/22/2016.
 */
public class CountryManager {

    CountryDaoImpl countryDao;
    public CountryManager() {
        countryDao = new CountryDaoImpl();
    }

    public Country getCountryById(int id){
        return countryDao.getById(id);
    }
    public List<Country> getAllCountry(){
        return countryDao.getAll();
    }
}
