<?php
include 'dbConnect.php';
session_start();

if (!isset($_SESSION['customerID'])) {
    echo '<a href="/account/LoginPage.php">Login</a>';
}

if (isset($_SESSION['customerID'])) {
    echo '<a href="/account/logout.php">Logout</a>';
	$customerID = $_SESSION['customerID'];
	$email = $_SESSION['email'];
}

$productId = $_GET['id'];

$sql = "SELECT * FROM Products WHERE ProductID = $productId";
$result = $conn->query($sql);

if (!$result) {
    die("Query failed: " . $conn->error);
}

$product = $result->fetch_assoc();

if (isset($_POST['add_to_cart'])) {
    $cartItem = [
        'id' => $product['ProductID'],
        'image' => $product['ImagePath'],
        'name' => $product['Name'],
        'price' => $product['Price'],
        'quantity' => $_POST['quantity'],
    ];

    if (!isset($_SESSION['cart'])) {
        $_SESSION['cart'] = [];
    }

    $_SESSION['cart'][] = $cartItem;

    header('Location: itemPage.php?id=' . $productId);
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Peak Cart</title>

   <link rel="stylesheet" href="itemPage.css">
   

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
        <a href="../account/accCreate.php"><button type="button" class="buttonThree">Account</button></a>
        <a href="../pages/checkout.php"><button type="button" class="buttonFour">Check Out</button></a>
        <a href="../pages/about.php"><button type="button" class="buttonFive">About Us</button></a>
    </div>

    <div class="indicator detailed-indicator">
    <p>
        Home > 
        Product Catalog > 
        <?php echo $product['Category']; ?> >
        <?php echo $product['Subcategory']; ?> > 
        <?php echo $product['Name']; ?>
    </p>
</div>

    <div class="product-detail">
       
        <div class="left">
            <img src="<?php echo $product['ImagePath']; ?>" alt="<?php echo $product['Name']; ?>">
        </div>
        <div class="right">
                    <h1><?php echo $product['Name']; ?></h1>
                     <p class="description"><?php echo $product['Description']; ?></p>
                    <p class="price">$<?php echo $product['Price']; ?></p>
                    <form method="post" action="itemPage.php?id=<?php echo $productId; ?>">
                    Quantity: <input type="number" name="quantity" placeholder="1" value="1">
                    <button type="submit" name="add_to_cart">Add to Cart</button>
                    </form>
                    </p>
        </div>
    </div>


</body>

</html>