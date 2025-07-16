create database QuanLyBanHang;

use QuanLyBanHang;

create table Customer(
	cID int primary key,
    Name varchar(25),
    cAge tinyint
);

create table Orders(
	oID int primary key,
    cID int,
    oDate datetime,
    oTotalPrice int,
    foreign key (cID) references Customer(cID)
);

create table Product(
	pID int primary key,
    pName varchar(25),
    pPrice int
);

create table OrderDetail(
	oID int,
    pID int,
    odQTY int,
    foreign key (oID) references Orders(oID),
    foreign key (pID) references Product(pID)
);

insert into Customer
values (1, 'Minh Quan', 10),(2, 'Ngoc Anh', 20),(3, 'Hong Ha', 50);
insert into Orders(oID, cID, oDate, oTotalPrice)
values (1,1,'2006-03-21',null),(2,2,'2006-03-26',null),(3,1,'2006-03-16',null);
insert into Product
values (1,'May Giat',3),(2,'Tu Lanh',5),(3,'Dieu Hoa',7),(4,'Quat',1),(5,'Bep Dien',2);
insert into OrderDetail(oID, pID, odQTY)
values (1,1,3),(1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);

-- Hien thi cac thong tin gom oID, oDate, oPrice cua tat ca cac hoa don trong bang Orders
select * from Orders;
-- Hien thi danh sach cac khach hang da mua hang
select c.cID, c.Name, o.oID from Customer c join Orders o on c.cID = o.cID;
-- Hien thi danh sach san pham duoc mua boi khach hang
select c.cID, c.Name, p.pName, od.odQTY 
from Customer c 
join Orders o on c.cID = o.cID
join OrderDetail od on o.oID = od.oID 
join Product p on od.pID = p.pID;
-- Hien thi ten nhung khach hang khong mua bat ky mot san pham nao
select c.cID, c.Name from Customer c left join Orders o on c.cID = o.cID where o.oID is null; 
-- Hien thi ma hoa don, ngay ban va gia tien cua tung hoa don(giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
select o.oID as 'MaHD', o.oDate as 'NgayBan', Sum(od.odQTY*p.pPrice) as 'GiaTien'
from Orders o 
join OrderDetail od on o.oID = od.oID
join  Product p on od.pID = p.pID
group by o.oID, o.oDate;