<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html" ; charset="UTF-8">
    <title>user Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dashboard.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">

            </div>
        </nav>

        <div class="col-md-3">
            <img src="${pageContext.request.contextPath}/images/icon-user-default.png" class="userImg" alt="">
            <div><p></p></div>
            <div class="sidebar-nav menubar">
            </div>

        </div>
        <div class="col-md-6">

            <div class="col-md-6">
                <div>
                    <h4 style="text-align: center;margin-left: 200px">About me...</h4>
                </div>





                <div class="nav-side-menu">


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
        <div class="col-md-3"></div>
    </div>

</div>
</div>


</body>

</html>

