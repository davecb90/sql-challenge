-- create table schemas

-- titles table

DROP TABLE IF EXISTS titles;

CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR 
);

SELECT * FROM titles;

-- employees table

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id) 
);

SELECT * FROM employees;

-- departments table

DROP TABLE IF EXISTS departments;

CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

SELECT * FROM departments;

-- dept_manager table 

DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

SELECT * FROM dept_manager;


--dept_emp table

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp;

--salaries table
	
DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;
