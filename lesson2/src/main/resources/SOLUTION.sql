insert into student(name, groupnumber, birthday)
values('John', 1, now()::date),
      ('Chris', 1, now()::date),
      ('Carl', 1, now()::date),
      ('Oliver', 2, now()::date),
      ('James', 2, now()::date),
      ('Lucas', 2, now()::date),
      ('Henry', 2, now()::date),
      ('Jacob', 3, now()::date),
      ('Logan', 3, now()::date),
      ('Toby Jones', 4, now()::date),
      ('Joseph Cooper', 4, now()::date),
      ('Joel Kaur', 4, now()::date),
      ('Corey Reid', 4, now()::date),
      ('Rhys Barrett', 4, now()::date),
      ('Jacoby Bryan', 4, now()::date),
      ('Gunner Fernandez', 4, now()::date),
      ('Hugh Pierce', 4, now()::date),
      ('Samson Barker', 4, now()::date),
      ('Melvin Mccoy', 4, now()::date),
      ('Blake Campbell', 5, now()::date),
      ('Patrick Andrews', 5, now()::date),
      ('Logan Richardson', 5, now()::date),
      ('Taylor Allen', 5, now()::date),
      ('Joe Parker', 5, now()::date),
      ('Legend Cooke', 5, now()::date),
      ('Braylon Buckley', 5, now()::date),
      ('Jeffery Browning', 5, now()::date),
      ('Westin Brady', 5, now()::date);

insert into subject(name, grade)
values('Art', 1), ('Music', 1), ('Geography', 2), ('History', 2),
      ('PE', 3), ('Math', 3), ('Science', 4), ('IT', 4),
      ('Chemistry', 5), ('Biology', 5);

insert into paymenttype(id, name)
values(1, 'DAYLY'), (2, 'WEEKLY'), (3, 'MONTHLY');

insert into payment(type_id, amount, student_id, payment_date)
select pt.id, cast(random() * 1000 as decimal), s.id, now()
from (select 'John' as student_name, 'WEEKLY' as payment_type_name
      union
      select 'Oliver' as student_name, 'MONHLY' as payment_type_name
      union
      select 'Henry' as student_name, 'WEEKLY' as payment_type_name
      union
      select 'James' as student_name, 'DAYLY' as payment_type_iname) as payments
         inner join student s on (s.name = payments.student_name)
         inner join paymenttype pt on (pt.name = payments.payment_type_name);

insert into payment(type_id, amount, student_id, payment_date)
select trunc(random()*3)::int+1, (random() * 1000)::int, s.id, now()
from student s
    left join payment p on (p.student_id = s.id)
where p.id is null;

insert into mark(student_id, subject_id, mark)
select s.id, subj.id, marks.mark
from (
         select 'Chris' as student_name, 'Art' as subject_name, 8 as mark
         union
         select 'Oliver' as student_name, 'History' as subject_name, 5 as mark
         union
         select 'James' as student_name, 'Geography' as subject_name, 9 as mark
         union
         select 'Jacob' as student_name, 'Math' as subject_name, 4 as mark
         union
         select 'Logan' as student_name, 'PE' as subject_name, 9 as mark
     ) as marks
         inner join student s on (s.name = marks.student_name)
         inner join subject subj on (subj.name = marks.subject_name);

insert into mark(student_id, subject_id, mark)

select s.id, trunc((random() * subj.cnt)::int + subj.offst), trunc(random() * 10)::int
from student s
         inner join
     (
         select min(id) as offst, max(id)-min(id) as cnt
         from subject
     ) as subj on true
         left join mark m on (m.student_id = m.id)
where m.id is null;

