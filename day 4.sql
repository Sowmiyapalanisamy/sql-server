--joins- use to reteive column from multiple table .
--always use on condition
use lms_db;
select * from lms_book_details;
select * from lms_suppliers_details;

--display book code.book name,supplier name of the books in library 
select book_code,book_title,supplier_name from lms_book_details
join lms_suppliers_details on lms_book_details.supplier_id=
lms_suppliers_details.supplier_id

--display book code.book name,supplier name of the books in library 
select l1.book_code,l1.book_title,l2.supplier_name from lms_book_details as l1
join lms_suppliers_details as l2 on l1.supplier_id=
l2.supplier_id; 

use lms_db;
select * from lms_book_details;
select * from lms_book_issue;
select * from lms_fine_details;
select * from lms_members;
select * from lms_suppliers_details; 

--inner join - default keyword
--display the book_title and member_id who has taken the books from library
select distinct  book_title,member_id from lms_book_details as l1
inner join lms_book_issue as l2 on l1.book_code=l2.
book_code;

-- N tables will need  N-1 joins

use employee_db;
select * from employee;
select * from department;

--display emplyee name,email,dept name
select first_name+','+last_name as name , email ,name 
from employee join
department on department_id=department.id; 

use lms_db;
select * from lms_book_details;
select * from lms_book_issue;
select * from lms_members;
--display bookname,member name who has taken book from library
select distinct l1.book_title,l3.member_name from lms_book_details as l1 join lms_book_issue
as l2 on l1.book_code=l2.book_code join lms_members as l3 on l2.member_id=l3.member_id;

use employee_db;
select * from employee;
select * from department; 
select * from location;
--display emp name,dept nmae and state location

select e.first_name,d.name,l.state from employee as e join department as d on e.department_id
=d.id join location as l on d.location_id=l.id; 

--display department_id ,number of employees in each department
select department_id,count(id) as noofcount from employee group 
by department_id; 

--display dept name ,no on employees in each department
select  d.name,count(e.id) as countofemps from employee as e 
join department as d  on e.department_id=d.id group by name; 

--display supplier_id and number of book supplied by each supplier
select supplier_id,count(book_code) as noofbooks from lms_book_details
where supplier_id is not null group by supplier_id; 

--display supliername,no of book supplied by each supplier
select l2.supplier_name,l2.supplier_id,count(book_code) as count from lms_book_details
 as l1 join lms_suppliers_details as l2 on l1.supplier_id=l2.supplier_id 
 group by l2.supplier_name,l2.supplier_id;

 use lms_db;
select * from lms_book_details;
select * from lms_book_issue;
select * from lms_members; 
select * from lms_suppliers_details;  

--1.	Write a query to display the book title, supplier name who has supplied books to library.
select l1.book_title,l2.supplier_name from lms_book_details as l1 join lms_suppliers_details as l2 on l1.supplier_id=l2.supplier_id; 

use lms_db;
select * from lms_book_issue;
select * from lms_members; 
--2.	Write a query to display member name and book code for the book he/she taken from the library.
select l2.member_name,l1.book_code from lms_book_issue as l1 join lms_members  as l2 on l1.member_id=l2.member_id;

--3.	Write a query to display the book title and date when the book was taken from the library.
select l1.book_title,l2.date_issue from lms_book_details as l1 join lms_book_issue as l2 on l1.book_code=l2.book_code;

--4.	Write a query to display the member id and the fine amount paid by the member in the library.
select member_id,fine_amount from lms_book_issue as l1 join lms_fine_details as l2 on l1.fine_range=l2.fine_range;

--5.	Write a query to display the member name and the date difference between the date return and date returned
select l2.member_name,datediff(day,date_return,date_returned) as date_difference from lms_book_issue as l1 join lms_members as l2 on l1.member_id=l2.member_id; 

select * from lms_book_details;
select * from lms_members; 
select * from lms_suppliers_details;

--6.	Write a query to display the book title and the member name of member who has taken book from library.
select book_title,member_name from lms_book_details as l1 join lms_book_issue as l2 on l1.book_code=l2.book_code join lms_members as l3 on l2.member_id=l3.member_id;


select * from lms_book_details;
select * from lms_book_issue;
select * from lms_members; 
select * from lms_suppliers_details; 

--7.	Write a query to display the book title, member name and the supplier name for the books taken from the library.
select l1.book_title,member_name,supplier_name from lms_book_details as l1 join lms_book_issue as l2 on l1.book_code=l2.book_code  
join lms_members as l3 on l2.member_id=l3.member_id join lms_suppliers_details as l4 on l1.supplier_id=l4.supplier_id;

--8.	Write a query to display the book title and the difference fine amount paid for the book in library.
select 

--Problem # 1:Write a query to display the member id, member name of the members, book code and book title of the books taken by them.
 select member_id,member_name,book_code,book_title