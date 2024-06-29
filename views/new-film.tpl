            <div class="panel-holder mt-80 mb-40">
			<a href="./">На главную</a>
			<div class="title-3 mt-0">Добавить фильм</div>

			<form action="new.php" method="POST">
				<div class="notify notify--error mb-20 " hidden>Название фильма не может быть пустым.</div>
				<div class="form-group"><label class="label">Название фильма<input class="input" name="title" type="text" placeholder="Такси 2" /></label></div>
				<div class="row">
					<div class="col">
						<div class="form-group"><label class="label">Жанр<input class="input" name="genre" type="text" placeholder="комедия" /></label></div>
					</div>
					<div class="col">
						<div class="form-group"><label class="label">Год<input class="input" name="year" type="text" placeholder="2000" /></label></div>
					</div>
				</div><input class="button" type="submit" name="newFilm" value="Добавить" />
			</form>

		</div>
	</div>
