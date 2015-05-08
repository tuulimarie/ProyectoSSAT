<%-- 
    Document   : editMypage
    Created on : 4.5.2015, 19:53:33
    Author     : tuuli-marietiilikainen
--%>


<%@page import="dao.UsuarioDao"%>
<%@page import="bean.NacionalidadBean"%>
<%@page import="dao.NacionalidadDao"%>
<%@page import="java.util.List"%>
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
                                <li class="active"><a href="#">MyInfo</a></li>
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
                    <h1>My Info</h1>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="leftcol">
                                <div class="myimage">
                                    <img src="http://placehold.it/150x150&text=Your image" />.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="rightcol">
                                <div class="formcontent">
                                    <form class="form-horizontal form-login" role="form" id="" action="javascript:void(0);" method="">
                                        <legend>Your information:</legend>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="firstname">Firstname: </label>
                                            <div class="col-sm-10">
                                                <input type="text" name="firstname" class="form-control" id="firstname">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="lastname">Lastname: </label>
                                            <div class="col-sm-10">
                                                <input type="text" name="lastname" class="form-control" id="lastname">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="nacionality">Country of origin: </label>
                                            <div class="col-sm-10">
                                                <select class="form-control" id="nationality">
                                                    <option value="">--Choose country--</option>
                                                    <%
                                                        List list = NacionalidadDao.getContries();
                                                        for (int k = 0; k < list.size(); k++) {
                                                            NacionalidadBean bean = (NacionalidadBean) list.get(k);
                                                            out.println("<option value=\"" + bean.getIdNacionalidad() + "\">" + bean.getPais() + "</option>");
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="career">Career: </label>
                                            <div class="col-sm-10">
                                                <select class="form-control" id="career">
                                                    <option value="">--Choose area--</option>
                                                    <option value="Business & Management">Business & Management</option>
                                                    <option value="IT & Engineering">IT & Engineering</option>
                                                    <option value="Life Sciences & Medicine">Life Sciences & Medicine</option>
                                                    <option value="Social Sciences">Social Sciences</option>
                                                    <option value="Natural Sciences">Natural Sciences</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="studytime">Time of studies:</label>
                                            <div class="col-sm-2">
                                                <select class="form-control" id="date">
                                                    <option value="Spring">Spring</option>
                                                    <option value="Summer">Summer</option>
                                                    <option value="Autumn">Autumn</option>
                                                </select>
                                            </div>
                                            <div class="col-sm-2">
                                                <select class="form-control" id="year">
                                                    <option value="2016">2016</option>
                                                    <option value="2015">2015</option>
                                                    <option value="2015">2014</option>
                                                    <option value="2015">2013</option>
                                                    <option value="2015">2012</option>
                                                    <option value="2015">2011</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="username">Email:</label>
                                            <div class="col-sm-10">
                                                <input type="email" name="username" class="form-control" id="username">
                                            </div>
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
                                            <div align="center">
                                                <button type="submit" class="btn btn-default" name="action" id="Save" value="Save">Save changes</button>
                                            </div>
                                        </div>
                                    </form>
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
