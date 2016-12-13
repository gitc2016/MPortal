<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: gtc-user29
  Date: 12/6/2016
  Time: 12:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Choose</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}\css\choose.css"
          media="screen"/>
</head>
<body>
<div class="center">

    <p>
        <img src="${pageContext.request.contextPath}/images/logo.png" class="text-center">
        MPortal</p>

    <div class="col-lg-5 col-lg-offset-4">
        <div class="col-lg-12  div">

            <a href="/mentorpage">
                <button type="button" class="btn btn-info submit"><h4>I am a mentor</h4></button>
            </a>
            <a href="/menteepage">
                <button type="button" class="btn btn-info submit"><h4>I am a mentee</h4></button>
            </a>
        </div>
    </div>

</div>
</body>
</html>
