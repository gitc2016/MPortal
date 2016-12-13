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

<form id="" action="registerForm.action" autocomplete="on" method="post">

    <div class="col-md-6">
        <div class="form-group ">
            <s:textfield name="user.name" placeholder="Name" cssClass="form-control" maxLength="50"/>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group ">

            <s:textfield name="user.surname" placeholder="Surname" cssClass="form-control" maxLength="50"/>
        </div>
    </div>
    <div class="form-group ">
        <s:textfield name="user.email" placeholder="Email" cssClass="form-control" maxLength="255"/>
    </div>

    <div class="form-group ">
        <s:password name="user.password" placeholder="Password" cssClass="form-control"/>
    </div>

    <div class="form-group ">
        <s:password name="user.confirmPassword" placeholder="Confirm Password" cssClass="form-control"/>
    </div>

    <div id="register-types">
        <div class="row ">
            <div class="col-sm-6 text-center">
                <div class="form-group  radio-group">
                    <s:radio list="%{#application.status}" key="status" name="user.status"/>
                </div>
            </div>
            <div class="col-sm-6 text-center">
                <div class="form-group">
                    <s:radio list="%{#application.gender}" key="gender" name="user.gender"/>
                </div>
            </div>
        </div>


    </div>


    <div class="submit">
        <s:submit name="password" cssClass="btn btn-primary btn-lg"/>
    </div>
</form>


