/*
	Push data to particular database using commands:----
    
	step 01: open cmd (command line)
    step 02: then cd C:\Program Files\MySQL\MySQL Server 8.0\bin
    step 03: mysql -u root -p
    step 04: after that enter your password.
    step 05: set global local_infile=1; (means to allow local file upload from your computer)
    step 06: quit; (quit the connection with mysql)
    step 07: mysql --local-infile=1 -u root -p;
    step 08: enter the password
    step 09: show databases;
    step 10: use <particular_database>
    step 11: load data local infile '<file_path.csv>'
				into table <table_name>
                fields terminated by ','
                enclosed by '"'
                lines terminated by '\r\n' ignore 1 rows;
       
*/

use important_database;
show tables;

select count(*) from customer_table;
select count(*) from employee_details;
select count(*) from retail_sales;
select count(*) from sales_details;
select count(*) from student_survey;
select count(*) from telco_data;






