<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
include 'dbConnect.php';

session_start();

if (!isset($_SESSION['customerID'])) {
    echo '<a href="/account/LoginPage.php">Login</a>';
    exit();
}

if (isset($_SESSION['customerID'])) {
    echo '<a href="/account/logout.php">Logout</a>';
}

if (!isset($_SESSION['cart']) || empty($_SESSION['cart'])) {
    echo "Cart is empty.";
    exit();
}

$subtotal = 0;
foreach ($_SESSION['cart'] as $cartItem) {
    $itemTotal = $cartItem['price'] * $cartItem['quantity'];
    $subtotal += $itemTotal;
}
$taxRate = 0.0825;
$taxes = $subtotal * $taxRate;
$total = $subtotal + $taxes;
$total = number_format($total, 2);

$email = $_SESSION['email'];
$fName = $_SESSION['fName'];
$lName = $_SESSION['lName'];
$customerID = $_SESSION['customerID'];

$sql = "SELECT * FROM `Customers` WHERE CustomerID ='$customerID'";
$result = $conn->query($sql);

if (!$result){
    die("Query failed: " . $conn->error);
}

$customer = $result->fetch_assoc();

$sql = "INSERT INTO Orders (CustomerID, Total) VALUES ('$customerID', '$total')";
if ($conn->query($sql) === TRUE) {
    $orderID = $conn->insert_id;
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

foreach ($_SESSION['cart'] as $cartItem) {
    $productID = $cartItem['id'];
    $productQuantity = $cartItem['quantity'];
    $sql = "SELECT COUNT(1) as Count FROM `CustomerPurchases` WHERE CustomerID = '$customerID' AND ProductID = '$productID'";
    $result = $conn->query($sql);
    $count = $result->fetch_assoc();

    if ($count['Count'] == 0){
        $sql = "INSERT INTO CustomerPurchases (CustomerID, ProductID, NumPurchased) VALUES ('$customerID', '$productID', '$productQuantity')";
        if (!$conn->query($sql)) {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else {
        $sql = "SELECT NumPurchased FROM CustomerPurchases WHERE CustomerID = '$customerID' AND ProductID = '$productID'";
        $result = $conn->query($sql);
        $numPurchased = $result->fetch_assoc()['NumPurchased'];
        $numPurchased += $productQuantity;
        $sql = "UPDATE `CustomerPurchases` SET NumPurchased = '$numPurchased' WHERE CustomerID = '$customerID' AND ProductID = '$productID'";
        if (!$conn->query($sql)) {
            echo "Error updating: " . $conn->error;
        }
    }
}

$conn->close();

$_SESSION['cart'] = [];
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Peak Cart</title>

   <link rel="stylesheet" href="cart.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
   

</head>

<body>
    <div class="container">
        <div class="navbar">
        
            <img src="https://i.postimg.cc/bwXcStHR/Logo.png" class="Logo">
            <nav>
                <a href="../pages/cart.php">MY CART</a>
                <a href="../pages/cart.php">
<img src="https://i.postimg.cc/rFR2pJWm/cart.png" class="cart"></a>
            </nav>
        </div>
    </div>

    <div class="Slogan">
        <p></p>
        <p><b>Scaling New Heights in Fashion, Living and Wellness</b></p>
    </div>

    <div class="Navigation">
        <a href="/home.php"><button type="button" class="buttonOne">Home</button></a>
        <a href="../pages/catalog.php"><button type="button" class="buttonTwo">Catalog</button></a>
        <button type="button" class="buttonThree">Account</button>
        <a href="../pages/checkout.php"><button type="button" class="buttonFour">Check Out</button></a>
        <a href="../pages/about.php"><button type="button" class="buttonFive">About Us</button></a>
    </div>
<!--^Head of website^-->

    <div class="cart-div">
        <div class="cart-table-div">
            <div class="table-side-div">
                <div class="blue">
                <h2>ORDER Receipt</h2>
                    <h3>Price</h3>
                        <p>Subtotal: <span class="rightalign">$<?php echo number_format($subtotal, 2); ?></span></p>
                        <p>Shipping:  <span class="rightalign">Free</span></p>
                        <p>Taxes: <span class="rightalign">$<?php echo number_format($taxes, 2); ?></span></p>
                        <p><b>Grand Total: <span class="rightalign">$<?php echo $total; ?></span></b></p>
                    <h3>Shipping Details</h3>   
                        <p>Order date: <span class="rightalign" id="date"><script>document.write(new Date().toLocaleDateString());</script></span></p>
                        <p>Name: <span class="rightalign"><?php echo $fName?> <?php echo $lName?></span></p>
                        <p>Email: <span class="rightalign"><?php echo $email?></span></p>
                        <p>Address: <span class="rightalign"><?php echo $customer['Address'] ?><br><?php echo $customer['City']?>, <?php echo $customer['State']?> <?php echo $customer['ZipCode']?></span></p>
                        <p>Order ID: <span class="rightalign"><?php echo $orderID?></span></p>
                        <p><i>Order processing, order will be sent in 3-5 business days.</i></p>
                        <a href="/home.php"><button type="btn-group" class="buttonOne">Return to Home</button></a>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
