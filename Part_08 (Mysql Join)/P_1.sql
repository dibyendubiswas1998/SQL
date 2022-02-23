show databases;
use my_company;

show tables;
select * from department_details;
select * from employee_details;


/*
	Left Join:-----
*/
select * from employee_details e
left join department_details d on e.dep_id = d.dep_id;

select emp_name, emp_add from employee_details e
left join department_details d on e.dep_id = d.dep_id;

select e.emp_id, e.emp_name, e.dep_id, d.dep_name, d.dep_loc 
from employee_details e left join department_details d 
on e.dep_id=d.dep_id;


/*
	Right Join:--------
*/
select * from department_details d right join employee_details e
on d.dep_id = e.dep_id;

select d.dep_id, d.dep_name, e.emp_id, e.emp_name, e.emp_add 
from department_details d right join employee_details e 
on d.dep_id=e.dep_id;


/*
	Inner join:---------
*/
select * from employee_details e inner join department_details d
on e.emp_id = d.dep_id;

select * from employee_details e, department_details d
where e.emp_id = d.dep_id;

select e.emp_id, d.dep_id, emp_name, d.dep_loc from employee_details e
inner join department_details d
on e.emp_id=d.dep_id;

select e.emp_id, d.dep_id, emp_name, d.dep_loc from employee_details e,
department_details d
where e.emp_id=d.dep_id;



/*
	Full/Outer join:------------
*/
select e.emp_id, e.emp_name, e.emp_add, d.dep_id, d.dep_name, d.dep_loc
from employee_details e
left outer join department_details d
on e.dep_id=d.dep_id
union
select e.emp_id, e.emp_name, e.emp_add, d.dep_id, d.dep_name, d.dep_loc
from employee_details e
right outer join department_details d
on e.dep_id=d.dep_id;



/*
	Cross join:------------
*/
select * from employee_details cross join department_details;




































