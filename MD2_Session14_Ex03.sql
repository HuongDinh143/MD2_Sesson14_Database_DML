use quanlyhocsinh;

select *
from Subjects
where credit = (select MAX(credit) from Subjects);

select s.*, max(m.mark) as max_mark
from subjects s
inner join mark m on m.sub_id = s.subId
group by s.subId;

select s.*, avg(mark) as diemtrungbinh
from student s
inner join mark on s.studentId = mark.student_id
group by s.studentId;
