DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;


CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name TEXT NOT NULL
	);

	SELECT * from departments 

CREATE TABLE dept_emp (
	emp_no INT PRIMARY KEY NOT NULL,
	dept_no VARCHAR(6) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
	);

	SELECT * from dept_emp 

CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
PRIMARY KEY (dept_no, emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * from dept_manager 


CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * from employees 


CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no,salary),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * from salaries 

CREATE TABLE titles(
	title_id VARCHAR(5) PRIMARY KEY,
	title TEXT NOT NULL
);

SELECT * from titles 