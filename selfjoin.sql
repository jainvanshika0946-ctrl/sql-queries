USE sql_hr;

-- SELECT *
-- FROM employees e
-- JOIN employees m
-- 	ON e.reports_to = m.employee_id ;
 
-- using SELF JOIN
SELECT e.employee_id,
e.first_name , m.first_name as Manager
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id ;
    