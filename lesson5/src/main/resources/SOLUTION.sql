 select *
 from payment
 where amount >= 500;

 select *
 from STUDENT
 where datediff('year', birthday, now()) > 20;

 select *
 from STUDENT
 where GROUPNUMBER = 10
         and datediff('year', birthday, now()) < 20;

 select *
 from STUDENT
 where name like 'Mike %'
     or GROUPNUMBER in (4,5,6);

 select *
 from PAYMENT
 where datediff('month', PAYMENT_DATE, now()) <= 8;

 select *
 from STUDENT
 where name like 'A%';

 select *
 from STUDENT
 where
     (name like 'Roxi %' and GROUPNUMBER=5)
 or
     (name like 'Tallie %' and GROUPNUMBER = 9);