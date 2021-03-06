#Assignment – 10
#Joining a Table to Itself.

use day1;

/*1) Write a query that produces all pairs of salespeople who are living in the same 
city. Exclude combinations of salespeople with themselves as well as duplicate 
rows with the order reversed.*/

select a.sname, b.sname, a.city from salespeople a, salespeople b 
		where a.city = b.city and a.sname > b.sname;
        
/*2) Write a query that produces the names and cities of all customers with the same 
rating as Hoffman.*/

select cname,city from customers where rating=(select rating from customers where cname='Hoffman');