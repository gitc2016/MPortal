<%--
  Created by IntelliJ IDEA.
  User: levon
  Date: 12/12/16
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="navbar-header">
    <img class="logo" src="/images/MPLogo120.png"  alt="">
    <a class="navbar-brand" href="../index.html">
        MPortal
    </a>

    <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
</div>
<div class="navbar-collapse collapse">
    <ul class="nav navbar-nav ">
        <li class="visible-xs visible-sm">
            <a href="/my/dashboard">
                <img class="profile-pic pull-left" src="/images/MPLogo120.png"
                     alt="Levon Aloyan"/>
                Levon </a>
        </li>

        <li><a href="">Mentors</a></li>
        <li><a href="">Mentee's</a></li>
        <button>available</button>

    </ul>

    <ul class="nav navbar-nav navbar-right">
        <li id="mail"><a href="/my/connections" class="count"><span
                class="glyphicon glyphicon-envelope"></span><span
                id="inbox-count" class="count"></span></a></li>
        <li class="dropdown hidden-xs hidden-sm">
            <a href="/my/dashboard" class="dropdown-toggle">
                <img class="profile-pic pull-left" src="/images/MPLogo120.png"
                     alt="Levon Aloyan"/>
                Levon <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
                <li><a href="/my/profile">Profile & Settings</a></li>
                <li><a href="/logout">Logout</a></li>
            </ul>
        </li>

        <li class="visible-xs visible-sm"><a href="/my/profile">Profile & Settings</a></li>
        <li class="visible-xs visible-sm"><a href="/logout">Logout</a></li>

    </ul>
</div><!--/.navbar-collapse -->

