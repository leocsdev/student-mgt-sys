<?php
  if (!isset($_SESSION)) {
    session_start();
  }

  include_once('connections/connection.php');
  $con = connection();

  if (isset($_POST['login'])) {

    // get the typed username and password
    $username = $_POST['username'];
    $password = $_POST['password'];

    // check if username and password in db
    $sql = "SELECT * FROM student_users WHERE username='$username' AND password='$password'";
    
    // connect to db
    $user = $con -> query($sql) or die ($con -> error);

    // store username and password fetched from db
    $row = $user -> fetch_assoc();

    // check if there is a match
    $total = $user -> num_rows;

    // if there's a match, store user and access mode in SESSION
    if ($total > 0) {
      $_SESSION['userLogin'] = $row['username'];
      $_SESSION['access'] = $row['access'];

      // echo $_SESSION['UserLogin'];
      echo header("Location: index.php");
    } else {
      echo "No user found.";
    }
  }
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/style.css">
  <title>Student Management System</title>
</head>
<body>
  <h1>Login Page</h1>
  <br><br>

  <form action="" method="post">
    <label>Username</label>
    <input type="text" name="username" id="username">

    <label>Password</label>
    <input type="password" name="password" id="password">

    <button type="submit" name="login">Login</button>
  </form>
</body>
</html>