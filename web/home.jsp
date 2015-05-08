<%-- 
    Document   : home
    Created on : 8.4.2015, 11:39:10
    Author     : tuuli-marietiilikainen
--%>

<%@page import="bean.UsuarioBean"%>
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
        <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
        <%
            //This should be in every other webpage.
            UsuarioBean usuario=null;
            if (session.getAttribute("usuario") == null) {
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }else
                usuario = (UsuarioBean)session.getAttribute("usuario");
        %>
        <title>SSAT</title>
    </head>
    <body>
        <div id="wrapper">
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
                            <a class="navbar-brand" href="index.jsp"><img src="logo.png" alt="logo" id="logo"></a>
                        </div>
                        <div class="collapse navbar-collapse" id="myNavbar">
                            <ul class="nav navbar-nav pull-right">
                                <li class="active"><a href="home.jsp">Home</a></li>
                                <li><a href="studentcatalogue.jsp">Students</a></li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="">Forums
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="threads.jsp">All Posts</a></li>
                                        <li><a href="createnewthread.jsp">Create New</a></li>                                       
                                    </ul>
                                </li>
                                <!--<li><a href="points.jsp">Points</a></li>-->
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="">Points
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="points.jsp">Points</a></li>
                                        <li><a href="createnewpoint.jsp">New Point</a></li>
                                        <!--
                                         <li><a href="#">Page 1-3</a></li>-->
                                    </ul>
                                </li>
                                <li><a href="mypage.jsp">MyInfo</a></li>
                                <li><a href="Controller" class="logoutbtn">
                                        <span class="glyphicon glyphicon-log-out"></span>Log out</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
            <div class="container">
                <div class="pagecontent">
                    <h1>Welcome, <%=usuario.getNombre()%>! </h1>
                    <div class="container">
                        <div class="col-md-4">
                            <div class="leftcol">
                                <div class="homebtn">
                                    <p><a class="btn btn-default" id="homebtn" href="studentcatalogue.jsp" role="button">View details of the students<br>  that have already <br> studied at Tec! &raquo;</a></p>                     
                                </div>
                                <div class="homebtn">
                                    <p><a class="btn btn-default" id="homebtn" href="threads.jsp" role="button">Have a question? <br> Want to find information? <br> Check out forums! &raquo;</a></p>
                                </div>
                                <div class="homebtn">
                                    <p><a class="btn btn-default" id="homebtn" href="points.jsp" role="button">Where to go? <br> What to do? <br> See top points! &raquo;</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="rightcol">
                                <p class="lead"> <h3>New student</h3>Here you can find loads of good information about your new hometown and it's surroundings. Points page will show you places where you can visit and from.... Student page will show you all the students registered to this page, you can contact them by email if you have specific guestions.<br>
                                <h3>Already studied or studying at Tec</h3>Add places you have visited or rate the ones already in the system. Help new students by taking part of discussions in Forums.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <p class="text-muted" align="center">Place sticky footer content here.</p>
            </footer>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
