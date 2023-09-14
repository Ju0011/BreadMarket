USE BreadMarketDB;

create table member ( 
    id varchar(10) not null,
    password varchar(10) not null,
    name varchar(10) not null,
    gender varchar(4),
    birth  varchar(10),
    mail  varchar(30),
    phone varchar(20),
    address varchar(90),
    regist_day varchar(50),    
    primary key(id) 
) default CHARSET=utf8;

DESC member; 

INSERT INTO member VALUES('admin', '123','관리자','여자','생일','이메일','01099128103','서울','2023-06-21');

select * from member;

drop table member;

delete from member;