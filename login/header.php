<?php
    session_start();
?>

<html lang="lt">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Prisijunkite ar užsiregistruokite</title>
        <link rel="stylesheet" href="css/style.css">

    </head>



<header>
            <nav>
                <div class="main-wrapper">
                    <ul>
                        <li><a href="../index.php">Pradžia</a></li>
                    </ul>
                    <div class="nav-login">
                        <?php
                            if(isset($_SESSION['u_id'])){
                                echo '<form action="includes/logout.inc.php" method = "post>
                                <button type="submit" name="submit">Atsijunkite</button></form>';}
                        else {echo '<form action="includes/login.inc.php" method="post">
                            <input type="text" name="uid" placeholder="Username" />
                            <input type="password" name="pwd" placeholder="Password" />
                            <button type="submit" name="submit">Prisijunkite</button>
                        </form>

                        <a href="signup.php"><button>Užsiregistruokite</button></a>';
                             }
                        ?>
                    </div>
                </div>
            </nav>
        </header>
