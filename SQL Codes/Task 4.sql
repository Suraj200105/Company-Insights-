drop procedure if exists filter_salary;
DELIMITER 
 create procedure filter_salary(in min_salary float, in max_salary float)
 begin 
 select e.gender, d.dept_name, Ravg(s.salary) as avg_salary
 from t_salaries s join t_employees e on s.emp_no = e.emp_no join t_dept_emp de on de.emp_no = e.emp_no join t_departments d on d.dept_no = de.dept_no
 where s.salary between min_salary and max_salary
 group by d.dept_no, e.gender;
 end;
 call filter_salary(50000, 90000);
