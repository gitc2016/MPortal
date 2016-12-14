<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: levon
  Date: 12/12/16
  Time: 8:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<h1>Improve your information</h1>

<hr/>

<form id="" autocomplete="on" method="post">


    <div class="form-group ">
        <s:textarea name="description" placeholder="Describe you" cssClass="form-control" />
    </div>

    <div class="form-group ">
        <s:textfield name="expertise" placeholder="Expertise" cssClass="form-control"/>
    </div>

    <div class="form-group ">

        <s:textarea name="experience" placeholder="Experience \",\"" cssClass="form-control"/>
    </div>

    <div class="form-group ">
        <s:textarea name="skills" placeholder="Skills \",\"" cssClass="form-control"/>
    </div>



    <div class="submit">
        <s:submit value="Save" cssClass="btn btn-primary btn-lg"/>
    </div>
</form>


