create database cuonsach2

use cuonsach2
go
create table Category
(
 Id Int primary key identity,
 Name Nvarchar (100) not null ,
 [Status] Tinyint default 1 check ([Status] = 0 or [Status] = 1)
 )
 go
 create table Author
(
 Id Int primary key identity,
 Name Nvarchar (100) not null unique,
 TotalBook int default 0,
 )
 go
 create table Book
(
 Id Int primary key identity,
 Name Nvarchar (100) not null ,
 [Status] Tinyint default 1 check ([Status] = 0 or [Status] = 1),
 Price float not null check(Price >=100000),
 CreatedDate Date default getdate(),
 CategoryId int not null foreign key references Category,
 AuthorId Int not null foreign key references Author
 )
 create index b_book on Book(Name)
 create index b_price on Book(Price)
 create index b_createdate on Book(CreatedDate)

 go
  create table Customer
(
 Id Int primary key identity,
 Name Nvarchar (150) not null ,
 Email Varchar(150) not null unique check(Email like '%@gmail.com' or Email like '%@facebook.com' or  Email like'%@bachkhoa-aptech.edu.vn'),
 Phone Varchar(50) not null unique,
 [Address] Nvarchar(255) null,
 CreatedDate Date default getdate(),
 Gender Tinyint check (Gender = 0 or Gender = 1 or Gender = 2),
 BirthDay Date not null)
 go
  create table Ticket
(
 Id Int primary key identity,
 CustomerId Int not null foreign key references Customer,
 [Status] Tinyint default 1 check ([Status] = 0 or [Status] = 1 or [Status] = 2 or [Status] = 3),
 TicketDate Datetime default getdate()
 )
 go
  create table TicketDetail
  (
  TicketId Int not null foreign key references Ticket,
  BookId Int not null foreign key references Book,
  Quantity Int not null check(Quantity>0),
  DeposiPrice Float not null,
  RentCost Float not null,
  primary key(TicketId ,BookId)
  )
  go

insert into Category (Name,[Status]) values
  (N'luffy',1),
  (N'zoro',0),
  (N'zanji',1),
  (N'zanji',1)

  select*from Category
  go
insert into Author(Name,TotalBook) values
   (N'vo nhan',0),
   (N'khong dang nhac den',0)
   select*from Author
   go
insert into Book(Name,[Status],Price ,CreatedDate,CategoryId,AuthorId) values
(N'luffy',0,150000,'2016-5-10',1,2),
(N'zoro',1,160000,'2016-5-10',1,2),
(N'luffy',0,170000,'2016-5-10',1,2),
(N'zoro',1,180000,'2016-5-10',1,2),
(N'luffy',0,190000,'2016-5-10',1,2),
(N'zoro',1,200000,'2016-5-10',1,2),
(N'luffy',0,250000,'2016-5-10',1,2),
(N'zoro',1,260000,'2016-5-10',1,2),
(N'luffy',0,270000,'2016-5-10',1,2),
(N'zanji',1,280000,'2016-5-10',1,2),
(N'luffy',0,290000,'2016-5-10',1,2),
(N'zanji',1,350000,'2016-5-10',1,2),
(N'luffy',0,360000,'2016-5-10',1,2),
(N'zanji',1,370000,'2016-5-10',1,2),
(N'zanji',1,370000,'2016-5-10',1,2)
go
insert into Book(Name,[Status],Price ,CreatedDate,CategoryId,AuthorId) values
(N'zoro',1,260000,'2016-5-10',2,2),
(N'zoro',1,260000,'2016-5-10',2,2)
go
insert into Book(Name,[Status],Price ,CreatedDate,CategoryId,AuthorId) values
(N'zanji',1,370000,'2016-5-10',3,2),
(N'zanji',1,370000,'2016-5-10',1,2)

select*from Book
go
insert into Customer(Name,Email,Phone,[Address],CreatedDate,Gender,BirthDay) values
(N'anh khong ho',N'khongho@gmail.com',873278273,N'thanh hoa','2022-3-7',2,'1999-4-6'),
(N'anh khong hong',N'khonghong@gmail.com',872832892,N'thanh hoa','2022-3-7',2,'1999-4-6'),
(N'anh khong long',N'khonglong@gmail.com',2836283782,N'thanh hoa','2022-3-7',2,'1999-4-6')

