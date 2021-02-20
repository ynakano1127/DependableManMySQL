create database OrderDB;
use OrderDB;

-- drop table CorpT;
-- drop table DetailT;
-- drop table OrderT;
-- drop table PCsetT;

create table CorpT (
    CorpID char (4) primary key,
    CorpName varchar(20) not null,
    CorpAddr varchar(100)
);
create table DetailT ( 
    OrderID char (5) not null,
    Item varchar (20) not null,
    Price int unsigned not null,
    Qty smallint unsigned not null,
    primary key (OrderID, Item)
);
create table OrderT (
    OrderID char (5) primary key,
    ODate date not null,
    OCorpID char (4) not null
);
create table PCsetT (
    Item varchar (20) primary key
);

load data infile '/src/DependableMan/CorpT.csv' into table CorpT fields terminated by ',' lines terminated by '\n';
load data infile '/src/DependableMan/DetailT.csv' into table DetailT fields terminated by ',' lines terminated by '\n';
load data infile '/src/DependableMan/OrderT.csv' into table OrderT fields terminated by ',' lines terminated by '\n';
load data infile '/src/DependableMan/PCsetT.csv' into table PCsetT fields terminated by ',' lines terminated by '\n';
