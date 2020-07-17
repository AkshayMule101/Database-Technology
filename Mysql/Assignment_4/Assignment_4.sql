#Assignment 4 Retrieving Information from Tables.
Use day1;
/*Write a select command that produces the order number, amount, and date for all 
rows in the Orders table.*/
select Onum,Amt,Odate from Orders;

/*Write a query that produces all rows from the Customers table for which the 
salesperson’s number is 1001.*/

select * from customers where Snum=1001;

/*Write a query that displays the Salespeople table with the columns in the 
following order: city, sname, snum, comm*/
select * from salespeople;


/*Write a select command that produces the rating followed by the name of each 
customer in San Jose.*/
SELECT Cname,rating FROM customers WHERE city='San Jose';

/*Write a query that will produce the snum values of all salespeople (suppress the 
duplicates) with orders in the Orders table.*/
select distinct(Snum) from orders;
