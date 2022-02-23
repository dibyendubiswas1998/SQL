show databases;
use my_company;

show tables;
select * from transaction_details;

/*
	datediff: Return the numberof days between the two date values
			  # sysdate(): system data (today's)
*/
select datediff(order_date, sysdate()) from transaction_details;
select datediff(order_date, sysdate()) as "Date Difference" from transaction_details;
select datediff(sysdate(), order_date) as "Date Difference" from transaction_details;

select prod_name, prod_id, datediff(sysdate(), order_date) as "Date Difference" 
from transaction_details;


/*
	date() function: It is used to get the date from given date/datetime.
*/
select date('2020-09-15');
select date('2022-02-12') as "Date";
select date(order_date) as 'Only_Date' from transaction_details;


/*
	adddate(): It is used to get the date in which some time/date intervals are added.
*/
select adddate('2020-01-01', interval 2 day) as 'New Date';
select adddate('2020-01-01', interval 2 month) as 'New Date';
select adddate('2020-01-01', interval 2 year) as 'New Date';



/*
	curdate:  It is used to get the current date.
*/
select curdate() as "Current Date";
select curdate() as "Today's Date";


/*
	date_format(): It is used to get the date in specified format.
*/
select date_format('2020-03-12', '%Y') as 'Year';
select date_format('2020-03-12', '%M') as 'Month';

select date_format(order_date, '%Y') as 'Year' from transaction_details;
select prod_name, date(order_date), date_format(order_date, '%Y') as 'Year' 
from transaction_details;


/*
	day(): It is used to get the day from the given date.
*/
select day('2020-03-12') as 'Day';
select day(order_date) as 'Day' from transaction_details;















