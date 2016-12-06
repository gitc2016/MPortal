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
    <script src="${pageContext.request.contextPath}/js/searchKeyword.js"></script>


    <script>

        var request = new XMLHttpRequest();
        function searchInfo() {
            var name = document.vinform.name.value;
            var url = "searchKeyword.action?val=" + name;

            try {
                request.onreadystatechange = function () {
                    if (request.readyState == 4) {
                        var val = request.responseText;
                        document.getElementById('searchList').innerHTML = val;
                    }
                }//end of function
                request.open("POST", url, true);
                request.send();
            } catch (e) {
                alert("Unable to connect to server");
            }
        }
    </script>
</head>
<body>
<s:form action="search" method="POST">
    <s:textfield value="searchKeyword" name="searchKeyword" onkeyup="searchInfo()"/>
</s:form>

<div id="searchList">
    <s:iterator value="userList">
        <a href="#"><s:property value="name"/></a>
        <br>
    </s:iterator>
</div>

<span id="advancedSearch"><a href="#">advancedSearch</a></span>

<div id="advancedSearchDiv" style="display: none">
    <s:form action="searchKeyword" method="POST">
        <s:radio list="{'MALE','FEMALE'}" key="gender"/>
        <s:radio list="{'MENTEE','MENTOR'}" key="role"/>
        <s:select list="{'Armenia','Russia','USA'}" key="country"/>
        <s:submit value="submit"/>
    </s:form>
</div>

</body>
</html>
