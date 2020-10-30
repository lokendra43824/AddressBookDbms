--uc-1-created-a-addressbook-database
--...................................

--uc-2-create addresbook table

create table Address_Book
(
firstname varchar(30) not null,
lastname varchar(30) not null,
address varchar(300) not null,
city varchar(20) not null,
state varchar(20) not null,
zip int,
phoneNumber varchar(20),
email varchar(30)

);

--uc-3-Insert-data-into-adressbook-table

insert into Address_Book values('karan','singh','mumbai',
'MUM','MR',533293,'+91 9876543210','karan@gmail.com');

insert into Address_Book values('Ajay','lodale','pune',
'PUN','MR',542593,'+91 9866256666','ajay@gmail.com');

insert into Address_Book values('saurab','navdkar','hyderabad',
'HYD','TS',502581,'+91 9492227597','saurav@gmail.com');

insert into Address_Book values('lokendra','yeddula','tirupati',
'TPT','AP',542593,'+91 7085237649','lokendra@gmail.com');


--UC4 Edit the existing contact using FirstName

update Address_Book set email='saurav123@gmail.com' where firstname='saurab';
update Address_Book set lastname='moturi' where lastname='yeddula';

select * from Address_Book
--UC5 Delete a contact using FirstName

delete from Address_Book where firstname='lokendra';
delete from Address_Book where firstname='karan';


--UC6 Retrive the person belonging to a state 

select * from Address_Book where State='AP';

select * from Address_Book where State='MR';


--UC7 Get the size by state and city wise count 

select State,count(*) as NoOfPersons from Address_Book group by State;
select city,count(*) as NoOfPersons from Address_Book group by city;

--UC8 get the city wise sorted contacts

select * from Address_Book  where State='MR' order by firstname ;

select * from Address_Book;


--UC9 identify each address book with name and type

alter table Address_Book add 
name varchar(255),
Type varchar(255);

update Address_Book set Type='Brother' where firstname='karan'; 

update Address_Book set Type='Friends' where firstname='ajay'; 

update Address_Book set Type='Family' where firstname='saurab'; 

update Address_Book set Type='Myself' where firstname='lokendra'; 

--UC10 get the count of contacts based on type
select * from Address_Book where Type='Friends';
select * from Address_Book where Type='Family';
select Type,count(*) as NoOfPersons from Address_Book group by Type;

--UC11 Add a person to both friends and family
insert into Address_Book values('gunjan','sharma','delhi',
'delhi','DLH',533293,'+91 9876543210','gunjan@gmail.com','gunjan','Family');

select * from Address_Book;
