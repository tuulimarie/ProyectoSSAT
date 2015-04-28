<%-- 
    Document   : index
    Created on : 20.3.2015, 14:35:44
    Author     : tuuli-marietiilikainen
--%>

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
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">SSAT<br> or something</a>
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
                <h1>Welcome newbies!</h1>
                <div class="row">
                    <div class="col-md-4">
                        <div class="textcontent">
                            <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="formcontent">
                            <form class="form-horizontal form-login" action="javascript:void(0);">
                                <legend>Log in:</legend>
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
                                    <div class="col-sm-offset-2 col-sm-10 pull-right">
                                        <button type="submit" class="btn btn-default" name="action" id="login" value="Login">Login</button>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div>
                                        <p><center>Not registered? <a href="registration.jsp">Sign up!</a></center></p>
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
                <p class="text-muted"><center>Place sticky footer content here.</center></p>
            </div>
        </footer>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/myjs.js"></script>

        <!--         <script>
     
       $(document).ready(function() {
     
        var docHeight = $(window).height();
        var footerHeight = $('#footer').height();
        var footerTop = $('#footer').position().top + footerHeight;
     
        if (footerTop < docHeight) {
         $('#footer').css('margin-top', 10+ (docHeight - footerTop) + 'px');
        }
       });
      </script>-->

    </body>
</html>
