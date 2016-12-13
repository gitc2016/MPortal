<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: levon
  Date: 12/11/16
  Time: 8:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<h1>Join the MicroMentor Community</h1>

<hr/>

<form id="" autocomplete="on" method="post">

    <div class="col-md-6">
        <div class="form-group ">
            <s:textfield name="firstName" key="firstName" cssClass="form-control" maxLength="50"/>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group ">

            <s:textfield name="lastName" key="lastName" cssClass="form-control" maxLength="50"/>
        </div>
    </div>
    <div class="form-group ">
        <s:textfield name="email" key="email" cssClass="form-control" maxLength="255"/>
    </div>

    <div class="form-group ">
        <s:password name="password" key="password" cssClass="form-control"/>
    </div>

    <div class="form-group ">
        <h4>Confirm Password</h4>
        <s:textfield name="confirmPassword" key="confirmPassword" cssClass="form-control"/>
    </div>

    <div id="register-types">
        <div class="row ">
            <div class="col-sm-6 text-center">
                <div class="form-group  radio-group">
                    <s:radio list="%{#application.role}" key="role" name="user.status"/>

                </div>
            </div>
            <div class="col-sm-6 text-center">
                <div class="form-group">
                    <s:radio list="%{#application.gender}" key="role" name="user.gender"/>
                </div>
            </div>
        </div>


    </div>


    <div class="submit">
        <s:submit name="password" cssClass="btn btn-primary btn-lg"/>
    </div>
</form>

</div>
<div class="col-md-2">
</div>

