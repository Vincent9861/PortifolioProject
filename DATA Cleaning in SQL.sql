-- SELECT & WHERE clause with AND & OR
-- Select only the employees who are female
SELECT *
FROM employees
WHERE gender = 'F';

-- Select only the employees who are female worked in Common Grounds, and salary above 50k
SELECT * 
FROM employees
WHERE gender = 'F' AND salary > 50000 AND coffeeshop_id = 1;

-- Select only the employees who are male or hired before 2018 or worked in Early Rise
SELECT *
FROM employees
WHERE gender = 'M' OR hire_date < '2018-01-01' OR coffeeshop_id = 2;

-- IN, NOT IN, IS NULL, BETWEEN
-- Select all Liberica and Excelsa coffee type
SELECT *
FROM suppliers
WHERE coffee_type IN ('Liberica','Excelsa');
 
-- Select all rolls from employees table where who are not who in Common Grounds
SELECT *
FROM employees
WHERE NOT coffeeshop_id = 1;

-- Select all employees with missing email address
SELECT *
FROM employees
WHERE email IS NULL;

-- Select all employees whose emails are not missing value
SELECT *
FROM employees
WHERE NOT email IS NULL;

-- Select all employees who made between 30k and 60k
SELECT 
	employee_id,
	first_name,
	last_name,
	salary
FROM employees
WHERE salary BETWEEN 30000 AND 60000;

-- ORDER BY, LIMIT, DISTINCT, ALIAS, EXTRACT
-- Find the top 10 highest salary paid employees
SELECT 
	employee_id,
	first_name,
	last_name,
	salary AS TOP10_salary
FROM employees
ORDER BY salary DESC
LIMIT 10;

-- Return all unique coffee type
SELECT DISTINCT coffee_type 
FROM suppliers;

-- Extract year，month, day into different columm
SELECT 
	EXTRACT(YEAR FROM hire_date) AS YEAR,
	EXTRACT(MONTH FROM hire_date) AS MONTH,
	EXTRACT(DAY FROM hire_date) AS DAY
FROM employees;

-- UPPER, LOWWER, LENGTH
-- Uppercase all employees first and lowercase all last name
SELECT
	UPPER(first_name)AS first_name_upper,
	LOWER(last_name)AS last_name_lower
FROM employees;

-- Return the email and the length of email
SELECT 
	email,
	LENGTH(email)
FROM employees;

-- Concatenation, Boolean expressions, wildcards
-- Concatenate first and last names
SELECT 
	first_name,
	last_name,
	CONCAT(first_name, last_name) AS full_name
FROM employees; 

-- Label true if a male who made more than 50k, otherwise false
SELECT 
	employee_id,
	first_name,
	last_name,
	gender,
	salary,
	(salary > 50000 AND gender = 'M') AS more_than_50k_male
FROM employees;

-- Label true if the email address end with .com, otherwise false
SELECT
	email,
	(email = '%.com%')AS dotcom
FROM employees;

-- SUBSTRING, POSITION, COALESCE
-- Only return the characters before @
SELECT 
	email,
	SUBSTRING(email,1,POSITION('@' IN email)-1)
FROM employees;

-- Fill the missing emails with custom value
SELECT 
	email,
	COALESCE(email,'NO EMAIL PROVIDED') AS email
FROM employees
WHERE email IS NULL;

-- MIN, MAX, AVG, SUM, COUNT
-- Return mininum, average, and sum of the average, and difference between MAX and MIN, and number of emails
SELECT 
	ROUND(AVG(salary),0) AS avg_salary,
	MIN(salary) AS min_salary,
	MAX(salary) AS max_salary,
	SUM(salary) AS total_salary,
	MAX(salary)-MIN(salary) AS salary_range,
	COUNT(email) AS number_email
FROM employees;

-- GROUP BY & HAVIN
-- Return the number of employees for each coffee shop
SELECT 
	E.coffeeshop_id,
	COUNT(E.employee_id),
	S.coffeeshop_name
FROM employees AS E
JOIN shops AS S ON E.coffeeshop_id=S.coffeeshop_id
GROUP BY E.coffeeshop_id, S.coffeeshop_name;

-- Return the number of employees, the avg, max, min, sum of the salary for each coffeeshop
SELECT 
	E.coffeeshop_id,
	S.coffeeshop_name,
	ROUND(AVG(E.salary),0) AS avg_salary,
	MIN(E.salary) AS min_salary,
	MAX(E.salary) AS max_salary,
	SUM(E.salary) AS total_salary,
	MAX(E.salary)-MIN(E.salary) AS salary_range,
	COUNT(E.employee_id) AS total_number
FROM employees AS E
JOIN shops AS S ON E.coffeeshop_id=S.coffeeshop_id
GROUP BY E.coffeeshop_id, S.coffeeshop_name
ORDER BY total_number DESC;

-- Return only the coffeeshops with less than 200 employees
SELECT 
	E.coffeeshop_id,
	S.coffeeshop_name,
	ROUND(AVG(E.salary),0) AS avg_salary,
	MIN(E.salary) AS min_salary,
	MAX(E.salary) AS max_salary,
	SUM(E.salary) AS total_salary,
	MAX(E.salary)-MIN(E.salary) AS salary_range,
	COUNT(E.employee_id) AS total_number
