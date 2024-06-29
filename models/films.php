<?php
require_once("./db.php");
require_once("./config.php");

function films_All($mysqli): array
{
    $films = array();
    // Получение списка фильмов
    $querySelectDb = 'SELECT * FROM `' . DATABASE . '`.`films`';
    $resultSelectDb = mysqli_query($mysqli, $querySelectDb);
    if ($resultSelectDb) {
        while ($row = mysqli_fetch_assoc($resultSelectDb)) {
            $films[] = $row;
        }
    }
    return $films;
}
function getOneFilm($mysqli)
{
    $resultSelectDb = mysqli_query($mysqli, 'SELECT * FROM films WHERE `films_id`= ' . $_GET['id'] . '');
    if ($resultSelectDb) {
        return mysqli_fetch_array($resultSelectDb);
    }
}
function filmDelete($mysqli, $id)
{
    $queryDelete = "DELETE FROM `admin_web_school`.`films` WHERE `films_id` = '" . htmlspecialchars($id) . "'";
    if (mysqli_query($mysqli, $queryDelete)) {
        header("location:index.php");
        echo "вы удалили успешно фильм";
    } else {
        echo "Удаление не возможно";
    }
}
function filmUpdate($mysqli)
{
    if (!empty(trim($_POST['title'])) || !empty(trim($_POST['genre'])) || !empty(trim($_POST['year'])) || !empty(trim(is_numeric($_POST['id'])))) {
        $queryUpdate = "UPDATE `admin_web_school`.`films` SET
        `films_name` = '" . mysqli_real_escape_string($mysqli, $_POST['title']) . "',
        `films_genre` = '" . mysqli_real_escape_string($mysqli, $_POST['genre']) . "',
        `films_year` = '" . mysqli_real_escape_string($mysqli, $_POST['year']) . "'
        WHERE `films_id` = '" . $_POST['id'] . "'";
    }
    if (mysqli_query($mysqli, $queryUpdate)) {
        header("location: edit.php?id=" . $_POST['id'] . "");
    } else {
        $result = "Что то пошло не так в изменении";
    }
    return $result;
}
function filmAddNew($mysqli, $post): bool
{
    $queryInsertDb = "INSERT INTO `" . DATABASE . "`.`films` (`films_name`, `films_genre`, `films_year`) VALUES (
        '" . mysqli_real_escape_string($mysqli, $post['title']) . "',
        '" . mysqli_real_escape_string($mysqli, $post['genre']) . "',
        '" . mysqli_real_escape_string($mysqli, $post['year']) . "')";
    if (mysqli_query($mysqli, $queryInsertDb)) {
        return true;
    } else {
        return false;
    }
}

function isEmptyPostAddNewFilm($post): bool
{
    if (!empty(trim($post['title'])) && !empty(trim($post['genre'])) && !empty(trim($post['year']))) {
        return true;
    } else {
        return false;
    }
}