select*from Customer
go
insert into Ticket (CustomerId,[Status],TicketDate) values
(1,1,'2020-3-8'),
(10,2,'1999-3-8'),
(11,0,'2020-3-8')

select*from Ticket
go
insert into TicketDetail(TicketId,BookId,Quantity,DeposiPrice,RentCost) values
(5,2,4,150000,50000),
(6,2,4,150000,50000),
(7,2,4,150000,50000)
select*from TicketDetail
--yeu cau1
--1:Lấy ra danh sách Book có sắp xếp giảm dần theo Price gồm các cột sau:
-- Id, Name, Price, Status, CategoryName, AuthorName, CreatedDate

go
select 
b.*,
Category.Name as categoryName,
author.Name as AuthorName
from Book b
join Category on Category.Id = b.CategoryId
join author on author.Id = b.authorId
order by price desc 

--2 Lấy ra danh sách Category gồm: Id, Name, TotalProduct, Status (Trong đó cột Status nếu = 0, Ẩn, = 1 là Hiển thị )
go
select Category.Id,Category.Name,COUNT(Book.Id) as TotalProduct,
case
  when Category.[status] = 0 then N'tam an'
	else N'hien thi'
  end as [status]
  from Category
  join Book on book.id = Category.Id
  group by Category.Id,Category.Name,Category.Status
--3 Truy vấn danh sách Customer gồm: Id, Name, Email, Phone, Address, CreatedDate, Gender, BirthDay, Age 
--(Age là cột suy ra từ BirthDay, Gender nếu = 0 là Nam, 1 là Nữ,2 là khác )
go
select Customer.Id,Customer.Name,Customer.Email,Customer.Phone,Customer.[Address],
Customer.CreatedDate, (year(getdate()) - year(Customer.BirthDay)) as Age,
case
when Customer.gender = 0 then 'la nam'
when Customer.gender = 1 then 'la Nữ'
when Customer.gender = 2 then 'la khác'
end as gender
from Customer
group by Customer.Id,Customer.Name,Customer.Email,Customer.Phone,Customer.[Address],
Customer.CreatedDate,Customer.Gender,Customer.BirthDay
go
--4Truy vấn xóa Author chưa có sách nào
select*from Book
select*from Author
go
delete from Author where Id not in (select AuthorId from Book)

--yeu cau 2
--cau2 View v_getTicketList hiển thị danh sách Ticket gồm: Id, TicketDate, Status, CusName, Email, Phone,TotalAmount 
--(Trong đó TotalAmount là tổng giá trị tiện phải trả, cột Status nếu = 0 thì hiển thị Chưa trả, = 1 Đã trả, = 2 Quá hạn, 3 Đã hủy) 
go
create view V_tiketlist as
select t.Id,t.TicketDate,c.Email,c.Phone,sum(b.Price*td.Quantity)  as TotalAmount ,
c.Name as CusName,
case
when t.[status] = 0 then'chua tra'
when t.[status] = 1 then'da tra'
when t.[status] = 2 then'qua han tra'
when t.[status] = 3 then'da huy'
end as [status]
from Ticket t
join Book b on b.Id = td.BookId
join TicketDetail td on t.Id = td.TicketId
join Customer c on c.Id = t.CustomerId 
group by t.Id,t.TicketDate,t.[Status],c.Email,c.Phone,c.Name
go
select*from V_tiketlist
go

--Yêu cầu 3 
--cau 1 Thủ tục addBookInfo thực hiện thêm mới Book, khi gọi thủ tục truyền đầy đủ các giá trị của bảng Book ( Trừ cột tự động tăng )

create procedure addBookInfo 
@name nvarchar(50),
@status tinyint,
@price float,
@creatdate date,
@categoryId int,
@authorId int
as
insert into Book(Name,Status,Price,CreatedDate,CategoryId,AuthorId) values
(@name,@status,@price,@creatdate,@categoryId,@authorId)
go
exec addBookInfo N'chopper',1,260000,'2016-5-10',2,2

select*from Book

 


 


 