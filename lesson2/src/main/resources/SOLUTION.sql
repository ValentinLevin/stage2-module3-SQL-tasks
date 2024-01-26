 insert into student(name, groupnumber, birthday)
 values('John', 1, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Chris', 1, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Carl', 1, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Oliver', 2, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('James', 2, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Lucas', 2, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Henry', 2, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Jacob', 3, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Logan', 3, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Toby Jones', 4, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Joseph Cooper', 4, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Joel Kaur', 4, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Corey Reid', 4, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Rhys Barrett', 4, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Jacoby Bryan', 4, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Gunner Fernandez', 4, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Hugh Pierce', 4, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Samson Barker', 4, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Melvin Mccoy', 4, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Blake Campbell', 5, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Patrick Andrews', 5, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Logan Richardson', 5, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Taylor Allen', 5, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Joe Parker', 5, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Legend Cooke', 5, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Braylon Buckley', 5, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Jeffery Browning', 5, '2010-01-01');

 insert into student(name, groupnumber, birthday)
 values('Westin Brady', 5, '2010-01-01');

 insert into subject(name, grade) select 'Art', 1 union select 'Music', 1 union select 'Geography', 2 union select 'History', 2 union select 'PE', 3 union select 'Math', 3 union select 'Science', 4 union select 'IT', 4 union select 'Chemistry', 5 union select 'Biology', 5;
 insert into paymenttype(id, name) select 1, 'DAILY' union select 2, 'WEEKLY' union select 3, 'MONTHLY';

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
          inner join subject subj on (subj.name = marks.subject_name);