<?php
session_start();

if (!isset($_SESSION['customerID'])) {
    echo '<a href="/account/LoginPage.php">Login</a>';
}

if (isset($_SESSION['customerID'])) {
    echo '<a href="/account/logout.php">Logout</a>';
}

$customerID = $_SESSION['customerID'];
$email = $_SESSION['email'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Commerce </title>

    <link rel="stylesheet" href="Home.css">

</head>
<body>
    <div class="container">
        <div class="navbar">
            <img src="https://i.postimg.cc/bwXcStHR/Logo.png" class="Logo">
            <nav>
                <a href="../pages/cart.php">MY CART
                <img src="https://i.postimg.cc/brg7SrVS/cart.png" class="cart"></a>
            </nav>
        </div>
    </div>

    <div class="Slogan">
        <p><b>Scaling New Heights in Fashion, Living and Wellness</b></p>
    </div>

    <div class="Navigation">
        <a href="/index.php"><button type="button" class="buttonOne">Home</button></a>
        <a href="../pages/catalog.php"><button type="button" class="buttonTwo">Catalog</button></a>
        <a href="../account/accCreate.php"><button type="button" class="buttonThree">Account</button></a>
        <a href="../pages/checkout.php"><button type="button" class="buttonFour">Check Out</button></a>
        <a href="../pages/about.php"><button type="button" class="buttonFive">About Us</button></a>
    </div>

    <div class="banner">
        <img class="mntns" src="https://i.postimg.cc/NFQh0mDw/banner.jpg">
        <div class="leftText">
            Elevate your lifestyle with Peak Cart!
            <br>
            Explore trendsetting fashion, inspiring home goods, exciting hobbies, and vital health + wellness products.
            <br>
            Reach new peaks of style and wellbeing w/ FREE SHIPPING on all new orders!
        </div>  
    </div>

    <div class="cardDiv">
        <a href="../pages/catalog.php?category=clothing"><div class="card rect1"></div></a>
        <a href="../pages/category.php?category=homeGoods"><div class="card rect2"></div></a>
        <a href="../pages/category.php?category=hobbies"><div class="card rect3"></div></a>
        <a href="../pages/category.php?category=healthWellness"><div class="card rect4"></div></a>
    </div>
</body>
</html>
