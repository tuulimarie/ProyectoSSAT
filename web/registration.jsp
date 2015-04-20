<%-- 
    Document   : registration
    Created on : 8.4.2015, 11:40:02
    Author     : tuuli-marietiilikainen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="css/datepicker.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap theme -->
        <link href="css/bootstrap-theme.min.css" rel="stylesheet">
        <link href="css/myStyle.css" rel="stylesheet">
        <title>SSAT</title>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">SSAT<br> or something</a>
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
                            <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="formcontent">
                            <form class="form-horizontal form-login" role="form" id="" action="" method="">
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
                                    <label class="control-label col-sm-2" for="birthdate">Date of Birth:</label>
                                    <div class="col-sm-10">
                                        <div class='input-group date' id='datetimepicker1'>
                                            <input type='text' class="form-control" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="nacionality">Country of origin:</label>
                                    <div class="col-sm-10">
                                        <select class="form-control">
                                            <option value="">--Choose country--</option>
                                            <option>options</option>
                                            <option>from</option>
                                            <option>data</option>
                                            <option>base</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="career">Career:</label>
                                    <div class="col-sm-10">
                                        <select class="form-control">
                                            <option value="">--Choose career--</option>
                                            <option value="business">Business</option>
                                            <option value="it">IT</option>
                                            <option value="marketing">Marketing</option>
                                            <option value="megatronics">Megatronics</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="studytime">Time of studies:</label>
                                     <div class="col-sm-2">
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
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="username">Username:</label>
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
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10 pull-right">
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
            <div class="container">
                <p class="text-muted">Place sticky footer content here.</p>
            </div>
        </footer>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <!-- <script type="text/javascript">
       // When the document is ready
       $(document).ready(function () {
           
           $('#datetimepicker1').datepicker({
               format: "dd/mm/yyyy"
           });  
       
       });
   </script>-->

    </body>
</html>
