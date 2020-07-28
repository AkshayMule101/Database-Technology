								#Assignment – 15
						
                        #Using Subqueries with DML Commands.

Use day1;



/*1) Assume there is a table called Multicust, with all of the same column definitions 
as Salespeople. Write a command that inserts all salespeople with more than one 
customer into this table.*/

create table multicast as select * from salespeople where snum IN (select snum from customers
 group by snum having count(snum) >1);select * from multicast;
 
 /*2) Write a command that deletes all customers with no current orders.*/


select * from orders;
savepoint abc;
delete from orders where onum='3005';
rollback to abc;
delete from customers where cnum NOT IN(select tempp.cnum from (select cnum from orders ) as tempp );


/*3) Write a command that increases by twenty percent the commissions of all 
salespeople with total orders above Rs. 3,000.*/

update salespeople set comm = comm * 1.20 where snum IN
(select snum from orders where amt > 3000);