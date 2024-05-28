-- DROP TABLE IF EXISTS Department, Title, Employee, DepartmentEmployee, DepartmentManager, Salary;

create table Department (
	dept_no varchar(4) primary key,
	dept_name varchar(50) not null
);

create table Title (
	title_id varchar(5) primary key,
	title varchar(30) not null
);

create table Employee (
	emp_no int primary key,
	emp_title_id varchar(5) not null,
	foreign key (emp_title_id) references Title(title_id),
	birth_date date not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	sex varchar(1) not null,
	hire_date date not null
);

create table DepartmentEmployee (
	dept_no varchar(4) not null,
	foreign key (dept_no) references Department(dept_no),
	emp_no int not null,
	foreign key (emp_no) references Employee(emp_no)
);

create table DepartmentManager (
	dept_no varchar(4) not null,
	foreign key (dept_no) references Department(dept_no),
	emp_no int not null,
	foreign key (emp_no) references Employee(emp_no)
);

create table Salary (
	emp_no int not null,
	foreign key (emp_no) references Employee(emp_no),
	salary int not null
);