<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Python Flask Bucket List App</title>

   
    <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">

    <link href="http://getbootstrap.com/examples/jumbotron-narrow/jumbotron-narrow.css" rel="stylesheet">
    <link href="../static/css/signup.css" rel="stylesheet">
    <script src="../static/js/jquery-1.11.2.js"></script>
    <script src="../static/js/signIn.js"></script>
   
  </head>

  <body>

    <div class="container">
      <div class="header">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" ><a href="/">Home</a></li>
            <li role="presentation" class="active"><a href="#">Sign In</a></li>
            <li role="presentation" ><a href="/showSignUp">Sign Up</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">Vef 2 Verk 10</h3>
      </div>

      <div class="jumbotron">
        <h1>Skradu thig inn</h1>
        <form class="form-signin" action="/signin" method="post">
        <label for="username" class="sr-only">Name</label>
        <input type="text" name="username" id="username" class="form-control" placeholder="Name" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
        <button id="btnSignIn" class="btn btn-lg btn-primary btn-block" type="submit">Skra inn</button>
      </form>
      </div>

      

      <footer class="footer">
        <p>&copy; Sandra Dogg</p>
      </footer>

    </div>
  </body>
</html>