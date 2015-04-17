<%-- 
    Document   : studentcatalogue
    Created on : 09.4.2015, 14:35:44
    Author     : alejandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap theme -->
        <link href="css/bootstrap-theme.min.css" rel="stylesheet">
        <link href="css/myStyle.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Voltaire' rel='stylesheet' type='text/css'>
        <title>Students</title>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top navbar-default">
            <div class="container">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
                            <!--<span class="sr-only">Toggle navigation</span>-->
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.jsp">SSAT<br> or something</a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav pull-right">
                            <li><a href="home.jsp">Home</a></li>
                            <li class="active"><a href="#">Students</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="">Forums
                                    <span class="caret"></span></a>
                                <!--<ul class="dropdown-menu">
                                    <li><a href="#">Page 1-1</a></li>
                                    <li><a href="#">Page 1-2</a></li>
                                    <li><a href="#">Page 1-3</a></li>
                                </ul>-->
                            </li>
                            <!--<li><a href="points.jsp">Points</a></li>-->
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="">Points
                                    <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="createnewpoint.jsp">New Point</a></li>
                                    <!-- <li><a href="#">Page 1-2</a></li>
                                     <li><a href="#">Page 1-3</a></li>-->
                                </ul>
                            </li>
                            <li><a href="mypage.jsp">MyInfo</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>

        <div class="container">
            <div class="pagecontent">
                <h1>Exchange Students Search</h1>
            </div>
        </div>
        <div>
            <table id="contenido" class="table table-responsive">
                <tr>
                    <td>Name</td>
                    <td>Last Name</td>
                    <td>Country</td>
                    <td>Email</td>
                </tr> 
                <tbody id="cuerpo"></tbody>
            </table> 
        </div>

    </body>
</html>
