<?php
ob_start();
session_start();
?>

 <?php
$username="uname";
$password="pass123";
$sunucu="localhost";
$database="admin";


$baglanti = mysqli_connect("localhost", "uname", "pass123", "admin");
if (!$baglanti) {
    die("Connection failed: " . mysqli_connect_error());
}
mysqli_select_db($baglanti, $database);
if (!$baglanti->set_charset("utf8"));

?>