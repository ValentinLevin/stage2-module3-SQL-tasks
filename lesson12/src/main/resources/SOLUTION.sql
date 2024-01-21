delete from payment
where student_id in (select id from student where GROUPNUMBER>=4);

delete from mark
where student_id in (select id from student where GROUPNUMBER>=4);

delete from student where groupnumber >= 4;

delete from payment
where student_id in (select distinct id from mark where mark < 4);

delete from mark
where student_id in (select distinct id from mark where mark < 4);

delete from student
where id in (select distinct id from mark where mark < 4);

delete from payment
where type_id in (select id from paymenttype where name = 'DAILY');

delete from paymenttype where name = 'DAILY';

delete from mark where mark < 7;