/*Query 3 
Problem
Retrieve a detailed list of heavy and expensive maintenance operations 
where the process took more than 20 man-hours AND the standard cost of that specific maintenance type exceeds 10,000.
 Order the results by the longest operations first.
  --  Kendime minik Hatırlatıcı:Hem çok uzun süren (20 saat üstü) hem de maliyeti yüksek olan (10.000 üstü) ağır bakımları tespit etmek.*/
* 
SELECT  ML.Operation_Date, MT.Type_Description, ML.Total_Man_Hours, MT.Standard_Cost
FROM MAINTENANCE_LOG ML
JOIN MAINTENANCE_TYPE MT ON ML.Type_ID = MT.Type_ID
WHERE ML.Total_Man_Hours > 20
    AND MT.Standard_Cost > 10000
ORDER BY ML.Total_Man_Hours DESC;