<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: levon
  Date: 12/11/16
  Time: 6:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<h1>Sign In</h1>
<hr/>
<div class="panel panel-default">
    <div class="panel-body">

        <form id="" autocomplete="on" method="post" action="loginForm.action">
            <div class="form-group ">
                <s:textfield  placeholder="Email" name="email" cssClass="form-control"/>
            </div>
            <div class="form-group ">
                <s:password name="password" placeholder="Password" id="DarkAuthPassword" cssClass="form-control"/>
            </div>

            <div class="submit">
                <s:submit key="signIn" cssClass="btn btn-primary btn-lg"/>
            </div>
        </form>
    </div>
</div>


