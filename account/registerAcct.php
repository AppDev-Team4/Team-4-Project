<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
include 'dbConnect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $fName = validateInput($_POST["fName"], 50);
    $lName = validateInput($_POST["lName"], 50);
    $address = validateInput($_POST["address"], 255);
    $city = validateInput($_POST["city"], 50);
    $state = $_POST["state"];
    $zipCode = validateInput($_POST["zipCode"], 5);
    $email = filter_var($_POST["email"], FILTER_VALIDATE_EMAIL);
    $password = validatePassword($_POST["password"]);

    if ($fName !== false && $lName !== false && $address !== false && $city !== false && $state !== null && $zipCode !== false && $email !== false && $password !== false) {
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

        $sql = "INSERT INTO Customers (FName, LName, Address, City, State, ZipCode, Email, Password)
                VALUES ('$fName', '$lName', '$address', '$city', '$state', '$zipCode', '$email', '$hashedPassword')";

        if ($conn->query($sql) === TRUE) {
            $customerID = $conn->insert_id;
            header("Location: http://peakcart.infinityfreeapp.com/account/LoginPage.php");
            exit();
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else {
        echo "Invalid input.";
    }
}

function validateInput($data, $maxLength) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return (strlen($data) <= $maxLength) ? $data : false;
}

function validatePassword($password) {
    $uppercase = preg_match('@[A-Z]@', $password);
    $number = preg_match('@[0-9]@', $password);

    if (strlen($password) >= 6 && strlen($password) <= 20 && $uppercase && $number) {
        return $password;
    } else {
        return false;
    }
}

$conn->close();
?>