--List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees as e
inner join salaries as s
	on e.emp_no = s.emp_no
order by e.emp_no

--List employees who were hired in 1986. Must use single quotes for dates (everything)
select * from employees
where hire_date between '1986-01-01' and '1986-12-31'

--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name, and start and end employment dates.
select d.dept_no, dep.dept_name, ee.emp_no, ee.last_name, ee.first_name, d.from_date, d.to_date
from dept_manager as d
inner join departments as dep on d.dept_no = dep.dept_no
inner join employees as ee on d.emp_no = ee.emp_no

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select ee.emp_no, ee.last_name, ee.first_name, dep.dept_name 
from employees as ee
inner join dept_manager as dm on ee.emp_no = dm.emp_no
inner join departments as dep on dm.dept_no = dep.dept_no

--List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees
where first_name = 'Hercules' and last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
--for 6)  WHERE d.dept_name = 'Sales', after inner join at END

--for 7)  WHERE d.dept_name IN ('Sales', 'Development') after inner join at END

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) from employees
group by last_name
order by count(last_name)desc
