<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once("./config.php");
require_once("./db.php");
require_once("./models/films.php");

include("./views/header.tpl");
include("./views/film-edit.tpl");
include("./views/footer.tpl");
