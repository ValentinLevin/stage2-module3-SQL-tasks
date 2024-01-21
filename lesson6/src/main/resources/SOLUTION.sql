select p.*
from payment p
    inner join paymenttype pt on (pt.id = p.TYPE_ID)
where pt.name = 'MONTHLY';

select m.*
from mark m
    inner join subject s on (s.id = m.subject_id)
where s.name = 'Art';

select s.*
from student s
    inner join payment p on (p.student_id = s.id)
    inner join paymenttype pt on (pt.id = p.type_id)
where pt.name = 'WEEKLY';

select s.*
from student s
    inner join mark m on (m.student_id = s.id)
    inner join subject subj on (subj.id = m.subject_id)
where subj.name = 'Math';