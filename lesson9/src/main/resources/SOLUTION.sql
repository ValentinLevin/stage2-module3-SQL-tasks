 select s.*
 from student s
     inner join (
         select student_id
             from mark
             group by student_id
             having avg(mark) > 8
     ) m on (s.id = m.student_id);

 select s.id, s.name
 from student s
     inner join (
         select student_id
         from mark
         group by student_id
         having min(mark) > 7
     ) m on (m.student_id = s.id);

 select s.id, s.name
 from student s
     inner join (
         select student_id
             from payment
             where year(PAYMENT_DATE) = 2019
             group by student_id
             having count(id) > 2
         ) p on (p.student_id = s.id);