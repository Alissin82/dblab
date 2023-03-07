<!DOCTYPE html>
<html lang="fa" dir="rtl">
<head>
    <?php include_once("includes/head.php");  ?>
    <title> <?php title("نمایش"); ?> </title>
    <!-- Including jQuery is required. -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <!-- Including our scripting file. -->
    <script type="text/javascript" src="js/livesearchajax.js"></script>
</head>
<body>
    <?php include_once("includes/header.php"); ?>

    <section class="p-5">
        <form method="post">
            <label for="search">جستجو : </label>
            <input type="text" name="search" id="search" placeholder="نام کوچک، فامیل یا کدملی">
        </form>
    </section>

    <?php 
        include("php/server.php");
    ?>

    <!-- Suggestions will be displayed in below div. -->
    <div class="container-fluid p-2" id='display'>
    </div>

</body>
</html>