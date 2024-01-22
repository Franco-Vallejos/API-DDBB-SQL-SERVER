create database calendar
go
use calendar
go

create schema [months]
go
create schema [api]
-- use master drop database calendar

create login calendar
with password = 'sqlcalendar'
go
ALTER LOGIN calendar WITH DEFAULT_DATABASE = calendar;
go
create user calendar for login calendar
go
ALTER USER calendar WITH LOGIN = calendar;
go
Grant execute on schema::[api] to calendar
--drop login calendar
--drop user calendar

-------------------------------TABLES-------------------------------

create table [months].january(
	dni int primary key,
	[1] char(3), [2] char(3), [3] char(3), [4] char(3), [5] char(3),
	[6] char(3), [7] char(3), [8] char(3), [9] char(3), [10] char(3),
	[11] char(3), [12] char(3), [13] char(3), [14] char(3), [15] char(3),
	[16] char(3), [17] char(3), [18] char(3), [19] char(3), [20] char(3),
	[21] char(3), [22] char(3), [23] char(3), [24] char(3), [25] char(3),
	[26] char(3), [27] char(3),	[28] char(3), [29] char(3), [30] char(3), [31] char(3)
)
go

create table [months].february(
	dni int primary key,
	[1] char(3), [2] char(3), [3] char(3), [4] char(3), [5] char(3),
	[6] char(3), [7] char(3), [8] char(3), [9] char(3), [10] char(3),
	[11] char(3), [12] char(3), [13] char(3), [14] char(3), [15] char(3),
	[16] char(3), [17] char(3), [18] char(3), [19] char(3), [20] char(3),
	[21] char(3), [22] char(3), [23] char(3), [24] char(3), [25] char(3),
	[26] char(3), [27] char(3),	[28] char(3), [29] char(3)
)
go
create table [months].march(
	dni int primary key,
	[1] char(3), [2] char(3), [3] char(3), [4] char(3), [5] char(3),
	[6] char(3), [7] char(3), [8] char(3), [9] char(3), [10] char(3),
	[11] char(3), [12] char(3), [13] char(3), [14] char(3), [15] char(3),
	[16] char(3), [17] char(3), [18] char(3), [19] char(3), [20] char(3),
	[21] char(3), [22] char(3), [23] char(3), [24] char(3), [25] char(3),
	[26] char(3), [27] char(3),	[28] char(3), [29] char(3), [30] char(3), [31] char(3)
)
go

create table [months].april(
	dni int primary key,
	[1] char(3), [2] char(3), [3] char(3), [4] char(3), [5] char(3),
	[6] char(3), [7] char(3), [8] char(3), [9] char(3), [10] char(3),
	[11] char(3), [12] char(3), [13] char(3), [14] char(3), [15] char(3),
	[16] char(3), [17] char(3), [18] char(3), [19] char(3), [20] char(3),
	[21] char(3), [22] char(3), [23] char(3), [24] char(3), [25] char(3),
	[26] char(3), [27] char(3),	[28] char(3), [29] char(3), [30] char(3)
)
go
create table [months].may(
	dni int primary key,
	[1] char(3), [2] char(3), [3] char(3), [4] char(3), [5] char(3),
	[6] char(3), [7] char(3), [8] char(3), [9] char(3), [10] char(3),
	[11] char(3), [12] char(3), [13] char(3), [14] char(3), [15] char(3),
	[16] char(3), [17] char(3), [18] char(3), [19] char(3), [20] char(3),
	[21] char(3), [22] char(3), [23] char(3), [24] char(3), [25] char(3),
	[26] char(3), [27] char(3),	[28] char(3), [29] char(3), [30] char(3), [31] char(3)
)
go
create table [months].june(
	dni int primary key,
	[1] char(3), [2] char(3), [3] char(3), [4] char(3), [5] char(3),
	[6] char(3), [7] char(3), [8] char(3), [9] char(3), [10] char(3),
	[11] char(3), [12] char(3), [13] char(3), [14] char(3), [15] char(3),
	[16] char(3), [17] char(3), [18] char(3), [19] char(3), [20] char(3),
	[21] char(3), [22] char(3), [23] char(3), [24] char(3), [25] char(3),
	[26] char(3), [27] char(3),	[28] char(3), [29] char(3), [30] char(3)
)
go
create table [months].july(
	dni int primary key,
	[1] char(3), [2] char(3), [3] char(3), [4] char(3), [5] char(3),
	[6] char(3), [7] char(3), [8] char(3), [9] char(3), [10] char(3),
	[11] char(3), [12] char(3), [13] char(3), [14] char(3), [15] char(3),
	[16] char(3), [17] char(3), [18] char(3), [19] char(3), [20] char(3),
	[21] char(3), [22] char(3), [23] char(3), [24] char(3), [25] char(3),
	[26] char(3), [27] char(3),	[28] char(3), [29] char(3), [30] char(3), [31] char(3)
)
go
create table [months].august(
	dni int primary key,
	[1] char(3), [2] char(3), [3] char(3), [4] char(3), [5] char(3),
	[6] char(3), [7] char(3), [8] char(3), [9] char(3), [10] char(3),
	[11] char(3), [12] char(3), [13] char(3), [14] char(3), [15] char(3),
	[16] char(3), [17] char(3), [18] char(3), [19] char(3), [20] char(3),
	[21] char(3), [22] char(3), [23] char(3), [24] char(3), [25] char(3),
	[26] char(3), [27] char(3),	[28] char(3), [29] char(3), [30] char(3), [31] char(3)
)
go
create table [months].september(
	dni int primary key,
	[1] char(3), [2] char(3), [3] char(3), [4] char(3), [5] char(3),
	[6] char(3), [7] char(3), [8] char(3), [9] char(3), [10] char(3),
	[11] char(3), [12] char(3), [13] char(3), [14] char(3), [15] char(3),
	[16] char(3), [17] char(3), [18] char(3), [19] char(3), [20] char(3),
	[21] char(3), [22] char(3), [23] char(3), [24] char(3), [25] char(3),
	[26] char(3), [27] char(3),	[28] char(3), [29] char(3), [30] char(3)
)
go
create table [months].october(
	dni int primary key,
	[1] char(3), [2] char(3), [3] char(3), [4] char(3), [5] char(3),
	[6] char(3), [7] char(3), [8] char(3), [9] char(3), [10] char(3),
	[11] char(3), [12] char(3), [13] char(3), [14] char(3), [15] char(3),
	[16] char(3), [17] char(3), [18] char(3), [19] char(3), [20] char(3),
	[21] char(3), [22] char(3), [23] char(3), [24] char(3), [25] char(3),
	[26] char(3), [27] char(3),	[28] char(3), [29] char(3), [30] char(3), [31] char(3)
)
go
create table [months].november(
	dni int primary key,
	[1] char(3), [2] char(3), [3] char(3), [4] char(3), [5] char(3),
	[6] char(3), [7] char(3), [8] char(3), [9] char(3), [10] char(3),
	[11] char(3), [12] char(3), [13] char(3), [14] char(3), [15] char(3),
	[16] char(3), [17] char(3), [18] char(3), [19] char(3), [20] char(3),
	[21] char(3), [22] char(3), [23] char(3), [24] char(3), [25] char(3),
	[26] char(3), [27] char(3),	[28] char(3), [29] char(3), [30] char(3)
)
go
create table [months].december(
	dni int primary key,
	[1] char(3), [2] char(3), [3] char(3), [4] char(3), [5] char(3),
	[6] char(3), [7] char(3), [8] char(3), [9] char(3), [10] char(3),
	[11] char(3), [12] char(3), [13] char(3), [14] char(3), [15] char(3),
	[16] char(3), [17] char(3), [18] char(3), [19] char(3), [20] char(3),
	[21] char(3), [22] char(3), [23] char(3), [24] char(3), [25] char(3),
	[26] char(3), [27] char(3),	[28] char(3), [29] char(3), [30] char(3), [31] char(3)
)
go
create table staff(
	namesurname varchar(40),
	dni int check (dni < 99999999 and dni>10000000) primary key
)

