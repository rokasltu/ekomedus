<?php

    define("DB_SERVER", "localhost");
    define("DB_USER", "veedis_rokas");
    define("DB_PASSWORD", "sakorQQAAZZ12");
    define("DB_NAME", "veedis_forma");

    if (isset($_POST['submit'])){
    $mysqli = new mysqli(DB_SERVER, DB_USER, DB_PASSWORD, DB_NAME);
    if($mysqli->connect_error) {
        echo "Atsiprasome...";
        echo 'Klaida' . $mysqli->connect_error. '\n';
        exit();
    }

    mysqli_query($mysqli, "INSERT INTO klientai (name, email, message) VALUES('$_POST[vardas]', '$_POST[email]', '$_POST[message]')");
    }



