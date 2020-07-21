Use ex1;

#1. Display all the Supplier names with the initial letter capital.
select concat(upper(substr(sname,1,1)),lower(substr(sname,2)))as sname from s;

#2. Display all the Supplier names in upper case.
select UPPER(sname) from s;

#3. Display all the Supplier names in lower case.
select lower(sname) from s;
#4. Display all the Supplier names padded to 25 characters, with spaces on the left.
 select lpad(sname,25,' ') from s;

#5. Display all the Supplier names (with ‘la’ replaced by ‘ro’).
 select replace(sname,'la','ro') from s;

#6. Implement the above command such that ‘l’ is replaced with ‘r’ and ‘a’ is replaced with ‘o’.
 select replace(replace(sname,'l','r'),'a','o') from s; 

#7 Display the Supplier names and the lengths of the names.
select sname,length(sname) from s;

#8 Use the soundex function to search for a supplier by the name of ‘BLOKE’.
 select * from s where soundex(sname)=soundex('steve');
 
 #9. Display the Supplier name and the status (as Ten, Twenty, Thirty, etc.).
 select sname, case when stetus=10 then 'Ten'
 when stetus=20 then 'Twenty'
 when stetus=30 then 'Thirty'
 when stetus=50 then 'fifty'
 end 
 from s;
 
 #10. Display the current day (e.g. Thursday).
 SELECT DAYNAME(CURDATE());