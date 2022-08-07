<?php
session_start();
unset($_SESSION['authenticated']);
unset($_SESSION['auth_user']);
$_SESSION['status'] = "You logged out successfully";
echo "<script> window.location.href='login.php'; </script>";

?> 