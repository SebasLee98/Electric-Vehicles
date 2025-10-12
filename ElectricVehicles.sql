-- Most popular legislative district of Seattle
WITH Seattle AS (
    SELECT * FROM electric_vehicle_population_data WHERE City = "Seattle"
)
SELECT  `Legislative District`, count(`VIN (1-10)`) FROM Seattle GROUP BY `Legislative District`