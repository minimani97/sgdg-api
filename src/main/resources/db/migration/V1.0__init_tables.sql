CREATE TABLE `user` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `id` VARCHAR(30) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `user_name` VARCHAR(45) NOT NULL,
  `department` INT NOT NULL,
  `profile_path` VARCHAR(255) NULL,
  `certify` CHAR(1) NOT NULL DEFAULT 'N',
  `portal_email` VARCHAR(100) NOT NULL,
  `user_key` VARCHAR(100) NULL,
  PRIMARY KEY (`user_id`));

CREATE TABLE `post` (
  `post_id` INT NOT NULL AUTO_INCREMENT,
  `reg_dtm` TIMESTAMP NOT NULL DEFAULT current_timestamp,
  `user_id` INT NOT NULL,
  `post_content` TEXT NOT NULL,
  `attached_file` CHAR(1) NOT NULL,
  `anonymity` CHAR(1) NOT NULL,
  `like_cnt` INT NULL DEFAULT 0,
  `comment_cnt` INT NULL DEFAULT 0,
  `del_flg` CHAR(1) NULL DEFAULT 'N',
  `dep_code` VARCHAR(3) NOT NULL,
  `notice` CHAR(1) NULL DEFAULT 'N',
  PRIMARY KEY (`post_id`));

  CREATE TABLE `comment` (
  `comment_id` INT NOT NULL AUTO_INCREMENT,
  `post_id` INT NOT NULL,
  `reg_dtm` TIMESTAMP NOT NULL DEFAULT current_timestamp,
  `user_id` INT NOT NULL,
  `comment_content` TEXT NOT NULL,
  `attached_file` CHAR(1) NOT NULL,
  `anonymity` CHAR(1) NOT NULL,
  `like_cnt` INT NULL DEFAULT 0,
  `del_flg` CHAR(1) NULL DEFAULT 'N',
  PRIMARY KEY (`comment_id`));

  CREATE TABLE `file` (
  `file_id` INT NOT NULL AUTO_INCREMENT,
  `post_id` INT NOT NULL,
  `file_path` VARCHAR(255) NULL,
  `del_flg` CHAR(1) NULL DEFAULT 'N',
  PRIMARY KEY (`file_id`));

  CREATE TABLE `department` (
  `dep_id` INT NOT NULL AUTO_INCREMENT,
  `dep_code` VARCHAR(5) NOT NULL,
  `dep_name` VARCHAR(100) NULL,
  `parent_dep_id` INT NULL DEFAULT 0,
  PRIMARY KEY (`dep_id`));

  CREATE TABLE `message` (
  `message_id` INT NOT NULL AUTO_INCREMENT,
  `sender_user_id` INT NOT NULL,
  `receiver_user_id` INT NOT NULL,
  `message_title` VARCHAR(100) NOT NULL,
  `message_content` TEXT NULL,
  `send_dtm` TIMESTAMP NULL DEFAULT current_timestamp,
  `open_flg` CHAR(1) NULL DEFAULT 'N',
  `del_flg` CHAR(1) NULL DEFAULT 'N',
  PRIMARY KEY (`message_id`));

  CREATE TABLE `like_history` (
  `like_id` INT NOT NULL AUTO_INCREMENT,
  `post_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`like_id`));