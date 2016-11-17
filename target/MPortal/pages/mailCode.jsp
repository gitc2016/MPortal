<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: gtc-user34
  Date: 11/17/2016
  Time: 3:17 PM
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

    <form action="mailRegister.action" method="post">
        <s:textfield key="mailcode" cssClass="input"/>
        <s:submit key="signIn" cssClass="submit"/>
    </form>
</div>

</body>
</html>
