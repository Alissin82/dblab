<?php

include("server.php");

$conn = connect();

$id=$_GET['id'];

$sql = "UPDATE user SET accountStatus='deactive' WHERE id='$id'";

// Prepare statement
$stmt = $conn->prepare($sql);

// execute the query
$stmt->execute();

header('Location: ../show.php');

$conn = null;

?>