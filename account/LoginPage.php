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
    <title>Peak Cart</title>

    <link rel="stylesheet" href="LoginPage.css">

</head>

<body>
    <div class="container">
        <div class="navbar">
            <img src="https://i.postimg.cc/bwXcStHR/Logo.png" class="Logo">
            <nav>
                <a ref="">MY ACCOUNT</a>
                <img src="https://i.postimg.cc/rFR2pJWm/cart.png" class="cart">
            </nav>
        </div>

    </div>

    <div class="Slogan">
    <p></p>
     <p><b>Scaling New Heights in Fashion, Living and Wellness</b></p>
        
    </div>

    <div class="Navigation">
        <a href="/index.php"><button type="button" class="buttonOne">Home</button></a>
        <a href="../pages/catalog.php"><button type="button" class="buttonTwo">Catalog</button></a>
        <a href="../account/accCreate.php"><button type="button" class="buttonThree">Account</button></a>
        <a href="../pages/checkout.php"><button type="button" class="buttonFour">Check Out</button></a>
        <a href="../pages/about.php"><button type="button" class="buttonFive">About Us</button></a>
    </div>


    <div class="loginDiv">
        <h1>Login</h1>
        <form id=loginForm action="login.php" method="post">
            <label>Email</label>
            <input type="email" name="email" required>
            <label>Password</label>
            <input type="password" name="password" required>
            <br>
            <br>
          <a href="/index.php">  <input type="submit" value="Log in"></a></p>
        </form>
        
    </div>
    <p class="NeedAcc">Need to create account? <a href="accCreate.php">Sign up</a></p>
</body>
</html>