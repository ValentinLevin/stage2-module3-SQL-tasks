 delete from student where groupnumber >= 4;
 delete from student where id in (select distinct student_id from mark where mark < 4);
 delete from paymenttype where name = 'DAILY';
 delete from mark where mark < 7;