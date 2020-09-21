<?php
  function connection() {
    $host = 'localhost';
    $username = 'root';
    $password = 'root123';
    $database = 'student_mgt_sys';

    $con = new mysqli($host, $username, $password, $database);

    if ($con -> connect_error) {
      echo $con -> connect_error;
    } else {
      return $con;
    }
  }
?>