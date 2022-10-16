-- data analysis 

-- part 1
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM Employees as e 
INNER JOIN Salaries as s on s.emp_no = e.emp_no; 

-- part 2
--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date from employees
where hire_date >= '1986-01-01' and hire_date <= '1986-12-31';

--part 3
--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT e.emp_no,e.first_name, e.last_name, dm.dept_no,d.dept_name
FROM Employees as e 
inner join dept_manager as dm
on dm.emp_no = e.emp_no
inner join departments as d
on d.dept_no = dm.dept_no;

--part 4
--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no,e.first_name, e.last_name, d.dept_name
FROM Employees as e
inner join dept_emp as de
on de.emp_no = e.emp_no
inner join departments as d
on d.dept_no = de.dept_no;

--part 5
--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM Employees as e
where e.first_name ilike 'hercules' and e.last_name like 'B%';

--part 6
--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no,e.first_name, e.last_name, d.dept_name
FROM Employees as e
inner join dept_emp as de
on de.emp_no = e.emp_no
inner join departments as d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales';

--part 7
--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no,e.first_name, e.last_name, d.dept_name
FROM Employees as e
inner join dept_emp as de
on de.emp_no = e.emp_no
inner join departments as d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales' or d.dept_name ='Development';

--part 8
-- List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
select last_name, count(last_name) as Frequency_Count
from Employees
group by last_name	
order by Frequency_Count desc;




