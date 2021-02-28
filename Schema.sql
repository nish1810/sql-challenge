
DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
dept_no CHAR(4) NOT NULL,
dept_name VARCHAR NOT NULL,
PRIMARY KEY (dept_no)
);

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
emp_no int NOT NULL PRIMARY KEY,
emp_title CHAR(5),
birth_date DATE,
first_name CHAR(30) NOT NULL,
last_name CHAR(30) NOT NULL,
sex CHAR(10),
hire_date DATE
);

DROP TABLE IF EXISTS dept_emp;
CREATE TABLE dept_emp (
emp_no int NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no CHAR(4) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

DROP TABLE IF EXISTS Salary;
CREATE TABLE Salary (
emp_no int NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
Salary int
);

DROP TABLE IF EXISTS titles;
CREATE TABLE titles (
title_id CHAR(5) NOT NULL,
PRIMARY KEY (title_id),
title CHAR(30)
);

DROP TABLE IF EXISTS dept_managers;
CREATE TABLE dept_managers (
dept_no CHAR(4) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no int NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
ALTER TABLE employees
ADD FOREIGN KEY (emp_title) REFERENCES titles(title_id);

