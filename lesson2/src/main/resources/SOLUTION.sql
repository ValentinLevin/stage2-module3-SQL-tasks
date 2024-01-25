insert into student(name, groupnumber, birthday) select 'John', 1, '2010-01-01' union select 'Chris', 1, '2010-01-01' union select 'Carl', 1, '2010-01-01' union select 'Oliver', 2, '2010-01-01' union select 'James', 2, '2010-01-01' union select 'Lucas', 2, '2010-01-01' union select 'Henry', 2, '2010-01-01' union select 'Jacob', 3, '2010-01-01' union select 'Logan', 3, '2010-01-01' union select 'Toby Jones', 4, '2010-01-01' union select 'Joseph Cooper', 4, '2010-01-01' union select 'Joel Kaur', 4, '2010-01-01' union select 'Corey Reid', 4, '2010-01-01' union select 'Rhys Barrett', 4, '2010-01-01' union select 'Jacoby Bryan', 4, '2010-01-01' union select 'Gunner Fernandez', 4, '2010-01-01' union select 'Hugh Pierce', 4, '2010-01-01' union select 'Samson Barker', 4, '2010-01-01' union select 'Melvin Mccoy', 4, '2010-01-01' union select 'Blake Campbell', 5, '2010-01-01' union select 'Patrick Andrews', 5, '2010-01-01' union select 'Logan Richardson', 5, '2010-01-01' union select 'Taylor Allen', 5, '2010-01-01' union select 'Joe Parker', 5, '2010-01-01' union select 'Legend Cooke', 5, '2010-01-01' union select 'Braylon Buckley', 5, '2010-01-01' union select 'Jeffery Browning', 5, '2010-01-01' union select 'Westin Brady', 5, '2010-01-01';
 /*insert into student(name, groupnumber, birthday)
 select 'John', 1, '2010-01-01' union
 select 'Chris', 1, '2010-01-01' union
 select 'Carl', 1, '2010-01-01' union
 select 'Oliver', 2, '2010-01-01' union
 select 'James', 2, '2010-01-01' union
 select 'Lucas', 2, '2010-01-01' union
 select 'Henry', 2, '2010-01-01' union
 select 'Jacob', 3, '2010-01-01' union
 select 'Logan', 3, '2010-01-01' union
 select 'Toby Jones', 4, '2010-01-01' union
 select 'Joseph Cooper', 4, '2010-01-01' union
 select 'Joel Kaur', 4, '2010-01-01' union
 select 'Corey Reid', 4, '2010-01-01' union
 select 'Rhys Barrett', 4, '2010-01-01' union
 select 'Jacoby Bryan', 4, '2010-01-01' union
 select 'Gunner Fernandez', 4, '2010-01-01' union
 select 'Hugh Pierce', 4, '2010-01-01' union
 select 'Samson Barker', 4, '2010-01-01' union
 select 'Melvin Mccoy', 4, '2010-01-01' union
 select 'Blake Campbell', 5, '2010-01-01' union
 select 'Patrick Andrews', 5, '2010-01-01' union
 select 'Logan Richardson', 5, '2010-01-01' union
 select 'Taylor Allen', 5, '2010-01-01' union
 select 'Joe Parker', 5, '2010-01-01' union
 select 'Legend Cooke', 5, '2010-01-01' union
 select 'Braylon Buckley', 5, '2010-01-01' union
 select 'Jeffery Browning', 5, '2010-01-01' union
 select 'Westin Brady', 5, '2010-01-01';*/

 insert into subject(name, grade)
 select 'Art', 1 union
 select 'Music', 1 union
 select 'Geography', 2 union
 select 'History', 2 union
 select 'PE', 3 union
 select 'Math', 3 union
 select 'Science', 4 union
 select 'IT', 4 union
 select 'Chemistry', 5 union
 select 'Biology', 5;

 insert into paymenttype(id, name)
 select 1, 'DAILY' union
 select 2, 'WEEKLY' union
 select 3, 'MONTHLY';

 insert into payment(type_id, amount, student_id, payment_date)
 select pt.id, cast(random() * 1000 as decimal), s.id, now()
 from (select 'John' as student_name, 'WEEKLY' as payment_type_name
       union
       select 'Oliver' as student_name, 'MONTHLY' as payment_type_name
       union
       select 'Henry' as student_name, 'WEEKLY' as payment_type_name
       union
       select 'James' as student_name, 'DAILY' as payment_type_iname
       ) as payments
  inner join student s on (s.name = payments.student_name)
  inner join paymenttype pt on (pt.name = payments.payment_type_name);

/* insert into payment(type_id, amount, student_id, payment_date)
 select trunc(random()*3)::int+1, (random() * 1000)::int, s.id, now()
 from student s
     left join payment p on (p.student_id = s.id)
 where p.id is null;*/

 insert into UNIVERSITY.MARK(student_id, subject_id, mark)
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
          inner join subject subj on (subj.name = marks.subject_name)
        inner join
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
     ) on true;

/*
 insert into mark(student_id, subject_id, mark)
 select s.id, trunc((random() * subj.cnt)::int + subj.offst), trunc(random() * 10)::int
 from student s
          inner join
      (
          select min(id) as offst, max(id)-min(id) as cnt
          from subject
      ) as subj on true
          left join mark m on (m.student_id = m.id)
 where m.id is null;*/
