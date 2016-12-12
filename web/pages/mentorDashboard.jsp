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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dashboard.css">
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/js/mentorDashboard.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}\css\LoginRegister.css" media="screen"/>

</head>
<body>
<s:set var="country" value="%{#application.country}"/>
<s:set var="map" value="%{#application.category}"/>
<s:if test="update">
    <script>
        $(document).ready(function () {
            showUpdateArea();
        })
    </script>
</s:if>

<s:if test="updatePassword">
    <script>
        $(document).ready(function () {
            showchangePassswordArea();
        })
    </script>
</s:if>


<%--start  header--%>
<div class="header">
    <div class="col-lg-1">
        <a href="${pageContext.request.contextPath}/pages/mentorDashboard.jsp"><img
                src="${pageContext.request.contextPath}/images/icon_-15.png" class="defaultImage" alt="">
            <h1 class="badge" style="position: absolute"><s:property value="user.name"/><s:property
                    value="user.surname"/></h1></a>
    </div>

    <div class="col-lg-1 col-lg-offset-7">
        <div class="col-lg-5">
            <div class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="${pageContext.request.contextPath}/images/icon_-15.png" alt="" class="requestImg"/>
                    <s:if test="requestCount!=0">
                        <span class="spanreq badge"><s:property value="requestCount"/></span>
                    </s:if>
                </a>
                <ul class="dropdown-menu">
                    <s:iterator value="userList">
                        <li><a href="#"><s:property value="name"/><s:property value="surname"/></a></li>
                        <a href="confirmRequest.action?friendId = <s:property value="id"/>"><span class="badge">confirm</span></a><a href="#"><span
                            class="badge">deleteRequest</span></a>
                        <br>
                    </s:iterator>
                </ul>
            </div>
        </div>
        <div class="col-lg-5 col-lg-offset-1">
            <div class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="${pageContext.request.contextPath}/images/message.png" alt="" class="imgMessage"/>
                    <span class="spanmessage badge">1</span></a>
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
                    <li><a href="#" id="updateAccount">Update <i class="glyphicon glyphicon-refresh"></i></a></li>
                    <li><a href="#" id="deleteAccount">Delete Account <i class="glyphicon glyphicon-trash"></i></a></li>
                    <li><a href="#" id="changePassword">Change Password <i class="glyphicon glyphicon-lock"></i></a>
                    </li>
                </ul>
            </div>

            <div id="dialog-confirm" title="Warning!" style="display: none">
                <h5><span class="warn ui-icon ui-icon-alert"></span> Are you sure to delete your account?</h5>
            </div>

            <div id="dialog-form" title="Update Account" style="display: none">

                <s:form id="updateForm" action="updateAccount.action">

                    <s:textfield key="name" value="%{user.name}" name="name"
                                 class="text ui-widget-content ui-corner-all" cssClass="input"/>

                    <s:textfield key="surname" value="%{user.surname}" name="surname"
                                 class="text ui-widget-content ui-corner-all" cssClass="input"/>
                    <s:select key="country"
                              headerKey="%{user.country.id}"
                              headerValue="%{user.country.name}"
                              list="country"
                              listKey="id"
                              listValue="name"
                              name="countryId"/>

                </s:form>
            </div>

            <div id="changePassword-form" title="Change Password" style="display: none">


                <s:form id="changePasswordForm" action="changePassword.action">

                    <s:password key="currentPassword" value=""
                                class="text ui-widget-content ui-corner-all" cssClass="input"/>

                    <s:password key="newPassword" value=""
                                class="text ui-widget-content ui-corner-all" cssClass="input"/>

                    <s:password key="confirmPassword" value=""
                                class="text ui-widget-content ui-corner-all" cssClass="input"/>
                </s:form>
            </div>

        </div>

        <div class="col-lg-5 col-lg-offset-1">
            <a href="logOut.action"><img
                    src="${pageContext.request.contextPath}/images/log_out.png" class="imgLogout"/></a>

        </div>
    </div>
</div>

<%--End header--%>


<div class="container-fluid">

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


                        </a>
                        </li>

                    </ul>
                </div>

            </div>
        </div>

        <div class="col-md-5" style="background: rgba(152, 150, 150, 0.06); height: 100%">

            <h4 class="choosetext text-center" id="categ"><a href="#">Choose your category</a></h4>
            <div class="col-md-6" id="categorstyle" style="display:  none">

                <div class="nav-side-menu list" id="cateories">

                    <div class="brand">Categories</div>

                    <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>

                    <div class="menu-list">
                        <ul class="menu-content" class="menu-content collapse out">
                            <s:iterator var="mapsKey" value="#map">
                                <li style="list-style-type: none" data-toggle="collapse"
                                    data-target="#<s:property value="key"/>">
                                    <a href="#"><s:property value="key"/></a>
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

        <div class="col-md-4">
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