package am.gitc.mportal.dao;

import java.util.List;

/**
 * Created by gtc-user29 on 11/22/2016.
 */
public interface GlobalDao<E> {

    void create(E entity) throws Exception;

    E getById(int id) throws Exception;

    void update(E entity) throws Exception;

    List<E> getAll() throws Exception;

    void delete(E entity) throws Exception;


}
