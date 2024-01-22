create login calendar
with password = 'sqlcalendar'


create user calendar for login calendar

alter server role sysadmin add member calendar
create database calendar
go

use calendar
go

create schema months

-------------------------------TABLES-------------------------------

create table months.january(
	dia int primary key check(dia >= 1 and dia <=31),
	TT varchar(40),
	TM varchar(40)
)
go
create table months.february(
	dia int primary key check(dia >= 1 and dia <=31),
	TT varchar(40),
	TM varchar(40)
)
go
create table months.march(
	dia int primary key check(dia >= 1 and dia <=31),
	TT varchar(40),
	TM varchar(40)
)
go
create table months.april(
	dia int primary key check(dia >= 1 and dia <=31),
	TT varchar(40),
	TM varchar(40)
)
go
create table months.may(
	dia int primary key check(dia >= 1 and dia <=31),
	TT varchar(40),
	TM varchar(40)
)
go
create table months.june(
	dia int primary key check(dia >= 1 and dia <=31),
	TT varchar(40),
	TM varchar(40)
)
go
create table months.july(
	dia int primary key check(dia >= 1 and dia <=31),
	TT varchar(40),
	TM varchar(40)
)
go
create table months.august(
	dia int primary key check(dia >= 1 and dia <=31),
	TT varchar(40),
	TM varchar(40)
)
go
create table months.september(
	dia int primary key check(dia >= 1 and dia <=31),
	TT varchar(40),
	TM varchar(40)
)
go
create table months.october(
	dia int primary key check(dia >= 1 and dia <=31),
	TT varchar(40),
	TM varchar(40)
)
go
create table months.november(
	dia int primary key check(dia >= 1 and dia <=31),
	TT varchar(40),
	TM varchar(40)
)
go
create table months.december(
	dia int primary key check(dia >= 1 and dia <=31),
	TT varchar(40),
	TM varchar(40)
)
go
create table staff(
	namesurname varchar(40) primary key
)

-------------------------------CONSTRAINT-------------------------------

alter table months.january add constraint january_FK_TM foreign key (TM)
references staff(namesurname)
alter table months.january add constraint january_FK_TT foreign key (TT)
references staff(namesurname)

alter table months.february add constraint february_FK_TM foreign key (TM)
references staff(namesurname)
alter table months.february add constraint february_FK_TT foreign key (TT)
references staff(namesurname)

alter table months.march add constraint march_FK_TM foreign key (TM)
references staff(namesurname)
alter table months.march add constraint march_FK_TT foreign key (TT)
references staff(namesurname)

alter table months.april add constraint april_FK_TM foreign key (TM)
references staff(namesurname)
alter table months.april add constraint april_FK_TT foreign key (TT)
references staff(namesurname)

alter table months.may add constraint may_FK_TM foreign key (TM)
references staff(namesurname)
alter table months.may add constraint may_FK_TT foreign key (TT)
references staff(namesurname)

alter table months.june add constraint june_FK_TM foreign key (TM)
references staff(namesurname)
alter table months.june add constraint june_FK_TT foreign key (TT)
references staff(namesurname)

alter table months.july add constraint july_FK_TM foreign key (TM)
references staff(namesurname)
alter table months.july add constraint july_FK_TT foreign key (TT)
references staff(namesurname)

alter table months.august add constraint august_FK_TM foreign key (TM)
references staff(namesurname)
alter table months.august add constraint august_FK_TT foreign key (TT)
references staff(namesurname)

alter table months.september add constraint september_FK_TM foreign key (TM)
references staff(namesurname)
alter table months.september add constraint september_FK_TT foreign key (TT)
references staff(namesurname)

alter table months.october add constraint october_FK_TM foreign key (TM)
references staff(namesurname)
alter table months.october add constraint october_FK_TT foreign key (TT)
references staff(namesurname)

alter table months.november add constraint november_FK_TM foreign key (TM)
references staff(namesurname)
alter table months.november add constraint november_FK_TT foreign key (TT)
references staff(namesurname)

alter table months.december add constraint december_FK_TM foreign key (TM)
references staff(namesurname)
alter table months.december add constraint december_FK_TT foreign key (TT)
references staff(namesurname)
go


-------------------------------LOTE DE PRUEBA-------------------------------

insert into staff (namesurname) values ('Vallejos Franco')
insert into staff (namesurname) values ('Roldan Gonza')
insert into staff (namesurname) values ('Sloboyen Carlos')


insert into months.january (dia, TM, TT) values (1, 'Roldan Gonza', 'Sloboyen Carlos')
insert into months.january (dia, TM, TT) values (2, 'Vallejos Franco', 'Sloboyen Carlos')
insert into months.january (dia, TM, TT) values (3, 'Sloboyen Carlos', 'Roldan Gonza')
insert into months.january (dia, TM, TT) values (4, 'Vallejos Franco', 'Roldan Gonza')
insert into months.january (dia, TM, TT) values (5, 'Sloboyen Carlos', 'Vallejos Franco')
insert into months.january (dia, TM, TT) values (6, 'Sloboyen Carlos', 'Roldan Gonza')
insert into months.january (dia, TM, TT) values (7, 'Vallejos Franco', 'Sloboyen Carlos')
insert into months.january (dia, TM, TT) values (8, 'Roldan Gonza', 'Vallejos Franco')
insert into months.january (dia, TM, TT) values (9, 'Sloboyen Carlos', 'Roldan Gonza')
insert into months.january (dia, TM, TT) values (10, 'Roldan Gonza', 'Vallejos Franco')

go
select * from months.january
