--UC1-Create Address Book Service DB--
Create Database AddressBookServiceDB

--UC2-Create Address Book table--
Create table AddressBookTable(
FirstName varchar(100),
LastName varchar(100),
Address varchar(100),
City varchar(100),
State varchar(100),
Zip bigint,
PhoneNumber bigint,
Email varchar(100));

select * From AddressBookTable;

---UC3-Insert New Contacts to Address Book---
insert into AddressBookTable(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)Values
('ravi', 'kishore', 'bcm', 'hyderbad', 'Telengana', 577526, 8663737488, 'Ravikishore@gmail.com'),
('kath', 'Benk', 'morampli', 'vizag', 'andhra',577543, 9448575321, 'karth@gmail.com'),
('Manoj', 'yuva', 'khammam', 'hyderbad', 'Telengana', 560059, 14325698799, 'manoj@gmail.com'),
('Mouna', 'peer', 'warangal', 'hyderbad', 'Telengana', 576522, 2324582235, 'mouna@gmail.com');
Select * From AddressBookTable;

--UC4-Ability to Edit Existing Contact Using Name--
Update AddressBookTable set PhoneNumber = 9478834582 Where FirstName = 'ravi';
Update AddressBookTable set PhoneNumber = 9643263748 Where FirstName = 'Mouna';

--UC5-Ability to delete a person using person name--
delete from AddressBookTable where FirstName = 'Manoj';
select * From AddressBookTable;

--UC6-Ability to Retrieve person belongs to state or city--
select * From AddressBookTable where state = 'Telengana' or City = 'hyderbad';

--Uc7-Abilty to understand the size of addressbook by city and state--
select COUNT(*) as StateCount, State from AddressBookTable group by State;
select COUNT(*) as CityCount, City from AddressBookTable group by City;

--UC8-Ability to Retrieve entries sorted Alphabetically by person name for a given city--
select * from AddressBookTable order by FirstName;

--UC9-Identify each addressboook with name and type-- 
alter table AddressBookTable add ContactType varchar(100) not null default 'bro';
update AddressBookTable set ContactType='Family' where FirstName='Kath';
select * from AddressBookTable;

--UC10- Get number of contact persons count by type--
select COUNT(ContactType) as TypeCount from AddressBookTable group by ContactType;

--UC11-- Add person to friend and family--
insert into AddressBookTable(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email, ContactType)
values
('Virat', 'Kohli', 'RCB', 'Bangalore', 'Karnataka', 560040, 1231231235, 'virat@gmail.com', 'Friend'),
('Vikram', 'mirchi', 'RCB', 'Bangalore', 'Karnataka', 560040, 1231231235, 'vikrammirchi@gmail.com', 'Family');
select * from AddressBookTable;




