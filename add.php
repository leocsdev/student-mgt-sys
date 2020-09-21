<?php
  include_once('connections/connection.php');
  $con = connection();
  
  if (isset($_POST['submit'])) {

    $firstName = $_POST['first-name'];
    $lastName = $_POST['last-name'];
    $birthday = $_POST['birthday'];
    $gender = $_POST['gender'];
    
    $sql = "INSERT INTO `student_list`(`first_name`, `last_name`, `birthday`, `gender`) VALUES ('$firstName', '$lastName', '$birthday', '$gender')";

    $con -> query($sql) or die ($con -> error);

    // redirect to index.php after adding student info
    echo header("Location: index.php");
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
  <h1>Add New</h1>
  <form action="" method="post">
    <label>First Name</label>
    <input type="text" name="first-name" id="first-name">
    
    <label>Last Name</label>
    <input type="text" name="last-name" id="last-name">

    <label>Birthday</label>
    <input type="date" name="birthday" id="birthday">

    <label>Gender</label>
    <select name="gender" id="gender">
      <option value="Male">Male</option>
      <option value="Female">Female</option>
    </select>

    <input type="submit" name="submit" value="Submit Form">
  </form>
</body>
</html>