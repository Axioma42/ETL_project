DROP TABLE credit_ny;
CREATE TABLE credit_ny(
	year_naics VARCHAR PRIMARY KEY,
	establishments decimal,
	average_employment decimal,
	total_wage decimal
);

DROP TABLE employment_ny;
CREATE TABLE employment_ny(
	year_naics VARCHAR PRIMARY KEY,
	taxpayers_number decimal,
	credit_amount decimal,
	credit_percent decimal(5,2)
);


SELECT credit_ny.year_naics, credit_ny.establishments, credit_ny.average_employment,
		credit_ny.total_wage, employment_ny.taxpayers_number, employment_ny.credit_amount,
		employment_ny.credit_percent
FROM credit_ny
JOIN employment_ny
ON credit_ny.year_naics = employment_ny.year_naics;