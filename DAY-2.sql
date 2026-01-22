select *from students;
alter table students add age int;
update students set age=20 where student_id=1;
update students set age=21 where student_id=2;
update students set age=19 where student_id=3;
update students set age=22 where student_id=4;
update students set age=20 where student_id=5;
select *from students;
--use aggregate functions

select AVG(age)  from students;
select SUM(age)  from students;
select COUNT(student_id) as total_count from students;
select MAX(age) from students;
select MIN(age) from students;


--avg function is used to calculate the average value of a numeric column
--sum function is used to calculate the total sum of a numeric column
--count function is used to count the number of rows in a table or the number of non-NULL values in a specific column
--max function is used to find the maximum value in a numeric column
--min function is used to find the minimum value in a numeric column
-- scalar functions
--len function is used to calculate the length of a string in terms of number of characters
select LEN(first_name) as name_length from students;
--upper function is used to convert a string to uppercase
select UPPER(first_name) as upper_name from students;
--lower function is used to convert a string to lowercase
select LOWER(last_name) as lower_name from students;
--round function is used to round a numeric value to a specified number of decimal places
select ROUND(AVG(age),0) as rounded_average_age from students;
--getdate function is used to retrieve the current date and time from the system
select GETDATE() as current_date_time;



--GROUPING AND HAVING CLAUSE
--group by clause is used to group rows that have the same values in specified columns into summary rows
SELECT age, COUNT(*) AS count_per_age
FROM students
GROUP BY age;
select first_name,last_name  from students
group by first_name,last_name;

--having clause is used to filter groups based on a specified condition
SELECT age AS count_per_age
FROM students
GROUP BY age
HAVING COUNT(*) >= 1;


--Transactions in SQL
--begin transaction is used to start a new transaction
BEGIN TRANSACTION;
update students set age=23 where student_id=1;
--end transaction is used to end the current transaction
select *from students;
--commit is used to save all changes made during the current transaction
COMMIT;
--rollback is used to undo all changes made during the current transaction
ROLLBACK;	

