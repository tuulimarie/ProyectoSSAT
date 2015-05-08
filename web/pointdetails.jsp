<%-- 
    Document   : pointdetails
    Created on : Apr 10, 2015, 1:58:37 PM
    Author     : alejandro
--%>

<%@page import="bean.PuntoBean"%>
<%@page import="dao.PuntoDao"%>
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
            PuntoBean punto = null;
            if (session.getAttribute("usuario") == null) {
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            } else {
                if (session.getAttribute("idPunto") == null) {
                    request.getRequestDispatcher("/points.jsp").forward(request, response);
                }
                int id = Integer.parseInt(session.getAttribute("idPunto").toString());
                punto = PuntoDao.getPuntoById(id);
            }
        %>
        <title>Points of Interest</title>
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
                    <h1>Points of Interest</h1>
                    <div class="col-md-4 pointpage">
                        <div class="formcontent">
                            <div class="form-horizontal form-login" role="form">
                                <legend id="nombre"><%=punto.getNombre()%></legend>
                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="descripcion">Description:</label>
                                    <div class="col-sm-2" id="descripcion"><%=punto.getDescripcion()%></div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="categoria">Category:</label>
                                    <div class="col-sm-2" id="categoria"><%=punto.getCategoria().getNombre()%></div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="telefono">Phone Number:</label>
                                    <div class="col-sm-2" id="telefono"><%=punto.getTelefono()%></div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="rate">Rate:</label>
                                    <div class="col-sm-2">
                                        <select class="form-control" id="rate">
                                            <option value="0">0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default" name="action" id="rate-submit" value="rate">Rate</button>
                                    </div>
                                </div>

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
        <script src="js/myjs.js"></script>
    </body>
</html>

