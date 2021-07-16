create sequence employee_seq increment 1 start 1;
create sequence team_seq increment 1 start 1;
create sequence employee_assignment_seq increment 1 start 1;
-- Tables 
create table employee(
    id integer not null default nextval('employee_seq'),
    name varchar(50) not null,
    date_of_joining timestamp not null,
    designation varchar(25),
    gender varchar(10),
    email varchar(50),
    bio varchar(500),
    constraint employee_pk primary key(id)
);
create table team(
    id integer not null default nextval('team_seq'),
    email varchar(50),
    description varchar(500),
    name varchar(50) not null,
    constraint team_pk primary key(id)
);
create table employee_assignment(
    id integer not null default nextval('employee_assignment_seq'),
    employee_id integer not null,
    team_id integer not null,
    constraint employee_assignment_pk primary key(id),
    constraint employee_assignment_fkey1 foreign key (employee_id) references employee(id),
    constraint employee_assignment_fkey2 foreign key (team_id) references team(id)
);

-- Tables without sequence and serial datatype 
-- NOTE both are equal but different syntax
create table employee_assignment(
    id integer serial,
    employee_id integer not null,
    team_id integer not null constraint employee_assignment_pk primary key(id),
    constraint employee_assignment_fkey1 foreign key (employee_id) references employee(id),
    constraint employee_assignment_fkey2 foreign key (team_id) references team(id)
);


