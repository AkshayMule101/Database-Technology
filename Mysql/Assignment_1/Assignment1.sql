create database day1;
show databases;
Use day1;
create table SALESPEOPLE
(
Snum int(4) primary key,
Sname Varchar(10),
City Varchar(10),
Comm Float(3,2)
);
create table CUSTOMERS
(
Cnum int(4) primary key,
Cname Varchar(10),
City Varchar(10),
Rating int(4),
Snum int(4),
foreign key(Snum) references SALESPEOPLE(Snum)
);
desc customers;
create table ORDERS
(
Onum int(4) primary key,
Amt float(7,2),
Odate date,
Cnum int(4),
foreign key(Cnum) references CUSTOMERS(Cnum),
Snum int(4),
foreign key(Snum) references SALESPEOPLE(Snum)
);	


desc orders;
Insert into salespeople values(1001,'PEEL','London',.12);
Insert into salespeople values(1002,'Serres','San Jose',.13);
Insert into salespeople values(1004,'Motika','London',.11);
Insert into salespeople values(1007,'Rifkin','Barcelona',.15);

select * from salespeople;
Insert into customers values(2007,'Pereira','Rome',100,1004);

select * from customers;



Insert into orders values(3001,18.69,'1990-10-03',2008,1007);
Insert into orders values(3003,767.19,'1990-10-03',2001,1001);
Insert into orders values(3002,1900.10,'1990-10-03',2007,1004);
Insert into orders values(3005,5160.45,'1990-10-03',2003,1002);
Insert into orders values(3006,1098.16,'1990-10-03',2008,1007);
Insert into orders values(3009,1713.23,'1990-10-04',2002,1003);
Insert into orders values(3007,75.75,'1990-10-04',2004,1002);
Insert into orders values(3008,4723.00,'1990-10-05',2006,1001);
Insert into orders values(3010,1309.95,'1990-10-06',2004,1002);
Insert into orders values(3011,9891.88,'1990-10-06',2006,1001);

select * from orders;
