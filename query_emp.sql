

-- Employees salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
left outer join salaries AS s ON
e.emp_no=s.emp_no;

--Employees who were hired in 1986.

select first_name, last_name, hire_date 
from employees 
where hire_date between '1986-01-01' and '1986-12-31';

--Manager of each department. 

select e.first_name,e.last_name,d.dept_name,m.dept_no,m.emp_no
from employees as e
inner join Dept_Manager as m on 
(e.emp_no = m.emp_no)
inner join Department as d on
(m.dept_no= d.dept_no);


--Department of each employee.

select e.emp_no,e.last_name,e.first_name,d.dept_name
from employees as e
inner join Dept_Emp as dm on 
(e.emp_no= dm.emp_no)
inner join Department as d on
(dm.dept_no=d.dept_no);


--Employees whose first name is 'Hercules' and last names begin with'B'.

select first_name,last_name,sex 
from employees
where first_name = 'Hercules' 
and last_name like 'B%';

--Employees in the Sales department.

select e.emp_no,e.first_name,e.last_name,d.dept_name
from employees as e
inner join Dept_Emp as de on
(e.emp_no= de.emp_no)
inner join Department as d on 
(de.dept_no= d.dept_no)
where d.dept_name = 'Sales';

--Employees in the Sales and Development departments.
select e.emp_no,e.first_name,e.last_name,d.dept_name
from employees as e
inner join Dept_Emp as de on
(e.emp_no= de.emp_no)
inner join Department as d on 
(de.dept_no= d.dept_no)
where d.dept_name in ('Sales','Development');

--In descending order, list of frequency count of employee last names.

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;



