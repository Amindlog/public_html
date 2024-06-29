#SXD20|20011|50505|70433|2024.06.20 15:22:54|admin_web_school|utf8|1|2|
#TA films`2`32768
#EOH

#	TC`films`utf8_general_ci	;
CREATE TABLE `films` (
  `films_id` int(11) NOT NULL AUTO_INCREMENT,
  `films_name` varchar(255) NOT NULL,
  `films_genre` varchar(45) NOT NULL COMMENT '		',
  `films_year` varchar(45) NOT NULL,
  PRIMARY KEY (`films_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci	;
#	TD`films`utf8_general_ci	;
INSERT INTO `films` VALUES 
(33,'21312','1321','32131'),
(37,'Новый фильм','комедия','2025')	;
