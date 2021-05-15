--  1 . List the following details of each employee: employee number, last name, first name, sex and salary --
--------------------------------------------------------------------------------------------------------------
SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", 
       e.first_name AS "First Name", e.sex AS "Gender", s.salary AS "Salary ($)"
FROM employees AS e
INNER JOIN salaries as s ON s.emp_no = e.emp_no
ORDER BY s.salary DESC;


--  2 . List first name, last name, and hire date for employees who were hired in 1986. ----------------------
--------------------------------------------------------------------------------------------------------------
SELECT e.first_name AS "First Name", e.last_name AS "Last Name", e.hire_date AS "Hire Date"
FROM employees as e
WHERE hire_date
LIKE '%1986'
ORDER BY e.hire_date ASC;


--  3 . List the manager of each department with the following information: department number, department ---- 
--      name, the manager's employee number, last name, first name.                                       ----
--------------------------------------------------------------------------------------------------------------
SELECT d.dept_no AS "Department Number", d.dept_name AS "Department Name", 
	   m.emp_no AS "Employee Number", e.last_name AS "Last Name", 
	   e.first_name AS "First Name"
FROM dept_emp
JOIN dept_manager as m ON m.emp_no = dept_emp.emp_no
JOIN departments as d ON d.dept_no = dept_emp.dept_no
JOIN employees as e ON e.emp_no = dept_emp.emp_no
ORDER BY d.dept_no;


--  4 . List the department of each employee with the following information: employee number, last name, -----
--      first name, and department name.                                                                 -----
--------------------------------------------------------------------------------------------------------------
SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", 
	   e.first_name AS "First Name", d.dept_name AS "Department Name" 
FROM dept_emp
JOIN departments as d ON d.dept_no = dept_emp.dept_no
JOIN employees as e ON e.emp_no = dept_emp.emp_no
ORDER BY e.emp_no;


--  5 . List first name, last name, and sex for employees whose first name is "Hercules" and last names ------
--      begin with "B.".                                                                                ------
--------------------------------------------------------------------------------------------------------------
SELECT e.first_name AS "First Name", e.last_name AS "Last Name", e.sex AS "Gender"
FROM employees AS e
WHERE e.first_name = 'Hercules' AND e.last_name
LIKE 'B%';
-- NOTE: The question asked for last names starting with "B." which returned 0 results, so this code is for last
--       names beginning with "B" instead of "B."


--  6 . List all employees in the Sales department, including their employee number, last name, first -------
--		name, and department name                                                                     -------
-------------------------------------------------------------------------------------------------------------
SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", 
	   e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM dept_emp
JOIN departments as d ON d.dept_no = dept_emp.dept_no
JOIN employees as e ON e.emp_no = dept_emp.emp_no
WHERE d.dept_name = 'Sales'


--  7 . List all employees in the Sales and Development departments, including their employee number, ------
--		last name, first name, and department name.                                                   ------
------------------------------------------------------------------------------------------------------------
SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", 
	   e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM dept_emp
JOIN departments as d ON d.dept_no = dept_emp.dept_no
JOIN employees as e ON e.emp_no = dept_emp.emp_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'


--  8 . In descending order, list the frequency count of employee last names, i.e., how many employees  ----
--		share each last name.                                                                           ----
------------------------------------------------------------------------------------------------------------
SELECT last_name AS "Last Name", count(*) AS "Shared Name Count"
FROM employees 
GROUP BY last_name
ORDER BY "Shared Name Count" DESC
 







