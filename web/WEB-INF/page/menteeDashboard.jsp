<%--
  Created by IntelliJ IDEA.
  User: levon
  Date: 12/11/16
  Time: 10:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-xs-12">
    <h1><span class="badge"><span class="glyphicon glyphicon-home"></span></span> My Dashboard</h1>
</div>
<div class="modal" tabindex="-1" role="dialog" id="entrepreneur-assessment-quiz">
    <div class="modal-dialog modal-lg" id="ea-quiz">
        <div class="modal-content">
            <form id="ajax_ea_form" method="post" action="/business_profiles/entrepreneurAssessment">
                <fieldset style="display:none;"><input type="hidden" name="_method" value="POST"/></fieldset>
                <div class="modal-header">
                    <button type="button" class="close ea-finish" data-dismiss="modal" aria-label="Close"
                            id="x-close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="ea-title">Want to improve your matches?</h4>
                    <ol class="breadcrumb" style="margin-bottom: 5px;">
                        <li class="arrow">
                            <button class="active breadcrumb-button" id="setup">
                                <a href="#">Setup</a>
                            </button>
                            <div class="inverted-active-arrow arrow-right"></div>
                        </li>
                        <li class="arrow">
                            <div class="not-first"></div>
                            <button class="breadcrumb-button" id="market-research">
                                <a href="#">Market Research</a>
                            </button>
                            <div class="arrow-right"></div>
                        </li>
                        <li class="arrow">
                            <div class="not-first"></div>
                            <button class="breadcrumb-button" id="finance">
                                <a href="#">Finance</a>
                            </button>
                            <div class="arrow-right"></div>
                        </li>
                        <li class="arrow">
                            <div class="not-first"></div>
                            <button class="breadcrumb-button" id="sales">
                                <a href="#">Sales</a>
                            </button>
                            <div class="arrow-right"></div>
                        </li>
                        <li class="arrow">
                            <div class="not-first"></div>
                            <button class="breadcrumb-button" id="planning">
                                <a href="#">Planning</a>
                            </button>
                            <div class="arrow-right"></div>
                        </li>
                        <li class="arrow">
                            <div class="not-first"></div>
                            <button class="breadcrumb-button" id="results">
                                <a href="#">Results</a>
                            </button>
                            <div class="arrow-right"></div>
                        </li>
                    </ol>
                </div>
                <div class="modal-body" id="ea-body">
                    <div id="starting-page">
                        <h4 class="question">To improve your matches, take this 5-minute startup quiz</h4>
                        <div class="answers">
                            <h5>This quiz will help you:</h5>
                            <ul>
                                <li>Get better mentor matches</li>
                                <li>Assess the progress of your startup</li>
                                <li>Have mentors better understand you</li>
                                <li id="ea-response" style="display:none"></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default left-oriented last-step" id="go-back">Back
                    </button>
                    <button type="button" class="btn btn-primary next-step" id="get-started"><span
                            id="first-button">Get Started</span><input id="quiz-submit" type="submit"
                                                                       value="Next"/></button>
                    <button type="button" class="btn btn-default ea-finish" data-dismiss="modal"
                            id="finish-later">I will do this later
                    </button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<div id="scon" class="col-sm-12 col-md-4">
    <div class="row">
        <div class="col-sm-6 col-md-12">

            <div class="panel panel-default profile-card">
                <div class="panel-heading">My Profile &amp; Settings</div>
                <div class="panel-body">


                    <div class=" clearfix media">
                        <div class="pull-left">
                            <a href="/members/user-profile/210624/type:dashboard"
                               title="View Levon Aloyan's Profile">
                                <img class="profile-pic img-circle"
                                     src="/img/profile/21/210/2106/210624-profile-115.jpg" alt="Levon Aloyan"/>
                            </a></div>
                        <div class="media-body">
                            <p class="user-name">
                                <a href="/members/user-profile/210624/type:dashboard">Levon Aloyan</a></p>


                            <p class="user-info">
                                <small>
                                    <span class="glyphicon glyphicon-map-marker"></span> United States<br/>
                                </small>
                            </p>
                            <div class="pull-left">
                                <div class="badges">
                                    <table>
                                        <tbody>
                                        <tr>
                                            <td>Recent Activity</td>
                                            <td>
                                                <a href="/learn-more/badges" target="_blank"
                                                   class="badge badge-offers-1" data-toggle="tooltip"
                                                   data-container="body"
                                                   title="Has been active in the last 12 months"></a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div><!-- end .media-body -->


                    </div> <!-- end .well or footer_class -->
                    <div class="clearfix wrapper">
                        <p>
                        <p>sdfgsdfg</p></p>
                        <a class="btn btn-tertiary btn-lg btn-block" href="/my/profile">Manage Profile &amp;
                            Settings</a>
                    </div> <!-- end dashboard's .clearfix or footer_class or .affinity-bar -->


                </div>
            </div>

        </div>


        <div class="col-sm-6 col-md-12 hidden-xs">
            <div class="panel panel-default" id="groups">
                <div class="panel-heading">My Groups</div>
                <div class="panel-body">
                    <div class="alert alert-warning"><span class="glyphicon glyphicon-exclamation-sign"></span>
                        You have not <a href="/groups/search">joined</a> any Groups yet.
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="pcon" class="col-sm-12 col-md-8">
    <div class="row">


        <div class="col-xs-12">
            <div class="panel panel-default">
                <div class="panel-heading">My Conversations</div>
                <div class="panel-body">
                    <div class="alert alert-warning"><span class="glyphicon glyphicon-exclamation-sign"></span>
                        You haven't connected with any mentors yet. <a href="/people/search/mentors"
                                                                       class="btn btn-primary btn-md pull-right dashboard-button"
                                                                       style="margin-top: -7px;">Search for
                            Mentors</a></div>
                </div>
            </div>
        </div>


        <div class="col-xs-12 visible-xs">
            <div class="panel panel-default" id="groups">
                <div class="panel-heading">My Groups</div>
                <div class="panel-body">
                    <div class="alert alert-warning"><span class="glyphicon glyphicon-exclamation-sign"></span>
                        You have not <a href="/groups/search">joined</a> any Groups yet.
                    </div>
                </div>
            </div>
        </div>


        <div class="col-xs-12">
            <div class="panel panel-default" id="qa">
                <div class="panel-heading">
                    My Q &amp; A
                </div>
                <div class="panel-body tab-content">


                    <div class="alert alert-warning"><span class="glyphicon glyphicon-exclamation-sign"></span>
                        You have not asked or answered any questions yet.
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
