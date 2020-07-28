							#Assignment – 16
						#Creating Tables and Indexes
     
     
     use day1;
     
     
/*1) Write a command that will enable a user to pull orders grouped by date out of the 
Orders table quickly.*/
      
      create index ordindex on orders(odate);
      
      show indexes from orders;
      
/*2) If the Orders table has already been created, how can you force the onum field to 
be unique (assume all current values are unique)?*/

        
desc orders;
alter table orders Add Primary Key(onum);

/*3) Create an index that would permit each salesperson to retrieve his or her orders 
grouped by date quickly.*/

Create index I_date ON orders(odate);

/*4) Let us assume that each salesperson is to have only one customer of a given 
rating, and that this is currently the case. Enter a command that enforces it.*/

 alter table customers ADD PRIMARY KEY(rating);
 
 
