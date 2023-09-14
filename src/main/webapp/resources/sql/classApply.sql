create table classApply ( 
    id varchar(10) not null,
    name varchar(10) not null,
    phone varchar(20),
    classId varchar(30) not null,
    primary key(id) 
) default CHARSET=utf8;

DESC classApply; 

select * from classApply;

drop table classApply;

delete
from classApply;
