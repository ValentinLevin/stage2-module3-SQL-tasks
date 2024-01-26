 alter table payment
 drop constraint payment_student_id_fkey;

 alter table payment
     drop constraint payment_type_id_fkey;

 alter table payment
 add constraint payment_student_id_fkey foreign key(student_id) references student(id) on delete cascade;

 alter table payment
     add constraint payment_type_id_fkey foreign key(type_id) references paymenttype(id) on delete cascade;

 alter table mark
     drop constraint mark_student_id_fkey;

 alter table mark
     add constraint mark_student_id_fkey foreign key(student_id) references student(id) on delete cascade;