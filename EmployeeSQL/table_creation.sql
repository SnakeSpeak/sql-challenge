--creates tables, and assigns Primary Key constraints to each one

CREATE TABLE "departments" (
    "dept_no" varchar(250)   NOT NULL,
    "dept_name" varchar(250)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);



CREATE TABLE "dept_manager" (
    "dept_no" varchar(250)   NOT NULL,
    "emp_no" int   NOT NULL,
	CONSTRAINT "pk_dept_emp" PRIMARY KEY ("dept_no","emp_no")
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar(250)   NOT NULL,
    "birth_date" varchar(250)   NOT NULL,
    "first_name" varchar(250)   NOT NULL,
    "last_name" varchar(250)   NOT NULL,
    "sex" varchar(10)   NOT NULL,
    "hire_date" varchar(250)   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
	CONSTRAINT "pk_emp_salaries" PRIMARY KEY ("emp_no","salary")
);

CREATE TABLE "titles" (
    "title_id" varchar(250)   NOT NULL,
    "title" varchar(250)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(250)   NOT NULL,
	CONSTRAINT "pk_emp_dept" PRIMARY KEY ("emp_no","dept_no")
);

--adds Foreign Key constraints

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_departments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_titles_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

