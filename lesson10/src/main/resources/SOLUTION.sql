select s.*
    from subject s
        inner join (
            select subject_id, avg(mark) as average_mark
            from mark
            group by subject_id
        ) savg on (savg.subject_id = s.id)
        inner join (
            select avg(mark) as average_mark
            from mark
        ) m on (m.average_mark < savg.average_mark);

select s.*
from student s
    inner join (
        select student_id, avg(amount * 1.0) as average_payment_amount
        from payment
        group by student_id
    ) as sap on (sap.student_id = s.id)
    inner join (
        select avg(amount*1.0) as average_payment_amount
        from payment
    ) tap on (tap.average_payment_amount > sap.average_payment_amount);