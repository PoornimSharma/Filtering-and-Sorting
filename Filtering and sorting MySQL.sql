## 💾 Cumulative MySQL Assignment Script

-- =================================================================
-- SECTION 1: TABLE CREATION
-- Creates the Employee table based on the provided data structure.
-- =================================================================
CREATE DATABASE Employee;

DROP TABLE IF EXISTS Employee; -- Optional: Drops the table if it already exists, allowing the script to be run multiple times.

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100) NOT NULL,
    Department VARCHAR(50),
    City VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

---

-- =================================================================
-- SECTION 2: DATA INSERTION
-- Inserts all 10 employee records into the newly created Employee table.
-- =================================================================
INSERT INTO Employee (EmpID, EmpName, Department, City, Salary, HireDate) VALUES
(101, 'Rahul Mehta', 'Sales', 'Delhi', 55000.00, '2020-04-12'),
(102, 'Priya Sharma', 'HR', 'Mumbai', 62000.00, '2019-09-25'),
(103, 'Aman Singh', 'IT', 'Bengaluru', 72000.00, '2021-03-10'),
(104, 'Neha Patel', 'Sales', 'Delhi', 48000.00, '2022-01-14'),
(105, 'Karan Joshi', 'Marketing', 'Pune', 45000.00, '2018-07-22'),
(106, 'Divya Nair', 'IT', 'Chennai', 81000.00, '2019-12-11'),
(107, 'Raj Kumar', 'HR', 'Delhi', 60000.00, '2020-05-28'),
(108, 'Simran Kaur', 'Finance', 'Mumbai', 58000.00, '2021-08-03'),
(109, 'Arjun Reddy', 'IT', 'Hyderabad', 70000.00, '2022-02-18'),
(110, 'Anjali Das', 'Sales', 'Kolkata', 51000.00, '2023-01-15');

---

-- =================================================================
-- SECTION 3: ASSIGNMENT QUERIES
-- Solutions for the 8 requested questions.
-- =================================================================

-- Question 1: Show employees working in either the ‘IT’ or ‘HR’ departments.
SELECT
    EmpID, EmpName, Department, City
FROM
    Employee
WHERE
    Department IN ('IT', 'HR');

---

-- Question 2: Retrieve employees whose department is in ‘Sales’, ‘IT’, or ‘Finance’.
SELECT
    *
FROM
    Employee
WHERE
    Department IN ('Sales', 'IT', 'Finance');

---

-- Question 3: Display employees whose salary is between ₹50,000 and ₹70,000.
SELECT
    EmpName, Salary, Department
FROM
    Employee
WHERE
    Salary BETWEEN 50000 AND 70000;

---

-- Question 4: List employees whose names start with the letter ‘A’.
SELECT
    EmpName
FROM
    Employee
WHERE
    EmpName LIKE 'A%';

---

-- Question 5: Find employees whose names contain the substring ‘an’.
SELECT
    EmpName
FROM
    Employee
WHERE
    EmpName LIKE '%an%';

---

-- Question 6: Show employees who are from ‘Delhi’ or ‘Mumbai’ and earn more than ₹55,000.
SELECT
    EmpName, City, Salary
FROM
    Employee
WHERE
    City IN ('Delhi', 'Mumbai') AND Salary > 55000;

---

-- Question 7: Display all employees except those from the ‘HR’ department.
SELECT
    *
FROM
    Employee
WHERE
    Department != 'HR'; -- OR Department NOT IN ('HR');

---

-- Question 8: Get all employees hired between 2019 and 2022, ordered by HireDate (oldest first).
SELECT
    EmpName, HireDate, Department
FROM
    Employee
WHERE
    HireDate BETWEEN '2019-01-01' AND '2022-12-31'
ORDER BY
    HireDate ASC;