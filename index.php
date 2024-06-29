<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require("./config.php");
require_once("./db.php");
require("./models/films.php");


$films = films_All($mysqli);

include("./views/header.tpl");
include("./views/index.tpl");
include("./views/footer.tpl");
