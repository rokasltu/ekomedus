<?php
    if(isset($_POST['submit'])) {
        include_once 'db.inc.php';
        // mysqli_real_escape_string panaikina tarpus ir html koda skaito kaip tiesiog teksta
        $first = mysqli_real_escape_string($conn, $_POST['first']);
        $last = mysqli_real_escape_string($conn, $_POST['last']);
        $email = mysqli_real_escape_string($conn, $_POST['email']);
        $uid = mysqli_real_escape_string($conn, $_POST['uid']);
        $pwd = mysqli_real_escape_string($conn, $_POST['pwd']);
        // tikrinam errorus
        // ar nera tusciu laukeliu
        if (empty($first) || empty($last) || empty($email) || empty($uid) || empty($pwd)) {
            header("Location: ../signup.php?signup=empty");
            exit();
        } else {
            // ar teisingai ivesti vardo ir pavardes simboliai
            if (!preg_match("/^[a-zA-Z]*$/", $first) || !preg_match("/^[a-zA-Z]*$/", $last)) {
                header("Location: ../signup.php?signup=invalid");
                exit();
            } else {
                // ar atitinka email formatas
                if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                    header("Location: ../signup.php?signup=invalidemail");
                    exit();
                } else {
                    // ar username jau naudojamas
                    $sql = "SELECT * FROM reg_klientai WHERE user_uid = '$uid'";
                    $result = mysqli_query($conn, $sql);
                    $result_check = mysqli_num_rows($result);
                    if($result_check > 0) {
                    header("Location: ../signup.php?signup=usertaken");
                    exit();
                    } else {
                        // sukuriamas hash passwordui
                        $hashedPwd = password_hash($pwd, PASSWORD_DEFAULT);
                        // Ikeliam useri i DB
                        $sql = "INSERT INTO reg_klientai (user_first, user_last, user_email, user_uid, user_pwd) VALUES('$first', '$last', '$email', '$uid', '$hashedPwd');";
                        mysqli_query($conn, $sql);
                        header("Location: ../signup.php?signup=success");
                        exit();
                    }
                }
            }
        }
    } else {
        header("Location: ../signup.php");
        exit();
    }
