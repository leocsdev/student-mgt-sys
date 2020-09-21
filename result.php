<?php
  if (!isset($_SESSION)) {
    session_start();
  }

  if (isset($_SESSION['userLogin'])) {
    echo 'Welcome '. $_SESSION['userLogin'];
  } else {
    echo 'Welcome Guest';
  }

  include_once('connections/connection.php');
  $con = connection();

  $search = $_GET['search'];
  
  $sql = "SELECT * FROM student_list WHERE lower(`first_name`) LIKE lower('%$search%') || lower(`last_name`) LIKE lower('%$search%') ORDER BY `last_name` DESC";

  $students = $con -> query($sql) or die ($con -> error);
  $row = $students -> fetch_assoc();

  // check if there is a match
  echo $total = $students -> num_rows;
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
  <h1>Student Management System</h1>
  <br><br>

  <form action="result.php" method="get">
    <input type="text" name="search" id="search">
    <button type="submit">Search</button>
  </form>

  <?php if (isset($_SESSION['userLogin'])) { ?>
    <a href="index.php">BACK</a>
    <a href="add.php">Add New</a>
    <a href="logout.php">Logout</a>
  <?php } else { ?>
    <a href="login.php">Login</a>
  <?php } ?>
  
  <br><br>

    <?php if ($total > 0) { ?>
      <table>
        <thead>
          <tr>
            <th></th>
            <th>First Name</th>
            <th>Last Name</th>
          </tr>
        </thead>
        <tbody>
          <?php do { ?>
          <tr>
            <td><a href="details.php?id=<?php echo $row['id']; ?>">View</a></td>
            <td><?php echo $row['first_name']; ?></td>
            <td><?php echo $row['last_name']; ?></td>
          </tr>
          <?php } while ($row = $students -> fetch_assoc()); ?>
        </tbody>
      </table>
    <?php } else { ?>
        
      <h3>NO RESULT FOUND</h3>
    <?php }; ?>

  
</body>
</html>