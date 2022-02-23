show databases;
use my_company;

show tables;
describe employee_details;

/*
	WHERE clauses:-------------------
*/
select * from employee_details
where dep_id=2 and emp_id>=6;

select * from employee_details
where dep_id=2 or emp_id>=6;


select * from employee_details
where (emp_name='Dibyendu' and emp_add='Darjeeling')
or (dep_id>2);


/*
	DISTINCT Clause: MySQL DISTINCT clause is used to remove duplicate records from the 
					 table and fetch only the unique records. The DISTINCT clause is only
                     used with the SELECT statement.
                     
        ()  If you put only one expression in the DISTINCT clause, the query 
            will return the unique values for that expression.
		
        ()  If you put more than one expression in the DISTINCT clause, the query will 
            retrieve unique combinations for the expressions listed.
            
		()  In MySQL, the DISTINCT clause doesn't ignore NULL values. So if you are using the 
			DISTINCT clause in your SQL statement, your result set will include NULL as a 
            distinct value.
               
*/

select distinct emp_add from employee_details;
select distinct dep_id from employee_details;

select distinct emp_name, emp_add from employee_details;



/*
	ORDER BY Clause: The MYSQL ORDER BY Clause is used to sort the records in 
					 ascending or descending order.
*/
select * from employee_details
where dep_id=2 order by emp_name;


select * from employee_details
where dep_id=2 order by emp_name asc;


select * from employee_details
where dep_id=2 order by emp_name desc;


select * from employee_details
where dep_id>2 order by emp_name asc, emp_add desc;


/*
	GROUP BY Clause: The MYSQL GROUP BY Clause is used to collect data from multiple 
					 records and group the result by one or more column. It is generally 
                     used in a SELECT statement.

		You can also use some aggregate functions like COUNT, SUM, MIN, MAX, AVG etc. 
        on the grouped column.

*/
select emp_name, count(*)
from employee_details group by emp_name;


select emp_name, sum(dep_id) as "Summation Value"
from employee_details where dep_id>2 group by emp_name;



/*
	HAVING Clause:  MySQL HAVING Clause is used with GROUP BY clause. It always returns 
					the rows where condition is TRUE.
    
*/

select emp_name, sum(dep_id) as "Addition Value"
from employee_details group by emp_name
having sum(dep_id)=5;


select emp_name, sum(dep_id) as "Addition Value"
from employee_details where dep_id>2 
group by emp_name
having sum(dep_id)=5;






