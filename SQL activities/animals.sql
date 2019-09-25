SELECT * from people where name = 'Ahmed';
delete from people
where name = 'Ahmed';


CREATE TABLE people (
	id serial PRIMARY KEY,
	name VARCHAR (30) NOT NULL,
	has_pet BOOLEAN DEFAULT false, 
	pet_type VARCHAR (10) NOT NULL,
	pet_name VARCHAR (30),
	pet_age INT
);
INSERT INTO people (name, has_pet, pet_type, pet_name, pet_age)
VALUES ('Jacob', true, 'dog', 'Misty', 10), 
('Ahmed', true, 'rock', 'Rockington', 100),
('Peter', true, 'cat', 'Franklin', 2),
('Dave', true, 'dog', 'Queso', 1);

SELECT * from people where name = 'Ahmed';
delete from people
where name = 'Ahmed';

drop table people;

select * from people where name = 'Dave';
update people
set id has_pet = true, pet_name = 'Rocket', pet_age = 8
where id = 5;



