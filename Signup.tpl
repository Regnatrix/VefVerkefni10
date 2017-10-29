<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Python Flask Bucket List App</title>
 
    
    <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">
 
    <link href="http://getbootstrap.com/examples/jumbotron-narrow/jumbotron-narrow.css" rel="stylesheet">
    <link href="../static/signup.css" rel="stylesheet">
    
  </head>
 
  <body>
 
    <div class="container">
      <div class="header">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" ><a href="main">Home</a></li>
            <li role="presentation"><a href="#">Sign In</a></li>
            <li role="presentation" class="active"><a href="#">Sign Up</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">Vef 2 Verkefni 10</h3>
      </div>
 
      <div class="jumbotron">
        <h1>Nyskraning</h1>
        <form class="form-signin">
        <label for="username" class="sr-only">Name</label>
        <input type="text" name="username" id="username" class="form-control" placeholder="Name" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
        <button id="btnSignIn" class="btn btn-lg btn-primary btn-block" type="submit">Nyskra</button>
      </form>
      </div>
 
       
 
      <footer class="footer">
        <p>&copy; Sandra Dogg</p>
      </footer>
 
    </div>
  </body>
</html>