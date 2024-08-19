create table publisher(
publisher id int primary key, name varchar(20), address varchar (20));
insert into publisher values(1,'Blesson', 'Kottayam'); 
insert into publisher values(2,'Karan', 'US');
insert into publisher values(3,'Dev', 'SG');


create table language(
language id int primary key, name varchar (20)
);
insert into language values(1, 'English'); 
insert into language values(2,'Malayalam');
create table member(
member_ id int primary key, name varchar (20), branch_ code int, roll number int, phone_ number int, email id varchar (30), date_of join date, status varchar (20)
);
insert into member values(1,'Aswin', 199,19,87889798, 'deto@gmail.com', 19-08-2024, 'active');
insert into member values(2,'Ashwin', 129,17,6456459, 'oted@gmail.com',02-08-2024', inactive');
insert into member values(3,'Aromal', 189,15,6455645, 'omal@gmail.com',02-08-2024', inactive');

create table book( book_id int primary key, title varchar(20), mrp int, published_ date date, volume int, status varchar(20), language_id int, publisher _id int,
foreign key(language _id) references language(language _id), foreign key(publisher_ id) references publisher(publisher _id)); 
insert into book values(1,'Percy Jackson', 1000, 12-08-2009,1, 'active', 1,1);
insert into book values(2,'Harry Potter', 1200, 22-08-2019,1, 'active', 2,2);



create table author(
id int primary key, name varchar (20), email varchar (30), phone_ number int, status varchar(20));

insert into author values(1,'chris','chris@gmail.com',655645, 'active'); 
insert into author values(2,'JK Rowling','Rowl@gmail.com',4645454,'active');

create table book_author(
    book_id int,
    author_id int,
    primary key(book_id,author_id),
    foreign key(book_id) references book(book_id),
    foreign key(author_id) references author(author_id)
);

insert into book_author values(1,1);
insert into book_author values(2,2);

create table book_issue(
    issue_id int primary key,
    date_of_issue date,
    expected_date_of_return date,
    status varchar(20),
    book_id int,
    member_id int,
    foreign key(book_id) references book(book_id),
    foreign key(member_id) references member(member_id)
)

insert into book_issue values(1,'12-10-23','22-10-23','issued',1,1);
insert into book_issue values(2,'12-10-23','22-10-23','issued',2,2);


create table book_return(
    issue_id int primary_key,
    actual_date_of_return date,
    latedays int,
    latefee int,
    foreign key(issue_id) references book_issue(issue_id)
)

insert into book_return values(1,'23-10-23',1,100);


create table late_fee_rule(
    from_days date, 
    to_days date,
    amount int,
    primary key(from_days,to_days)
);

insert into late_ fee_rule values ('22-10-23', '22-10-23',100);