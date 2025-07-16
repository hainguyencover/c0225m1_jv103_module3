create database student_manager;

use student_manager;

create table Class(
	id int primary key,
    name varchar(45)
);

create table Teacher(
	id int primary key,
    name varchar(50),
    age int,
    country varchar(50)
);
