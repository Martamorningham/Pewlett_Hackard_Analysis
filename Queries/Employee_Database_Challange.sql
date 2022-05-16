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
SELECT * FROM retiring_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date BETWEEN '1952-01-01' AND '1999-01-01')
ORDER BY emp_no ASC, to_date DESC;

--find count of titles using select count on UT
SELECT COUNT(ut.emp_no),ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title 
ORDER BY COUNT(title) DESC;