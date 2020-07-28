						#Assignment – 14

		#Entering, Deleting, and Changing Field Values.

use day1;



/*1) Write a command that puts the following values, in their given order, into the 
salespeople table: city – San Jose, name – Blanco, comm – NULL, cnum – 1100.*/

INSERT INTO salespeople (city,sname,comm,snum) values('San Jose','Blanco',NULL,1100);

select * from salespeople;

/*2) Write a command that removes all orders from customer Clemens from the 
Orders table.*/

delete from orders where cnum in(select cnum from customers where cname='Clemens');

/*3) Write a command that increases the rating of all customers in Rome by 100.*/

select city,rating+100 from customers where city='Rome'; 

/*4) Salesperson Serres has left the company. Assign her customers to Motika.*/

Update customers set snum= (select snum from salespeople
where sname='Serres') where snum=(select snum from salespeople
where sname='Motika');