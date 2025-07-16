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

create table Mark(
	MarkID int not null primary key auto_increment,
    SubID int not null,
	StudentID int not null,
    Mark Float default 0 check (Mark between 0 and 100),
    ExamTimes tinyint default 1,
    Unique key(SubID, StudentID),
    foreign key (SubID) references Subject(SubID),
    foreign key (StudentID) references Student(StudentID)
);