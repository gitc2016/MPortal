<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html" ; charset="UTF-8">
    <title>Mentee Dashboard</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/menteeDashboard.css">


</head>
<body>
<div class="container-fluid">
    <div class="row">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <%--header--%>

                <ul class="nav navbar-nav">
                    <li>
                        <button type="submit" class="btn  btn-link" data-toggle="modal" data-target="#myModal4">Edite
                        </button>
                        <%--edite popup page--%>
                        <div class="modal fade" id="myModal4" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Edite your account</h4>
                                    </div>
                                    <div class="modal-body">

                                        <s:form action="edit.action">
                                            <s:textfield name="name" label="Name" value="%{#session.User.name}"/>
                                            <s:textfield name="surname" label="Surname"
                                                         value="%{#session.User.surname}"/>
                                            <s:password name="password" label="Password"
                                                        value="%{#session.User.password}"/>
                                            <%--....--%>
                                            <s:submit value="save"/>

                                        </s:form>

                                    </div>

                                </div>
                            </div>
                        </div>


                    </li>
                    <li>
                        <button type="button" class="btn  btn-link" data-toggle="modal" data-target="#myModal">Delete
                        </button>
                        <%--delete popup page--%>
                        <div class="modal fade" id="myModal" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Delete your account</h4>
                                    </div>
                                    <div class="modal-body">
                                        <p>Confirm delete action</p>
                                        <s:form action="delete.action">
                                            <s:submit value="delete"/>

                                        </s:form>
                                    </div>

                                </div>

                            </div>
                        </div>

                    </li>

                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><s:a href="logOut"><span class="glyphicon glyphicon-log-in"></span> Logout</s:a></li>
                </ul>
            </div>
        </nav>

        <div class="col-md-4" style="height: 800px;">


            <article>
                <img src="images/defaultphoto.jpg" class="img-rounded" width="250" height="200">
            </article>
            <s:a href="#">
                <button class="btn btn-xs btn-primary">upload photo</button>
            </s:a>

            <div class="sidebar-nav menubar">
                <div class="well">
                    <ul class="nav nav-list" id="menu">
                        <h5 id="menutext">Mentee Menu</h5>
                        <li><a href="${pageContext.request.contextPath}/pages/menteeDashboard.jsp">Home <i
                                class="glyphicon glyphicon-home"></i></a></li>
                        <li><a href="#">Messages <i class="glyphicon glyphicon-envelope"></i> <span
                                class="badge badge-info">1</span></a></li>
                        <li><a href="#">Upload Photo <i class="glyphicon glyphicon-upload"></i> <i
                                class="glyphicon glyphicon-picture"></i>
                        </a>
                    </ul>
                </div>
            </div>

        </div>
        <div class="col-md-8">
            <div class="col-md-6" id="chatbox" style=" height: 800px">

                <h4>Chatbox must be here...</h4>

            </div>
            <div class="col-md-6">


                <h3 id="cats"> Categories</h3><br>


                <div class="nav-side-menu">
                    <div class="categories">Categories</div>

                    <div class="menu-list">

                        <ul id="menu-content" class="menu-content collapse out">


                            <li data-toggle="collapse" data-target="#it" class="collapsed">
                                <a href="#">IT </a>
                            </li>
                            <ul class="sub-menu collapse" id="it">
                                <li><s:a
                                        href="#">M. Brown<button class="btn btn-xs btn-success pull-right">connect</button> </s:a>
                                </li>
                                <li><s:a
                                        href="#">K. Smith<button class="btn btn-xs btn-success pull-right">connect</button> </s:a>
                                </li>
                                <li><s:a
                                        href="#">G. Cameron<button class="btn btn-xs btn-success pull-right">connect</button> </s:a>
                                </li>
                                <li><s:a
                                        href="#">A. Jhones<button class="btn btn-xs btn-success pull-right">connect</button> </s:a>
                                </li>

                            </ul>


                            <li data-toggle="collapse" data-target="#banking" class="collapsed">
                                <a href="#"> Banking </a>
                            </li>
                            <ul class="sub-menu collapse" id="banking">
                                <li><s:a
                                        href="#">N. Marks<button class="btn btn-xs btn-success pull-right">connect</button> </s:a>
                                </li>
                                <li><s:a
                                        href="#">D. Lourens<button class="btn btn-xs btn-success pull-right">connect</button> </s:a>
                                </li>
                                <li><s:a
                                        href="#">A. Smith<button class="btn btn-xs btn-success pull-right">connect</button> </s:a>
                                </li>

                            </ul>


                            <li data-toggle="collapse" data-target="#painting" class="collapsed">
                                <a href="#"> Painting </a>
                            </li>
                            <ul class="sub-menu collapse" id="painting">
                                <li><s:a
                                        href="#">L.da Vinci<button class="btn btn-xs btn-success pull-right">connect</button> </s:a>
                                </li>
                                <li><s:a
                                        href="#">W. Turner<button class="btn btn-xs btn-success pull-right">connect</button> </s:a>
                                </li>
                                <li><s:a
                                        href="#">A. Modigliani<button class="btn btn-xs btn-success pull-right">connect</button> </s:a>
                                </li>
                                <li><s:a
                                        href="#">M. Utrillo<button class="btn btn-xs btn-success pull-right">connect</button> </s:a>
                                </li>
                                <li><s:a
                                        href="#">J. Zbukvich<button class="btn btn-xs btn-success pull-right">connect</button> </s:a>
                                </li>
                            </ul>


                        </ul>
                    </div>


                </div>

            </div>
        </div>
    </div>
</div>
</div>

</body>
</html>
