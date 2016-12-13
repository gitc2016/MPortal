<%--
  Created by IntelliJ IDEA.
  User: KarenGasparyan
  Date: 05.11.2016
  Time: 14:48
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


    <ul class="nav navbar-nav navbar-right navbar-public">
        <li><a href="register.action" id="sign-in-butt" class="btn btn-secondary">Join</a></li>
        <li><a href="login.action" id="log-in-butt" class="btn btn-secondary">Log In</a></li>
    </ul>
    <ul id="lang-picker" class="text-center list-inline">
        <li><a href="#">Հայերեն</a></li>
        <li><a href="#">English</a></li>
    </ul>
</div><!--/.navbar-collapse -->

