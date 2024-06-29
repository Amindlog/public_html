<?php
$connect = new PDO("mysql:host=localhost", "admin_root", "281942Aa");
$sql = "SELECT * FROM `admin_web_school`.`films`";
//Вывод по одной записи
// $result = $connect->query($sql);
// while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
//     echo $row['films_id'];
// }
//вывод всех записей в массив
// $result = $connect->query($sql);
// $r = $result->fetchAll(PDO::FETCH_ASSOC);
// foreach ($r as $film) {
//     echo $film['films_name'];
// }
//вывод данных в переменных

// $result = $connect->query($sql);

// $result->bindColumn('films_id', $id);

// while ($result->fetch(PDO::FETCH_ASSOC)) {
//     echo "{$id}";
// }



                                                            
