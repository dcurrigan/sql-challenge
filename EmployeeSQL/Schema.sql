-- Create the department table -- 
CREATE TABLE departments(
	dept_no VARCHAR(30) NOT NULL, 
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

-- Create the titles table -- 
CREATE TABLE titles(
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
	
	PRIMARY KEY (title_id)
);

-- Create the department managers table -- 
CREATE TABLE dept_manager(
	dept_no VARCHAR(30) NOT NULL, 
	emp_no INT,
	PRIMARY KEY (dept_no, emp_no)
);

-- Create the employees table -- 
CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL, 
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL, 
	hire_date VARCHAR(30) NOT NULL, 
	
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create the department/employee junction table -- 
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL, 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create the salaries table -- 
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no, salary)
	
	
);






