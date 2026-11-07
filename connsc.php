<?php
$DB_USERNAME = "root";
$DB_PASS = "";
$DB_HOSTNAME = "localhost";
$DB_NAME = "scholarscout";

$conn = mysqli_connect(
    $DB_HOSTNAME,
    $DB_USERNAME,
    $DB_PASS,
    $DB_NAME
) or die("Database connection error: " . mysqli_connect_error());
?>