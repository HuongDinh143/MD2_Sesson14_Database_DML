create database quanlyhocsinh;
use quanlyhocsinh;

create table class(
classId int primary key,
className varchar(100) not null,
startDate date,
status text(250)
);

create table student(
studentId varchar(10) primary key,
studentName varchar(50) not null,
address varchar(250),
phone varchar(12),
studentStatus text(250),
class_id int,
foreign key (class_id) references class (classId)
);

create table subjects (
subId char primary key,
subName varchar(100),
credit float,
subStatus text(500)
);

create table mark(
markId int primary key auto_increment,
sub_id char,
foreign key(sub_id) references subjects(subId),
student_id varchar(10),
foreign key(student_id) references student(studentId),
mark int,
examTime date
);

select*from student
where studentName like 'h%';

select*from class
where startDate >="2024/10/1";

select*from subjects
where credit between 30 and 50;


SET SQL_SAFE_UPDATES = 0;
update student
set class_id = 1002
where studentName = "Hung";

SET SQL_SAFE_UPDATES = 1;

select student.studentName, subjects.subName, mark.mark
from mark inner join student on mark.student_id = student.studentId and mark inner join subjects on mark.sub_id = subjects.subId
order by mark desc, studentName asc;



