<?php
    session_start(); //sukuria tekstini faila, kad neatsijunginetu useris keiciant puslapi.
    if(isset($_POST['submit'])) {
        include_once 'db.inc.php';
        $uid = mysqli_real_escape_string($conn, $_POST['uid']);
        $pwd = mysqli_real_escape_string($conn, $_POST['pwd']);

        if(empty($uid) || empty($pwd)) {
            header("Location: ../login.php?=login=empty");
            exit();
        } else {
            $sql = "SELECT * FROM reg_klientai WHERE user_uid = '$uid'";
            $result = mysqli_query($conn, $sql);
            $result_check = mysqli_num_rows($result);
            if($result_check < 1) {
                header("Location: ../login.php?=login=error");
                exit();
            } else {
                if($row = mysqli_fetch_assoc($result)) {
                    $hashedPwdCheck = password_verify($pwd, $row['user_pwd']);
                    if($hashedPwdCheck == false) {
                        header("Location: ../login.php?=login=error");
                        exit();
                    } elseif($hashedPwdCheck == true) {
                        $_SESSION['u_id'] = $row['user_id'];
                        $_SESSION['u_first'] = $row['user_first'];
                        $_SESSION['u_last'] = $row['user_last'];
                        $_SESSION['u_email'] = $row['user_email'];
                        $_SESSION['u_uid'] = $row['user_uid'];



                        include '../../index.php';
                        exit();

                    }
                }
            }
        }
    } else {
        header("Location: ../login.php?=login=error");
        exit();
    }
?>
