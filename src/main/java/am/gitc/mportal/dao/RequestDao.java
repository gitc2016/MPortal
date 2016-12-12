package am.gitc.mportal.dao;

import am.gitc.mportal.domain.Request;

import java.util.List;

/**
 * Created by RuBen on 08.12.2016.
 */
public interface RequestDao {

    void create(Request request) throws Exception;

    void delete(Request request);

    List<Request> getRequestListByAccepted();

    Request getRequestByAccepted();
}
