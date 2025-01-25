
-- Data loading process in our table..

-- How to copy csv data to our table ??

-- Here is the solution below:

COPY city
FROM 'F:\SQL_Coffee_Expansion_Analysis\csv_file\city.csv'
WITH (FORMAT csv , HEADER TRUE , DELIMITER ',' , ENCODING 'UTF8');


COPY customers
FROM 'F:\SQL_Coffee_Expansion_Analysis\csv_file\customers.csv'
WITH (FORMAT csv , HEADER TRUE , DELIMITER ',' , ENCODING 'UTF8');


COPY products
FROM 'F:\SQL_Coffee_Expansion_Analysis\csv_file\products.csv'
WITH (FORMAT csv , HEADER TRUE , DELIMITER ',' , ENCODING 'UTF8');



COPY sales
FROM 'F:\SQL_Coffee_Expansion_Analysis\csv_file\sales.csv'
WITH (FORMAT csv , HEADER TRUE , DELIMITER ',' , ENCODING 'UTF8');


