show databases;
use my_company;

show tables;
describe employee_details;
select * from employee_details;
select * from department_details;
select * from teacher_details;

/*
	Update Query:------------------------
*/
update employee_details set emp_name='Arko', emp_add='Siliguri' where emp_id=1;
update employee_details set emp_name='Dibyendu', emp_add='Darjeeling' where emp_id=2;
select * from employee_details;


update teacher_details set tea_name='Dr. A G', tea_ph=47585 where tea_id=1;
update teacher_details set tea_name='P G Das', tea_ph=75655 where tea_id=3;
update teacher_details set tea_name='Shamal Das', tea_ph=99458 where tea_id=5;
select * from teacher_details;


/*
	delete Query:--------------------
*/
delete from employee_details where emp_id=4;
delete from employee_details where emp_id=7;
select * from employee_details;



/*
	select Query:-------------------------
*/
select emp_id, emp_name, emp_add from employee_details;
select emp_id, emp_name, emp_add from employee_details where emp_id=1;
select emp_id, emp_name, emp_add from employee_details where emp_id=2;



/*
	Replace:  The REPLACE statement in MySQL is an extension of the SQL Standard. 
			  This statement works the same as the INSERT statement, except that if an 
              old row matches the new record in the table for a PRIMARY KEY or a UNIQUE 
              index, this command deleted the old row before the new row is added.
    
    
    
*/
show table status;
show tables;
select * from employee_details;

replace into employee_details (emp_id, emp_add)
values (6, 'Siliguri');


replace into employee_details
set emp_id = 6, emp_name='SKP GPH', dep_id=2, emp_add='Siliguri';


