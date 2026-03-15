create table teater(
nomor_teater varchar(20) primary key
);

create table kursi (
no_kursi varchar(10),
nomor_teater varchar(10),
primary key (no_kursi),
foreign key (nomor_teater)references teater(nomor_teater)
);

insert all
into teater values ('teater1')
into teater values ('teater2')
into teater values ('teater3')
select * from dual;
commit;

insert all
into kursi values ('A1','teater1')
into kursi values ('A2','teater1')
into kursi values ('A3','teater1')
into kursi values ('A6','teater2')
into kursi values ('A7','teater2')
into kursi values ('C1','teater3')
select * from dual;
commit;

select t.nomor_teater, k.no_kursi
from teater t
join kursi k
on t.nomor_teater = k.nomor_teater;