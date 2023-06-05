--Joins employees and salaries tables to find employee number, first and last name, sex, and salary
SELECT employees.emp_no,last_name,first_name,sex,salary FROM employees
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no;

--Finds first and last name, and hire date of employees who were hired in 1986
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date LIKE '%1986';

--Lists the manager of each department along w/ dept num, dept name, emp. num, last and first name
SELECT dept_manager.dept_no, dept_name,dept_manager.emp_no,last_name,first_name FROM dept_manager
LEFT JOIN departments ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees ON dept_manager.emp_no = employees.emp_no


--Lists all employees dept. no, emp. no, last name, first name, and dept. name.
SELECT  departments.dept_no, employees.emp_no, last_name, first_name, dept_name FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no

--List employee first and last name, and sex, if first name is Hercules and last name begins w/ B.
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--Lists each employee in Sales and Development Depts, lists their employee num, last name and first name
SELECT employees.emp_no, last_name, first_name, dept_name FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development'

--Lists frequency counts, in desc order, of all employees last names
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;

