<%-- 
    Document   : studentcatalogue
    Created on : 09.4.2015, 14:35:44
    Author     : alejandro
--%>

<%@page import="bean.UsuarioBean"%>
<%@page import="dao.UsuarioDao"%>
<%@page import="bean.NacionalidadBean"%>
<%@page import="dao.NacionalidadDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
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
        <link href='http://fonts.googleapis.com/css?family=Voltaire' rel='stylesheet' type='text/css'>
                <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>

        <%
        //This should be in every other webpage.
        if(session.getAttribute("usuario")==null){
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
        %>
        <title>Students</title>
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
                                <li class="active"><a href="#">Students</a></li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="">Forums
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="threads.jsp">All Posts</a></li>
                                        <li><a href="createnewthread.jsp">Create New</a></li>    
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="">Points
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="points.jsp">Points</a></li>
                                        <li><a href="createnewpoint.jsp">New Point</a></li>
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
                    <h1>Exchange Students Search</h1>
                    <div class="row form-horizontal form-login" id="select">     
                        <label class="control-label col-sm-2" for="nationality">Country of origin:</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="nationality">
                                <option value="-2">-Choose a country-</option>
                                <option value="-1">All</option>
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
                           
                            
                            <br>
                    <div class="row">
                        <table id="contenido" class="table table-striped">
                            <tr>
                                <td>Name</td>
                                <td>Last Name</td>
                                <td>Country</td>
                                <td>Email</td>
                            </tr> 
                            <tbody id="cuerpo"> 
                                <%
                                    if (session.getAttribute("studentsTable") == null) {
                                        List students = UsuarioDao.getAllStudents();
                                        String table = "";
                                        for (int i = 0; i < students.size(); i++) {
                                            UsuarioBean bean = (UsuarioBean) students.get(i);
                                            table += "<tr>";
                                            table += "<td style=\"vertical-align:middle\">" + bean.getNombre() + "</td>";
                                            table += "<td style=\"vertical-align:middle\">" + bean.getApellidos() + "</td>";
                                            table += "<td style=\"vertical-align:middle\">" + bean.getNacionalidad().getPais() + "</td>";
                                            table += "<td style=\"vertical-align:middle\">" + bean.getEmail() + "</td>";
                                            table += "<td><button class=\"details-button btn btn-default btn-xs\" id=\"" + bean.getIdUsuario() + "\">Details</button></td>";
                                            table += "</tr>";
                                            System.out.println("Iteracion: " + i);
                                        }
                                        out.print(table);
                                    } else {
                                        out.print(session.getAttribute("studentsTable"));
                                        session.removeAttribute("studentsTable");
                                    }
                                %>
                            </tbody>
                        </table> 
                    </div>
                </div>
            </div>
            <footer class="footer">
                <p class="text-muted" align="center">Place sticky footer content here.</p>
            </footer>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/myjs.js"></script>
    </body>
</html>
