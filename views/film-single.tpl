<?php
$result = getOneFilm($mysqli);
if (array_key_exists('delete', $_GET)) {
    filmDelete($mysqli, $result['films_id']);
}

if (array_key_exists('update', $_POST)) {
    filmUpdate($mysqli);
}
?>
<a href="/"> На главную</a>
<div class="title-1">Описание <?= $result['films_name'];?></div>

<?php
if ($result) { ?>
    <div class="card mb-20">
        <div class="button-format">
            <a href="edit.php?id=<?= $result['films_id']; ?>&delete" name="delete">Удалить</a>
        </div>
        <h4 class="title-4"><?= $result['films_name']; ?></h4>
        <div class="badge"><?= $result['films_genre']; ?></div>
        <div class="badge"><?= $result['films_year']; ?></div>
        <div></div><textarea><?= $result['films_description']; ?></textarea></div>
    </div>
<?php } ?>

