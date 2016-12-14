<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: levon
  Date: 12/12/16
  Time: 9:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-sm-2">
</div>
<div class="col-sm-8">

<h1>Your profile information</h1>

<hr/>

<form id="" autocomplete="on" method="post">

    <div class="col-md-6">
        <div class="form-group ">
            <s:textfield name="firstName" placeholder="First name" cssClass="form-control" maxLength="50"/>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group ">
            <s:textfield name="lastName" placeholder="Last name" cssClass="form-control" maxLength="50"/>
        </div>
    </div>

    <div class="form-group ">
        <h4>Profile photo</h4>
        <s:file name="photo" cssClass="form-control"/>
    </div>

    <div class="form-group ">
        <s:textfield name="email" placeholder="Email" cssClass="form-control" maxLength="255"/>
    </div>

    <div class="form-group ">
        <s:password name="password" placeholder="Password" cssClass="form-control"/>
    </div>

    <div class="form-group ">
        <s:textfield name="confirmPassword" placeholder="Confirm Password" cssClass="form-control"/>
    </div>


        <div class="form-group ">
            <s:textfield name="country"  placeholder="Country" cssClass="form-control" maxLength="50"/>
        </div>


        <div class="form-group ">
            <s:textfield name="city" placeholder="City" cssClass="form-control" maxLength="50"/>
        </div>


        <div class="form-group ">
            <s:textfield name="state" placeholder="State" cssClass="form-control" maxLength="50"/>
        </div>

        <div class="form-group ">
            <s:textfield name="phone" placeholder="Phone number" cssClass="form-control" maxLength="50"/>
    </div>

        <div class="form-group ">
            <h4>Gender</h4>
            <select>
                <option>Male</option>
                <option>Female</option>
                <option>Other</option>
            </select>
        </div>


        <div class="form-group ">
            <h4>Languages</h4>
            AM:<input type="checkbox">
            RU:<input type="checkbox">
            US:<input type="checkbox">
        </div>


    <div class="submit">
        <s:submit name="password" cssClass="btn btn-primary btn-lg"/>
    </div>
</form>
</div>

<div class="col-sm-2">
</div>
