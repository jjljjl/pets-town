CREATE TABLE `t_user_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `pet_price` double DEFAULT NULL,
  `pet_count` int(11) DEFAULT NULL,
  `create_on` datetime DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`u_id`),
  KEY `pet_id` (`p_id`),
  CONSTRAINT `pet_id` FOREIGN KEY (`p_id`) REFERENCES `t_show_pets` (`id`),
  CONSTRAINT `user_id` FOREIGN KEY (`u_id`) REFERENCES `t_user_register` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