-------------------------------CONSTRAINT-------------------------------

alter table [months].january add constraint january_FK foreign key (dni)
references staff(dni)

alter table [months].february add constraint february_FK foreign key (dni)
references staff(dni)

alter table [months].march add constraint march_FK foreign key (dni)
references staff(dni)

alter table [months].april add constraint april_FK foreign key (dni)
references staff(dni)

alter table [months].may add constraint may_FK foreign key (dni)
references staff(dni)

alter table [months].june add constraint june_FK foreign key (dni)
references staff(dni)

alter table [months].july add constraint july_FK foreign key (dni)
references staff(dni)

alter table [months].august add constraint august_FK foreign key (dni)
references staff(dni)

alter table [months].september add constraint september_FK foreign key (dni)
references staff(dni)

alter table [months].november add constraint november_FK foreign key (dni)
references staff(dni)

alter table [months].december add constraint december_FK foreign key (dni)
references staff(dni)

-------------------------------LOTE DE PRUEBA-------------------------------

insert into staff (namesurname, dni) values ('Vallejos Franco', 43386520)
insert into staff (namesurname, dni) values ('Roldan Gonza', 50000000)
insert into staff (namesurname, dni) values ('Sloboyen Carlos', 60000000)
go

insert into months.january (dni, [1], [2], [4], [6], [8], [10]) values (43386520, 'TTT', 'TTT', 'TTM', 'TTT', 'TTM', 'TTM')
insert into months.january (dni, [1], [2], [4], [6], [8], [10]) values (60000000, 'TTM', 'TTM', 'TTT', 'TTM', 'TTT', 'TTT')
insert into months.january (dni, [2], [3], [5], [7], [9]) values (50000000, 'TTT', 'TTT', 'TTM', 'TTT', 'TTM')
go

select * from months.january

-------------------------------STORE PROCEDURE-------------------------------

create or alter procedure [api].showPersonalCalendar (@months varchar(10), @tech char(8))
WITH EXECUTE AS OWNER 
as 
begin
    declare @SQLDinamic nvarchar(max);
    set @SQLDinamic = N'select * from [months].' + @months + N' where dni = ' + @tech + N'';
    exec sys.[sp_executesql] @SQLDinamic;
end
go

create or alter procedure [api].showCalendar (@months varchar(10))
WITH EXECUTE AS OWNER 
as 
begin
    declare @SQLDinamic nvarchar(max);
    set @SQLDinamic = N'select * from [months].' + @months;
    exec sys.[sp_executesql] @SQLDinamic;
end
