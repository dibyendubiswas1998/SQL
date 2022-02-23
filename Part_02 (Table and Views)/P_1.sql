show databases;

/* Create a Databases:------ */ 
drop database my_company;
create database if not exists my_company;
use my_company;

/* 
	Creating a Table:--------  
*/
create table if not exists department(
	dep_id int,
    dep_name varchar(100) not null,
    dep_loc varchar(75) not null,
    primary key(dep_id)
);

create table if not exists employee(
	emp_id int,
    emp_name varchar(100),
    emp_add varchar(200),
    dep_id int,
    primary key(emp_id),
    foreign key(dep_id) references department(dep_id)
);
create table if not exists teacher(
	tea_id int,
    tea_name varchar(100),
    tea_ph varchar(10),
    dep_id int,
    primary key(tea_id),
    foreign key(dep_id) references department(dep_id)
);
show tables;


/*
	Rename a particular table:-----------
    syntax: rename table <old_table_name> to <new_table_name>
*/

rename table department to department_details;
rename table employee to employee_details;
rename table teacher to teacher_details;
show tables;


/*
	Truncate: delete the complete data without removing its Structure.
			  if foregin key is exists in a table then you can't.
    syntax: truncate table <table_name>
*/
create table if not exists truncate_table(
	tu_id int, 
    tu_nm varchar(100) not null,
    tu_ph varchar(10) not null unique,
    primary key(tu_id)
); 
insert into truncate_table values
	(1, 'name_1', 78571),
    (2, 'name_2', 78572),
    (3, 'name_3', 78573),
    (4, 'name_4', 78574),
    (5, 'name_5', 78575);


select * from truncate_table;

truncate table truncate_table;
select * from truncate_table;


/*
	Describe:  Describe means show the information in details (structure of our table).
			   Such as column names, constraints on column names, etc.
               
	syntax:  describe <table_name>
*/
show tables;
describe employee_details;
describe department_details;
describe teacher_details;
describe truncate_table;


/*
	Drop: drop/delete the existing table.
    Syntax: drop table <table_name>
*/
show tables;
drop table truncate_table;


/*
	Alter: ALTER statement is used when you want to change the column name of your
		   table or any table field. It is also used to add or delete an existing 
           column in a table.
           
           The ALTER statement is always used with "ADD", "DROP" and "MODIFY" 
           commands according to the situation.
*/

/*	
	ADD: add a new column or columns.
    syntax: alter table <table_name>
			add <new_col_name> <col_definition>
*/
show tables;
alter table truncate_table
	add tu_a1 varchar(100) not null;
describe truncate_table;


alter table truncate_table
	add tu_a2 varchar(100) not null,
    add tu_a3 varchar(100) not null,
    add tu_a4 varchar(100) not null,
    add tu_a5 varchar(100) not null;
describe truncate_table;


/*
	MODIFY: modify command is used to change the column definition of the table.
    
    syntax: ALTER TABLE <table_name>  
		    MODIFY <column_name> <column_definition>
*/
alter table truncate_table
	modify tu_a1 varchar(10) not null;
    
alter table truncate_table
	modify tu_a2 varchar(100) not null;

alter table truncate_table
    modify tu_a3 varchar(10) not null unique;
    
alter table truncate_table
    modify tu_a4 varchar(20) not null;

alter table truncate_table
    modify tu_a5 varchar(1);


/*
	DROP: drop a particular column from a table.
    syntax: alter table <table_name>
			drop column <column_name>
*/
alter table truncate_table
	drop column tu_a1,
    drop column tu_a2,
    drop column tu_a3,
    drop column tu_a4,
    drop column tu_a5;

describe truncate_table;


/*
	Rename: rename a particular column/ columns in a table.
    syntax: alter table <table_name>
			change column <old_col_name> <new_col_name> <col_defination>
            
*/
describe truncate_table;
alter table truncate_table
	change column tu_a2 tru_02 varchar(20);
    
alter table truncate_table
	change column tu_a3 tru_03 varchar(20),
    change column tu_a4 tru_04 varchar(10),
    change column tu_a5 tru_05 varchar(10);
    
describe truncate_table;


/*
	Rename: rename the table name.
*/
alter table truncate_table
	rename to truncate_table_details;
    
show tables;
describe truncate_table_details;




/*
	CREATE TEMPORARY TABLE:  MySQL has a feature to create a special table called a 
							 Temporary Table that allows us to keep temporary data.
                             
                             We can also use the DROP TABLE command for removing this 
                             table explicitly when the user is not going to use it.
                             
                             A temporary table in MySQL will be dropped automatically when 
                             the user closes the session or terminates the connection manually.
                                 
*/	

create temporary table temp_table(
	tem_id int,
    tem_name varchar(100) not null,
    tem_ph varchar(10) not null unique,
    primary key(tem_id)
);
insert into temp_table values
	(1, 'T1', 9581),
    (2, 'T2', 9582),
    (3, 'T3', 9583),
    (4, 'T4', 9584),
    (5, 'T5', 9585);
    
show tables;
describe temp_table;

drop table temp_table;
