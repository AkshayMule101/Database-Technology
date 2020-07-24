                       #Assignment – 12
				#Using the operators IN, ANY, and ALL.
              
              use day1;
/*1) Write a query that selects all customers whose ratings are equal to or greater than 
ANY of Serres’.*/

select * from customers where rating >= any
(select rating from customers where snum in(select snum from salespeople 
where sname= 'Serres'));

/*2) Write a query using ANY or ALL that will find all salespeople who have no 
customers located in their city.*/

select sname from  salespeople where (snum,city) !=all(select snum,city from customers);


/*3) Write a query that selects all orders for amounts greater than any for the 
customers in London.*/

select * from orders where amt > any(select amt from orders where cnum in 
(select cnum from customers where city='London'));


/*Write the above query using MIN or MAX.*/

SELECT *
    FROM orders
    WHERE amt >
    (SELECT min(amt)
     FROM customers
     NATURAL JOIN orders
     WHERE city='london');
