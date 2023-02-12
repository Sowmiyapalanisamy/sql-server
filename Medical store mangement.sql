create database medical_store_management_system;
use medical_store_management_system;
create table login_registration
(user_id int primary key identity (1,1),
E_mail varchar(500) not null unique,
password varchar(300) not null unique,
re_password varchar(300) not null unique,
);
create table booking_medicine
(Medicine_ID varchar(60) primary key ,
MEdicine_Name varchar(500) not null unique,
Availability_MD int
);
create table Event_Details
(Event_id varchar(60) primary key,
Event_Name varchar(500) not null,
Discount decimal(4,2) not null
);

create table invitation
(invitation_id int primary key,
user_email varchar(225),
discount decimal(5,2),
sent_at datetime Default current_timestamp
);
create table payments
(payment_id int primary key,
user_id int,
transaction_amount decimal(10,2),
payment_method varchar(225),
reciept varchar(225),
payment_at datetime default current_timestamp
);
create table logins
(login_id int primary key,
user_id int,
action varchar(40),
action_at datetime default current_timestamp
);

insert into login_registration(E_mail,password,re_password) values('kumarsai45@gmail.com','Kumar@2','Kumar@2');
insert into login_registration(E_mail,password,re_password) values('saikumar54@gmail.com','Kumar2@','Kumar2@'); 
insert into login_registration(E_mail,password,re_password) values('prabha23@gmail.com','Prabha@32','Prabha@32');
select * from login_registration;
insert into booking_medicine(Medicine_ID,MEdicine_Name,Availability_MD) values('AB01','Paracetamol','700');
insert into booking_medicine(Medicine_ID,MEdicine_Name,Availability_MD) values('AB02','Aspirin','600');
insert into booking_medicine(Medicine_ID,MEdicine_Name,Availability_MD) values('AB03','Difliunisal','800');
select * from booking_medicine;
insert into Event_Details(Event_id,Event_Name,Discount) values('das01','dasara festival','46.76');
insert into Event_Details(Event_id,Event_Name,Discount) values('ANV01','first anniversary','46.76');
insert into Event_Details(Event_id,Event_Name,Discount) values('WHO6','world health organization day','56.76');
select * from Event_Details;
insert into invitation(invitation_id,user_email,discount) values('1','kumarsai45@gmail.com','40');
insert into invitation(invitation_id,user_email,discount) values('2','saikumar54@gmail.com','47');
insert into invitation(invitation_id,user_email,discount) values('3','prabha23@gmail.com','54');
select * from invitation;

insert into payments(payment_id,user_id,transaction_amount,payment_method,reciept) values('1','1','600','online','11receipt.pdf');
insert into payments(payment_id,user_id,transaction_amount,payment_method,reciept) values('2','2','550','cash-on-delivery','22receipt.pdf');
insert into payments(payment_id,user_id,transaction_amount,payment_method,reciept) values('3','3','800','online','33receipt.pdf');
select * from payments;
insert into logins(login_id,user_id,action) values('1','1','login');
insert into logins(login_id,user_id,action) values('2','2','logout');
insert into logins(login_id,user_id,action) values('3','1','logout');
select * from logins;