<%--
    Document   : points
    Created on : 14.4.2015, 12:38:30
    Author     : tuuli-marietiilikainen
--%>

<%@page import="bean.PuntoBean"%>
<%@page import="dao.PuntoDao"%>
<%@page import="dao.CategoriaDao"%>
<%@page import="bean.CategoriaBean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
        //This should be in every other webpage.
        if(session.getAttribute("usuario")==null){
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
                            <a class="navbar-brand" href="index.jsp">SSAT<br> or something</a>
                        </div>
                        <div class="collapse navbar-collapse" id="myNavbar">
                            <ul class="nav navbar-nav pull-right">
                                <li><a href="home.jsp">Home</a></li>
                                <li><a href="studentcatalogue.jsp">Students</a></li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="">Forums
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="createnewthread.jsp">Create New</a></li>
                                        <li><a href="threads.jsp">All Threads</a></li>
                                    </ul>
                                </li>
                                <!--<li><a href="points.jsp">Points</a></li>-->
                                <li  class="active dropdown">
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
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>

            <div class="container">
                <div class="pagecontent">
                    <h1>Points of Interest Search</h1>
                    <div class="row">
                        <label class="control-label col-sm-2" for="category">Category:</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="category">
                                <option value="-2">--Choose a category--</option>
                                <option value="-1">All</option>
                                <%
                                    List list = CategoriaDao.getPuntosCategories();
                                    for (int k = 0; k < list.size(); k++) {
                                        CategoriaBean bean = (CategoriaBean) list.get(k);
                                        out.println("<option value=\"" + bean.getIdCategoria() + "\">" + bean.getNombre() + "</option>");
                                    }
                                %>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <table id="contenido" class="table table-responsive">
                            <tr>
                                <td>Name</td>
                                <td>Description</td>
                                <td>Category</td>
                                <td>Phone</td>
                                <td>Avg. Rating</td>
                            </tr>
                            <tbody id="cuerpoPuntos">
                                <%
                                    if (session.getAttribute("puntosTable") == null) {
                                        List puntos = PuntoDao.getAllPuntos();
                                        String table = "";
                                        for (int i = 0; i < puntos.size(); i++) {
                                            PuntoBean bean = (PuntoBean) puntos.get(i);
                                            table += "<tr>";
                                            table += "<td>" + bean.getNombre() + "</td>";
                                            table += "<td>" + bean.getDescripcion() + "</td>";
                                            table += "<td>" + bean.getCategoria().getNombre() + "</td>";
                                            table += "<td>" + bean.getTelefono() + "</td>";
                                            table += "<td>" + bean.getCalificacion() + "</td>";
                                            table += "<td><button class=\"details-button-puntos\" id=\"" + bean.getIdPuntosDeInteres() + "\">Details</button></td>";
                                            table += "</tr>";
                                            System.out.println("Iteracion: " + i);
                                        }
                                        out.print(table);
                                    } else {
                                        System.out.println("Not null");
                                        out.print(session.getAttribute("puntosTable"));
                                        session.removeAttribute("puntosTable");
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <p class="text-muted">Place sticky footer content here.</p>
            </footer>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/myjs.js"></script>
    </body>
</html>
