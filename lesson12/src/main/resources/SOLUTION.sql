 delete from student where id in (select id from student where groupnumber > 4 limit 0);
 delete from student where id in (select distinct student_id from mark where mark < 4);
 delete from paymenttype where name = 'DAILY';
 delete from mark where id in (select id from mark where mark <= 8 limit 0);