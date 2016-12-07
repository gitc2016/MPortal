<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: RuBen
  Date: 24.11.2016
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/jquery/jquery-3.1.0.min.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/search.css">
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/js/search.js"></script>

</head>
<body>
<s:set var="map" value="%{#application.category}"/>
<%--<s:set var="searchList" value="%{#advanceSerachList}"/>--%>
<s:form action="searchForm" method="POST">
    <s:textfield value="searchKeyword" name="searchKeyword" onkeyup="searchInfo()"/>
</s:form>
<div id="searchList">

    <s:if test="%{advanceSerachList!=null}">
        <s:iterator value="advanceSerachList">
            <a href="#"><s:property value="name"/></a>
            <br>
        </s:iterator>
    </s:if>
    <s:elseif test="%{advanceSerachList==null}">
        <s:iterator value="userList">
            <a href="#"><s:property value="name"/></a>
            <br>
        </s:iterator>
    </s:elseif>

</div>

<span id="advancedSearch"><a href="#">advancedSearch</a></span>


<div id="advancedSearchDiv" style="display: none">


    <%--<s:form action="searchKeyword" method="POST">--%>

    <ul>
        <s:iterator var="mapsKey" value="#map">
            <li data-toggle="collapse" data-target="#<s:property value="key"/>"
                class="li collapsed active">
                <a href="#"><s:property value="key"/></a>
            </li>
            <ul class="sub-menu collapse" id="<s:property value="key"/>">
                <s:iterator value="#mapsKey.value" var="mapsValue">
                    <s:property value="#mapsValue.id"/> <s:property value="searchKeyword"/>
                    <li class="li"><a
                            href="searchKeyword.action?categoryId=<s:property value="#mapsValue.id"/>&userName=<s:property value="searchKeyword"/>"><s:property
                            value="name"/> </a></li>
                </s:iterator>
            </ul>
        </s:iterator>
    </ul>
    <%--<s:submit value="submit"/>--%>
    <%--</s:form>--%>
</div>
<%--<div id="searchList">--%>

<%--<s:if test="%{advanceSerachList!=null}">--%>
<%--<s:iterator value="advanceSerachList">--%>
<%--<a href="#"><s:property value="name"/></a>--%>
<%--<br>--%>
<%--</s:iterator>--%>
<%--</s:if>--%>
<%--<s:elseif test="%{advanceSerachList==null}">--%>
<%--<s:iterator value="userList">--%>
<%--<a href="#"><s:property value="name"/></a>--%>
<%--<br>--%>
<%--</s:iterator>--%>
<%--</s:elseif>--%>

<%--</div>--%>

<%--<span id="advancedSearch"><a href="#">advancedSearch</a></span>--%>


<%--<div id="advancedSearchDiv" style="display: none">--%>


<%--&lt;%&ndash;<s:form action="searchKeyword" method="POST">&ndash;%&gt;--%>

<%--<ul>--%>
<%--<s:iterator var="mapsKey" value="#map">--%>
<%--<li data-toggle="collapse" data-target="#<s:property value="key"/>"--%>
<%--class="li collapsed active">--%>
<%--<a href="#"><s:property value="key"/></a>--%>
<%--</li>--%>
<%--<ul class="sub-menu collapse" id="<s:property value="key"/>">--%>
<%--<s:iterator value="#mapsKey.value" var="mapsValue">--%>
<%--<s:property value="#mapsValue.id"/> <s:property value="searchKeyword"/>--%>
<%--<li class="li"><a href="searchKeyword.action?categoryId=<s:property value="#mapsValue.id"/>&userName=<s:property value="searchKeyword"/>"><s:property value="name"/> </a></li>--%>
<%--</s:iterator>--%>
<%--</ul>--%>
<%--</s:iterator>--%>
<%--</ul>--%>
<%--&lt;%&ndash;<s:submit value="submit"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</s:form>&ndash;%&gt;--%>
<%--</div>--%>

</body>
</html>
