-- Had to create tables one by one while importing data for it to successfully import data

-- Create all tables
-- Create a table of titles
CREATE TABLE Titles(
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(30) NOT NULL,
	UNIQUE (title_id, title),
	PRIMARY KEY (title_id)
);

-- Create a table of employees
CREATE TABLE Employees(
	emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(10) NOT NULL,
	hire_date DATE NOT NULL,
	UNIQUE (emp_no),
	PRIMARY KEY (emp_no)
);

-- Create a table of departments
CREATE TABLE Departments(
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(50) NOT NULL,
	UNIQUE (dept_no),
	PRIMARY KEY (dept_no)
);

-- Create a table of department employees
CREATE TABLE Dept_Employees(
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- Create a table of department managers
CREATE TABLE Dept_Managers(
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

-- Create a table of salaries
CREATE TABLE Salaries(
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	salary INTEGER NOT NULL,
	UNIQUE (emp_no),
	PRIMARY KEY (emp_no)
);

-- Change 'date' format to MDY for the database
-- The CSV named 'employees' has dates in MM-DD-YYYY format
-- PostgreSQL defaults to YYYY-MM-DD so altering this setting
ALTER DATABASE employees_db SET datestyle TO "ISO, MDY";
