show databases;
use my_company;

show tables;
select * from my_tab;

/*
	AND Condition: The MySQL AND condition is used with SELECT, INSERT, UPDATE or 
				   DELETE statements to test two or more conditions in an 
                   individual query.
*/
select fname, class from my_tab
where class='CS' and age >20;


/*
	OR Condition: The MySQL OR condition specifies that if you take two or 
				  more conditions then one of the conditions must be fulfilled 
                  to get the records as result.
*/
select fname, class from my_tab
where class='CS' or age >20;


select fname, class from my_tab
where class='CS' or class='FI';


/*
	AND & OR Statement: we are used AND & OR statement both together.
*/
select fname, class, age from my_tab
where (fname='Arko' and class='CS')
or (age>20);



/*
	LIKE Condition: In MySQL, LIKE condition is used to perform pattern matching to 
					find the correct result. It is used in SELECT, INSERT, UPDATE 
                    and DELETE statement with the combination of WHERE clause.
    
*/
# using % (percent) and _ (underscore) wildcard:----------
select fname, class, age from my_tab
where class like 'C%';


select fname, class, age from my_tab
where class like 'C_';


# using NOT operator:----------
select fname, class, age from my_tab
where class not like 'C%';


select fname, class, age from my_tab
where class not like 'C%' or 'F%';



/*
	IN Condition: The MySQL IN condition is used to reduce the use of multiple 
				  OR conditions in a SELECT, INSERT, UPDATE and DELETE statement.
*/

select * from my_tab where fname in ('arko', 'Michale', 'Jack',  'Json');



/*
	BETWEEN: The MYSQL BETWEEN condition specifies how to retrieve values from an 
			 expression within a specific range. It is used with SELECT, INSERT, 
             UPDATE and DELETE statement.
*/
select * from my_tab
where age between 18 and 20;




















