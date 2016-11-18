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
    <title>MPortal</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="..\css\login.css" media="screen"/>
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
<div class="container-fluid">
    <div class="col-sm-7 col-sm-offset-5">
        <form action="mailRegister.action" method="post">
        <div class="col-sm-5 " style="margin-top:250px;margin-left: -91px">
              <s:textfield key="mailcode" cssClass="input" />
        </div>
        <div class="col-sm-2" style="padding-left: 0 !important;margin: 274px 0px 0 -74px;">
            <s:submit key="signIn"  class="btn btn-danger"/>
        </div>
        </form>
    </div>
</div>


</body>
</html>
