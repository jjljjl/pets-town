CREATE TABLE `t_detail_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_name` varchar(50) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `forign_` (`p_id`),
  CONSTRAINT `forign_` FOREIGN KEY (`p_id`) REFERENCES `t_show_pets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8
