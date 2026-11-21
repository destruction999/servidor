-- ESX Legacy core schema
-- Extracted from resources/[core]/es_extended/es_extended.sql
-- Select the target database (e.g. zentirka_rp) in phpMyAdmin first.
-- This file intentionally does not CREATE/USE a database.

CREATE TABLE `users` (
  `identifier` VARCHAR(60) NOT NULL,
  `ssn` VARCHAR(11) NOT NULL,
  `accounts` LONGTEXT NULL DEFAULT NULL,
  `group` VARCHAR(50) NULL DEFAULT 'user',
  `inventory` LONGTEXT NULL DEFAULT NULL,
  `job` VARCHAR(20) NULL DEFAULT 'unemployed',
  `job_grade` INT NULL DEFAULT 0,
  `loadout` LONGTEXT NULL DEFAULT NULL,
  `metadata` LONGTEXT NULL DEFAULT NULL,
  `position` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`),
  UNIQUE KEY `unique_ssn` (`ssn`)
) ENGINE=InnoDB;

CREATE TABLE `items` (
  `name` VARCHAR(50) NOT NULL,
  `label` VARCHAR(50) NOT NULL,
  `weight` INT NOT NULL DEFAULT 1,
  `rare` TINYINT NOT NULL DEFAULT 0,
  `can_remove` TINYINT NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB;

CREATE TABLE `job_grades` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `job_name` VARCHAR(50) DEFAULT NULL,
  `grade` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `label` VARCHAR(50) NOT NULL,
  `salary` INT NOT NULL,
  `skin_male` LONGTEXT NOT NULL,
  `skin_female` LONGTEXT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

INSERT INTO `job_grades` VALUES (1,'unemployed',0,'unemployed','Unemployed',200,'{}','{}');

CREATE TABLE `jobs` (
  `name` VARCHAR(50) NOT NULL,
  `label` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB;

INSERT INTO `jobs` VALUES ('unemployed','Unemployed');
