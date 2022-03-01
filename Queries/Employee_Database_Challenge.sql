-- Create New Table of retirement eligible employees and their titles
SELECT employees.emp_no,
    employees.first_name,
    employees.last_name,
    titles.title,
    titles.from_date,
    titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN ‘1952-01-01 AND ‘1955-12-31’)
ORDER BY emp_no

-- Use Dictinct with Orderby to remove duplicate rows of employees with multiple titles.
SELECT DISTINCT ON (retirement_titles.emp_no)
	retirement_titles.emp_no,
	retirement_titles.first_name,
	retirement_titles.last_name,
	retirement_titles.title
INTO unique_titles
FROM retirement_titles
WHERE to_date='9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Use Count and Group by to create a table showing how many employees in a specific role are retiring.
SELECT unique_titles.title, COUNT (unique_titles.title)
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- Use Distinct On and Where to Join the employees, dep_employees, and titles tables to show employees that are mentor eligible.
SELECT DISTINCT ON (employees.emp_no)
	employees.emp_no,
    employees.first_name,
    employees.last_name,
    employees.birth_date,
    dep_employees.from_date,
    dep_employees.to_date,
	titles.title
INTO mentorship_eligibility
FROM employees
INNER JOIN dep_employees
ON employees.emp_no = dep_employees.emp_no
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (dep_employees.to_date='9999-01-01')
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;