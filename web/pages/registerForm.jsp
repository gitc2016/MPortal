<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="S" uri="/struts-tags" %>
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
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/LoginRegister.css"/>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="/js/mentorDashboard.js"></script>
</head>
<body>
<div class="center">
    <s:set var="country" value="%{#application.country}"/>
    <p>
        <img src="${pageContext.request.contextPath}/images/logo.png" class="text-center">
        MPortal</p>

    <div class="col-sm-4 col-sm-offset-4">
        <s:form action="registerForm.action" method="post">
            <s:textfield key="name" name="user.name" cssClass="input"/>
            <s:textfield key="surname" name="user.surname" cssClass="input"/>
            <s:textfield key="email" name="user.email" cssClass="input"/>
            <s:password key="password" name="user.password" cssClass="input"/>
            <s:password key="confirmPassword" name="user.confirmPassword" cssClass="input"/>
            <s:radio list="%{#application.gender}" key="gender" name="user.gender"/>
            <s:select key="country"
                      list="country"
                      listKey="id"
                      listValue="name"
                      name="countryId"/>
            <s:textfield id="datepicker" key="birthDate" name="user.birthDate"/>
            <s:submit key="signUp" class="btn-danger submitReg"/>
        </s:form>
        <a href="/pages/loginForm.jsp"><s:text name="signIn"/></a>
    </div>
</div>
</body>
</html>