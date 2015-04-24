<%--
    Document   : createnewpoint
    Created on : Apr 9, 2015, 3:04:28 PM
    Author     : alejandro
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
        <title>Points of Interest</title>
    </head>
    <body>
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
                                <!--<ul class="dropdown-menu">
                                    <li><a href="#">Page 1-1</a></li>
                                    <li><a href="#">Page 1-2</a></li>
                                    <li><a href="#">Page 1-3</a></li>
                                </ul>-->
                            </li>
                            <!--<li><a href="points.jsp">Points</a></li>-->
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="">Points
                                    <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="createnewpoint.jsp">New Point</a></li>
                                    <!-- <li><a href="#">Page 1-2</a></li>
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
                <h1>Points of Interest</h1>
                <div class="row">
                    <div class="col-md-4">
                        <div class="myimage">
                            <img src="http://placehold.it/150x150&text=Add an image" />.
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="formcontent">
                            <form class="form-horizontal form-login" role="form" id="" action="" method="">
                                <legend>Add new... LOCATION!</legend>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="nombre">Name:*</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="nombre" class="form-control" id="nombre">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="descripcion">Description:</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="descripcion" class="form-control" id="descripcion" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="categoria">Category:*</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" id="categoria">
                                            <option>Categoria</option>
                                            <option>Categoria</option>
                                            <option>Categoria</option>
                                            <option>Categoria</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="telefono">Phone Number:</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="telefono" class="form-control" id="telefono" >
                                    </div>
                                </div>
                                <div class="form-group">
                                <label class="control-label col-sm-2" for="rate">Rate:</label>
                                <div class="col-sm-2">
                                    <select class="form-control" id="rate">
                                        <option>0</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                </div>
                               </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10 pull-right">
                                        <button type="submit" class="btn btn-default" name="action" id="SavePuntoInteres" value="Save">Save</button>
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
    </body>
</html>