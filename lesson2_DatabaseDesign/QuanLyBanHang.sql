create database QuanLyBanHang;

use QuanLyBanHang;

create table Customer(
	cID int not null primary key auto_increment,
    cName varchar(30) not null,
    cAge int
);

create table Orders(
	oID int not null primary key auto_increment,
    cID int not null,
    oDate datetime not null,
    oTotalPrice int,
    foreign key (cID) references Customer(cID)
);

create table Product(
	pID int not null primary key auto_increment,
    pName varchar(30) not null,
    pPrice DECIMAL(10,2) not null
);

create table OrderDetail(
	oID int not null,
    pID int not null,
    odQTY int not null,
    primary key (oID, pID),
    foreign key (oID) references Orders(oID),
    foreign key (pID) references Product(pID)
);