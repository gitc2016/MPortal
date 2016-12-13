<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><tiles:getAsString name="title"/></title>
    <tiles:insertAttribute name="import"/>
</head>
<body>
<nav class="navbar  navbar-fixed-top header"  role="navigation">
    <div class="container">
        <tiles:insertAttribute name="header"/>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-sm-2">
        </div>
        <div id="pcon" class="col-sm-8">
            <tiles:insertAttribute name="content"/>
        </div>
        <div class="col-sm-2">
        </div>
    </div>
</div>

<div id="footer">
    <tiles:insertAttribute name="footer"/>
</div>


</body>
</html>
