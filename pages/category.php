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

$category = isset($_GET['category']) ? $_GET['category'] : '';

$catalogPageUrl = 'catalog.php';

header("Location: $catalogPageUrl?category=$category&sort_by=featured&filterByPrice=");
exit();