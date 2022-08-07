<?php
include("partials/config.php");
include("partials/header.php");

if (isset($_POST['login_btn'])) {
    if (!empty(trim($_POST['email'])) && !empty(trim($_POST['password']))) {
        $email = mysqli_real_escape_string($con, $_POST['email']);
        $password = mysqli_real_escape_string($con, $_POST['password']);

        $login_query = "SELECT * FROM users WHERE email='$email' AND password='$password' LIMIT 1";
        $login_query_run = mysqli_query($con, $login_query);

        if (mysqli_num_rows($login_query_run) > 0) {

            $row = mysqli_fetch_array($login_query_run);

            if ($row['verify_status'] == '1') {
                if ($row['approval_status'] == '1') {
                    $_SESSION['authenticated'] = TRUE;
                    $_SESSION['auth_user'] = [
                        'username' => $row['name'],
                        'phone' => $row['phone'],
                        'email' => $row['email'],
                        'token' => $row['verify_token'],
                        'duedate' => $row['due_date'],
                        'user_id' => $row['id']

                    ];
                    if ($row['isAdmin'] == '1') {
                        // $_SESSION['status'] = "You are logged in successfully";
                        echo "<script> window.location.href='adminhomepage.php'; </script>";
                        exit(0);
                    } else {
                        // $_SESSION['status'] = "You are logged in successfully";
                        echo "<script> window.location.href='home.php'; </script>";
                        exit(0);
                    }
                    // $_SESSION['status'] = "You are logged in successfully";
                    echo "<script> window.location.href='home.php'; </script>";
                    exit(0);
                } else {
                    $_SESSION['status'] = "Contact admin for approval";
                    echo "<script> window.location.href='login.php'; </script>";
                    exit(0);
                }
            } else {
                $_SESSION['status'] = "Please verify your email address to login";
                echo "<script> window.location.href='login.php'; </script>";
                exit(0);
            }
        } else {
            $_SESSION['status'] = "Invalid email or password";
            echo "<script> window.location.href='login.php'; </script>";
            exit(0);
        }
    } else {
        $_SESSION['status'] = "All fields are mandatory";
        echo "<script> window.location.href='login.php'; </script>";
        exit(0);
    }

    $email = $_POST['email'];
    $password = $_POST['password'];
}
