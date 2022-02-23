show databases;
use my_company;

show tables;
select * from character_table;


/*
	character_length: get the length of character.
*/
select character_length('Dibyendu') as 'length';
select fname, char_length(fname) as 'length' from character_table;
select fname, char_length(trim(fname)) as 'length' from character_table;


/*
	concat: concatination of strings.
*/
select concat('java', 'point') as 'string';
select concat(fname, midname, lname) as "Full Name" from character_table;

select trim(fname), trim(midname), trim(lname),
concat(trim(fname), ' ', trim(midname), ' ', trim(lname)) as "Full Name" 
from character_table;










