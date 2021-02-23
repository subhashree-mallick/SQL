-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/tFXEzK
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE Title (
    title_id varchar  NOT NULL ,
    title varchar  NOT NULL ,
    PRIMARY KEY (
        title_id
    )
);

CREATE TABLE employees (
    emp_no integer  NOT NULL ,
    emp_title_id varchar  NOT NULL ,
    birth_date integer  NOT NULL ,
    first_name varchar  NOT NULL ,
    last_name varchar  NOT NULL ,
    sex varchar  NOT NULL ,
    hire_date integer  NOT NULL ,
    PRIMARY KEY (
        emp_no
    )
);
CREATE TABLE Department (
    dept_no varchar  NOT NULL ,
    dept_name varchar  NOT NULL ,
    PRIMARY KEY (
        dept_no
    )
);

CREATE TABLE Dept_Emp (
    emp_no integer  NOT NULL ,
    dept_no varchar  NOT NULL ,
    PRIMARY KEY (
        emp_no,dept_no
    )
);

CREATE TABLE Dept_Manager (
    dept_no varchar  NOT NULL ,
    emp_no integer  NOT NULL ,
    PRIMARY KEY (
        dept_no,emp_no
    )
);

CREATE TABLE salaries (
    emp_no integer  NOT NULL ,
    salary integer  NOT NULL ,
    PRIMARY KEY (
        emp_no
    )
);



ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Department (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Department (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE employees ADD CONSTRAINT fk_employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Title (title_id);

