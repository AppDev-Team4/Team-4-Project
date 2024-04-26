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

    <link rel="stylesheet" href="accCreate.css">

</head>

<body>
    <div class="container">
        <div class="navbar">
        
            <img src="https://i.postimg.cc/bwXcStHR/Logo.png" class="Logo">
            <nav>
                <a href="../pages/cart.php">MY CART</a>
<img src="https://i.postimg.cc/rFR2pJWm/cart.png" class="cart"></a>
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

    <div class="loginBox">
        <p class="CaC">Create an Account</p>
        <br>
        <p class="AhA">Already have an account?<a href="../account/LoginPage.php"> Log In</p></a>

        <script src=formValidation.js></script>
        <script src=passwordVisibility.js></script>

        <form id="registerAcct" action="registerAcct.php" method="post" onsubmit="return formValidation()">
        <div class="div1">
            <label for="fName">First Name:</label>
            <br>
            <input type="text" name="fName" id="fName" size="20" placeholder="First" required>
        </div>

        <div class="div2">
            <label for="lName">Last Name:</label>
            <br>
            <input type="text" name="lName" id="lName" size="30" placeholder="Last" required>
        </div>

        <div class="div3">
            <label for="address">Address:</label>
            <br>
            <input type="text" name="address" id="address" placeholder="Street Address" required>
        </div>

        <div class="div4">
            <label for="city">City:</label>
            <br>
            <input type="text" name="city" id="city" placeholder="City" required>
        </div>

        <div class="div5">
            <label for="state">State:</label>
            <br>
            <select name="state" id="state" required>
                <option value="" selected disabled>Select State</option>
                <option value="AL">Alabama</option>
                <option value="AK">Alaska</option>
                <option value="AZ">Arizona</option>
                <option value="AR">Arkansas</option>
                <option value="CA">California</option>
                <option value="CO">Colorado</option>
                <option value="CT">Connecticut</option>
                <option value="DE">Delaware</option>
                <option value="DC">District Of Columbia</option>
                <option value="FL">Florida</option>
                <option value="GA">Georgia</option>
                <option value="HI">Hawaii</option>
                <option value="ID">Idaho</option>
                <option value="IL">Illinois</option>
                <option value="IN">Indiana</option>
                <option value="IA">Iowa</option>
                <option value="KS">Kansas</option>
                <option value="KY">Kentucky</option>
                <option value="LA">Louisiana</option>
                <option value="ME">Maine</option>
                <option value="MD">Maryland</option>
                <option value="MA">Massachusetts</option>
                <option value="MI">Michigan</option>
                <option value="MN">Minnesota</option>
                <option value="MS">Mississippi</option>
                <option value="MO">Missouri</option>
                <option value="MT">Montana</option>
                <option value="NE">Nebraska</option>
                <option value="NV">Nevada</option>
                <option value="NH">New Hampshire</option>
                <option value="NJ">New Jersey</option>
                <option value="NM">New Mexico</option>
                <option value="NY">New York</option>
                <option value="NC">North Carolina</option>
                <option value="ND">North Dakota</option>
                <option value="OH">Ohio</option>
                <option value="OK">Oklahoma</option>
                <option value="OR">Oregon</option>
                <option value="PA">Pennsylvania</option>
                <option value="RI">Rhode Island</option>
                <option value="SC">South Carolina</option>
                <option value="SD">South Dakota</option>
                <option value="TN">Tennessee</option>
                <option value="TX">Texas</option>
                <option value="UT">Utah</option>
                <option value="VT">Vermont</option>
                <option value="VA">Virginia</option>
                <option value="WA">Washington</option>
                <option value="WV">West Virginia</option>
                <option value="WI">Wisconsin</option>
                <option value="WY">Wyoming</option>
            </select>
        </div>

        <div class="div6">
            <label for="zipCode">Zip Code:</label>
            <br>
            <input type="text" name="zipCode" id="zipCode" placeholder="Zip Code">
        </div>
        
        <div class="div7">
            <label for="email">Email Address:</label>
            <br>
            <input type="email" name="email" id="email" size="50" placeholder="Email Address" required>
        </div>

        <div class="div8">
            <label for="password">Password:</label>
            <br>
            <input type="password" name="password" id="password" size="30" placeholder="Password" required>
        </div>

        <div class="div9">
            <img class="eye" src="https://i.postimg.cc/MTphJbqz/ShowPW.png" alt="eyePic" onclick="passwordVisibility()">
            <p class="SP">Show Password</p>
        </div>
    
        <img class="PwReq" src="https://i.postimg.cc/6QwkYxP2/PwReq.png">

        <input type="image" src="https://i.postimg.cc/XNz03hrm/Create-Acc.png" alt="Submit" class="create">

        </form>
    </div>

</body>
</html>
