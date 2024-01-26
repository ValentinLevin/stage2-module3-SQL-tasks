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
 select pt.id, 1000, s.id, now()
 from student s, paymenttype pt
 where s.name = 'John' and pt.name = 'WEEKLY';

 insert into payment(type_id, amount, student_id, payment_date)
 select pt.id, 1000, s.id, now()
 from student s, paymenttype pt
 where s.name = 'Oliver' and pt.name = 'MONTHLY';

 insert into payment(type_id, amount, student_id, payment_date)
 select pt.id, 1000, s.id, now()
 from student s, paymenttype pt
 where s.name = 'Henry' and pt.name = 'WEEKLY';

 insert into payment(type_id, amount, student_id, payment_date)
 select pt.id, 1000, s.id, now()
 from student s, paymenttype pt
 where s.name = 'James' and pt.name = 'DAILY';

 insert into UNIVERSITY.MARK(student_id, subject_id, mark)
 select s.id, subj.id, 8
 from student s, subject subj
 where s.name = 'Chris' and subj.name = 'Art';

 insert into UNIVERSITY.MARK(student_id, subject_id, mark)
 select s.id, subj.id, 5
 from student s, subject subj
 where s.name = 'Oliver' and subj.name = 'History';

 insert into UNIVERSITY.MARK(student_id, subject_id, mark)
 select s.id, subj.id, 9
 from student s, subject subj
 where s.name = 'James' and subj.name = 'Geography';

 insert into UNIVERSITY.MARK(student_id, subject_id, mark)
 select s.id, subj.id, 4
 from student s, subject subj
 where s.name = 'Jacob' and subj.name = 'Math';

 insert into UNIVERSITY.MARK(student_id, subject_id, mark)
 select s.id, subj.id, 9
 from student s, subject subj
 where s.name = 'Logan' and subj.name = 'PE';