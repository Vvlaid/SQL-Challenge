# SQL-Challenge

### Data Modeling, Data Engineering and Data Analysis using SQL (PostgreSQL)

A research project about the employees at a fictional yet reknown company named "Pewlett Hackard." These employees worked at the company between 1980 and 1990s.
There are six CSV files (in the Resources folder in the repo) containing data about employees names, id, titles, department name and id, salary, birth date, gender and hire date.

### Data Modeling
The first task involves inspecting the CSV files, and then sketching an Entity Relationship Diagram (ERD) of the tables by using QuickDBD to sketchout the ERD. It's saved as image in the ERD folder within SQL Challenge folder, as well as the code for creating the image is saved in SQL and text format which shows the relationships and keys.

### Data Engineering
The second task is to use the provided information to create a table schema for each of the six CSV files and import each CSV into the correspoinding SQL table. This task is completed in the SQL file named employees_schema within SQL Challenge folder.

The code starts by dropping any previous tables if they exist. Then the DATE style for the database I am using (i.e., employees_db) is set to MM-DD-YYYY. This is done because one of the tables (Employees) has two columns, birth_date and hire_date, which are in date format in MM-DD-YYYY. PostgreSQL defaults to YYYY-MM-DD and does not allow to import date data in any other format unless the database being used is altered for the the right format.

Six tables are created named Titles, Employees, Departments, Dept_Employees, Dept_Managers and Salaries. These tables are created in order of their mention because of the relationships and foreign keys. Primary keys, foreign keys and constraints are defined for each table and primary keys are set to be unique. Composite keys are prepared for the tables Dept_Employees and Dept_Managers taking two primary keys to uniquely identify rows.

Data from the six CVSs is then imported into the tables in the same order in which they were created because of the relationships. Data for each table is then displayed to confirm that it is imported properly.

### Data Analysis
The third task is to analyze the data tables to answer eight questions. This analysis is completed in the SQL file named Data Analysis Queries within SQL Challenge folder.
The images for each analysis result are saved in the folder Data Analysis Images within the SQL Challenge folder.
