CREATE TABLE `t_index_video` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `video_id` int(20) NOT NULL,
  `video_name` varchar(30) DEFAULT NULL,
  `video_url` varchar(50) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `video_image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`video_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
