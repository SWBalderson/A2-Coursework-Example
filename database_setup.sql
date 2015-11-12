create database if not exists u6example;

use u6example;

create table users
(
	UserId integer not null auto_increment primary key,
    firstname varchar(25),
    surname varchar(25),
    addressline1 varchar(25),
    addressline2 varchar(25),
    town varchar(25),
    county varchar(25),
    postcode varchar(10),
    DateOfBirth date,
    active_member bool,
    username varchar(25),
    userpass varchar(100)
);

create table books
(
	BookId integer not null auto_increment primary key,
    title varchar(25),
    author varchar(25),
    publisher varchar(25),
    isbn int
);

create table loans
(
	LoanId integer not null auto_increment primary key,
    UserId int not null,
    BookId int not null,
	DateOut datetime,
    DateDue datetime,
    Returned bool,
    foreign key (UserId) references users(UserId)
    on update cascade
    on delete restrict,
	foreign key (BookId) references books(BookId)
    on update cascade
    on delete restrict
);
