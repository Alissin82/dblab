<?php 
function connect(){
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "dblab";

    
   try {
        $connection = new PDO("mysql:host=$servername;dbname=$database", $username, $password,array(
          PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
          PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"
        ));
        //echo "Connected successfully";
    } catch(PDOException $e) {
        die("<p class='alert alert-danger'><strong>اخطار</strong> اتصال به پایگاه داده ناموفق بود</p>". $e->getMessage());
    }

/*   $connection = mysqli_connect($servername,$username,$password,$database);
    if (!$connection) {
      die("<p class='alert alert-danger'><strong>اخطار</strong> اتصال به پایگاه داده ناموفق بود</p>");
    }
    $connection->set_charset('utf8');
    mysqli_set_charset($connection,"utf8");*/

    return $connection;
  }

  function connect_old(){
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "dblab";

    $old_connection = mysqli_connect($servername,$username,$password,$database);
    if (!$old_connection) {
      die("<p class='alert alert-danger'><strong>اخطار</strong> اتصال به پایگاه داده ناموفق بود</p>");
    }
    $old_connection->set_charset('utf8');
    mysqli_set_charset($old_connection,"utf8");

    return $old_connection;
  }
?>