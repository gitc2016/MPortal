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
    <script src="${pageContext.request.contextPath}/js/mentorDashboard.js"></script>


    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dashboard.css">
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
<s:set var="map" value="%{#application.category}"/>
<div class="header">
    <div class="col-lg-1">
        <a href="${pageContext.request.contextPath}/pages/mentorDashboard.jsp"><img
                src="${pageContext.request.contextPath}/images/icon_-15.png" class="defaultImage" alt=""></a>
        <h1 class="badge" style="position: absolute"><s:property value="user.name"/><s:property value="user.surname"/></h1>
    </div>
    <%--search div--%>
    <div class="searchDiv col-lg-4 col-lg-offset-3">
        <%--<s:form action="searchForm" method="POST">--%>
            <s:textfield value="searchKeyword" name="searchKeyword" id="sear"/>
        <%--</s:form>--%>

        <div id="searchList">
            <s:if test="%{advanceSerachList!=null}">
                <s:iterator value="advanceSerachList">
                    <a href="#"><s:property value="name"/><s:property value="surName"/></a>
                    <%--must be if check--%>
                    <a href="request.action?acceptrID=<s:property value="id"/>"><span class="sendRequest badge"> SEND REQUEST</span></a>
                    <br>
                </s:iterator>
            </s:if>
            <s:elseif test="%{advanceSerachList==null}">
                <s:iterator value="userList">
                    <a href="#"><s:property value="name"/><s:property value="surName"/></a>
                    <%--must be if check--%>
                    <a href="request.action?acceptrID=<s:property value="id"/>"><span class="sendRequest badge"> SEND REQUEST</span></a>
                    <br>
                </s:iterator>
            </s:elseif>
        </div>

        <span id="advancedSearch"><a href="#">advancedSearch</a></span>

        <div id="advancedSearchDiv" style="display: none">
            <ul>
                <s:iterator var="mapsKey" value="#map">
                    <li data-toggle="collapse" data-target="#<s:property value="key"/>"
                        class="li collapsed active">
                        <a href="#"><s:property value="key"/></a>
                    </li>
                    <ul class="sub-menu collapse" id="<s:property value="key"/>">
                        <s:iterator value="#mapsKey.value" var="mapsValue">
                            <li class="li"><a
                                    href="searchKeyword.action?categoryId=<s:property value="#mapsValue.id"/>&userName=<s:property value="searchKeyword"/>"><s:property
                                    value="name"/> </a></li>
                        </s:iterator>
                    </ul>
                </s:iterator>
            </ul>
            <s:submit value="submit"/>
        </div>
    </div>

    <div class="col-lg-1">
        <div class="col-lg-5 col-lg-offset-1">
            <div class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="${pageContext.request.contextPath}/images/message.png" alt=""
                       class="imgMessage">
                    <span class="badge spanmessage">1</span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">User name</a></li>
                </ul>

            </div>
        </div>

    </div>

    <div class="col-lg-1">
        <div class="col-lg-5">
            <div class="dropdown">
                <a href="#" class="dropdown-toggle"
                   data-toggle="dropdown"><img
                        src="${pageContext.request.contextPath}/images/setting.png" class="imgSettings"/></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Update <i class="glyphicon glyphicon-refresh"></i> </a></li>
                </ul>
            </div>
        </div>

        <div class="col-lg-5 col-lg-offset-1">
            <a href="${pageContext.request.contextPath}/pages/loginForm.jsp"><img
                    src="${pageContext.request.contextPath}/images/log_out.png" class="imgLogout"/></a>

        </div>
    </div>
</div>


<div class="container-fluid">
    <div class="row">
        <div class="col-md-3">
            <div class="sidebar-nav menubar">
                <div class="well">
                    <ul class="nav nav-list" id="menu">
                        <li><a href="${pageContext.request.contextPath}/pages/menteeDashboard.jsp">Home <i
                                class="glyphicon glyphicon-home"></i></a></li>
                        <li><a href="#">Upload Photo <i class="glyphicon glyphicon-upload"></i> <i
                                class="glyphicon glyphicon-picture"></i>
                        </a></li>
                    </ul>
                </div>

            </div>
        </div>

        <div class="col-md-9">

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
</body>
</html>
