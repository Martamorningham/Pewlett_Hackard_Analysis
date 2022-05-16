-- delete dept_emp table and recreate 
--DROP TABLE unique_titles CASCADE;
--SELECT * FROM retirement_titles;
--Deliverable 1: The Number of Retiring Employees by Title
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date

INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON(e.emp_no =t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Check the table
SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
--INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, title DESC;


-- Check the table
SELECT * FROM unique_titles;

--find count of titles using select count on UT
SELECT COUNT(ut.emp_no),ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title 
ORDER BY COUNT(title) DESC;
--SELECT * FROM retiring_titles;
--Deliverable 2: The Employees Eligible for the Mentorship Program
--reuse the hiring code from module and join employeees, dept_emp, and titles csvs
SELECT DISTINCT ON(e.emp_no)e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title

INTO mentor_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;
-- Check the table
SELECT * FROM mentor_eligibility;
