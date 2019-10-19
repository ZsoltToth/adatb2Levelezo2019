CREATE table person(personId number(3) primary key, firstname varchar2(20), lastname varchar2(20), nationality varchar2(3));

create table car(
	plateno varchar2(6), 
	color varchar2(15), 
	brand varchar2(20), 
	owner number(3),
	constraint carowner foreign key (owner) references person(personId)
);
