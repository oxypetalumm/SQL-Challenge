-- Create the tables:
DROP TABLE Departments CASCADE;

CREATE TABLE Departments (
	dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR (30) NOT NULL
);

---------------------------
DROP TABLE dept_emp CASCADE;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL , 
	dept_no VARCHAR NOT NULL ,
	PRIMARY KEY	(emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

--------------------------------
DROP TABLE dept_manager CASCADE;

CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (dept_no, emp_no) REFERENCES dept_emp(dept_no, emp_no)
);

--------------------------------
DROP TABLE employees CASCADE;

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title VARCHAR ,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR
);

--------------------------------
DROP TABLE salaries;

CREATE TABLE salaries (
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT NOT NULL ,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--------------------------------
DROP TABLE titles CASCADE;

CREATE TABLE titles (
	title_id VARCHAR NOT NULL ,
	title VARCHAR NOT NULL PRIMARY KEY,
	FOREIGN KEY (title) REFERENCES employees(emp_title)
);

--------------------------------------
--------------------------------------
-- View the tables 
SELECT * FROM Departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;
---------------------------------------
---------------------------------------











