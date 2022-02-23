/*
	DDL (Data Definition Language): 
    
	  List of DDL commands: 

		CREATE: This command is used to create the database or its objects 
			    (like table, index, function, views, store procedure, and triggers).
		
        DROP: This command is used to delete objects from the database.
		
        ALTER: This is used to alter the structure of the database.
		
        TRUNCATE: This is used to remove all records from a table, including all 
				  spaces allocated for the records are removed.
		
        COMMENT: This is used to add comments to the data dictionary.
		
        RENAME: This is used to rename an object existing in the database.
        
*/

# CREATE:---------------------------------------------
create database if not exists hello_database;
use hello_database;
create table if not exists employee(
	id int not null,
    fname varchar(80),
    lname varchar(80),
    age int,
    income int,
    primary key(id)
);
create table if not exists department(
	dep_id int not null,
    dep_name varchar(100),
    dep_adds varchar(50),
    dep_loc varchar(100),
    primary key(dep_id)
);
create table if not exists Table1(
	id int,
    full_name varchar(100),
    age int,
    primary key(id)
);
create table if not exists Table2(
	id int,
    full_name varchar(100),
    age int,
    primary key(id)
);
create table if not exists Table3(
	id int,
    full_name varchar(100),
    age int,
    primary key(id)
);



# DROP:----------------------------------------
drop table Table1;
drop table Table2;
drop table Table3;



# ALTER:---------------------------------------
-- (alter add)
alter table Table3
	add tab1 varchar(100),
    add tab2 varchar(100),
    add tab3 varchar(100),
    add tab4 varchar(100);
select * from Table3;


-- (alter drop)
alter table Table3
	drop column tab1,
    drop column tab2,
    drop column tab3;
select * from Table3;


-- (alter modify)
alter table Table3
	modify tab4 int,
    modify age varchar(100);
describe Table3;
select * from Table3;


-- (alter rename)
alter table Table3
	rename column age to my_age;
select * from Table3;


alter table Table3
	rename column full_name to fame,
    rename column id to tab_id,
    rename column tab4 to address;
select * from Table3;
describe Table3;




/*
	DML(Data Manipulation Language): 
    
	  List of DML commands:
      
		INSERT : It is used to insert data into a table.
        
		UPDATE: It is used to update existing data within a table.
        
		DELETE : It is used to delete records from a database table.
        
		LOCK: Table control concurrency.
*/

# INSERT:-------------------------------------
show tables;
insert into department values
	(1, 'ML', 'Mumbai', 'MH'),
    (2, 'DL', 'New Delhi', 'Delhi'),
    (3, 'NLP', 'Kolkata', 'WB');
insert into employee values
	(1, 'Dibyendu', 'Biswas', 23, 75000),
    (2, 'Arko', 'Biswas', 24, 35000);
select * from department;
select * from employee;


# UPDATE:------------------------------------
update department set dep_name='Machine Learning' where dep_id=1;
update department set dep_name='Deep Learning', dep_adds='Siliguri',
dep_loc='West Bengal' where dep_id=2;

update department set dep_name='Natural Langauge Processing',
dep_loc='West Bengal' where dep_id=3;
select * from department;



# DELETE:----------------------------------
select * from employee;
delete from employee where id=4;

















































































