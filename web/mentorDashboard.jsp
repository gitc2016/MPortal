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

    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="css/mentorDashboard.css">
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="jquery/jquery-3.1.0.min.js"></script>
    <%--<script src="js/mentorDashboard.js></script>--%>
    <script src="js/mentorDashboard.js"></script>

</head>
<body>

<div class="header">
    <img src="images/icon_-15.png" class="defaultImage" alt="">

</div>
<div class="container-fluid">
    <div class="col-md-3">
        <div class="sidebar-nav menubar">
            <div class="well">
                <ul class="nav nav-list" id="menu">
                    <h5 style="text-align: center">Mentor Menu</h5>
                    <li><a href="mentorDashboard.jsp">Home <i class="glyphicon glyphicon-home"></i></a></li>
                    <li><a href="#">Messages <i class="glyphicon glyphicon-envelope"></i> <span
                            class="badge badge-info">1</span></a></li>
                    <li><a href="#">Upload Photo <i class="glyphicon glyphicon-upload"></i>  <i class="glyphicon glyphicon-picture"></i>
                    <li class="active"><a href="#">Update <i class="glyphicon glyphicon-refresh"></i></a></li>
                    <li class="divider"></li>
                    <li><a href="#">Settings <i class="glyphicon glyphicon-cog"></i> </a></li>
                    <li><a href="index.jsp">Logout <i class="glyphicon glyphicon-log-out"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
    <%--< class="row profile">--%>

    <div class="col-md-9">

    <h4 class="choosetext">Choose your category</h4>
    <s:form id="category" action="categoryMentor" method="POST">

        <select name="category">
            <option name="it">it</option>
            <option name="math">math</option>
            <option name="fizic">fizic</option>
            <s:submit value="save"/>
        </select>
    </s:form>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
    </div>
        <%--<s:textfield key="categoryName" />--%>
        <%--<s:textfield key="workExperience" />--%>

        <%--<s:select list="" headerKey="" headerValue="" listKey="">--%>

        <%--</s:select>--%>

        <%--<s:select list="" listKey="" listValue="">--%>

        <%--</s:select>--%>
        <%--<select name="">--%>
            <%--<s:iterator>--%>
            <%--<option value="id" onclick="func"><s:property value="name"/></option>--%>
        <%--</s:iterator>--%>
        <%--</select>--%>
        <%--onclick = "funName(s:prpertie)"--%>


        <div id="chatbox">
            <div id="friendslist">
                <div id="topmenu">
                    <span class="friends"></span>
                    <span class="chats"></span>
                    <span class="history"></span>
                </div>

                <div id="friends">
                    <div class="friend">
                        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/1_copy.jpg" />
                        <p>
                            <strong>Jack Badev</strong>
                            <span>mirobadev@gmail.com</span>
                        </p>
                        <div class="status available"></div>
                    </div>

                    <div class="friend">
                        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/2_copy.jpg" />
                        <p>
                            <strong>Martin Joseph</strong>
                            <span>marjoseph@gmail.com</span>
                        </p>
                        <div class="status away"></div>
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
                    <span>miro@badev@gmail.com</span>
                </div>
                <div id="chat-messages">
                    <label>Thursday 02</label>

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

                    <div class="message">
                        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/1_copy.jpg" />
                        <div class="bubble">
                            Yeah, hold on
                            <div class="corner"></div>
                            <span>Now</span>
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

                    <div class="message">
                        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/1_copy.jpg" />
                        <div class="bubble">
                            Yeah, hold on
                            <div class="corner"></div>
                            <span>Now</span>
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
