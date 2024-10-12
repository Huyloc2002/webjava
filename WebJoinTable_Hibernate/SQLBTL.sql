create database BTL
go
use BTL
go
CREATE TABLE role(
id int IDENTITY(1,1) NOT NULL primary key,
name varchar(50) NULL
)

CREATE TABLE users(
id int IDENTITY(1,1) NOT NULL primary key,
username varchar(45) NULL,
password varchar(200) NULL,
enabled bit NULL,
fullname nvarchar(70) NULL,
gender bit NULL,
birthday datetime NULL,
address nvarchar(200) NULL,
email varchar(100) NULL,
telephone varchar(20) NULL,
)
CREATE TABLE users_roles(
id int IDENTITY(1,1) NOT NULL primary key,
userId int NULL foreign key references users(id),
roleId int NULL foreign key references role(id),
)

create table Courses (
    CouId varchar(10) primary key,
    CourseName varchar(100),
	Image varchar(100),
    CourseDescription varchar(50),
	Price float,
	Time nvarchar(100)
)
select * from Courses
create table Students (
    StudentId int identity primary key,
    StudentName varchar(100),
	Image nvarchar(100),
	Gender bit,
	Email varchar(255),
    DateOfBirth date,
    Address varchar(255),
    PhoneNumber varchar(15),
	Dateregistration date,
	CouId varchar(10) foreign key references Courses(CouId)
)

CREATE TABLE Classes (
    ClassId INT PRIMARY KEY,
    ClassName VARCHAR(100) NOT NULL,
    CouId varchar(10) foreign key references Courses(CouId)
)
CREATE TABLE Labs (
    Id INT PRIMARY KEY,
    LabName VARCHAR(255),
    ClassId INT FOREIGN KEY REFERENCES Classes(ClassId)
)

CREATE TABLE Activities (
    ActivityId INT PRIMARY KEY,

    ActivityName VARCHAR(100) NOT NULL,
    ActivityDate DATE,
       ClassId INT FOREIGN KEY REFERENCES Classes(ClassId)
)

CREATE TABLE Schedules (
    ScheduleId INT PRIMARY KEY,
    Date DATE,
    StartTime TIME,
    EndTime TIME,
    Room VARCHAR(50),
	time nvarchar(20)
   )
   create table Contact(
   Id INT Identity PRIMARY KEY,
   Name nvarchar(50),
   Email varchar(100),
   Subject varchar(100),
   Message varchar(100)
   )
