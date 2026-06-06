/*Query 2
Problem
Identify labor-intensive recurring maintenance operations by listing maintenance types that have been 
performed more than once across the fleet and have an average execution time exceeding 10 man-hours.

-- Kendime minik Hatirlatici: Bu sorgu JOIN, GROUP BY ve HAVING kullanarak, 
filoda 1'den fazla kez yapilan ve ortalama 10 saatten uzun süren agir bakim türlerini gruplayip listeler.*/


SELECT MT.Type_Description, 
    COUNT(ML.Maintenance_ID) AS Total_Operations, 
    ROUND(AVG(ML.Total_Man_Hours), 2) AS Avg_Man_Hours
FROM  MAINTENANCE_TYPE MT
JOIN  MAINTENANCE_LOG ML ON MT.Type_ID = ML.Type_ID
GROUP BY  MT.Type_Description
HAVING COUNT(ML.Maintenance_ID) > 1 AND AVG(ML.Total_Man_Hours) > 10
ORDER BY Avg_Man_Hours DESC;