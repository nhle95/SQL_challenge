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
    emp_no int not null,
	dept_no varchar not null references departments(dept_no),
	primary key(emp_no, dept_no)

);

select * from dept_emp;

create table dept_manager(
    dept_no varchar not null references departments(dept_no),
	emp_no int not null,
	primary key(dept_no, emp_no)
);

select * from dept_manager;

create table employees(
    emp_no int not null,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null,
	constraint pk_employees primary key (emp_no)
    
);

select * from employees;

create table salaries(

	emp_no int not null,
	salary int not null
	
);

create table titles(

	title_id varchar not null,
	title varchar not null,
	constraint pk_titles primary key(title_id)

);

-- add foreign keys for multiple tables to connect them

alter table dept_manager add constraint fk_dept_man_dept_no 
foreign key(dept_no) references departments(dept_no);
alter table dept_manager add constraint fk_dept_man_emp_no
foreign key(emp_no) references employees(emp_no);
alter table dept_emp add constraint fk_dept_emp_no
foreign key(emp_no) references employees(emp_no);
alter table dept_emp add constraint fk_dept_emp_dept_no
foreign key(dept_no) references departments(dept_no);
alter table employees add constraint fk_employees_title_id
foreign key(emp_title_id) references titles(title_id);
alter table salaries add constraint fk_salaries_emp_no
foreign key(emp_no) references employees(emp_no);




----do not add constraints before importing. wont work....