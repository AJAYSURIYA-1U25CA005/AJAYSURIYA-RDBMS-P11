CREATE DATABASE CollegeDB;
Use CollegeDB;
CREATE TABLE Department ( Department
_
ID INT PRIMARY KEY, Department
_
Name VARCHAR(100) NOT
NULL);
CREATE TABLE Student (Student
ID INT PRIMARY KEY, Student
_
_
Name VARCHAR(100) NOT NULL,
Email VARCHAR(100), Phone VARCHAR(15), Department
ID INT, CONSTRAINT
_
fk
student
_
_
department FOREIGN KEY (Department
_
ID) REFERENCES Department(Department
_
ID)
);
CREATE TABLE Faculty ( Faculty_
ID INT PRIMARY KEY, Faculty_
Name VARCHAR(100) NOT NULL,
Email VARCHAR(100), Department
ID INT, CONSTRAINT fk
_
_
faculty_
department FOREIGN KEY
(Department
_
ID) REFERENCES Department(Department
_
ID) );
CREATE TABLE Course ( Course
ID INT PRIMARY KEY, Course
_
_
Name VARCHAR(100) NOT NULL,
Credits INT, Faculty_
ID INT, CONSTRAINT fk
course
_
_
faculty FOREIGN KEY (Faculty_
ID)
REFERENCES Faculty(Faculty_
ID) );
CREATE TABLE Enrollment ( Student
ID INT, Course
ID INT, Enrollment
_
_
_
Date DATE, Grade VARCHAR(5),
PRIMARY KEY (Student
ID, Course
_
_
ID), CONSTRAINT fk
enrollment
student
_
_
FOREIGN KEY (Student
_
ID) REFERENCES Student(Student
_
ID), CONSTRAINT fk
enrollment
course
_
_
FOREIGN KEY (Course
_
ID) REFERENCES Course(Course
_
ID) );
INSERT INTO Department VALUES (101,
'Computer Applications'), (102,
'Computer Science'),
(103,
'Information Technology');
INSERT INTO Student VALUES (1,
'Anitha'
,
'karthik@gmail.com'
'9876543211'
,
, 101), (3,
'anitha@gmail.com'
,
'Priya'
,
'priya@gmail.com'
,
'9876543210'
, 101), (2,
'Karthik'
,
'9876543212'
, 102), (4,
'Rahul'
,
'rahul@gmail.com'
'9876543213'
,
, 102);
INSERT INTO Faculty VALUES (201,
'Dr. Kumar'
,
'kumar@gmail.com'
, 101),(202,
'Dr. Meena'
,
'meena@gmail.com'
, 102), (203,
'Dr. Ravi'
,
'ravi@gmail.com'
, 103);
INSERT INTO Course VALUES (301,
'Database Management Systems'
, 4, 201), (302,
'Web Programming'
,
4, 201), (303,
'Data Structures'
, 3, 202), (304,
'Computer Networks'
, 4, 202);
INSERT INTO Enrollment VALUES (1, 301,
'2026-08-01'
,
'A'), (1, 302,
'2026-08-02'
,
'B+'), (2, 301,
'2026-08-01'
,
'A+'), (2, 303,
'2026-08-03'
,
'B'), (3, 303,
'2026-08-03'
,
'A'), (3, 304,
'2026-08-04'
,
'A+');