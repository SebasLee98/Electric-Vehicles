-- Most popular legislative district of Seattle
SELECT * FROM electric_vehicle_population_data WHERE City = "Seattle"

SELECT  `Legislative District`, count(`VIN (1-10)`) FROM electric_vehicle_population_data GROUP BY `Legislative District`