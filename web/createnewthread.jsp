<%-- 
    Document   : createnewthread
    Created on : Apr 28, 2015, 6:58:04 PM
    Author     : alejandro
--%>

<%@page import="bean.CategoriaBean"%>
<%@page import="dao.CategoriaDao"%>
<%@page import="java.util.List"%>
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

        <%
        //This should be in every other webpage.
        if(session.getAttribute("usuario")==null){
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
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
                                <li><a href="home.jsp">Home</a></li>
                                <li><a href="studentcatalogue.jsp">Students</a></li>
                                <li class="dropdown active">
                                    <a class="dropdown-toggle active" data-toggle="dropdown" href="">Forums
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="threads.jsp">All Posts</a></li>
                                        <li><a href="createnewthread.jsp">Create New</a></li>    
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
                    <h1>Add new topic!</h1>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="formcontent">
                                <div class="form-horizontal form-login">
                                    <legend>Write something or ask something:</legend>
                                    <div class="form-group">
                                        <label class="control-label col-lg-6" for="title">Title:</label>                
                                        <div class="col-lg-6">
                                            <input type="text" name="title" class="form-control" id="title">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-6" for="category">Category:</label>
                                        <div class="col-lg-6">
                                            <select class="form-control" id="category">
                                                <option value="">--Choose category--</option>
                                                <%
                                                    List list = CategoriaDao.getForumCategories();
                                                    for (int k = 0; k < list.size(); k++) {
                                                        CategoriaBean bean = (CategoriaBean) list.get(k);
                                                        out.println("<option value=\"" + bean.getIdCategoria() + "\">" + bean.getNombre() + "</option>");
                                                    }
                                                %>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-6" for="texto">Text:</label>
                                        <div class="col-lg-4">
                                            <textarea class="form-control" id="texto"style="width: 300px; height: 150px;"></textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="pull-right" >
                                            <button type="submit" class="btn btn-default" name="action" id="create-thread" value="create">Create</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                                            
            </div>
            <footer class="footer">
                <p class="text-muted" align="center">Tecnológico de Monterrey 2015<br> <a href="http://www.cva.itesm.mx/internationals ">www.cva.itesm.mx</a>&nbsp;&middot;&nbsp;<a href="">Contact</a>&nbsp;&middot;&nbsp;<a href="privacypolicy.jsp">Privacy Policy</a></center</p>
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
