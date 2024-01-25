 select max(birthday)
 from student;

 select min(PAYMENT.PAYMENT_DATE)
 from payment;

 select avg(m.mark)
 from mark m
     inner join subject s on (s.id = m.subject_id)
 where s.NAME = 'Math';

 select min(p.amount)
 from payment p
     inner join paymenttype pt on (pt.id = p.type_id)
 where pt.name = 'WEEKLY';