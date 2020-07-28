								#Assignment – 18
						
                        #Maintaining the Integrity of your Data.
   
   use day1;
/*1) Create a table called Cityorders. This will contain the same onum, amt and snum 
fields as the Orders table, and the same cnum and city fields as the Customers 
table, so that each customer’s order will be entered into this table along with his 
or her city. Onum will be the primary key of Cityorders. All of the fields in 
Cityorders will be constrained to match the Customers and Orders tables. Assume 
the parent keys in these tables already have the proper constraints.*/

create table cityorders as 
select onum ,amt,orders.snum,customers.cnum,city from orders,
customers where orders.cnum= customers.cnum;
Alter table cityorders add primary key(onum),ADD CONSTRAINT
 onum_fk FOREIGN key(onum) REFERENCES orders(onum);
 
 /*2) Redefine the Orders table as follows:- add a new column called prev, which will 
identify, for each order, the onum of the previous order for that current customer. 
Implement this with a foreign key referring to the Orders table itself. The foreign 
key should refer as well to the cnum of the customer, providing a definite 
enforced link between the current order and the one referenced.*/

create table order3 as select * from orders;
   
alter table order3 add column prev int;

 desc order3;
  
 ALTER TABLE order3 ADD constraint prev_fk FOREIGN key(prev) REFERENCES orders(onum);