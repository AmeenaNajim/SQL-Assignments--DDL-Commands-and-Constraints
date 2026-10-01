CREATE DATABASE employee;
USE employee;
create TABLE departments(department_id int,department_name varchar(100));
create table Location(location_id int,location varchar(30));
create table Employees(employee_id int,employee_name varchar(50),gender enum('M','F'),age int,hire_date date,designation varchar(100),department_id int,location_id int,salary decimal(10,2));
describe employees;
ALter table Employees add column email varchar(50);
describe employees;
ALTER TABLE EMPLOYEES modify designation varchar(200);
alter table employees drop column age;
ALTER TABLE employees RENAME COLUMN hire_date TO date_of_joining;
USE employee;
RENAME TABLE departments TO Departments_Info;
RENAME TABLE location TO Locations;
TRUNCATE TABLE employees;
DROP TABLE employees;
DROP DATABASE employee;

CREATE DATABASE employee;
USE employee;
CREATE TABLE departments(department_id int primary key,department_name varchar(100) not null unique);
CREATE TABLE location(location_id int primary key auto_increment,location varchar(30) not null unique);
CREATE TABLE employees(employee_id int primary key,employee_name varchar(50) not null,gender enum('M','F'),age int check(age>=18),hire_date date default(current_date),designation varchar(100),department_id int,location_id int,salary decimal(10,2),
foreign key(department_id)references departments(department_id), foreign key (location_id)references location(location_id));
SELECT * FROM employees;
DESC employees;