<?php 
function connect(){
  $servername = "localhost";
  $username = "root";
  $password = "";
  $database = "aliansaripoor_dblab";

  $connection = mysqli_connect($servername,$username,$password,$database);
  if (!$connection) {
    die("<p class='alert alert-danger'><strong>اخطار</strong> اتصال به پایگاه داده ناموفق بود</p>");
  }
  //$old_connection->set_charset('utf8');
  mysqli_set_charset($connection,"utf8");

  return $connection;
  }
?>