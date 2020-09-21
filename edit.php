<?php
  include_once('connections/connection.php');
  $con = connection();
  $id = $_GET['id'];

  $sql = "SELECT * FROM `student_list` WHERE `id` = '$id'";
  $students = $con -> query($sql) or die ($con -> error);
  $row = $students -> fetch_assoc();
  
  if (isset($_POST['submit'])) {

    $firstName = $_POST['first-name'];
    $lastName = $_POST['last-name'];
    $birthday = $_POST['birthday'];
    $gender = $_POST['gender'];
    
    $sql = "UPDATE `student_list` SET `first_name` = '$firstName', `last_name` = '$lastName', `birthday` = '$birthday', gender = '$gender' WHERE `id` = '$id'";

    $con -> query($sql) or die ($con -> error);

    // redirect to details.php after updating student info
    echo header("Location: details.php?id=".$id);
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
  <h1>Update Student Info</h1>
  <br><br>
  <a href="details.php?id=<?php echo $id; ?>">CANCEL</a>
  <form action="" method="post">
    <label>First Name</label>
    <input type="text" name="first-name" id="first-name" value="<?php echo $row['first_name']; ?>">
    
    <label>Last Name</label>
    <input type="text" name="last-name" id="last-name" value="<?php echo $row['last_name']; ?>">

    <label>Birthday</label>
    <input type="date" name="birthday" id="birthday" value="<?php echo $row['birthday']; ?>">

    <label>Gender</label>
    <select name="gender" id="gender">
      <option value="Male" <?php echo ($row['gender'] == "Male") ? "selected" : ""; ?>>Male</option>
      <option value="Female" <?php echo ($row['gender'] == "Female") ? "selected" : ""; ?>>Female</option>
    </select>

    <input type="submit" name="submit" value="Update">
  </form>
</body>
</html>