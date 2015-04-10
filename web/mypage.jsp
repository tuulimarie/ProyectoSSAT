<%-- 
    Document   : mypage
    Created on : 8.4.2015, 11:39:26
    Author     : tuuli-marietiilikainen
--%>

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
        <title>SSAT</title>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
                        <!--<span class="sr-only">Toggle navigation</span>-->
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">SSAT<br> or something</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav pull-right">
                        <li><a href="home.jsp">Home</a></li>
                        <li><a href="students.jsp">Students</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="">Forums
                                <span class="caret"></span></a>
                            <!--<ul class="dropdown-menu">
                                <li><a href="#">Page 1-1</a></li>
                                <li><a href="#">Page 1-2</a></li>
                                <li><a href="#">Page 1-3</a></li>
                            </ul>-->
                        </li>
                        <li><a href="points.jsp">Points</a></li>
                        <li class="active"><a href="#">MyInfo</a></li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="container">
            <!-- <div class="header clearfix">
                 <nav>
                    <ul class="nav nav-pills pull-right">
                         <li role="presentation" class="active"><a href="#">Home</a></li>
                         <li role="presentation"><a href="#">About</a></li>
                         <li role="presentation"><a href="#">Contact</a></li>
                     </ul>
                 </nav>
                 <h3 class="text-muted">Project name</h3>
             </div>-->
            <div class="pagecontent">
                <h1>My Info</h1>
            <div class="myimage">
                <img src="http://placehold.it/150x150&text=Your image" />.
            </div>
            <div class="formcontent">
                 <form class="form-horizontal form-signin" role="form" id="" action="" method="">
                    <legend>Your information:</legend>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="firstname">Firstname:</label><br>
                            <!--<div class="col-sm-10">
                                <input type="text" name="firstname" class="form-control" id="firstname">
                            </div>-->
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="lastname">Lastname:</label><br>
                            <!--<div class="col-sm-10">
                                <input type="text" name="lastname" class="form-control" id="lastname">
                            </div>-->
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="birthdate">Date of Birth:</label><br>
                           <!-- <div class="col-sm-10">
                                <div class='input-group date' id='datetimepicker1'>
                                    <input type='text' class="form-control" />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>-->
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="nacionality">Country of origin:</label><br>
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
                            <label class="control-label col-sm-2" for="career">Career:</label><br>
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
                            <label class="control-label col-sm-2" for="startdate">Studies start:</label><br>
                           <!-- <div class="col-sm-10">
                                <div class='input-group date' id='datetimepicker2'>
                                    <input type='text' class="form-control" />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>-->
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="finnishdate">Studies end:</label><br>
                            <!--<div class="col-sm-10">
                                <div class='input-group date' id='datetimepicker2'>
                                    <input type='text' class="form-control" />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>-->
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="username">Username:</label><br>
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
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default" name="action" id="Edit" value="Edit">Edit</button>
                            <button type="submit" class="btn btn-default" name="action" id="Save" value="Save">Save changes</button>
                        </div>
                    </div>

                </form>
            </div>
            </div>
            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="js/bootstrap.min.js"></script>
    </body>
</html>
