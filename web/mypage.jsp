<%-- 
    Document   : mypage
    Created on : 8.4.2015, 11:39:26
    Author     : tuuli-marietiilikainen
--%>

<%@page import="bean.UsuarioBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <%
        //This should be in every other webpage.
        UsuarioBean usuario = null;
        if(session.getAttribute("usuario")==null){
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }else{
            usuario = (UsuarioBean)session.getAttribute("usuario");
        }
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap theme -->
        <link href="css/bootstrap-theme.min.css" rel="stylesheet">
        <link href="css/myStyle.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Voltaire' rel='stylesheet' type='text/css'>
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
                            <li><a href="home.jsp">Home</a></li>
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
                            <li class="active"><a href="#">MyInfo</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="pagecontent">
                <h1>My Info</h1>
                <div class="row">
                    <div class="col-md-4">
                        <div class="myimage">
                            <img src="http://placehold.it/150x150&text=Your image" />.
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="formcontent">
                            <form class="form-horizontal form-login" role="form" id="" action="" method="">
                                <legend>Your information:</legend>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="firstname">Firstname: </label><%=usuario.getNombre()%><br>
                                    <!--<div class="col-sm-10">
                                        <input type="text" name="firstname" class="form-control" id="firstname">
                                    </div>-->
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="lastname">Lastname: </label><%=usuario.getApellidos()%><br>
                                    <!--<div class="col-sm-10">
                                        <input type="text" name="lastname" class="form-control" id="lastname">
                                    </div>-->
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="nacionality">Country of origin: </label><%=usuario.getNacionalidad().getPais()%><br>
                                    <!-- <div class="col-sm-10">
                                         <select class="form-control">
                                             <option>1</option>
                                             <option>2</option>
                                             <option>3</option>
                                             <option>4</option>
                                             <option>5</option>
                                         </select>
                                     </div>-->
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="career">Career: </label> <%=usuario.getDegree()%><br>
                                    <!--<div class="col-sm-10">
                                        <select class="form-control">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>-->
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="studytime">Time of studies:</label><%=usuario.getDate()%>
                                   <!-- <div class="col-sm-2">
                                        <select class="form-control">
                                            <option>Spring</option>
                                            <option>Summer</option>
                                            <option>Autumn</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-2">
                                        <select class="form-control">
                                            <option>2015</option>
                                            <option>2014</option>
                                            <option>2013</option>
                                            <option>2012</option>
                                            <option>2011</option>
                                        </select>
                                    </div>-->
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="username">Email:</label><%=usuario.getEmail()%><br>
                                    <!-- <div class="col-sm-10">
                                         <input type="email" name="username" class="form-control" id="username">
                                     </div>-->
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="password">Password:</label>
                                    <div class="col-sm-10">
                                        <input type="password" name="password" class="form-control" id="password" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="password">Password again:</label>
                                    <div class="col-sm-10">
                                        <input type="password" name="password" class="form-control" id="password" >
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-4">
                                        <button type="submit" class="btn btn-default" name="action" id="Edit" value="Edit">Edit</button>
                                    </div>
                                    <div class="col-sm-4 pull-right">
                                        <button type="submit" class="btn btn-default" name="action" id="Save" value="Save">Save changes</button>
                                    </div>
                                </div>

                            </form>
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
