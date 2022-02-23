show databases;
use my_company;

show tables;
select * from employee_details;


/*
	IF(): The IF function returns a value YES when the given condition evaluates to true 
		  and returns a NO value when the condition evaluates to false. 
*/

select emp_name, emp_add,
if(dep_id>2, 'Great', 'Bad') as Result
from employee_details;



/*
	IFNULL(): The IFNULL function accepts two expressions, and if the first expression is 
			  not null, it returns the first arguments. If the first expression is null, 
              it returns the second argument. This function returns either string or 
              numeric value, depending on the context where it is used.
    
*/

select ifnull('Hello All', 'Okay');
select ifnull(NULL, 'Okay');



/*
	NULLIF(): The NULLIF function accepts two expressions, and if the first expression 
			  is equal to the second expression, it returns the NULL. Otherwise, it 
              returns the first expression.
    
*/

select nullif('java', 'python');
select nullif('java', 'java');


/*
	CASE Statement: CASE statement is to deal with multiple IF statements in the SELECT 
					clause.
                    
                    The CASE expression validates various conditions and returns the 
                    result when the first condition is true. Once the condition is met, 
                    it stops traversing and gives the output. If it will not find any 
                    condition true, it executes the else block. When the else block is 
                    not found, it returns a NULL value.
                    
	Syntax:
			CASE   
			  WHEN [condition] THEN result   
			  [WHEN [condition] THEN result ...]   
			  [ELSE result]   
			 END
*/
select * from my_tab;
 
select id, fname, age,
case class
	when 'CS' then 'Computer Science'
    when 'EC' then 'Electrical Engineering'
    else 'Finance'
end as department from my_tab;


    

 
 
 
 
 
 
 








