--mentorship ability for sales and dev 
SELECT ri.emp_no,
    ri.first_name,
    ri.last_name,
	di.dept_name
INTO sales_and_dev_reitrees
FROM retirement_info as ri
RIGHT OUTER JOIN dept_info as di
ON ri.emp_no = di.emp_no
WHERE di.dept_name IN ('Sales', 'Development') 