use Leukemia
go
create table Tajviz(
Sh_Bimar int primary key,
Daro_name nvarchar(50),
Doz_Daro nvarchar(50),
Dor_Darman nvarchar(50),
Tajviz_Date Datetime default getdate() ,
Tozihat nvarchar(100)
)
go
create table Bimar(
Sh_Bimar int primary key,
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
create table Morajeat(
Sh_Bimar int primary key,
Bime nvarchar(20),
Hazine int,
Sh_Nobat int,
Vazn int,
Next_Morajee datetime,
Morajee_Date datetime default getdate(),
Tozihat nvarchar(100)
)
go
create table ShimiDarmani(
Sh_Bimar int primary key,
Bime Nvarchar(20),
Hazine int,
Shimi_Date datetime default getdate(),
Tozihat nvarchar(100)
)
go
create table NemoneBardari(
Sh_Bimar int primary key,
Bime Nvarchar(20),
Hazine int,
Nemone_Date datetime default getdate(),
Tozihat nvarchar(100)
)
go
create table Analysis(
Sh_Bimar int primary key,
HB nvarchar(20),
WBC nvarchar(20),
PLT nvarchar(20),
CR nvarchar(20),
LFT nvarchar(20),
Analysis_Date datetime default getdate()
)
go
create table Pathalogy(
Sh_Bimar int primary key,
Type nvarchar(20),
T nvarchar(20),
M nvarchar(20),
N nvarchar(20),
Stage nvarchar(20),
Nemone_Place nvarchar(20),
Pathalogy_Date datetime default getdate()
)
go
create table Imaging(
Sh_Bimar int primary key,
US varchar(50),
CT varchar(50),
Img_Date datetime default getdate(),
Tozihat nvarchar(100)
)
go
create table NobatDehi(
Sh_Bimar int primary key,
Pezeshk_Number int,
Hozor_Date datetime default getdate(),
Tozihat nvarchar(100)
)
go
create table ZamanHozorPezeshk(
Pezeshk_Number int primary key,
Days nvarchar(20),
Hozor datetime default getdate(),
Finish datetime
) 