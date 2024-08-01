create table publisher(
publisher id int primary key, name varchar(20), address varchar (20));
insert into publisher values(1,'hari', 'pala'); insert into publisher values(2,'ammu', kottayam');
create table language
language id int primary key, name varchar (20)
);
insert into language values(1, 'english'); insert into language values(2,'malayalam);
create table member
member_ id int primary key, name varchar (20), branch_ code int, roll number int, phone_ number int, email id varchar (30), date_of join date, status varchar (20)
);
insert into member values(1,'hari', 101,12,4454646464, abc @123', 12-08-2023', active');
insert into member values(2,'usha', 102,14,4954646435, efg@123',13-08-
2023', inactive');
create table book book_id int primary key, title varchar(20), mrp int, published_ date date, volume int, status varchar(20), language_id int, publisher _id int,
foreign key(language _id) references language(language _id), foreign key(publisher_ id) references publisher(publisher _id); insert into book values(I,'vikings', 100, 12-08-2003',2 active', 1,1);

to days date, amount int,
primary key(from_days,to _days)
insert into late_ fee_rule values ('30-5-2007, 1-7-2007',500);