SELECT 
    YEAR(d.from_date) AS joining_year,
    e.gender AS gender,
    COUNT(e.emp_no) AS no_of_employees
FROM
    t_employees e
        JOIN
    t_dept_emp d ON d.emp_no = e.emp_no 
GROUP BY joining_year , gender
HAVING joining_year >= '1990'
ORDER BY joining_year ASC; 
