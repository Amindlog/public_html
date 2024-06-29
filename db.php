<?php
require_once("./config.php");
// Соединение с БД
function dbConection()
{
    $mysqli = mysqli_connect(HOSTNAME, USERNAME, PASSWORD, DATABASE)
        or die("Error:" . mysqli_error($mysqli));
    if (!mysqli_set_charset($mysqli, "utf8")) {
        print_r("ERROR:" . mysqli_error($mysqli));
    }

    return $mysqli;
}
$mysqli = dbConection();
