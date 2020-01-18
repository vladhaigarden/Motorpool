CREATE TABLE `users` (
	`id` BIGINT PRIMARY KEY AUTO_INCREMENT,
	`login` VARCHAR(64) NOT NULL UNIQUE,
	`password` VARCHAR(255) NOT NULL,
	`role` ENUM ('admin', 'dispatcher', 'driver'),
	`first_name` VARCHAR(64) NOT NULL,
	`last_name` VARCHAR(64) NOT NULL,
	`locale_name` VARCHAR(20) DEFAULT 'en',
	`passport` VARCHAR(32) NOT NULL UNIQUE,
	`phone_number` VARCHAR(32) NOT NULL UNIQUE,
	`earnings` DOUBLE DEFAULT 0
);

CREATE TABLE `flights` (
	`id` BIGINT PRIMARY KEY AUTO_INCREMENT,
	`number` VARCHAR(64) NOT NULL,
	`date_creation` DATE NOT NULL,
	`status` ENUM ('opened', 'active', 'closed', 'canceled') NOT NULL DEFAULT 'opened',
	`distance` DOUBLE NOT NULL,
	`load_weight` DOUBLE NOT NULL,
	`from` VARCHAR(64) NOT NULL,
	`to` VARCHAR(64) NOT NULL,
	`departure_time` TIMESTAMP NOT NULL,
	`arrival_time` TIMESTAMP NOT NULL
);

CREATE TABLE `cars` (
	`id` BIGINT PRIMARY KEY AUTO_INCREMENT,
	`user_id` BIGINT NOT NULL,
	`registration_number` VARCHAR(64) NOT NULL UNIQUE,
	`brand` ENUM ('DAF', 'MERCEDES','IVECO','SCANIA','RENAULT','VOLVO') NOT NULL,
	`load_capacity` DOUBLE NOT NULL,
	`condition` ENUM ('excellent', 'satisfactory', 'poor') NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `requests` (
	`id` BIGINT PRIMARY KEY AUTO_INCREMENT,
	`user_id` BIGINT NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `jobs` (
	`request_id` BIGINT NOT NULL,
	`trip_id` BIGINT NOT NULL,
	`driver_decision` ENUM ('agree','refuse','waiting') DEFAULT 'waiting',
	`completed` TINYINT(1) DEFAULT 0,
	FOREIGN KEY (request_id) REFERENCES requests(id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (trip_id) REFERENCES flights(id) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (request_id,trip_id)
);