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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}\css\LoginRegister.css" media="screen"/>
</head>
<body>

<div class="center">
    <p>
        <img src="${pageContext.request.contextPath}/images/logo.png" class="text-center">
        MPortal</p>

    <div class="col-sm-4 col-sm-offset-4">
        <s:form action="loginForm.action" method="post">
            <s:textfield key="login" cssClass="input form-control"/>
            <s:password key="password" cssClass="input form-control"/>
            <s:submit key="signIn" class="btn-danger submitLog"/>
        </s:form>

<%--&lt;%&ndash;TODO locale fix&ndash;%&gt;--%>
        <%--<s:a action="login" namespace="/">--%>

        <s:url var="localeEN" action="locale" namespace="/">
            <s:param name="request_locale">en</s:param>

        </s:url>

        <s:url var="localeAM" action="locale" namespace="/">
            <s:param name="request_locale">arm</s:param>
            <s:text name="arm"/>
        </s:url>
        <s:a href="%{localeEN}">
            <s:text name="en"/>
        </s:a>
        <s:a href="%{localeAM}">
            <s:text name="arm"/>
        </s:a>
        <s:a href="/pages/registerForm.jsp" cssClass="a"><s:text name="signUp"/></s:a>

    </div>

</div>


</body>
</html>
