# Stored Procedures:-------------------------


show databases;
use my_company;
show tables;

select * from my_employee;
select * from my_tab;
select * from transaction_details;


-- return list of employee where age is greater than 34  from my_employee table
select * from my_employee where emp_age>34;


# creating a store procedures without passing an agruments:-----
# example 1:--------
delimiter &&  
create procedure top_age()
begin
	select * from my_employee where emp_age>=35;
    select sum(emp_age) as "Total Age" from my_employee;
end &&  
delimiter ;

call top_age();


# example 2:-------------
delimiter && 
create procedure top_emp_age(in var int)
begin
	select emp_id, emp_name, emp_age from my_employee where emp_age>=var;	
end &&
delimiter ;

call top_emp_age(20);
call top_emp_age(30);
call top_emp_age(40);


# example 3:---------------
delimiter &&
create procedure top_nth_record(in n int)
begin
	select * from my_employee limit n;
	select * from my_tab limit n;
    select * from transaction_details limit n;
end &&
delimiter ;

call top_nth_record(6);
call top_nth_record(2);
call top_nth_record(5);
call top_nth_record(1);



# Example 4; (update particular recod):--------
delimiter &&
create procedure update_record(name varchar(100), income int)
begin
	set sql_safe_updates=0;
    select * from my_employee;
	update my_employee set income=income where emp_name=name;
    select * from my_employee;
end &&
delimiter ;

call update_record('Mark', 45000);
call update_record('kane', 15000);


# Example 5; (using out):------------------
delimiter &&
create procedure Total_count(out total_employee int)
begin
	select count(*) from my_employee into total_employee;
end &&
delimiter ;

call Total_count(@total_count);
select @total_count as total_employee;



# Example 6; (using in and out):---------------------
delimiter &&
create procedure count_by_city(in city varchar(100), out total_count int)
begin
	select count(*) from my_employee where city=city into total_count;
end &&
delimiter ;

call count_by_city('Florida', @total_count);
select @total_count as total_employee;

call count_by_city('Newyork', @total_count);
select @total_count as total_employee;

call count_by_city('Arizona', @total_count);
select @total_count as total_employee;

call count_by_city('Georgia', @total_count);
select @total_count as total_employee;




























































