use my_company;
select * from my_employee;

/*
	Count() Function:  MySQL count() function is used to returns the count of an 
					   expression. It allows us to count all rows or only some 
                       rows of the table that matches a specified condition.
                       This function returns 0 if it does not find any matching rows.

		count(*)
        count(expression)
        count(distinct)
*/

select count(emp_name) from my_employee;
select count(*) from my_employee;

select count(*) as "Total" from my_employee;
select count(emp_name) as "Total Employee" from my_employee;

select count(*) as "Age_greater_32" from my_employee
where emp_age>32;

select count(distinct emp_age) as "Distinct_Employee" 
from my_employee;

select emp_name, city, count(*) as "Total_City" from my_employee 
group by city;

select emp_name, emp_age, count(*) from my_employee
group by emp_age;

select emp_name, emp_age, count(*) from my_employee
group by emp_age
having count(*)>2;

select emp_name, emp_age, count(*) from my_employee
group by emp_age
having count(*)>=2 order by count(*);



/*
	sum() function: The MySQL sum() function is used to return the total summed 
                    value of an expression. It returns NULL if the result set 
                    does not have any rows. It is one of the kinds of aggregate 
                    functions in MySQL.
*/
select sum(emp_age) as "Total Age" from my_employee;
select sum(emp_age) as "Total Age > 32" from my_employee
where emp_age>32;


select city, sum(income) as "Total Income"
from my_employee group by income;


select city, sum(emp_age) as "Total Age" from my_employee
group by city
having sum(emp_age)>120;


select city, income, sum(distinct emp_age) as "Total" 
from my_employee group by city;



/*
	avg() function: The MySQL avg() is an aggregate function used to return the 
				    average value of an expression in various records.
*/
select avg(emp_age) as "Average Age" from my_employee;

select avg(emp_age) as "Average Age" from my_employee
where emp_age>32;


/*
	min() function: The MIN() function in MySQL is used to return the minimum 
					value in a set of values from the table.
    
    max() function: The MAX() function in MySQL is used to return the maximum 
					value in a set of values from the table.
*/
select min(income) as "Minium Income" from my_employee;
select min(emp_age) as "Minium Age" from my_employee;

select min(income) as "Minium Income" from my_employee
where emp_age>=32 and emp_age <=40;

select emp_age, min(income) as "Minimum Income" from my_employee
group by emp_age;

select city, min(income) as "Minimum Income" from my_employee
group by city 
having min(income)>15000;

select emp_name, city, min(distinct income) as "Min Income" 
from my_employee group by city;



/*
	GROUP_CONCAT() Function: 
			The GROUP_CONCAT() function in MySQL is a type of an aggregate function. 
            This function is used to concatenate string from multiple rows into a 
            single string using various clauses.
			If the group contains at least one non-null value, it always returns 
            a string value. Otherwise, you will get a null value.
            
*/



/*
	first function: The MySQL first function is used to return the first value 
					of the selected column. Here, we use limit clause to select 
                    first record or more.
*/
select emp_name from my_employee limit 1;
select emp_name, emp_age from my_employee limit 1;
select * from my_employee limit 2;



/*
	last function: The MySQL last function is used to return the last value 
					of the selected column. Here, we use limit clause to select 
                    first record or more.
*/
select * from my_employee order by emp_id desc limit 1;
select * from my_employee order by emp_id desc limit 2;


