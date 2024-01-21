create table Student (
    id bigint auto_increment,
    name varchar,
    birthday date,
    groupnumber int,
    primary key (id)
);

create table Subject (
    id bigint auto_increment,
    name varchar,
    description varchar,
    grade int,
    primary key (id)
);

create table PaymentType (
    id bigint auto_increment,
    name varchar,
    primary key (id)
);

create table Payment (
    id bigint auto_increment,
    type_id bigint,
    amount decimal,
    student_id bigint,
    payment_date datetime,
    primary key (id),
    foreign key (type_id) references PaymentType(id),
    foreign key (student_id) references Student(id)
);

create table Mark (
    id bigint auto_increment,
    student_id bigint,
    subject_id bigint,
    mark int,
    primary key (id),
    foreign key (student_id) references Student(id),
    foreign key (subject_id) references Subject(id)
);