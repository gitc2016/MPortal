<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/14/2016
  Time: 11:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MPortal</title>
    <link rel="stylesheet" type="text/css" href="..\css\login.css" media="screen"/>
    <style>
        span{
            color: red;
            font-weight: bold;
            padding-left: 150px;
        }
    </style>
</head>
<body>
<div style="width: 800px;height:500px;margin:0 auto;padding-top: 150px;padding-left: 100px">

    <s:form action="loginForm.action" method="post">
        <s:textfield key="login" cssClass="input"/><br><br>
        <s:password key="password" cssClass="input"/><br><br>
        <s:submit key="signIn" cssClass="submit"/>
    </s:form>

    <s:a href="/pages/registerForm.jsp"><s:text name="signUp"/></s:a>

</div>

<s:a action="login" namespace="/">
    <s:param name="request_locale">en</s:param>
    <s:text name="en"/>
</s:a>

<s:a action="login" namespace="/">
    <s:param name="request_locale">arm</s:param>
    <s:text name="arm"/>
</s:a>

</body>
</html>
