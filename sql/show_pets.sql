CREATE TABLE `t_show_pets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pet_name` varchar(45) DEFAULT NULL,
  `pet_price` double DEFAULT NULL,
  `pet_type` int(11) DEFAULT NULL COMMENT '0 泰迪犬 1 比熊犬 2 金毛犬',
  `pet_age` int(11) DEFAULT NULL,
  `pet_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8
