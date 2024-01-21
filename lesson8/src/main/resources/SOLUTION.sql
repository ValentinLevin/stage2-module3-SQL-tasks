select min(birthday)
from student;

select min(PAYMENT.PAYMENT_DATE)
from payment;

select avg(mark)
from mark;

select min(p.amount)
from payment p
    inner join paymenttype pt on (pt.id = p.type_id)
where pt.name = 'WEEKLY';