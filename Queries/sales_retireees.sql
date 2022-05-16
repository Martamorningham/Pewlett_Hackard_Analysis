--skill drill 
--(if needed)DROP TABLE sales_reitrees CASCADE;
--- left join for retirmenet info and dept_emp tables
SELECT ri.emp_no,
    ri.first_name,
    ri.last_name,
	di.dept_name
INTO sales_reitrees
FROM retirement_info as ri
RIGHT OUTER JOIN dept_info as di
ON ri.emp_no = di.emp_no
WHERE di.dept_name = ('Sales')
ORDER BY emp_no ASC;