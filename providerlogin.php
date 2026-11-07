<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="login.css" />
  <title>Document</title>
</head>

<body>
  <div id="head">
    <header>
      <a class="logo">
        <img src="sclogo.png" alt="logo">
        <span id="name">SCHOLAR SCOUT</span>
      </a>

      <table class="navTable" cellpadding="4" cellspacing="0" border="0">
        <tr>
          <td><a href="register.php" title="Jump to home section">Register</a></td>
          <td>|</td>
          <td><a href="homepage1.html" title="Jump to abt section">about us</a></td>
          <td>|</td>
          <td><a href="login.php" title="Jump to login section">login</a></td>

        </tr>
      </table>
    </header>
  </div>
  <div class="inputtext">
    <form id="form" id="loginForm" name="loginForm" action="login_check.php" align="middle" method="post" target="_self">

      <fieldset>
        <h3>PROVIDER LOGIN</h3>
        <label class="inputtext" for="username">Username:</label>
        <input class="inputtext" type="text" name="username" id="username" placeholder="Enter your username" maxlength="30" required>
        <br>
        <br>
        <label class="inputtext" for="password" class="si">Password:</label>
        <input  class="inputtext" type="password" name="password" id="password" placeholder="Enter your password" maxlength="30" required>
        <br>
        <br>
        <button type="submit" value=“submit">Log In</button>
      </fieldset>
    </form>

  </div>
</body>

</html>