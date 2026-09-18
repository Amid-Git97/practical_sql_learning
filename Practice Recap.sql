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