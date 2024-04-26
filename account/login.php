<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
include 'dbConnect.php';

session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = filter_var($_POST["email"], FILTER_VALIDATE_EMAIL);
    $password = $_POST["password"];

    if ($email !== false && !empty($password)) {
        $stmt = $conn->prepare("SELECT CustomerID, FName, LName, Address, City, State, ZipCode, Email, Password FROM Customers WHERE Email = ?");
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $stmt->bind_result($customerID, $fName, $lName, $address, $city, $state, $zipCode, $email, $hashedPassword);

        if ($stmt->fetch() && password_verify($password, $hashedPassword)) {
            $_SESSION['customerID'] = $customerID;
            $_SESSION['email'] = $email;
            $_SESSION['fName'] = $fName;
            $_SESSION['lName'] = $lName;
            $_SESSION['address'] = $address;
            $_SESSION['city'] = $city;
            $_SESSION['state'] = $state;
            $_SESSION['zipCode'] = $zipCode;

            header("Location: /index.php");
            exit();
        } else {
            echo "Invalid email or password";
            echo '<a href="/LoginPage.php">Try again</a>';
        }

        $stmt->close();
    } else {
        echo "Invalid input.";
    }
}

$conn->close();
?>
