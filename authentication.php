<?php

include("partials/config.php");

if (!isset($_SESSION['authenticated'])) {
    $_SESSION['status'] = "Please login to access this page";
    echo "<script> window.location.href='login.php'; </script>";
    exit(0);
}
