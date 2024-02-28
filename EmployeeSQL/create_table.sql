CREATE TABLE titles (
	title_id VARCHAR (10) PRIMARY KEY,
	title VARCHAR (30) NOT NULL 
);

CREATE TABLE employees ( 
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR (20) NOT NULL,
	birth_date DATE NOT NULL , 
	first_name VARCHAR (20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
	sex VARCHAR (20) NOT NULL, 
	hire_date DATE NOT NULL , 
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE department (
	dept_no VARCHAR (20) PRIMARY KEY,
	dept_name VARCHAR (50) NOT NULL
);

CREATE TABLE dept_manager (
	dept_no VARCHAR (20),
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
	emp_no INT, 
	dept_no VARCHAR (20) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL, 
	salary INT NOT NULL,
	PRIMARY KEY (emp_no, salary),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
