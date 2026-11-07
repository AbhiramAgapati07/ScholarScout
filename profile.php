<?php
session_start();
include('connsc.php');

// not logged in? send to login page
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit;
}

$user_id = $_SESSION['user_id'];

$sql = "SELECT u.username, u.name, u.email,
               sp.annual_income, sp.marks_percentage, sp.education_level,
               g.gender_name, c.category_name, s.state_name
        FROM users u
        JOIN student_profile sp ON sp.user_id = u.user_id
        JOIN gender g ON g.gender_id = sp.gender_id
        JOIN category c ON c.category_id = sp.category_id
        JOIN state s ON s.state_id = sp.state_id
        WHERE u.user_id = ?";

$stmt = mysqli_prepare($conn, $sql);
mysqli_stmt_bind_param($stmt, "i", $user_id);
mysqli_stmt_execute($stmt);
$p = mysqli_fetch_assoc(mysqli_stmt_get_result($stmt));
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Scholar Scout - profile</title>
    <link rel="stylesheet" href="saved.css">
</head>
<body>
    <div id="head">
    <header>
      <a class="logo">
        <img src="sclogo.png" alt="logo">
        <span id="name">SCHOLAR SCOUT</span>
      </a>

      <table class="navTable" cellpadding="4" cellspacing="0" border="0">
        <tr>
          <td><a href="eligiblesc.php" title="Jump to home section">YOUR ELIGIBLE SCHOLARSHIPS</a></td>
          <td>|</td>
          <td><a href="homepage1.html" title="Jump to abt section">LOGOUT</a></td>
          <td>|</td>
          <td><a href="profile.php" title="Jump to login section">PROFILE</a></td>
      
        </tr>
      </table>
    </header>
  </div>

 <div id="info">
  <h2>My Profile</h2>
<table>
    <tr><td>Name</td><td><?php echo htmlspecialchars($p['name']); ?></td></tr>
    <tr><td>Username</td><td><?php echo htmlspecialchars($p['username']); ?></td></tr>
    <tr><td>Email</td><td><?php echo htmlspecialchars($p['email']); ?></td></tr>
    <tr><td>Education</td><td><?php echo htmlspecialchars($p['education_level']); ?></td></tr>
    <tr><td>Marks (%)</td><td><?php echo $p['marks_percentage']; ?></td></tr>
    <tr><td>Annual Income</td><td>₹<?php echo number_format($p['annual_income']); ?></td></tr>
    <tr><td>Gender</td><td><?php echo htmlspecialchars($p['gender_name']); ?></td></tr>
    <tr><td>Category</td><td><?php echo htmlspecialchars($p['category_name']); ?></td></tr>
    <tr><td>State</td><td><?php echo htmlspecialchars($p['state_name']); ?></td></tr>
</table>
 </div>


</body>
</html>