FROM employees AS E
JOIN shops AS S ON E.coffeeshop_id=S.coffeeshop_id
GROUP BY E.coffeeshop_id, S.coffeeshop_name
HAVING COUNT(E.employee_id)<200
ORDER BY total_number DESC;

-- Return only the coffeeshop with minimum salary above 10000
SELECT 
	E.coffeeshop_id,
	S.coffeeshop_name,
	ROUND(AVG(E.salary),0) AS avg_salary,
	MIN(E.salary) AS min_salary,
	MAX(E.salary) AS max_salary,
	SUM(E.salary) AS total_salary,
	MAX(E.salary)-MIN(E.salary) AS salary_range,
	COUNT(E.employee_id) AS total_number
FROM employees AS E
JOIN shops AS S ON E.coffeeshop_id=S.coffeeshop_id
GROUP BY E.coffeeshop_id, S.coffeeshop_name
HAVING MIN(E.salary)>10000
ORDER BY total_number DESC;

-- CASE, CASE with GROUP BY, and CASE for transitioning data
-- If salary is less than 50k, then low pay, otherwise high pay
SELECT 
	employee_id,
	first_name,
	last_name,
	salary,
	CASE 
	 		WHEN salary > 50000 THEN 'High Pay'
	 		ELSE 'Low Pay'
	END AS pay_category
FROM employees;

-- If salary is less than 25k, then low pay
-- If between 20k-50k inclusive, then medium pay
-- If above 50k, then high pay
SELECT 
	employee_id,
	first_name,
	last_name,
	salary,
	CASE
			WHEN salary < 20000 THEN 'Low Pay'
			WHEN salary BETWEEN 20000 AND 50000 THEN 'Medium Pay'
			WHEN salary > 50000 THEN 'High Pay'
	END AS pay_category
FROM employees
ORDER BY salary DESC;

-- Return the number of employees in each pay category
SELECT
	COUNT(employee_id)AS total_number,
	a.pay_category
FROM (SELECT 
	employee_id,
	first_name,
	last_name,
	salary,
	CASE
			WHEN salary < 20000 THEN 'Low Pay'
			WHEN salary BETWEEN 20000 AND 50000 THEN 'Medium Pay'
			WHEN salary > 50000 THEN 'High Pay'
	END AS pay_category
FROM employees) AS a
GROUP BY pay_category
ORDER BY total_number DESC;

-- Transpose above
SELECT 
	SUM(CASE WHEN salary < 20000 THEN 1 ELSE 0 END) AS low_pay,
	SUM(CASE WHEN salary BETWEEN 20000 AND 50000 THEN 1 ELSE 0 END) AS medium_pay,
	SUM(CASE WHEN salary > 50000 THEN 1 ELSE 0 END) AS high_pay
FROM employees
	
-- INNER JOIN, LEFT JOIN, RIGHT JOIN, OUTER JOIN
-- JOIN shops table with locations table
SELECT 
	S.coffeeshop_name,
	L.city,
	L.country
FROM shops AS S
JOIN locations AS L ON S.city_id=L.city_id;
	
-- LEFT JOIN the locations table with shops table
SELECT
	S.coffeeshop_name,
	L.city,
	L.country
FROM locations AS L
LEFT JOIN shops AS S On L.city_id=S.city_id;

-- RIGHT JOIN the locations table with shops table
SELECT
	S.coffeeshop_name,
	L.city,
	L.country
FROM locations AS L
RIGHT JOIN shops AS S On L.city_id=S.city_id;

-- UNION to stack data on top of each other
-- Return cities and countries and removes duplicates
SELECT city FROM locations
UNION
SELECT country FROM locations

-- Return cities and countries and keeps duplicates
SELECT city FROM locations
UNION ALL
SELECT country FROM locations

-- Return cities and countries and coffeeshop_name
SELECT city FROM locations
UNION
SELECT country FROM locations
UNION
SELECT coffeeshop_name FROM shops

-- Subqueries
-- Return employees whose work in Ancient Bean and Urban Grind
SELECT
	E.employee_id,
	E.first_name,
	E.last_name
FROM (
		SELECT* 
		FROM employees
		WHERE coffeeshop_id IN (3,4)) AS E
		
-- Return ALL employee with avg salary
SELECT 
	employee_id,
	first_name,
	last_name,
	(
		SELECT
				ROUND(AVG(salary),0)
		FROM employees
	) AS avg_salary
FROM employees

-- Return the number of employee in each coffee shop
SELECT 
	coffeeshop_name,
	(
		SELECT COUNT(*) 
		FROM employees
		WHERE employees.coffeeshop_id=shops.coffeeshop_id
	) AS number_employees
FROM shops

-- Return all US coffee shops
SELECT *
FROM shops
WHERE city_id IN (
		SELECT city_id
		FROM locations
		WHERE country = 'United States')
		
-- Return all employees who work in United States
SELECT *
FROM employees
WHERE coffeeshop_id IN(
			SELECT coffeeshop_id
			FROM shops
			WHERE city_id IN (
						SELECT city_id
						FROM locations
						WHERE country = 'United States'));

-- Return all employees who made more than 30k and work in the US
SELECT *
FROM employees
WHERE salary > 30000 AND coffeeshop_id IN(
			SELECT coffeeshop_id
			FROM shops
			WHERE city_id IN (
						SELECT city_id
						FROM locations
						WHERE country = 'United States'));