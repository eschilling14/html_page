CREATE TABLE programming_languages(
id int,
language VARCHAR (20),
rating INT);

update programming_languages
set id serial primary key;

INSERT INTO programming_languages(language, rating)
VALUES('HTML', 95),
('JS', 99),
('JQuery', 98),
('MySQL', 70),
('MySQL', 70);

select * from programming_languages
where language = 'MySQL'
delete from programming_languages
where id = 5;