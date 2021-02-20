create database MemberDB;
use MemberDB;

-- drop table XMemberT;
-- drop table XFamilyT;
-- drop table YMemberT;

create table XMemberT (
    MemberID char (4) primary key,
    Name varchar (20) not null,
    Age int unsigned not null,
    GName varchar (20),
    GLeaderID char (4)
);
create table XFamilyT ( 
    MemberID char (4),
    Name varchar (20),
    Relation varchar (5) not null,
    Age int unsigned not null,
    primary key (MemberID, Name)
);
create table YMemberT (
    MemberID char (4) primary key,
    Name varchar (20) not null,
    Age int unsigned not null,
    GName varchar (20),
    GleaderID char (4)
);

load data infile '/src/DependableMan/XMemberT.csv' into table XMemberT fields terminated by ',' lines terminated by '\n';
load data infile '/src/DependableMan/XFamilyT.csv' into table XFamilyT fields terminated by ',' lines terminated by '\n';
load data infile '/src/DependableMan/YMemberT.csv' into table YMemberT fields terminated by ',' lines terminated by '\n';
