-- drop table if exists
drop table if exists departments CASCADE; -- to drop relationship between tables
drop table if exists dept_emp CASCADE;
drop table if exists dept_manager CASCADE;
drop table if exists employees CASCADE;
drop table if exists salaries CASCADE;
drop table if exists titles CASCADE;

--create table:

create table departments(
    dept_no varchar primary key not null,
    dept_name varchar not null

);

select * from departments;

create table dept_emp(
    emp_no int not NULL,
    dept_no varchar
	
);

select * from dept_emp;

create table dept_manager(
    dept_no varchar not null,
    emp_no int
);

select * from dept_manager;

create table employees(
    emp_no INT NOT NULL,
    emp_title_id VARCHAR   NOT NULL,
    birth_date VARCHAR   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date VARCHAR   NOT NULL
    
);

select * from employees;

create table salaries(
    emp_no INT not null,
    salary INT not null
    
);

select * from salaries;

create table titles(
    title_id VARCHAR not null,
    title VARCHAR not null
	
);

select * from titles;

 