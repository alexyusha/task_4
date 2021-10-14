CREATE DATABASE task_database;


use task_database;

CREATE TABLE course (
	id INT,
	course_title varchar(255),
	PRIMARY KEY (id)
);

CREATE TABLE student (
  id int,
  first_name varchar(255),
  last_name varchar(255),
  id_group int,
  PRIMARY KEY (ID)
);

CREATE TABLE teacher (
  id int,
  first_name varchar(255),
  last_name varchar(255),
  email varchar(255),
  PRIMARY KEY (id)
  );

CREATE TABLE group_students (
id int,
name varchar(255),
PRIMARY KEY (id)
);

CREATE TABLE marks (
id int,
id_students int,
id_course int,
marks int,
PRIMARY KEY (id)
);
 


