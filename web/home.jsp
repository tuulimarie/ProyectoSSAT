<%-- 
    Document   : home
    Created on : 8.4.2015, 11:39:10
    Author     : tuuli-marietiilikainen
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
        <title>SSAT</title>
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
                            <li class="active"><a href="home.jsp">Home</a></li>
                            <li><a href="studentcatalogue.jsp">Students</a></li>
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
                <h1>Welcome!</h1>

                <div class="container">
                    <!-- Example row of columns -->
                    <div class="row">
                        <div class="col-md-4">
                            <h2>Students button here</h2>
                            <p><a class="btn btn-default" href="#" role="button">View details &#x00A; of all &#x00A; the students!&raquo;</a></p>
                        </div>
                        <div class="col-md-4">
                            <p class="lead">Here you will find...
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <h2>Forums button here</h2>
                            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <h2>Top points button here</h2>
                            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container">
                <p class="text-muted">Place sticky footer content here.</p>
            </div>
        </footer>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
