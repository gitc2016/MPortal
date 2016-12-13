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
            <fieldset style="display:none;"><input type="hidden" name="_method" value="POST"/></fieldset>
            <div class="form-group ">
                <s:textfield name="login" key="email" cssClass="form-control"/>
            </div>
            <div class="form-group ">
                <s:textfield name="password" key="password" id="DarkAuthPassword" cssClass="form-control"/>
            </div>

            <div class="submit">
                <s:submit key="signIn" cssClass="btn btn-primary btn-lg"/>
            </div>
        </form>
    </div>
</div>


