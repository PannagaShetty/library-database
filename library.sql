create database library;
use library;

create table PUBLISHER(Name varchar(10),Address varchar(10),Phone int,primary key(Name));
create table BOOK(Book_id varchar(10),Title varchar(10),Pub_Name varchar(10),Pub_Year int,primary key(Book_id),foreign key(Pub_Name) references PUBLISHER(Name) on delete cascade);
create table BOOK_AUTHORS(Book_id varchar(10),Author_Name varchar(10),primary key(Book_id),foreign key(Book_id) references BOOK(Book_id) on delete cascade);
create table LIBRARY_BRANCH(Branch_id varchar(10),Branch_Name varchar(10),Address varchar(10),primary key(Branch_id));
create table BOOK_COPIES(Book_id varchar(10),Branch_id varchar(10),No_of_copies int,primary key(Book_id,Branch_id),foreign key(Book_id) references BOOK(Book_id) on delete cascade,foreign key(Branch_id) references LIBRARY_BRANCH(Branch_id) on delete cascade);
create table BOOK_LENDING(Book_id varchar(10),Branch_id varchar(10),Card_no int,Date_out date,Due_date date,primary key(Book_id,Branch_id,Card_no), foreign key(Book_id) references BOOK(Book_id) on delete cascade,foreign key(Branch_id) references LIBRARY_BRANCH(Branch_id) on delete cascade);
create table BOOKP(Book_id int,Title varchar(20),Publisher_name varchar(20),Pub_year int,primary key(Book_id));

desc PUBLISHER;
desc BOOK;
desc BOOK_AUTHORS;
desc LIBRARY_BRANCH;
desc BOOK_COPIES;
desc BOOK_LENDING;

select * from PUBLISHER;
select * from BOOK;
select * from BOOK_AUTHORS;
select * from LIBRARY_BRANCH;
select * from BOOK_COPIES;
select * from BOOK_LENDING;






