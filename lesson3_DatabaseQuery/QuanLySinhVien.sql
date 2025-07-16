create database QuanLySinhVien;

use QuanLySinhVien;

CREATE TABLE Class (
    ClassID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ClassName VARCHAR(60) NOT NULL,
    StartDate DATETIME,
    Status BIT
);

CREATE TABLE Student (
    StudentID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    StudentName VARCHAR(30) NOT NULL,
    Address VARCHAR(50),
    Phone VARCHAR(20),
    Status BIT,
    ClassID INT NOT NULL,
    FOREIGN KEY (ClassID)
        REFERENCES Class (ClassID)
);

create table Subject(
	SubID int not null primary key auto_increment,
    Subname varchar(30) not null,
    Credit Tinyint not null default 1 check(credit >= 1),
    Status Bit default 1
);

CREATE TABLE Mark
(
    MarkId    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubId     INT NOT NULL,
    StudentId INT NOT NULL,
    Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubId, StudentId),
    FOREIGN KEY (SubId) REFERENCES Subject (SubId),
    FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
);


insert into Class(ClassID, ClassName, StartDate, Status)
values (1,'A1','2008-12-20',1),(2,'A2','2008-12-22',1),(3,'B3',current_date,0);
insert into Student(StudentID, StudentName, Address, Phone, Status, ClassID)
values (1,'Hung','Ha Noi','0912113113',1,1),(2,'Hoa','Hai Phong','',1,1),(3,'Manh','HCM','0123123123',0,2);
insert into Subject(SubID, SubName, Credit, Status)
values (1,'CF',5,1),(2,'C',6,1),(3,'HDJ',5,1),(4,'RDBMS',10,1);
insert into Mark(MarkID, SubID, StudentID, Mark, ExamTimes)
values (1,1,1,8,1),(2,1,2,10,2),(3,2,1,12,1);

-- Hien thi danh sach tat ca cac hoc vien
select * from Student;
-- Hien thi danh sach cac hoc vien dang theo hoc
select * from Student where status = true;
-- Hien thi danh sach cac mon hoc co thoi gian hoc nho hon 10 gio
select * from Subject where credit < 10; 
-- Hien thi danh sach hoc vien lop A1
select s.StudentID, s.StudentName, c.ClassName from Student s join Class c on s.ClassID = c.ClassID where c.ClassName  = 'A1';
-- Hien thi diem mon CF cua cac hoc vien
select s.StudentID, s.StudentName, sub.SubName, m.Mark 
from Student s join Mark m on s.StudentID = m.StudentID
join Subject sub on m.SubID = sub.SubID
where sub.SubName = 'CF';
-- Hien thi tat ca cac sinh vien co ten bat dau bang ky tu 'h'
select * from Student where StudentName like 'h%';
-- Hien thi cac thong tin lop hoc co thoi gian bat dau vao thang 12
select * from Class where month(StartDate) = 12;
-- Hien thi tat ca thong tin mon hoc co credit trong khoang tu 3-5
select * from Subject where credit between 3 and 5;
-- Thay doi ma lop(ClassID) cua sinh vien co ten 'Hung' la 2
update Student set ClassID = 2 where StudentID = 1;
-- Hien thi cac thong tin: StudentName, SubName, Mark. Du lieu sap xep theo diem thi(mark) giam dan. neu trung sap theo ten tang dan
select s.StudentName, sub.SubName, m.Mark
from Student s join Mark m on s.StudentID = m.StudentID
join Subject sub on m.SubID = sub.SubID
order by m.Mark desc, s.StudentName asc ;