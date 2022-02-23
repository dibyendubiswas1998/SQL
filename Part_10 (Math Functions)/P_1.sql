/*
	abs() function: This function is used to get the absolute value of the 
					given number.
*/
select abs(11.2);
select abs(-11.2);
select abs(11);
select abs(11.899);


/*
	sqrt() function: This function is used to get the square root of the given number.
*/
select sqrt(2);
select sqrt(-2);
select sqrt(abs(-2));


/*
	DIV() function: This function is used for integer division, in which n is 
					the number to be divided by the number m.
*/
select 4 div 2;
select 4 div 2 as "Result";
select abs(-4) div abs(2) as Result;



/*
	mod() function: This function is used to get the remainder of given values.
*/
select mod(10, 2);
select mod(10, 2) as "Result";
select mod(abs(-12), 4) as "Result";
select mod(10, 7);



/*
	pi()function: This function is used to get the value of pi upto 6 decimal 
				  places.
*/
select pi();
select pi()+10 as "Result";



/*
	round()function: This function is used to round off the given number.
*/
select round(21.9181);
select round(21.9181) as 'Result';
select round(abs(-21.9181)) as 'Result';





