-- Chapter 3 Exercises: Beginning Data Exploration with SELECT

-- Exercise 1: Schools in alphabetical order with teachers ordered by last name
SELECT first_name, last_name, school
FROM teachers
ORDER BY school ASC, last_name ASC;

-- Exercise 2: Teacher whose first name starts with S earning more than $40,000
SELECT first_name, last_name, salary
FROM teachers
WHERE first_name LIKE 'S%' AND salary > 40000;

-- Exercise 3: Teachers hired since January 1, 2010 ordered by highest paid
SELECT first_name, last_name, hire_date, salary
FROM teachers
WHERE hire_date >= '2010-01-01'
ORDER BY salary DESC;