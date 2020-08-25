CREATE DATABASE IF NOT EXISTS `eatsomewhereDB`;

USE `eatsomewhereDB`;

DROP TABLE IF EXISTS `Stores`;
DROP TABLE IF EXISTS `Admin_update_news`;
DROP TABLE IF EXISTS `User_post_community`;
DROP TABLE IF EXISTS `User_watch_stores`;
DROP TABLE IF EXISTS `User_watch_news`;
DROP TABLE IF EXISTS `USERs`;
DROP TABLE IF EXISTS `Admin`;
DROP TABLE IF EXISTS `News`;
DROP TABLE IF EXISTS `Community`;


CREATE TABLE `Users`(
`id` INT NOT NULL AUTO_INCREMENT,
`first_name` VARCHAR(150) NOT NULL,
`last_name` VARCHAR(150) NOT NULL,
`age` INT(5) NOT NULL,
`user_name` VARCHAR(120) NOT NULL UNIQUE,
`password` VARCHAR(120) NOT NULL,
`status` VARCHAR(50) NOT NULL,

PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET utf8mb4;

CREATE TABLE `Admin`(
`admin_id` INT NOT NULL AUTO_INCREMENT,
`first_name` VARCHAR(150) NOT NULL,
`last_name` VARCHAR(150) NOT NULL,
`age` INT(5) NOT NULL,
`admin_name` VARCHAR(120) NOT NULL UNIQUE,
`password` VARCHAR(120) NOT NULL,
`status` VARCHAR(50) NOT NULL,

PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET utf8mb4;

CREATE TABLE `News`(
`id` INT NOT NULL AUTO_INCREMENT,
`news` VARCHAR ,
`detail` VARCHAR,

PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET utf8mb4;

CREATE TABLE `Community`(
`id` INT NOT NULL AUTO_INCREMENT,
`post` VARCHAR(150) ,
`comment_post` VARCHAR ,
`date_time` TIMESTAMP,

PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET utf8mb4;

CREATE TABLE `Stores`(
`id` INT(5),
`admin_id` INT(5),
`store_name` VARCHAR ,
`detail` VARCHAR,
`comment_post` VARCHAR ,
`date_time` TIMESTAMP,

CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `Admin`.`admin_id`,
PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET utf8mb4;

CREATE TABLE `Admin_update_news`(
`id` INT(5) ,
`admin_id` INT(5) ,
`new_id` INT(5) ,
`news` VARCHAR ,
`detail` VARCHAR,

CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `Admin`.`admin_id`,
CONSTRAINT `new_ibfk_2` FOREIGN KEY (`new_id`) REFERENCES `News`.`new_id`,
PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET utf8mb4;

CREATE TABLE `User_post_community`(
`id` INT,
`user_id` INT(5),
`community_id` INT(5),

CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users`.`user_id`,
CONSTRAINT `community_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `Community`.`community_id`,
PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET utf8mb4;

CREATE TABLE `User_watch_stores`(
`id` INT,
`user_id` INT(5),
`store_id` INT(5),

CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users`.`user_id`,
CONSTRAINT `store_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `Stores`.`store_id`,
PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET utf8mb4;

CREATE TABLE `User_watch_news`(
`id` INT,
`user_id` INT(5),
`new_id` INT(5),

CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users`.`user_id`,
CONSTRAINT `new_ibfk_2` FOREIGN KEY (`new_id`) REFERENCES `News`.`new_id`,
PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET utf8mb4;





