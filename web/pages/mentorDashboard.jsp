<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: levon
  Date: 11/15/16
  Time: 3:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/jquery/jquery-3.1.0.min.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mentorDashboard.css">
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/js/mentorDashboard.js"></script>
</head>
<body>
<s:set var="map" value="%{#application.category}"/>
<div class="header">
    <a href="${pageContext.request.contextPath}/pages/mentorDashboard.jsp"><img src="${pageContext.request.contextPath}/images/icon_-15.png" class="defaultImage" alt=""></a>
    <ul>
        <li style="list-style: none;margin-left: 1150px; margin-top: -30px;"><a href="#">
            <img src="${pageContext.request.contextPath}/images/icon_-15.png" alt="" style="width: 25px; height: 25px">
            <span class="badge" style="background-color: red; margin-top: -15px; margin-left: -15px">1</span></a></li>
        <li style="list-style: none; margin-left: 1205px; margin-top: -22px;"><a href="#"> <i class="glyphicon glyphicon-envelope"></i>
            <span class="badge" style="background-color: red; margin-top: -15px; margin-left: -8px">1</span></a></li>
    </ul>
</div>

<div class="container-fluid" style="background-color: #d3d3d3">
    <div class="row">
        <div class="col-md-3">
            <div class="sidebar-nav menubar">
                <div class="well">
                    <ul class="nav nav-list" id="menu">
                        <h5 id="menutext">Mentor Menu</h5>
                        <li><a href="${pageContext.request.contextPath}/pages/mentorDashboard.jsp">Home <i
                                class="glyphicon glyphicon-home"></i></a></li>
                        <li><a href="#">Upload Photo <i class="glyphicon glyphicon-upload"></i> <i
                                class="glyphicon glyphicon-picture"></i>
                        <li class="active"><a href="#">Update <i class="glyphicon glyphicon-refresh"></i></a></li>
                        <li><a href="#">Settings <i class="glyphicon glyphicon-cog"></i> </a></li>
                        <li><a href="${pageContext.request.contextPath}/pages/loginForm.jsp">Logout <i
                                class="glyphicon glyphicon-log-out"></i></a></li>
                    </ul>
                </div>

            </div>
        </div>

        <div class="col-md-9">
            <div class="col-md-6" id="categorstyle">
                <h4 class="choosetext" id="categ"><a href="#">Choose your category</a></h4>
                <div class="nav-side-menu list" id="categories">

                    <div class="brand">Categories</div>
                    <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>

                    <div class="menu-list">

                        <ul class="menu-content" class="menu-content collapse out">

                            <s:iterator var="mapsKey" value="#map">
                                <li data-toggle="collapse" data-target="#<s:property value="key"/>"
                                    class="collapsed active">
                                    <a href="#"><s:property value="key"/> <span class="arrow"></span></a>
                                </li>
                                <ul class="sub-menu collapse" id="<s:property value="key"/>">
                                    <s:iterator value="#mapsKey.value" var="mapsValue">
                                        <li><a href="#"><s:property value="name"/> </a></li>
                                    </s:iterator>
                                </ul>
                            </s:iterator>

                        </ul>
                    </div>

                </div>

            </div>

        </div>

        <div id="chatbox">
            <div id="friendslist">
                <div id="friends">
                    <div class="friend">

                        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/1_copy.jpg"/>
                        <p>
                            <strong>Jack Badev</strong>
                        </p>
                        <%--<div class="status available"></div>--%>
                    </div>

                    <div id="search">
                        <input type="text" id="searchfield" value="Search contacts..."/>
                    </div>
                </div>

            </div>

            <div id="chatview" class="p1">
                <div id="profile">

                    <div id="close">
                        <div class="cy"></div>
                        <div class="cx"></div>
                    </div>

                    <p>Miro Badev</p>
                </div>
                <div id="chat-messages">

                    <div class="message">
                        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/1_copy.jpg"/>
                        <div class="bubble">
                            Really cool stuff!
                            <div class="corner"></div>
                            <span>3 min</span>
                        </div>
                    </div>

                    <div class="message right">
                        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/2_copy.jpg"/>
                        <div class="bubble">
                            Can you share a link for the tutorial?
                            <div class="corner"></div>
                            <span>1 min</span>
                        </div>
                    </div>

                </div>

                <div id="sendmessage">
                    <input type="text" value="Send message..."/>
                    <button id="send"></button>
                </div>

            </div>
        </div>

    </div>
</div>
</div>
</body>
</html>
