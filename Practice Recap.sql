Practice Recap.sql


-- Chapter 3 Exercise: Querying teachers table

-- Find all teachers whose first name contains 'a' anywhere, ordered by last name A-Z
SELECT first_name, last_name
FROM teachers
WHERE first_name ILIKE '%a%'
ORDER BY last_name ASC;

-- Find teachers at F.D. Roosevelt HS earning between $36,000 and $65,000 using BETWEEN
SELECT first_name, last_name, school, salary
FROM teachers
WHERE school = 'F.D. Roosevelt HS'
AND salary BETWEEN 36000 AND 65000;

-- Same query using comparison operators
SELECT first_name, last_name, school, salary
FROM teachers
WHERE school = 'F.D. Roosevelt HS'
AND salary >= 36000 AND salary <= 65000;


SELECT first_name,last_name, school, hire_date, salary
FROM teachers
WHERE hire_date >= '2005-01-01'
ORDER BY salary DESC;


SELECT DISTINCT school
FROM teachers 
ORDER BY school ASC;


-- Exercise 1: Return each employee's details with their department name and city
-- ordered by salary highest to lowest

SELECT first_name, last_name, salary, dept, city
FROM employees JOIN departments
ON employees.dept_id = departments.dept_id
ORDER BY salary DESC;


-- Exercise 2: Find employees with no matching department
-- Uses LEFT JOIN and IS NULL to identify missing matches (anti-join pattern)

SELECT first_name, last_name, employees.dept_id
FROM employees LEFT JOIN departments
ON employees.dept_id = departments.dept_id
WHERE departments.dept_id IS NULL;