-- create departments table
CREATE TABLE departments(
	dept_no Varchar not NULL Primary Key,
	dept_name varchar not Null
);	
-- create employees table
CREATE TABLE employees(
	emp_no int not null primary key,
	birth_date varchar not null,
	first_name varchar not null,
	last_name varchar not null,
	gender varchar not null,
	hire_date varchar not null
);
-- create titles table
CREATE TABLE titles(
	emp_no int not null,
	title varchar not null,
	from_date varchar not null,
	to_date varchar not null,
	foreign key (emp_no) references employees(emp_no)
 );
CREATE TABLE salaries(
	emp_no int not null,
	salary int not null,
	from_date varchar not null,
	to_date varchar not null,
	foreign key (emp_no) references employees(emp_no)
 );
-- create dept_emp table
CREATE TABLE dept_emp(
	emp_no int not null,
	dept_no varchar not null,
	from_date varchar not null,
	to_date varchar not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments (dept_no)
);
-- create dept_manager table
CREATE TABLE dept_manager(
	dept_no varchar not null,
	emp_no int not null,
	from_date varchar not null,
	to_date varchar not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments (dept_no)
);