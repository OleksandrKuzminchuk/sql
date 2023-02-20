DROP table if exists Person;
DROP table if exists address;
Create table person
(
    PersonId  int,
    FirstName varchar(255),
    LastName  varchar(255)
);

Create table address
(
    AddressId int,
    PersonId  int,
    City      varchar(255),
    State     varchar(255)
);

Truncate table person;

insert into person (PersonId, LastName, FirstName)
values ('1', 'Wang', 'Allen');
insert into person (PersonId, LastName, FirstName)
values ('2', 'Gur', 'Kurl');
insert into person (PersonId, LastName, FirstName)
values ('3', 'Hurm', 'Jurd');


Truncate table address;

insert into address (AddressId, PersonId, City, State)
values ('1', '2', 'New York City', 'New York');

select * from person;
select * from address;

--Write a SQL query for a report that provides the following
-- information for each person in the Person table, regardless
-- if there is an address for each of those people:
-- FirstName, LastName, City, State


--solution
SELECT FirstName, LastName,  COALESCE(City, 'no information'), COALESCE(State, 'no information') FROM address a RIGHT OUTER JOIN  person p ON (a.personid = p.personid);