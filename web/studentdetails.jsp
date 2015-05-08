<%-- 
    Document   : mypage
    Created on : 8.4.2015, 11:39:26
    Author     : tuuli-marietiilikainen
--%>

<%@page import="dao.UsuarioDao"%>
<%@page import="bean.UsuarioBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <%
            //This should be in every other webpage.
            UsuarioBean usuario = null;
            if (session.getAttribute("usuario") == null) {
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            } else {
                if (session.getAttribute("idStudent") == null) {
                    request.getRequestDispatcher("/studentcatalogue.jsp").forward(request, response);
                }
                int id = Integer.parseInt(session.getAttribute("idStudent").toString());
                usuario = UsuarioDao.getStudentById(id);
            }
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap theme -->
        <link href="css/bootstrap-theme.min.css" rel="stylesheet">
        <link href="css/myStyle.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Voltaire' rel='stylesheet' type='text/css'>
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
                                <li  class="active"><a href="studentcatalogue.jsp">Students</a></li>
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
                    <h1>Student information</h1>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="myimage">
                                <img src="http://placehold.it/150x150&text=Your image" />.
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="formcontent">
                                <form class="form-horizontal form-login" role="form" id="" action="" method="">
                                    <legend>Student:</legend>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="firstname">Firstname: </label><%=usuario.getNombre()%><br>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="lastname">Lastname: </label><%=usuario.getApellidos()%><br>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="nacionality">Country of origin: </label><%=usuario.getNacionalidad().getPais()%><br>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="career">Career: </label> <%=usuario.getDegree()%><br>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="studytime">Time of studies:</label><%=usuario.getDate()%>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="username">Email:</label><%=usuario.getEmail()%><br>
                                    </div>
                                </form>
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
