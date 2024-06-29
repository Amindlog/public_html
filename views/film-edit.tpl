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
<div class="title-1">Редактирование</div>

<?php
if ($result) { ?>
    <div class="card mb-20">
        <div class="button-format">
            <a href="edit.php?id=<?= $result['films_id']; ?>&delete" name="delete">Удалить</a>
        </div>
        <h4 class="title-4"><?= $result['films_name']; ?></h4>
        <div class="badge"><?= $result['films_genre']; ?></div>
        <div class="badge"><?= $result['films_year']; ?></div>
        <div class="badge"><?= $result['films_description']; ?></div>
    </div>
<?php } ?>

<div class="panel-holder mt-80 mb-40">
    <div class="title-3 mt-0">Редактировать фильм</div>
    <form action="/edit.php?id=<?= $result['films_id'] ?>" method="POST">
        <div class="form-group"><label class="label">Название фильма<input class="input" name="title" type="text" value="<?= $result['films_name']; ?>" /></label></div>
        <div class="row">
            <input type="text" value="<?= $result['films_id']; ?> " name="id" hidden>
            <div class="col">
                <div class="form-group"><label class="label">Жанр<input class="input" name="genre" type="text" value="<?= $result['films_genre']; ?>" /></label></div>
            </div>
            <div class="col">
                <div class="form-group"><label class="label">Год<input class="input" name="year" type="text" value="<?= $result['films_year']; ?>" /></label></div>
            </div>
            <div class="col">
                <div class="form-group"><texteare name="description"><?= $result['films_description']?></texteare></div> 
            </div>
        </div><input class="button" type="submit" name="update" value="Внести изменения" />
    </form>