create table admins
(
    id       int auto_increment
        primary key,
    username varchar(80)  null,
    email    varchar(320) null,
    password varchar(32)  not null,
    constraint email
        unique (email),
    constraint username
        unique (username)
)
    engine = MyISAM
    collate = utf8mb3_unicode_ci;

create table attendance
(
    id     int auto_increment
        primary key,
    s_id   varchar(13)  null,
    c_id   varchar(100) null,
    time   datetime     null,
    result varchar(10)  not null
)
    engine = MyISAM
    collate = utf8mb3_unicode_ci;

create index c_id
    on attendance (c_id);

create index s_id
    on attendance (s_id);

create table courses
(
    c_id                 varchar(6)           not null
        primary key,
    t_id                 varchar(8)           not null,
    c_name               varchar(100)         not null,
    times                text                 null,
    flag                 varchar(50)          null,
    attendance_status    tinyint(1) default 0 null,
    attendance_course_id varchar(100)         null,
    constraint attendance_course_id
        unique (attendance_course_id)
)
    engine = MyISAM
    collate = utf8mb3_unicode_ci;

create index t_id
    on courses (t_id);

create table student_course
(
    s_id varchar(13)  not null,
    c_id varchar(100) not null,
    primary key (s_id, c_id)
)
    engine = MyISAM
    collate = utf8mb3_unicode_ci;

create index c_id
    on student_course (c_id);

create table student_faces
(
    s_id    varchar(13) not null
        primary key,
    feature text        not null
)
    engine = MyISAM
    collate = utf8mb3_unicode_ci;

create table students
(
    s_id       varchar(13) not null
        primary key,
    s_name     varchar(80) not null,
    s_password varchar(32) not null,
    flag       int         null,
    `before`   datetime    null
)
    engine = MyISAM
    collate = utf8mb3_unicode_ci;

create table teachers
(
    t_id       varchar(8)  not null
        primary key,
    t_name     varchar(80) not null,
    t_password varchar(32) not null,
    `before`   datetime    null
)
    engine = MyISAM
    collate = utf8mb3_unicode_ci;

create table users
(
    id       int auto_increment
        primary key,
    username varchar(80)  null,
    email    varchar(320) null,
    password varchar(32)  not null,
    constraint email
        unique (email),
    constraint username
        unique (username)
)
    engine = MyISAM
    collate = utf8mb3_unicode_ci;


