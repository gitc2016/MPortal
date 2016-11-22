package am.gitc.mportal.dao;

import am.gitc.mportal.domain.Country;
import am.gitc.mportal.domain.User;

import java.util.List;

/**
 * Created by gtc-user29 on 11/22/2016.
 */
public interface GlobalDao<E> {

    void create(E entity);

    E getById(int id);

    void update(E entity);

    List<E> getAll();



}
