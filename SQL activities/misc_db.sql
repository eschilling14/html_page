CREATE TABLE wordassociation(
	author INT,
	word1 VARCHAR,
	word2 VARCHAR,
	source VARCHAR
);

select word1 from wordassociation
where word1 = 'stone'

select * from wordassociation
where author between 0 and 11