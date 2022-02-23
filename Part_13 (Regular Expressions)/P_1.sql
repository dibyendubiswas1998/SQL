# Regular Expressions:--------------------

show databases;
use my_company;
show tables;

select * from employee_details;
select * from department_details;
select * from character_table;
select * from transaction_details;
select * from my_tab;


# search for name start with "A or B":----------
select * from character_table where fname regexp '^[ab]';


# get the midname information whose name ends with 'r':---------
select * from character_table where midname regexp 'r$';


# get the fname whose name contains exactly 4 characters:----------
select * from character_table where fname regexp '^.{6}$';


# get the details whose lname contains 'i' characters:---------
select * from character_table where lname regexp 'i';


# get the fname where fname start with 'a':--------------
select * from character_table where fname regexp '^a';


