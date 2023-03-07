<?php

include("server.php");

$con = connect();
// _GET
// _POST
//Getting value of "search" variable from "livesearchajax.js".
if (isset($_POST['search'])) {
    //Search box value assigning to $Name variable.
    $search = $_POST['search'];

    //Search query.
    if (empty($search) OR $search =="undefined") {
        $sql = "SELECT * FROM user WHERE accountStatus='active'";
    }
    else{
        $sql = "SELECT id,firstName,lastName,nationalCode,accountStatus FROM user 
        WHERE accountStatus='active' and id IN (SELECT id FROM user WHERE firstName LIKE '%$search%' OR lastName LIKE '%$search%' OR nationalCode LIKE '%$search%')";
    }

    // select a particular user by some parameters
    $stmt = $con->prepare($sql);
    $stmt->execute(); 
    $data = $stmt->fetchAll();

    if (empty($data)) {
        echo"<p class='alert alert-info'>";
            echo"<strong>اعلان سیستم</strong> کاربری با مشخصات مورد نظر پیدا نشد";
        echo"</p>";
    }
    else
    {
        echo"<table class='table table-bordered table-striped table-responsive-xl'>";
        echo"<thead class='table-primary'>";
        echo"<th>کد ملی</th>";
        echo"<th>نام</th>";
        echo"<th>نام خانوادگی</th>";
        echo"<th>وضعیت اکانت</th>";
        echo"<th>عملیات</th>";
        echo"</thead>";
        echo"<tbody>";
        foreach ($data as $row) {
            $id = $row['id'];
            echo "<tr>";
                echo '<td>' .$row["nationalCode"]. '</td>';
                echo '<td>' .$row["firstName"]. '</td>';
                echo '<td>' .$row["lastName"]. '</td>';
                echo '<td>' .$row["accountStatus"]. '</td>';
                echo '<td>' ."<a href='php/delete.php?id=$id'><span class='fas fa-remove'></span> حذف</a>". '</td>';
            echo "</tr>";
        }
        echo"</tbody>";
        echo"</table>";
    }
}

echo'</tbody>';
echo'</table>';


?>