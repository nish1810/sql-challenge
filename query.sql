SELECT employees.emp_no, last_name, first_name, sex, salary
FROM employees, salary
WHERE employees.emp_no = salary.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date > '1985-12-31' AND hire_date < '1987-01-01';

SELECT employees.emp_no, last_name, first_name, departments.dept_no, dept_name
FROM dept_managers, employees, departments
WHERE employees.emp_no=dept_managers.emp_no AND departments.dept_no = dept_managers.dept_no;

SELECT employees.emp_no, last_name, first_name, dept_name
FROM departments, employees, dept_emp
WHERE employees.emp_no = dept_emp.emp_no AND departments.dept_no = dept_emp.dept_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name;

SELECT employees.emp_no, last_name, first_name, dept_name
FROM departments, employees, dept_emp
WHERE employees.emp_no = dept_emp.emp_no AND departments.dept_no = dept_emp.dept_no AND dept_name = 'Sales'

UNION

SELECT employees.emp_no, last_name, first_name, dept_name
FROM departments, employees, dept_emp
WHERE employees.emp_no = dept_emp.emp_no AND departments.dept_no = dept_emp.dept_no AND dept_name = 'Development'
;

SELECT first_name, last_name, COUNT(last_name) as LAST_NAME_COUNT
FROM employees
GROUP BY last_name, first_name
ORDER BY COUNT(last_name) DESC;
