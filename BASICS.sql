CREATE TABLE STUDENT(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    marks INT NOT NULL
 );


 INSERT INTO STUDENT(id,name,age ,marks) VALUES
(1, 'Rahul', 18, 72),
(2, 'Amit', 19, 85),
(3, 'Sneha', 18, 91),
(4, 'Priya', 20, 67),
(5, 'Karan', 21, 78),
(6, 'Anjali', 19, 88),
(7, 'Rohit', 22, 55),
(8, 'Neha', 18, 60),
(9, 'Arjun', 20, 82),
(10, 'Pooja', 21, 74),
(11, 'Vikas', 19, 69),
(12, 'Meena', 20, 90),
(13, 'Sahil', 22, 47),
(14, 'Nikita', 18, 95),
(15, 'Varun', 21, 66),
(16, 'Divya', 19, 80),
(17, 'Manish', 20, 58),
(18, 'Tina', 18, 77),
(19, 'Yash', 21, 83),
(20, 'Riya', 19, 71),
(21, 'Abhishek', 22, 62),
(22, 'Kavya', 20, 89),
(23, 'Harsh', 18, 53),
(24, 'Simran', 21, 76),
(25, 'Deepak', 19, 68);


--Write a query to display all records from the table.
SELECT * FROM STUDENT;

--Show only name and marks columns.
SELECT name,marks FROM STUDENT;

ALTER TABLE Student
ADD COLUMN city VARCHAR(150);

SELECT * FROM STUDENT;


UPDATE STUDENT
SET city = CASE id
    WHEN 1 THEN 'Pune'
    WHEN 2 THEN 'Mumbai'
    WHEN 3 THEN 'Delhi'
    WHEN 4 THEN 'Bangalore'
    WHEN 5 THEN 'Hyderabad'
    WHEN 6 THEN 'Chennai'
    WHEN 7 THEN 'Kolkata'
    WHEN 8 THEN 'Ahmedabad'
    WHEN 9 THEN 'Jaipur'
    WHEN 10 THEN 'Lucknow'
    WHEN 11 THEN 'Nagpur'
    WHEN 12 THEN 'Indore'
    WHEN 13 THEN 'Bhopal'
    WHEN 14 THEN 'Surat'
    WHEN 15 THEN 'Patna'
    WHEN 16 THEN 'Chandigarh'
    WHEN 17 THEN 'Goa'
    WHEN 18 THEN 'Nashik'
    WHEN 19 THEN 'Kanpur'
    WHEN 20 THEN 'Varanasi'
    WHEN 21 THEN 'Ranchi'
    WHEN 22 THEN 'Guwahati'
    WHEN 23 THEN 'Amritsar'
    WHEN 24 THEN 'Noida'
    WHEN 25 THEN 'Thane'
END;


--Find students who scored more than 75 marks.
SELECT name,marks FROM STUDENT WHERE marks>75 ;

--Display students whose name is 'Rahul'.
SELECT *FROM STUDENT WHERE name = 'Rahul';

--Sort students by marks in ascending order.
SELECT * FROM STUDENT ORDER BY marks ASC;

--Sort students by marks in descending order.
SELECT * FROM STUDENT ORDER BY marks DESC;

--Show top 3 students based on marks.
SELECT * FROM STUDENT ORDER BY marks DESC LIMIT 3;

--Count total number of students.
SELECT COUNT(*) FROM STUDENT;

--Find the average marks of students.
SELECT AVG(marks) as avg_marks FROM STUDENT ;

--Find the maximum and minimum marks.
SELECT MIN(marks) as min_marks , MAX(marks) as max_marks from STUDENT;

--Display students whose marks are between 60 and 80.
SELECT * FROM STUDENT WHERE marks BETWEEN 60 AND 80 LIMIT 5;

--Show students whose name starts with 'A'.
 SELECT * FROM STUDENT WHERE NAME LIKE 'A%';

 --Show students whose name ends with 'n'.
 SELECT * FROM STUDENT WHERE NAME LIKE '%n';

 --Count number of students for each age group.
 SELECT AGE ,COUNT(AGE) AS NUM_STUDENT
 FROM STUDENT 
 GROUP BY AGE;


 --Find total marks of all students.
 SELECT AGE , SUM(MARKS) FROM STUDENT GROUP BY AGE ;


 --Display distinct ages from the table.
  SELECT AGE FROM STUDENT GROUP BY AGE;


--Update marks of a student with id = 1.

UPDATE STUDENT
SET marks= 99
WHERE ID=1;

--Delete a student whose id = 5.
SELECT* FROM STUDENT WHERE ID =5;
DELETE FROM STUDENT
WHERE ID = 5;

--Add a new column email to the table.
ALTER TABLE STUDENT 
 ADD COLUMN email VARCHAR(200) NOT NULL;
SELECT*FROM STUDENT;


-- DELETE THE NEW COLUMN EMAIL 
ALTER TABLE STUDENT DROP COLUMN EMAIL;

   


