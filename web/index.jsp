<%-- 
    Document   : index
    Created on : 20.3.2015, 14:35:44
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
         <nav class="navbar navbar-inverse navbar-fixed-top navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">SSAT</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
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
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" class="active"><a href="#">Home</a></li>
            <li role="presentation"><a href="#">About</a></li>
            <li role="presentation"><a href="#">Contact</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">Project name</h3>
      </div>
        
        <div class="jumbotron">
        <h1>Welcome newbies!</h1>
        <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
         </p>
       
        <form class="form-horizontal form-signin" role="form" id="" action="" method="">
                    <legend>Sign in:</legend>
                    <div class="form-group">
                      <label class="control-label col-sm-2" for="firstname">First name:</label>
                      <div class="col-sm-10">
                          <input type="text" name="firstname" class="form-control" id="firstname">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-sm-2" for="lastname">Last name:</label>
                      <div class="col-sm-10">
                        <input type="text" name="lastname" class="form-control" id="lastname" >
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-sm-2" for="telefono">Phonenumber:</label>
                      <div class="col-sm-10">
                        <input type="text" name="telefono" class="form-control" id="telefono" >
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default" name="action" id="Guardar" value="Guardar">Guardar</button>
                        <button type="submit" class="btn btn-default" name="action" id="Mostrar" value="Mostrar">Mostrar</button>
                      </div>
                    </div>
                </form>
      </div>
        
    </body>
</html>
