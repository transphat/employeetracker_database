-- Drops the programming_db if it already exists --
DROP DATABASE IF EXISTS employee_tracker_data;
-- Created the DB "employee_tracker" (only works on local connections)
CREATE DATABASE employee_tracker_data;
-- Use the DB employee_tracker for all the rest of the script
USE employee_tracker_data;
-- Created the table "departments"
CREATE TABLE department (
id INT (20) PRIMARY KEY,
name VARCHAR(30) NULL
);
-- Created the table "role"
CREATE TABLE role (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(30) UNIQUE NOT NULL,
salary DECIMAL(10,2) UNSIGNED NOT NULL,
department_id INT UNSIGNED NOT NULL
);
-- Created the table "employees"
CREATE TABLE employee (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INT (30) NOT NULL,
manager_id INT UNSIGNED 
);
-- Inserted a set of records into the table
INSERT INTO department (id, name)
VALUE (80, "Hello Kitty");
SELECT * FROM department;
-- Inserted a set of records into the table
INSERT INTO role (id, title, salary ,department_id)
VALUE (3, "Lead Engineer", 90000 , 23);
SELECT * FROM role;
-- Inserted a set of records into the table
INSERT INTO employee (id, first_name, last_name ,role_id,manager_id)
VALUE (9, "Scooby", "Doo" , 25, 7);
SELECT * FROM roles