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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mentorDashboard.css">
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/jquery/jquery-3.1.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/mentorDashboard.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<div class="header">
    <img src="${pageContext.request.contextPath}/images/icon_-15.png" class="defaultImage" alt="">

</div>
<div class="container-fluid" style="background-color: #d3d3d3">
    <div class="row">
    <div class="col-md-3">
        <div class="sidebar-nav menubar">
            <div class="well">
                <ul class="nav nav-list" id="menu">
                    <h5 id="menutext">Mentor Menu</h5>
                    <li><a href="${pageContext.request.contextPath}/pages/mentorDashboard.jsp">Home <i class="glyphicon glyphicon-home"></i></a></li>
                    <li><a href="#">Messages <i class="glyphicon glyphicon-envelope"></i> <span
                            class="badge badge-info">1</span></a></li>
                    <li><a href="#">Upload Photo <i class="glyphicon glyphicon-upload"></i>  <i class="glyphicon glyphicon-picture"></i>
                    <li class="active"><a href="#">Update <i class="glyphicon glyphicon-refresh"></i></a></li>
                    <li class="divider"></li>
                    <li><a href="#">Settings <i class="glyphicon glyphicon-cog"></i> </a></li>
                    <li><a href="${pageContext.request.contextPath}/pages/loginForm.jsp">Logout <i class="glyphicon glyphicon-log-out"></i></a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="col-md-9">

    <h4 class="choosetext">Choose your category</h4>

            <div class="col-md-6" id="categorstyle">

                <div class="nav-side-menu list">
                    <div class="brand">Categories</div>
                    <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>

                    <div class="menu-list">

                        <ul id="menu-content" class="menu-content collapse out">


                            <li data-toggle="collapse" data-target="#products" class="collapsed active">
                                <a href="#">IT <span class="arrow"></span></a>
                            </li>
                            <ul class="sub-menu collapse" id="products">
                                <li><a href="#">M. Brown</a></li>
                                <li><a href="#">K. Smith</a></li>
                                <li><a href="#">G. Cameron</a></li>
                                <li><a href="#">A. Jhones</a></li>

                            </ul>


                            <li data-toggle="collapse" data-target="#service" class="collapsed">
                                <a href="#"> Banking <span class="arrow"></span></a>
                            </li>
                            <ul class="sub-menu collapse" id="service">
                                <li>N. Marks</li>
                                <li>D. Lourens</li>
                                <li>A. Smith</li>
                            </ul>


                            <li data-toggle="collapse" data-target="#new" class="collapsed">
                                <a href="#"> Painting <span class="arrow"></span></a>
                            </li>
                            <ul class="sub-menu collapse" id="new">
                                <li>L. da Vinci</li>
                                <li>W. Turner</li>
                                <li>A. Modigliani</li>
                                <li>M. Utrillo</li>
                                <li>J. Zbukvich</li>
                            </ul>


                        </ul>
                    </div>


                </div>

            </div>


    </div>

        <div id="chatbox">
            <div id="friendslist">

                <div id="friends">
                    <div class="friend">
                        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/1_copy.jpg" />
                        <p>
                            <strong>Jack Badev</strong>
                        </p>
                        <div class="status available"></div>
                    </div>

                    <div id="search">
                        <input type="text" id="searchfield" value="Search contacts..." />
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
                        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/1_copy.jpg" />
                        <div class="bubble">
                            Really cool stuff!
                            <div class="corner"></div>
                            <span>3 min</span>
                        </div>
                    </div>

                    <div class="message right">
                        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/2_copy.jpg" />
                        <div class="bubble">
                            Can you share a link for the tutorial?
                            <div class="corner"></div>
                            <span>1 min</span>
                        </div>
                    </div>

                </div>

                <div id="sendmessage">
                    <input type="text" value="Send message..." />
                    <button id="send"></button>
                </div>

            </div>
        </div>

    </div>
    </div>
</body>
</html>
