-- Most popular legislative district of Seattle
WITH Seattle AS (
    SELECT * FROM electric_vehicle_population_data WHERE City = "Seattle"
)
SELECT  `Legislative District`, count(`VIN (1-10)`) FROM Seattle GROUP BY `Legislative District`;

-- Number of vehicles within each CAFV
SELECT `Clean Alternative Fuel Vehicle (CAFV) Eligibility` as CAFV, count(DISTINCT `VIN (1-10)`) FROM electric_vehicle_population_data 
GROUP BY CAFV;



SELECT * FROM electric_vehicle_population_data