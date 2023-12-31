DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
	`country_id` INTEGER PRIMARY KEY NOT NULL
);
INSERT INTO `countries`
(`country_id`)
	VALUES
(1);

DROP TABLE IF EXISTS `companiesAndServices`;
CREATE TABLE IF NOT EXISTS `companiesAndServices` (
	`companiesandservices_id` INTEGER PRIMARY KEY NOT NULL,
	`country_id` INTEGER NOT NULL,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`logo` TEXT NOT NULL,
	`notes` TEXT NOT NULL,
	`inBSD` TEXT NOT NULL,
	FOREIGN KEY (`country_id`) REFERENCES countries(`country_id`)
);
INSERT INTO `companiesAndServices`
(`companiesandservices_id`, `country_id`, `name`, `description`, `logo`, `notes`, `inBSD`)
	VALUES
(1, 1, 'Company1', '', '', '', True);

DROP TABLE IF EXISTS `alternatives`;
CREATE TABLE IF NOT EXISTS `alternatives` (
	`alternatives_id` INTEGER PRIMARY KEY NOT NULL,
	`companiesandservices_id` INTEGER NOT NULL,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`link` TEXT NOT NULL,
	`logo` TEXT NOT NULL,
	`notes` TEXT NOT NULL,
	FOREIGN KEY (`companiesandservices_id`) REFERENCES companiesAndServices(`companiesandservices_id`)
);
INSERT INTO `alternatives`
(`alternatives_id`, `companiesandservices_id`, `name`, `description`, `link`, `logo`, `notes`)
	VALUES
(1, 1, '', '', '', '', '');

DROP TABLE IF EXISTS `resources`;
CREATE TABLE IF NOT EXISTS `resources` (
	`resources_id` INTEGER PRIMARY KEY NOT NULL,
	`companiesandservices_id` INTEGER NOT NULL,
	`name` TEXT NOT NULL,
	`link` TEXT NOT NULL,
	FOREIGN KEY (`companiesandservices_id`) REFERENCES companiesAndServices(`companiesandservices_id`)
);
INSERT INTO `resources`
(`resources_id`, `companiesandservices_id`, `name`, `link`)
	VALUES
(1, 1, '', '');

