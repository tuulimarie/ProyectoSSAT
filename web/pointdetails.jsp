<%-- 
    Document   : pointdetails
    Created on : Apr 10, 2015, 1:58:37 PM
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
        <nav class="navbar navbar-inverse navbar-default">
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
                            <li class="active"><a href="points.jsp">Points</a></li>
                            <li><a href="#">MyInfo</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="pagecontent">
                <h1>Points of Interest</h1>
                <div class="col-md-4">
                    <div class="formcontent">
                        <form class="form-horizontal form-login" role="form" id="" action="" method="">
                            <legend id="nombre">Nombre del lugar</legend>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="descripcion">Description:</label>
                                <div class="col-sm-2" id="descripcion">asdasdasdasd</div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="categoria">Category:</label>
                                <div class="col-sm-2" id="categoria">Categoria</div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="telefono">Phone Number:</label>
                                <div class="col-sm-2" id="telefono">7771221221</div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="rate">Rate:</label>
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
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default" name="action" id="rate" value="rate">Rate</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>

