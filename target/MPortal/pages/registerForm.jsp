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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<div class="center">
    <p>
        <img src="/logo.png" style="padding-left: 580px" class="text-center">
        MPortal</p>
    <div class="col-sm-4">
    </div>

    <div class="col-sm-4 ">
        <s:form action="registerForm.action" method="post">

            <s:textfield key="name" cssClass="input form-control"/><br><br>
            <s:textfield key="surname" cssClass="input form-control"/><br><br>
            <s:textfield key="email" cssClass="input form-control"/><br><br>
            <s:password key="password" cssClass="input form-control"/><br><br>
            <s:password key="confirmPassword" cssClass="input form-control"/><br><br>

            <s:radio list="{'MALE','FEMALE'}" key="gender"/>
            <s:radio list="{'MENTEE','MENTOR'}" key="role"/>
            <s:select list="{'Armenia','Russia','USA'}" key="country"/>
            <s:submit key="signUp" class="btn-danger submit" style="margin-left: 120px"/>

        </s:form>

        <a href="/pages/loginForm.jsp"><s:text name="signUp"/></a>
    </div>

    <div class="col-sm-4">

    </div>
</div>
</body>
</html>
