<?php
$servername = "sql113.infinityfree.com";
$username = "if0_35989662";
$password = "Webproject123";
$dbname = "if0_35989662_peakcart";
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>