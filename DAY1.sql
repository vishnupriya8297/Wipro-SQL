--creating a table named students and courses
--int is data type for integer values
--varchar is data type for variable length character strings
--date is data type for date values
--primary key is a constraint that uniquely identifies each record in a table and ensures that the column cannot have NULL values
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    enrollment_date DATE
);
--creating a table named courses
--max is used to specify the maximum storage size for the varchar data type

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    course_description VARCHAR(MAX),
    credits INT
);
--inserting values into students table

INSERT INTO students (student_id, first_name, last_name, birth_date, enrollment_date)
VALUES
(1,'vishnu','priya','2003-11-23','2021-08-15'),
(2,'arjun','kumar','2002-05-17','2020-09-10'),
(3,'meera','sharma','2004-02-28','2022-01-20'),
(4,'raj','singh','2001-12-05','2019-07-30'),
(5,'anita','gupta','2003-06-14','2021-03-12'),
(6,'sachin','verma','2002-09-09','2020-11-25');
--select keyword is used to retrieve data from a database
SELECT * FROM students;
--update keyword is used to modify existing records in a table
--where clause is used to specify which record(s) should be updated
update students set first_name='tulasivishnu' where student_id=1;
--deleting a record from students table
DELETE FROM students WHERE student_id=6;
--alter keyword is used to modify the structure of an existing table
ALTER TABLE students ADD email VARCHAR(100);
--inserting values of email into students table
UPDATE students SET email='vishnu@gmail.com' WHERE student_id=1;
UPDATE students SET email='arjun@gmail.com' WHERE student_id=2;
UPDATE students SET email='meera@gmail.com' WHERE student_id=3;
UPDATE students SET email='raj@gmail.com' WHERE student_id=4;
UPDATE students SET email='anita@gmail.com' WHERE student_id=5;
--properties of sql tables
--1.DDL(Data Definition Language): DDL commands are used to define and manage database structures such as tables, indexes, and schemas.
--Examples of DDL commands include CREATE, ALTER, and DROP.
--2.DML(Data Manipulation Language): DML commands are used to manipulate data within database tables.
--Examples of DML commands include SELECT, INSERT, UPDATE, and DELETE.
--3.DCL(Data Control Language): DCL commands are used to control access to the database and its objects.
--Examples of DCL commands include GRANT and REVOKE.
--4.TCL(Transaction Control Language): TCL commands are used to manage transactions within the database.
--Examples of TCL commands include COMMIT, ROLLBACK, and SAVEPOINT.
--5.DQL(Data Query Language): DQL is primarily concerned with querying and retrieving data from the database.
--EXAMPLES: SELECT
-- git test
