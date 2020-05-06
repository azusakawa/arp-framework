CREATE DATABASE IF NOT EXISTS `arp`;
USE `arp`;

CREATE TABLE `users` (
	`identifier` VARCHAR(40) NOT NULL,
	`inventory` LONGTEXT NULL DEFAULT NULL,
	`position` VARCHAR(53) NULL DEFAULT '{-269.4,-955.3,31.2}',
	`isdead` INT(11) NOT NULL DEFAULT 0,

	PRIMARY KEY (`identifier`)
);

CREATE TABLE `itmes` (
	`name` VARCHAR(50) NOT NULL,
	`label` VARCHAR(50) NOT NULL,
	`limit` INT(11) NOT NULL DEFAULT 1,	

	PRIMARY KEY (`name`)
)