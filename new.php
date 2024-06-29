<?php
require_once("./config.php");
require_once("./db.php");
require_once("./models/films.php");

if (array_key_exists('newFilm', $_POST)) {
    if (isEmptyPostAddNewFilm($_POST)) {
        filmAddNew($mysqli, $_POST);
        header("location: index.php");
    } else {
        die("Не пройдена проверка на заполненость данных.<a href='new.php'>Назад</a>");
    }
}
include("./views/header.tpl");
include("./views/new-film.tpl");
include("./views/footer.tpl");
