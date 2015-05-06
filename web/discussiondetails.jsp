<%-- 
    Document   : discussiondetails
    Created on : Apr 29, 2015, 5:15:55 PM
    Author     : alejandro
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%String contexto = request.getContextPath();%>
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="css/datepicker.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap theme -->
        <link href="css/bootstrap-theme.min.css" rel="stylesheet">
        <link href="css/myStyle.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>

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
                                <li><a href="home.jsp">Home</a></li>
                                <li><a href="studentcatalogue.jsp">Students</a></li>
                                <li class="dropdown active">
                                    <a class="dropdown-toggle active" data-toggle="dropdown" href="">Forums
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="createnewthread.jsp">Create New</a></li>
                                        <li><a href="threads.jsp">All Threads</a></li>
                                    </ul>
                                </li>
                                <!--<li><a href="points.jsp">Points</a></li>-->
                                <li class="dropdown">
                                    <a class="dropdown-toggle active" data-toggle="dropdown" href="">Points
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="points.jsp">Points</a></li>
                                        <li><a href="createnewpoint.jsp">New Point</a></li>
                                        <!--
                                         <li><a href="#">Page 1-3</a></li>-->
                                    </ul>
                                </li>
                                <li><a href="mypage.jsp">MyInfo</a></li>
                                <li><a href="index.jsp" class="logoutbtn">
                                        <span class="glyphicon glyphicon-log-out"></span>Log out</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>

            <div class="container">
                <div class="pagecontent">
                    <h1>Threads!</h1>
                    <div class="row">
                        <div class="well well-sm">
                            <h3>Title</h3>
                            <div class="row"><div class="col-lg-1">Content sfasdfsadf dsfgsdfgsdfgdfg <br> sfsdfsdgsdgsdfgdsfgdsfgdsfg</div></div>
                            <br>
                            <div class="row">
                                <div class="col-sm-6 author">Author</div>
                                <div class="col-sm-6 author">Date</div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="well well-sm">
                            <div class="row"><div class="col-lg-1">Content sfasdfsadf dsfgsdfgsdfgdfg <br> sfsdfsdgsdgsdfgdsfgdsfgdsfg</div></div>
                            <br>
                            <div class="row">
                                <div class="col-sm-6 author">Author</div>
                                <div class="col-sm-6 author">Date</div>
                            </div>
                        </div>
                    </div>
                     <div class="row">
                        <div class="well well-sm">
                            <div class="row"><div class="col-lg-1">Content sfasdfsadf dsfgsdfgsdfgdfg <br> sfsdfsdgsdgsdfgdsfgdsfgdsfg</div></div>
                            <br>
                            <div class="row">
                                <div class="col-sm-6 author">Author</div>
                                <div class="col-sm-6 author">Date</div>
                            </div>
                        </div>
                    </div>
                     <div class="row">
                        <div class="well well-sm">
                            <div class="row"><div class="col-lg-1">Content sfasdfsadf dsfgsdfgsdfgdfg <br> sfsdfsdgsdgsdfgdsfgdsfgdsfg</div></div>
                            <br>
                            <div class="row">
                                <div class="col-sm-6 author">Author</div>
                                <div class="col-sm-6 author">Date</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <p class="text-muted">ITESM 2015.</p>
            </footer>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/myjs.js"></script>
    </body>
</html>
