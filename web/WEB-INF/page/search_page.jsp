<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: levon
  Date: 12/13/16
  Time: 2:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<h4>Search mentor</h4>
<div id="search-container" class="container">
    <div class="panel">
        <div class="panel-body">

            <div class="row">

                <div class="col-sm-6 col-md-3">

                    <input type="hidden" name="" value=""/>
                    <select name="" class="form-control" size="1" data-none-text="Category" style="height:36px">
                        <option value="">Category</option>
                        <option value="1">JS</option>
                        <option value="2">Java</option>
                        <option value="2">Phyton</option>
                        <option value="2">C++</option>
                        <option value="2">Angular JS</option>
                    </select>
                </div>
                <div class="col-sm-6 col-md-3">
                    <s:textfield name="name" placeholder="Mentor name"/>
                </div>


            <div class="col-sm-3 col-md-2">
                <div class="submit"><input id="submit-less-options" class="btn btn-primary btn-block" type="submit"
                                           style="" value="Filter Results"/></div>
            </div>
            </div>
        </div>
    </div>
</div>
<div class="card col-sm-6 col-lg-4 ">
    <div class="mm-wgt panel panel-default with-button">


        <div class="panel-footer clearfix media">
            <div class="pull-left">
                <a href="/members/user-profile/209306/type:mentor"
                   title="View Valerio Zanini's Profile">
                    <img class="profile-pic img-circle" src="/images/MPLogo120.png" alt="Valerio Zanini"/>
                </a></div>
            <div class="media-body">
                <p class="user-name">
                    <a href="/members/user-profile/209306/type:mentor">Valerio Zanini</a></p>


                <p class="user-info">
                    <small>
                        <span class="glyphicon glyphicon-map-marker"></span> Washington, DC, United States<br/>
                    </small>
                    <small>
                        <span class="glyphicon glyphicon-tag" title="Industry"></span>
                        E-Commerce <br/>
                    </small>
                </p>
                <hr/>
            </div><!-- end .media-body -->


        </div> <!-- end dashboard's .clearfix or footer_class or .affinity-bar -->


        <div class="panel-body overflow-hidden wrapper">
            <h4>How I Can Help</h4>
            <p>
                <small>
                    Accounting and Finance&raquo; Financial Planning
                </small>
            </p>
            <div class="card-top-content"><p>How to create a new product, what to focus on, how to prioritize and
                iterate on development
                What kind of customers to address, and how to reach them. Marketing, financial, operations</p></div>
        </div> <!-- .panel-body -->
        <hr/>
        <a href="/members/user-profile/209306/type:mentor" class="btn btn-primary pull-left">Connect <span
                class="glyphicon glyphicon-circle-arrow-right"></span></a></div> <!-- .mm-wgt .panel -->
</div>



