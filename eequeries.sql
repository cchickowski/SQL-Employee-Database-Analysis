--queries schema

--query 1.List employee number, last name, first name, sex, and salary for each ee.
--requires join of salaries table and employees table
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
join salaries as s
on e.emp_no = s.emp_no;

--query 2.List first name, last name, and hire date for employees who were hired in 1986.
--select * from employees
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'

--query 3. List managers of each department with dept number, dept name, ee number, f/l name.
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments 
join dept_manager
on departments.dept_no = dept_manager.dept_no
join employees
on dept_manager.emp_no = employees.emp_no;

--query 4. List the dept of each ee with the following information: ee number, l/f name, and dept name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no;

--query 5. List name and sex for employees whose first name is "Hercules" and last name begins with "B"
select first_name, last_name
from employees
where first_name = 'Hercules'
and last_name like 'B%';

--query 6. List all employees in the Sales department, including their ee number, l/f name, and dept name. 
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

--query 7. List all employees in the Sales and Development departments, including their ee number, l/f name, and dept name.
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales'
or departments.dept_name = 'Development'; 

--query 8. In desc order, list the freq count of ee last names, i.e., how many ees share each last name.
select last_name, 
count(last_name) AS "frequency"
from employees
group by last_name
order by
count(last_name) desc; 


