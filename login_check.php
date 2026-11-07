<?php
session_start();
include "connsc.php";

$username = $_POST['username'];
$password = $_POST['password'];

$stmt = mysqli_prepare($conn, "SELECT user_id, name, password_hash FROM users WHERE username = ?");
mysqli_stmt_bind_param($stmt, "s", $username);
mysqli_stmt_execute($stmt);
$user = mysqli_fetch_assoc(mysqli_stmt_get_result($stmt));

if ($user && password_verify($password, $user['password_hash'])) {
    $_SESSION['user_id'] = $user['user_id'];
    $_SESSION['name'] = $user['name'];
    header("Location: homepage2.php");
} else {
    echo "Wrong username or password. <a href='login.php'>Try again</a>";
}
?>