INSERT role VALUES (N'ROLE_ADMIN')
GO
INSERT role VALUES (N'ROLE_USER')
GO
INSERT users VALUES (N'admin',
N'$2a$12$s8FyYcAauHqILMBcI6x0BepO5JI.9/C16QRYMswF7Avt0rRkOiR0u', 1 ,N'Nguyễn Thành
Trung', 1, '2000-02-12', N'Ba Vì - Hà Nội', N'trung.nt@gmail.com', N'0123456789')
GO
INSERT users VALUES (N'user',
N'$2a$12$s8FyYcAauHqILMBcI6x0BepO5JI.9/C16QRYMswF7Avt0rRkOiR0u', 1, N'Nguyễn Khánh
Nam', 1, '2001-05-11', N'Ý Yên - Nam Định', N'nam.nk@gmail.com', N'0911233455')
GO
INSERT users_roles (userId, roleId) VALUES (1, 1)
GO
INSERT users_roles (userId, roleId) VALUES (1, 2)
GO
INSERT users_roles (userId, roleId) VALUES (2, 2)
select * from role
select * from users
insert into Courses values ('1','PHP','kh2.jpg','Lap trinh web PHP',20000000,N'6 Tháng')




insert into Courses values ('2','Laravel','kh3.jpg','Lap trinh web Laravel',300000000,N'12 Tháng')

insert into Courses values ('3','Node Js','kh4.jpg','Lap trinh web Node Js',100000000,N'2,5 năm')

insert into Courses values ('4','JAVA','kh5.jpg','Lap trinh web Java',50000000,N'1,5 năm')
insert into Courses values ('5','PHP','css.webp','laravel css',20000000,N'8 Tháng')
insert into Courses values ('6','PHP','reac.png','Lap trinh web reactjs',15000000,N' 1 nam')
select * from Courses
insert into Students values('Truong Tho','img1.jpg',1,'tho@gmail.com','2002-1-1','Gia Lam- Ha Noi','089788786','2022-09-10','1')
insert into Students values('Do Dai','img2.jpg',1,'dai@gmail.com','2001-11-14','Dong Thanh-Ha Noi','088776565','2023-09-10','2')
insert into Students values('Lung Linh','img3.jpg',0,'linh@gmail.com','1998-1-14','Soc Son- Ha Noi','087877665','2021-07-10','3')
insert into Students values('Do Quyen','img4.jpg',0,'Quyen@gmail.com','1999-4-3','Bao Loc-Da lat','0765456622','2022-05-10','4')
select * from Students

select * from Users
insert into Classes values(1,'C2208G',1)
select * from Classes

insert into Labs values (1,'lab2',1)
select * from Labs

insert into Activities values(1,'Do An','2012-1-12',1)
select * from Activities

insert into Schedules values(1,'2023-1-12','13:30','17:00','Phong 2',1)
select * from Schedules

create table account
(
	id varchar(36) primary key,
	username varchar(50),
	password varchar(100),
	fullname nvarchar(100),
	role varchar(50),
	picture nvarchar(250),
	status bit
)
go
insert into account values(NEWID(),'admin','e10adc3949ba59abbe56e057f20f883e',N'Charles Chung','admin','images/admin.jpg',1)
insert into account values(NEWID(),'DoDai19999','e10adc3949ba59abbe56e057f20f883e',N'Đỗ Đinh Đại','user','images/demon.jpg',1)
select * from account

go
CREATE TABLE OrderCouser(
	OrderId VARCHAR(16) PRIMARY KEY,
	OrderDate DATETIME,
	AccountId VARCHAR(36),
	ReceiveAddress NVARCHAR(512),
	ReceivePhone VARCHAR(50),
	ReceiveDate DATETIME,
	Note NVARCHAR(512),
	Status BIT,
)
GO

CREATE TABLE OrderDetail(
	OrderDetailId INT Identity(1,1) PRIMARY KEY,
	OrderId VARCHAR(16),
	CouId VARCHAR(10),
	Quantity INT,
	Price FLOAT
)
INSERT INTO dbo.OrderCouser
(
    OrderId,
    OrderDate,
    AccountId,
    ReceiveAddress,
	ReceivePhone,
    Note,
    Status
)
VALUES
(   'HD01',        -- OrderId - varchar(16)
    GETDATE(), -- OrderDate - datetime
    '65DEA567-C705-4F59-9AF9-18E413D824C7',        -- AccountId - varchar(36)
    N'336 Hoàng Quốc Việt Cầu Giấy Hà Nội',       -- ReceiveAddress - nvarchar(512)
	'',       --ReceivePhone - nvarchar(512)
    N'',       -- Note - nvarchar(512)
    NULL       -- Status - bit
    ),
(   'HD02',        -- OrderId - varchar(16)
    GETDATE(), -- OrderDate - datetime
    'E3BB43BC-12ED-451D-80D8-7D03CE674665',        -- AccountId - varchar(36)
    N'18 Hoàng Như Tiếp Long Biên Hà Nội',       -- ReceiveAddress - nvarchar(512)
	'',       --ReceivePhone - nvarchar(512)
    N'',       -- Note - nvarchar(512)
    NULL       -- Status - bit
    ),
(   'HD03',        -- OrderId - varchar(16)
    GETDATE(), -- OrderDate - datetime
    'E3BB43BC-12ED-451D-80D8-7D03CE674665',        -- AccountId - varchar(36)
    N'39 Hồ Tùng Mậu Cầu Giấy Hà Nội',       -- ReceiveAddress - nvarchar(512)
	'',       --ReceivePhone - nvarchar(512)
    N'',       -- Note - nvarchar(512)
    NULL       -- Status - bit
    )
GO
select * from OrderCouser
--INSERT DATA IN OrderDetail
go
INSERT INTO OrderDetail values
('HD01', -- OrderId - varchar(16)
   '1', -- BookId - varchar(10)
    1,  -- Quantity - int
    166000 
),

( 'HD02', -- OrderId - varchar(16)
    '2', -- BookId - varchar(10)
    1,  -- Quantity - int
    176000 
),
('HD03', -- OrderId - varchar(16)
    '3', -- BookId - varchar(10)
    1,  -- Quantity - int
    176000
),
( 'HD04', -- OrderId - varchar(16)
    'CT01', -- BookId - varchar(10)
    1,  -- Quantity - int
    166000 
)
select * from OrderDetail

create table Php (
    PhpId varchar(10) primary key,
	Image varchar(100),
    CourseDescription varchar(50),
	Price float,
	Time nvarchar(100),
	StudentId int foreign key references Students(StudentId)
)
select p.*,s.StudentName from Students s join Php p on s.StudentId = p.StudentId
insert into Php values(1,'kh2.jpg','Lap trinh web php',100000000,N'2,5 năm',1)


create table Laravel (
    LaravelId varchar(10) primary key,
	Image varchar(100),
    CourseDescription varchar(50),
	Price float,
	Time nvarchar(100),
	StudentId int foreign key references Students(StudentId)

)
	select l.*,s.StudentName from Students s join Laravel l on s.StudentId = l.StudentId

insert into Laravel values(1,'kh3.jpg','Lap trinh web Laravel',300000000,N'12 Tháng',2)

create table Nodejs (
    NodejsId varchar(10) primary key,
	Image varchar(100),
    CourseDescription varchar(50),
	Price float,
	Time nvarchar(100),
		StudentId int foreign key references Students(StudentId)
)

	select n.*,s.StudentName from Students s join Nodejs n on s.StudentId = n.StudentId

insert into Nodejs values(1,'kh4.jpg','Lap trinh web Node Js',100000000,N'2,5 năm',3)
create table Java (
    JavaId varchar(10) primary key,
	Image varchar(100),
    CourseDescription varchar(50),
	Price float,
	Time nvarchar(100),
			StudentId int foreign key references Students(StudentId)
)
	select j.*,s.StudentName from Students s join Java j on s.StudentId = j.StudentId
insert into Java values(1,'kh5.jpg','Lap trinh web Java',50000000,N'1,5 năm',4)
select * from Java
