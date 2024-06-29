<?php
if (array_key_exists('delete', $_GET)) {
    filmDelete($mysqli, $_GET['id']);
} ?>
<div><a href='/'> Все фильмы</a>
    <a href='./new.php'> Добавить фильм</a>
</div>
<div class="title-1">Фильмотека</div>


<?php
if ($films) {
    foreach ($films as $key => $film) { ?>
        <div class="card mb-20">
            <div class="button-format">
                <a href="?delete&id=<?= $film['films_id']; ?>" name="delete">Удалить</a>
                <a href="/edit.php?id=<?= $film['films_id']; ?>">Редактировать</a>
            </div>
            <h4 class="title-4"><?= $film['films_name']; ?></h4>
            <div class="badge"><?= $film['films_genre']; ?></div>
            <div class="badge"><?= $film['films_year']; ?></div>
            <div class="badge"><a href="single.php?id=<?= $film['films_id'] ?>">Подробнее...</a></div>
        </div>

<?php }
} elseif (empty($films)) {
    echo "добавте хотя бы один фильм";
} ?>