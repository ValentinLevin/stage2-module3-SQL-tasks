select *
from mark
where MARK > 6
order by mark desc;

select *
from PAYMENT
where amount < 300
order by amount;

select *
from paymenttype
order by name;

select *
from STUDENT
order by name desc;

select distinct s.*
from student s
    inner join payment p on (p.student_id = s.id)
where p.amount > 1000
order by s.birthday;