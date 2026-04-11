CREATE DATABASE SchoolDB;



USE SchoolDB;

CREATE TABLE Students (
    Student_ID INT,
    Name VARCHAR(50),
    Class INT,
    Age INT
);

INSERT INTO Students VALUES (1, 'John', 10, 15);
INSERT INTO Students VALUES (2, 'Priya', 9, 14);
INSERT INTO Students VALUES (3, 'Arun', 10, 15);


SELECT * from Students;

select * from Students where Class = 10;