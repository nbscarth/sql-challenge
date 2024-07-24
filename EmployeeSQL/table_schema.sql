CREATE TABLE IF NOT EXISTS titles(
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(25) NOT NULL
);

CREATE TABLE IF NOT EXISTS employees(
	emp_no INT PRIMARY KEY,
	emp_title VARCHAR(5) NOT NULL,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR(25) NOT NULL,
	sex CHAR(1) NOT NULL,
	hire_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS salaries(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT NOT NULL
);

CREATE TABLE IF NOT EXISTS departments(
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(25) NOT NULL
);

CREATE TABLE IF NOT EXISTS dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE IF NOT EXISTS dept_emp(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);