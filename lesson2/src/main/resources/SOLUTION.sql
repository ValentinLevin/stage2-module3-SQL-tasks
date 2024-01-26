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

 insert into subject(name, grade)
 values('Art', 1);

 insert into subject(name, grade)
 values('Music', 1);

 insert into subject(name, grade)
 values('Geography', 2);

 insert into subject(name, grade)
 values('History', 2);

 insert into subject(name, grade)
 values('PE', 3);

 insert into subject(name, grade)
 values('Math', 3);

 insert into subject(name, grade)
 values('Science', 4);

 insert into subject(name, grade)
 values('IT', 4);

 insert into subject(name, grade)
 values('Chemistry', 5);

 insert into subject(name, grade)
 values('Biology', 5);

 insert into paymenttype(id, name)
     values(1, 'DAILY');

 insert into paymenttype(id, name)
     values(2, 'WEEKLY');

 insert into paymenttype(id, name)
     values(3, 'MONTHLY');

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