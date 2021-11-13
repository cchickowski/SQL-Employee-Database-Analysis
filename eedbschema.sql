DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
  dept_no varchar primary key NOT NULL,
  dept_name varchar NOT NULL
);

select * from departments;

CREATE TABLE titles (
  title_id varchar primary key NOT NULL,
  title varchar NOT NULL
);

select * from titles;


CREATE TABLE employees (
    emp_no integer primary key NOT NULL,
	emp_title_id varchar NOT NULL,
    birth_date date NOT NULL,
	first_name varchar NOT NULL, 
	last_name varchar NOT NULL,
	sex varchar NOT NULL, 
	hire_date date NOT NULL, 
	foreign key (emp_title_id) references titles(title_id)
);

select * from employees;




CREATE TABLE dept_emp (
  emp_no integer,  
  dept_no varchar NOT NULL,
  foreign key (dept_no) references departments(dept_no), 
  foreign key (emp_no) references employees(emp_no)
);

select * from dept_emp;

CREATE TABLE dept_manager (
  dept_no varchar NOT NULL,
  emp_no integer,
  foreign key (dept_no) references departments(dept_no),
  foreign key (emp_no) references employees(emp_no)
);

select * from dept_manager; 


CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary integer,
  foreign key(emp_no) references employees(emp_no)
);

select * from salaries; 




