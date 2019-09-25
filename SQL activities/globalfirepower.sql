

-- Create new table to import data
CREATE TABLE firepower (
	country VARCHAR,
	ISO3 VARCHAR,
	rank INT,
	TotalPopulation INT,
	ManpowerAvailable INT,
	TotalMilitaryPersonnel INT,
	ActivePersonnel INT,
	ReservePersonnel INT,
	TotalAircraftStrength INT,
	FighterAircraft INT,
	AttackAircraft INT,
	TotalHelicopterStrength INT,
	AttackHelicopters INT
);

-- Import data from firepower.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM firepower
where ReservePersonnel = 0
delete from firepower
where ReservePersonnel = 0;

update firepower
set FighterAircraft = 1
where FighterAircraft = 0;

update firepower
set TotalAircraftStrength = TotalAircraftStrength + 1
where FighterAircraft = 1;

select AVG(TotalMilitaryPersonnel) AS AvgTotMilPersonnel,
AVG(TotalAircraftStrength) AS AvgTotAircraftStrength,
AVG(TotalHelicopterStrength) AS AvgTotHelicopterStrength,
AVG(TotalPopulation) AS AvgTotalPopulation
FROM firepower;



