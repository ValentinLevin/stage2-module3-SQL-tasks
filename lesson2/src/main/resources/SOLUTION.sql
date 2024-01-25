insert into student(name, groupnumber, birthday)
values('John', 1, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Chris', 1, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Carl', 1, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Oliver', 2, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('James', 2, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Lucas', 2, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Henry', 2, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Jacob', 3, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Logan', 3, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Toby Jones', 4, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Joseph Cooper', 4, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Joel Kaur', 4, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Corey Reid', 4, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Rhys Barrett', 4, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Jacoby Bryan', 4, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Gunner Fernandez', 4, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Hugh Pierce', 4, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Samson Barker', 4, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Melvin Mccoy', 4, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Blake Campbell', 5, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Patrick Andrews', 5, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Logan Richardson', 5, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Taylor Allen', 5, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Joe Parker', 5, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Legend Cooke', 5, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Braylon Buckley', 5, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Jeffery Browning', 5, parsedatetime('2000-01-01', 'yyyy-MM-dd')),
      ('Westin Brady', 5, parsedatetime('2000-01-01', 'yyyy-MM-dd'));

insert into subject(name, grade)
values('Art', 1), ('Music', 1), ('Geography', 2), ('History', 2),
      ('PE', 3), ('Math', 3), ('Science', 4), ('IT', 4),
      ('Chemistry', 5), ('Biology', 5);

insert into paymenttype(id, name)
values(1, 'DAILY'), (2, 'WEEKLY'), (3, 'MONTHLY');

insert into payment(type_id, amount, student_id, payment_date)
select pt.id, cast(random() * 1000 as decimal), s.id, now()
from (select 'John' as student_name, 'WEEKLY' as payment_type_name
      union
      select 'Oliver' as student_name, 'MONTHLY' as payment_type_name
      union
      select 'Henry' as student_name, 'WEEKLY' as payment_type_name
      union
      select 'James' as student_name, 'DAILY' as payment_type_iname) as payments
         inner join student s on (s.name = payments.student_name)
         inner join paymenttype pt on (pt.name = payments.payment_type_name);

insert into payment(type_id, amount, student_id, payment_date)
select trunc(random()*3)::int+1, (random() * 1000)::int, s.id, now()
from student s
    left join payment p on (p.student_id = s.id)
where p.id is null;

insert into mark(STUDENT_ID, subject_id, mark)
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
         inner join subject subj on (subj.name = marks.subject_name),
    (
        select 1
        union
        select 2
        union
        select 3
        union
        select 4
        union
        select 5
    );

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

