create database GraduateDB;
use GraduateDB;

-- drop table AlumniListT;
-- drop table AwardListT;

create table AlumniListT (
    Year tinyint unsigned not null ,
    Degree char (2) not null ,
    Name varchar(5) not null ,
    AwardID varchar(5) null ,
    primary key (Year, Degree, Name)
);
create table AwardListT (
    AwardID varchar(3) primary key,
    AwardName varchar(10) not null,
    Degree char(2) not null ,
    Ranking varchar(5) not null
);

load data infile '/src/DependableMan/AlumniListT.csv' into table AlumniListT fields terminated by ',' lines terminated by '\n';
load data infile '/src/DependableMan/AwardListT.csv' into table AwardListT fields terminated by ',' lines terminated by '\n';
