<%-- 
    Document   : registration
    Created on : 8.4.2015, 11:40:02
    Author     : tuuli-marietiilikainen
--%>

<%@page import="bean.NacionalidadBean"%>
<%@page import="java.util.List"%>
<%@page import="dao.NacionalidadDao"%>
<%@page import="dao.NacionalidadDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
        //This should be in every other webpage.
        if(session.getAttribute("usuario")!=null){
            request.getRequestDispatcher("/home.jsp").forward(request, response);
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
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.jsp"><img src="logo.png" alt="logo" id="logo"></a>
                    </div>
                    <!-- <div id="navbar" class="navbar-collapse collapse">
                         <form class="navbar-form navbar-right">
                             <div class="form-group">
                                 <input type="text" placeholder="Email" class="form-control">
                             </div>
                             <div class="form-group">
                                 <input type="password" placeholder="Password" class="form-control">
                             </div>
                             <button type="submit" class="btn btn-success btn-default">Sign in</button>
                         </form>
                     </div><!--/.navbar-collapse -->
                </div>
            </nav>

            <div class="container">
                <div class="pagecontent">
                    <h1>Register!</h1>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="textcontent">
                                <p class="lead">Please create the account using the email you provided to the web administrator. 
                                </p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="rightcol">
                                <form class="form-horizontal form-login" action="javascript:void(0);">
                                    <legend>Register:</legend>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="firstname">Firstname:</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="firstname" class="form-control" id="firstname">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="lastname">Lastname:</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="lastname" class="form-control" id="lastname">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="nationality">Country of origin:</label>
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
                                        <label class="control-label col-sm-2" for="career">Career:</label>
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
                                                <option value="2014">2014</option>
                                                <option value="2013">2013</option>
                                                <option value="2012">2012</option>
                                                <option value="2011">2011</option>
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
                                            <input type="password" name="password" class="form-control" id="password2" >
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div align="center">
                                            <button type="submit" class="btn btn-default" name="action" id="signup" value="signup">Signup</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <p class="text-muted" align="center">ITESM 2015.</p>
            </footer>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://www.bichlmeier.info/sha256.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/myjs.js"></script>
    </body>
</html>
