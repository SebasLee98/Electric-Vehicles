-- Most popular legislative district of Seattle
WITH Seattle AS (
    SELECT * FROM electric_vehicle_population_data WHERE City = "Seattle"
)
SELECT  `Legislative District`, count(`VIN (1-10)`) FROM Seattle GROUP BY `Legislative District`;

-- Number of vehicles within each CAFV
SELECT `Clean Alternative Fuel Vehicle (CAFV) Eligibility` as CAFV, count(DISTINCT `VIN (1-10)`) FROM electric_vehicle_population_data 
GROUP BY CAFV;

-- # of efficient cars by tier
-- Identify how to divide the numbers
SELECT distinct (`Electric Range`) as Ranges FROM electric_vehicle_population_data ORDER BY Ranges DESC;

SELECT CASE WHEN `Electric Range` < 80 THEN "Not Efficient"
WHEN `Electric Range` BETWEEN 80 AND 160 THEN "Somewhat Efficient"
WHEN `Electric Range` BETWEEN 160 AND 240 THEN "Efficient"
WHEN `Electric Range` > 240 THEN "Highly Efficient"
END AS Numbers,
count(DISTINCT `DOL Vehicle ID`)
FROM electric_vehicle_population_data
GROUP BY Numbers;

SELECT * FROM electric_vehicle_population_data ORDER BY `Electric Range` DESC;