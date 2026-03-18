# Student Database Management (MySQL)

## Project Overview

This project demonstrates basic MySQL operations using a `STUDENT` table. It covers fundamental SQL concepts such as table creation, inserting data, querying records, updating values, and deleting entries. The aim of this project is to build a clear understanding of how relational databases work in practice.

---

## Technologies Used

* MySQL
* SQL (Structured Query Language)

---

## Table Structure

```sql
CREATE TABLE STUDENT(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    marks INT NOT NULL
);
```

---

## Data Insertion

The table contains 25 student records with the following fields:

* ID
* Name
* Age
* Marks

---

## Operations Performed

### Basic Queries

* Retrieved all records from the table
* Displayed selected columns such as name and marks

### Table Modification

* Added a new column `city`
* Added and later removed the column `email`

### Update Operations

* Assigned city values using a CASE statement
* Updated marks for a specific student

### Delete Operation

* Removed a student record using the student ID

---

## Data Retrieval Queries

### Filtering

* Students who scored more than 75 marks
* Students with a specific name
* Names starting with 'A'
* Names ending with 'n'
* Students with marks between 60 and 80

### Sorting

* Sorted records in ascending order of marks
* Sorted records in descending order of marks

### Top Performers

* Retrieved top 3 students based on marks

---

## Aggregate Functions

* Counted total number of students using `COUNT(*)`
* Calculated average marks using `AVG()`
* Identified minimum and maximum marks using `MIN()` and `MAX()`
* Calculated total marks grouped by age using `SUM()`

---

## Grouping

* Counted number of students for each age group
* Calculated total marks for each age group

---

## Key Concepts Covered

* DDL (CREATE, ALTER, DROP)
* DML (INSERT, UPDATE, DELETE)
* Filtering using WHERE, LIKE, BETWEEN
* Sorting using ORDER BY
* Grouping using GROUP BY
* Aggregate functions

---

## Learning Outcome

This project provides a practical understanding of database operations and helps in writing structured and efficient SQL queries. It also builds a foundation for working with real-world datasets.

---

## Future Improvements

* Implement advanced queries such as JOINs and subqueries
* Create relationships between multiple tables
* Develop a simple user interface to interact with the database

---

## Author

ATHARVA TIWARI
