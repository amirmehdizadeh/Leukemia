create database Leukemia
on primary
(
name='Leukemia',
filename='E:\Leukemia.mdf',
size=10mb,
filegrowth=10mb)
log on
(
name='Leukemia_log',
filename='E:\Leukemia.ldf',
size=5mb,
filegrowth=5mb
)


use Leukemia
go
create table Prescription(Radif int identity(1,1) primary key,
Sh_Bimar int not null,
Daro_name nvarchar(50),
Doz_Daro nvarchar(50),
Dor_Darman nvarchar(50),
Tajviz_Date Datetime default getdate() ,
Tozihat nvarchar(100)
)
go
create table Bimar(Radif int identity(1,1) primary key,
Sh_Bimar int not null,
Name nvarchar(50),
Family nvarchar(50),
Birth_Date datetime,
Ghad int,
Vazn int,
Sex nvarchar(20),
Phone_Number varchar(20),
Tashkhis nvarchar(100),
Barnam_Darmani nvarchar(100),
morajee_Date datetime default getdate()
) 
go
create table Morajeat(Radif int identity(1,1) primary key,
Sh_Bimar int not null,
Bime nvarchar(20),
Hazine int,
Sh_Nobat int,
Vazn int,
Next_Morajee datetime,
Morajee_Date datetime default getdate(),
Tozihat nvarchar(100)
)
go
create table ShimiDarmani(Radif int identity(1,1) primary key,
Sh_Bimar int not null,
Bime Nvarchar(20),
Hazine int,
Shimi_Date datetime default getdate(),
Tozihat nvarchar(100)
)
go
create table NemoneBardari(Radif int identity(1,1) primary key,
Sh_Bimar int not null,
Bime Nvarchar(20),
Hazine int,
Nemone_Date datetime default getdate(),
Tozihat nvarchar(100)
)
go
create table Analysis(Radif int identity(1,1) primary key,
Sh_Bimar int not null,
HB nvarchar(20),
WBC nvarchar(20),
PLT nvarchar(20),
CR nvarchar(20),
LFT nvarchar(20),
Analysis_Date datetime default getdate()
)
go
create table Pathalogy(Radif int identity(1,1) primary key,
Sh_Bimar int not null,
Type nvarchar(20),
T nvarchar(20),
M nvarchar(20),
N nvarchar(20),
Stage nvarchar(20),
Nemone_Place nvarchar(20),
Pathalogy_Date datetime default getdate()
)
go
create table Imaging(Radif int identity(1,1) primary key,
Sh_Bimar int not null,
US varchar(50),
CT varchar(50),
Img_Date datetime default getdate(),
Tozihat nvarchar(100)
)
go
create table NobatDehi(Radif int identity(1,1) primary key,
Sh_Bimar int not null,
Pezeshk_Number int,
Hozor_Date datetime default getdate(),
Tozihat nvarchar(100)
)
go
create table ZamanHozorPezeshk(Radif int identity(1,1) primary key,
Pezeshk_Number int not null,
Days nvarchar(20),
Hozor datetime default getdate(),
Finish datetime
)




 