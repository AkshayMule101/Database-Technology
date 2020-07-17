#Assignment 5 Relational and Logical Operators
/* Write a query that will give you all orders for more than Rs. 1,000.*/
	
    select * from orders where Amt > 1000;
    
/*Write a query that will give you the names and cities of all salespeople in 
London with a commission above .10.*/
 select Sname,City from salespeople where Comm > .10;
 
/*Write a query on the Customers table whose output will exclude all customers 
with a rating <= 100, unless they are located in Rome.*/

select * from customers  where rating <= 100 or city = 'rome';

/*What will be the output from the following query? */
Select * from Orders  
where (amt < 1000 OR NOT (odate = '1990-10-03'AND cnum > 2003));    


/*What will be the output from the following query? */

Select * from Orders    
where NOT ((odate ='1990-10-03' OR snum    >1006) AND amt >= 1500);      


/*What is a simpler way to write this query?*/ 
/*Select snum, sname, city, comm From Salespeople 
where (comm > .12 OR comm <.14);
*/
Select * From Salespeople; 