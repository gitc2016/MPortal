package am.gitc.mportal.dao;

import am.gitc.mportal.domain.Country;

import java.util.List;

/**
 * Created by gtc-user29 on 11/22/2016.
 */
public interface CountryDao extends GlobalDao<Country> {

    @Override
    Country getById(int id) throws Exception;

    @Override
    List<Country> getAll() throws Exception;

    @Override
    void delete(Country entity) throws Exception;
}
