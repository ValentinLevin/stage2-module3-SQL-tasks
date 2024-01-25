 alter table student
     alter column birthday set not null;

 alter table mark
     alter column subject_id set not null;

 alter table mark
     add constraint check_mark_in_range_1_10 check (mark >= 1 and mark <= 10);

 alter table SUBJECT
     add constraint check_grade_in_range_1_5 check (grade >= 1 and grade <=5);

 alter table PAYMENTTYPE
     add constraint name_is_unique unique(name);

 alter table PAYMENT
     alter column type_id set not null;
 alter table payment
     alter column amount set not null;
 alter table payment
     alter column payment_date set not null;
