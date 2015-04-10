<%-- 
    Document   : mypage
    Created on : 8.4.2015, 11:39:26
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
        <nav class="navbar navbar-inverse navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
                        <!--<span class="sr-only">Toggle navigation</span>-->
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">SSAT<br> or what ever</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav pull-right">
                        <li class="active"><a href="#">Home</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Page 1-1</a></li>
                                <li><a href="#">Page 1-2</a></li>
                                <li><a href="#">Page 1-3</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Page 2</a></li>
                        <li><a href="#">Page 3</a></li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="container">
            <!-- <div class="header clearfix">
                 <nav>
                    <ul class="nav nav-pills pull-right">
                         <li role="presentation" class="active"><a href="#">Home</a></li>
                         <li role="presentation"><a href="#">About</a></li>
                         <li role="presentation"><a href="#">Contact</a></li>
                     </ul>
                 </nav>
                 <h3 class="text-muted">Project name</h3>
             </div>-->
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
