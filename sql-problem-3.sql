-- Week 3 - SQL - Problem 3
-- Your mission is to list the scientific names of bird species in descending order of their maximum 
-- average egg volumes.

SELECT 
    Scientific_name, 
    MAX(avg_volume) AS Max_avg_volume
FROM(
    SELECT 
        Nest_ID, 
        AVG((3.14 * Length * Width * Width) / 6) AS Avg_volume
    FROM Bird_eggs
    GROUP BY Nest_ID
) AS Averages
JOIN Bird_nests USING (Nest_ID)
JOIN Species ON Species.Code = Bird_nests.Species 
GROUP BY Scientific_name
ORDER BY Max_avg_volume DESC;




