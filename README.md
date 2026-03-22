# Student Database Management System (MySQL)

##  Project Overview

This project demonstrates a **relational database system** using MySQL with multiple tables: `STUDENT`, `COURSE`, and `SCORE`.
It covers core SQL concepts such as **table creation, relationships, joins, aggregations, and subqueries**.

The goal of this project is to build a strong foundation in handling structured data and writing efficient SQL queries for real-world scenarios.

---

##  Technologies Used

* MySQL
* SQL (Structured Query Language)

---

##  Database Structure

### 1. STUDENT Table

Stores student details.

```sql
CREATE TABLE STUDENT(
   STUDENT_ID INT AUTO_INCREMENT PRIMARY KEY,
   NAME VARCHAR(100) NOT NULL,
   AGE INT,
   GENDER ENUM('MALE','FEMALE','OTHER'),
   CITY VARCHAR(100) NOT NULL
);
```

---

### 2. COURSE Table

Stores course information.

```sql
CREATE TABLE COURSE(
   COURSE_ID INT AUTO_INCREMENT PRIMARY KEY,
   COURSE_NAME VARCHAR(100) NOT NULL
);
```

---

### 3. SCORE Table

Acts as a bridge between STUDENT and COURSE, storing marks.

```sql
CREATE TABLE SCORE(
   MARK_ID INT AUTO_INCREMENT PRIMARY KEY,
   STUDENT_ID INT,
   COURSE_ID INT,
   MARKS INT,
   FOREIGN KEY(STUDENT_ID) REFERENCES STUDENT(STUDENT_ID),
   FOREIGN KEY(COURSE_ID) REFERENCES COURSE(COURSE_ID)
);
```

---

##  Relationships

* One student can enroll in multiple courses
* One course can have multiple students
* `SCORE` table connects both using foreign keys

---

##  Sample Data

Example student records:

```sql
('Aarav Sharma', 19, 'MALE', 'Pune'),
('Ananya Gupta', 20, 'FEMALE', 'Delhi'),
('Rohan Patil', 21, 'MALE', 'Mumbai')
```

Example score records:

```sql
(1, 1, 85),
(2, 5, 78),
(3, 2, 92)
```

---

## 🔍 Key Queries Implemented

### 1. Average Age of Students

```sql
SELECT AVG(AGE) AS AVG_AGE FROM STUDENT;
```

---

### 2. Average Marks per Student

```sql
SELECT STUDENT_ID, AVG(MARKS) AS AVG_MARKS
FROM SCORE
GROUP BY STUDENT_ID;
```

---

### 3. Highest Marks in Each Course

```sql
SELECT COURSE_ID, MAX(MARKS) AS HIGHEST_MARKS
FROM SCORE
GROUP BY COURSE_ID;
```

---

### 4. Display Student + Course + Marks (JOIN)

```sql
SELECT 
    STUDENT.STUDENT_ID,
    STUDENT.NAME,
    COURSE.COURSE_NAME,
    SCORE.MARKS
FROM SCORE
JOIN STUDENT ON STUDENT.STUDENT_ID = SCORE.STUDENT_ID
JOIN COURSE ON COURSE.COURSE_ID = SCORE.COURSE_ID;
```

---

### 5. Student with Highest Marks Overall

```sql
SELECT 
   STUDENT.NAME,
   COURSE.COURSE_NAME, 
   SCORE.MARKS 
FROM SCORE
JOIN STUDENT ON STUDENT.STUDENT_ID = SCORE.STUDENT_ID
JOIN COURSE ON COURSE.COURSE_ID = SCORE.COURSE_ID
WHERE SCORE.MARKS = (SELECT MAX(MARKS) FROM SCORE);
```

---

### 6. Students Scoring More Than 80

```sql
SELECT 
 STUDENT.NAME,
 SCORE.MARKS
FROM SCORE
JOIN STUDENT ON STUDENT.STUDENT_ID = SCORE.STUDENT_ID
WHERE MARKS > 80;
```

---

### 7. Highest Marks per Student

```sql
SELECT
   STUDENT.NAME,
   MAX(SCORE.MARKS) AS HIGHEST_MARKS
FROM SCORE
JOIN STUDENT ON STUDENT.STUDENT_ID = SCORE.STUDENT_ID
GROUP BY STUDENT.NAME;
```

---

##  Concepts Covered

* DDL (CREATE, ALTER)
* DML (INSERT, SELECT)
* JOIN operations (INNER JOIN)
* Aggregate functions (AVG, MAX, COUNT)
* GROUP BY
* Subqueries
* Filtering using WHERE

---

##  Learning Outcome

* Understanding of **relational database design**
* Hands-on experience with **multi-table queries**
* Ability to write **optimized SQL queries using joins and aggregation**
* Foundation for **data analysis and backend development**

---

##  Future Improvements

* Implement advanced queries (window functions, nested subqueries)
* Add more realistic datasets
* Integrate with Python (Pandas + MySQL)
* Build a simple dashboard for data visualization

---

##  Author

ATHARVA TIWARI
