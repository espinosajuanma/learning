CREATE SCHEMA `employees`;

CREATE TABLE `employees` (`name` VARCHAR(10) NULL, `job` VARCHAR(20) NULL);

INSERT INTO `employees` (name, job) VALUES ('anne', 'developer');
INSERT INTO `employees` (name, job) VALUES ('john', 'designer');
INSERT INTO `employees` (name, job) VALUES ('paul', 'editor');

SELECT CONCAT('Name ', name) AS name, CONCAT('Job ', job) AS job FROM employees;

SELECT CONCAT('Name ', name), CONCAT('Job ', job) FROM employees;
