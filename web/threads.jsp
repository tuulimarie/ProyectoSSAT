<%-- 
    Document   : threads
    Created on : Apr 28, 2015, 7:03:49 PM
    Author     : alejandro
--%>
<%@page import="bean.DiscusionBean"%>
<%@page import="dao.DiscusionDao"%>
<%@page import="bean.CategoriaBean"%>
<%@page import="dao.CategoriaDao"%>
<%@page import="java.util.List"%>
<%-- 
    Document   : createnewthread
    Created on : Apr 28, 2015, 6:58:04 PM
    Author     : alejandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <% if (session.getAttribute("usuario") == null) {
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }
       %>
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
                    <h1>Forum</h1>
                    <div class="row form-horizontal form-login" id="select"">
                        <label class="control-label col-sm-2" for="categoria-forum">Category:</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="categoria-forum">
                                <option value="-1">-Choose a category-</option>
                                <option value="-1">All</option>
                                <%
                                    List list = CategoriaDao.getForumCategories();
                                    for (int k = 0; k < list.size(); k++) {
                                        CategoriaBean bean = (CategoriaBean) list.get(k);
                                        out.println("<option value=\"" + bean.getIdCategoria()+ "\">" + bean.getNombre()+ "</option>");
                                    }
                                %>
                            </select>
                        </div>
                    </div><br>
                    <div class="row">
                        <table id="contenido" class="table table-responsive">
                            <tr>
                                <td>Title</td>
                                <td>Author</td>
                                <td>Category</td>
                                <td>Date</td>
                            </tr> 
                            <tbody id="cuerpo"> 
                               <%
                                if (session.getAttribute("topicsTable") == null){
                                    List discussions;
                                    String table = "";
                                    discussions = DiscusionDao.loadDiscusiones();
                                    for (int i = 0; i < discussions.size(); i++) {
                                        DiscusionBean bean = (DiscusionBean)discussions.get(i);
                                        table+="<tr>";
                                        table+="<td style=\"vertical-align:middle\">"+bean.getTitulo()+"</td>";
                                        table+="<td style=\"vertical-align:middle\">"+bean.getUsuario().getNombre()+" "+bean.getUsuario().getApellidos()+"</td>";
                                        table+="<td style=\"vertical-align:middle\">"+bean.getCategoria().getNombre()+"</td>";
                                        table+="<td style=\"vertical-align:middle\">"+bean.getFecha()+"</td>";
                                        table+="<td><button class=\"details-button-forum btn btn-default btn-xs\" id=\""+bean.getIdDiscusion()+"\">See topic</button></td>";
                                        table+="</tr>";
                                        System.out.println("idDisucusion: "+bean.getIdDiscusion());
                                    }
                                    out.print(table);
                                }else{
                                    out.print(session.getAttribute("topicsTable"));
                                }
                               %>
                            </tbody>
                        </table> 
                    </div>
                </div>
            </div>
            <footer class="footer">
                <p class="text-muted" align="center">ITESM 2015.</p>
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
