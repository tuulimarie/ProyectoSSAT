<%-- 
    Document   : registration
    Created on : 8.4.2015, 11:40:02
    Author     : tuuli-marietiilikainen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
        //This should be in every other webpage.
        if(session.getAttribute("manage")==null){
            request.getRequestDispatcher("/adminlogin.jsp").forward(request, response);
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
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.jsp"><img src="logo.png" alt="logo" id="logo"></a>
                    </div>
                </div>
            </nav>
            <div class="container">
                <div class="pagecontent">
                    <h1>Register new user</h1>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="rightcol">
                                <form class="form-horizontal form-login" action="javascript:void(0);">
                                    <legend></legend>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="email1">Email:</label>
                                        <div class="col-sm-10">
                                            <input type="email" name="username" class="form-control" id="email1">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="email2">Email again:</label>
                                        <div class="col-sm-10">
                                            <input type="email" name="password" class="form-control" id="email2" >
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div align="center">
                                            <button type="submit" class="btn btn-default" name="action" id="add-new-email" value="Login">Register</button>
                                        </div>
                                    </div>
 
                                </form>
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
        <script src="http://www.bichlmeier.info/sha256.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/myjs.js"></script>
    </body>
</html>
