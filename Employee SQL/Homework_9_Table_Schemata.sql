--Create departments table

create table departments (
	dept_no VARCHAR(255) not null,
	dept_name VARCHAR(255) not null,
	primary key (dept_no)
);

--Import data from departments.csv and view table

select * from departments;

--Create employees table

create table employees (
	emp_no INT not null,
	emp_title_id VARCHAR(255) not null,
	birth_date VARCHAR(255) not null,
	first_name VARCHAR(255) not null,
	last_name VARCHAR(255) not null,
	sex VARCHAR(255) not null,
	hire_date VARCHAR(255) not null,
	primary key (emp_no)
);

--Import data from employees.csv and view table

select * from employees;

--Create table for dept_emp with composite primary key

create table dept_emp (
	emp_no INT not null,
	dept_no VARCHAR(255) not null,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);

--Import data from dept_emp.csv and view table

select * from dept_emp;

--Create table for dept_manager with composite primary key

create table dept_manager (
	dept_no VARCHAR(255) not null,
	emp_no INT not null,
	primary key (dept_no, emp_no),
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
);

--Import data from dept_manager.csv and view table

select * from dept_manager;

--Create table for salaries

create table salaries (
	emp_no INT not null,
	salary INT not null,
	primary key (emp_no),
	foreign key (emp_no) references employees (emp_no)
);

--Import data from salaries.csv and view table

select * from salaries;

--Create final table titles

create table titles (
	title_id VARCHAR(255) not null, 
	title VARCHAR(255) not null,
	primary key (title_id)
);

--Import data from titles.csv and view table
		
select * from titles;