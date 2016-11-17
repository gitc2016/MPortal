<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/14/2016
  Time: 11:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MPortal</title>
    <link rel="stylesheet" type="text/css" href="..\css\login.css" media="screen"/>
    <style>

        span {
            color: red;
            font-weight: bold;
            padding-left: 150px;
        }

    </style>

</head>
<body>
<div style="width: 800px;margin:0 auto;padding-top: 10px;padding-left: 100px">

    <s:form action="registerForm.action" method="post">

            <s:textfield key="name" cssClass="input"/><br><br>
            <s:textfield key="surname" cssClass="input"/><br><br>
            <s:textfield key="email" cssClass="input"/><br><br>
            <s:password key="password" cssClass="input"/><br><br>
            <s:password key="confirmPassword" cssClass="input"/><br><br>

            <s:radio list="{'MALE','FEMALE'}" key="gender" cssClass="radio"/>
            <s:radio list="{'MENTEE','MENTOR'}" key="role" cssClass="radio"/>
            <s:select list="{'Armenia','Russia','USA'}" key="country"/>
            <s:submit key="signUp" cssClass="submit"/>

    </s:form>

    <a href="/pages/loginForm.jsp"><s:text name="signUp"/></a>

</div>
</body>
</html>
