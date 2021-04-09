create schema Project

create table Project_citizens
(
citizen_cnic varchar(15) not null primary key,
citizen_name varchar(50) not null,
citizen_father varchar(50) not null,
citizen_address varchar(50) not null,
citizen_gender char not null,
citizen_contact varchar(50) null,
citizen_IdMark varchar(50) null
)

create table Project_vehicles_data
(
vehicles_regNo varchar(8) not null primary key,
vehicles_typeName varchar not null,
vehicles_make varchar(20) null,
vehicles_model varchar(20) null,
vehicles_chassis varchar(20) null,
vehicles_color varchar(20) null,
)
create table Project_vehicles_reg
(
citizen_cnic varchar(15) not null primary key foreign key references Project_citizens(citizen_cnic) on delete cascade,
vehicles_regNo varchar(8) not null foreign key references Project_vehicles_data(vehicles_regNo) on delete cascade,
)

create table Project_Education
(
citizen_cnic varchar(15) not null primary key foreign key references Project_citizens(citizen_cnic) on delete cascade,
Education_qualification varchar(30) null,
Education_institute varchar(30) null,
Education_regNo varchar(30) null
)
create table Project_Health
(
citizen_cnic varchar(15) not null primary key foreign key references Project_citizens(citizen_cnic) on delete cascade,
coronaVcc char not null,
polioVcc char not null
)
