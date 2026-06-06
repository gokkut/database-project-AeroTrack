/*Query 1
Problem
Identify aircraft that pose an immediate flight safety risk because they have exceeded 
15,000 flight hours and have not undergone a heavy 'C-Check' maintenance operation within the last 12 months.

- Kendime minik Hatirlatici: Bu sorgu NOT IN ve Subquery (Alt Sorgu) kullanarak,
 uçus saati 15.000'i geçen AMA son 1 yilda 'C-Check' bakimi YAPILMAYAN riskli uçaklari buluyor.*/

SELECT  A.Aircraft_ID, A.Tail_Reg_No, A.Current_Flight_Hour
FROM AIRCRAFT A
WHERE A.Current_Flight_Hour > 15000
    AND A.Aircraft_ID NOT IN (
        SELECT ML.Aircraft_ID
        FROM MAINTENANCE_LOG ML
        JOIN MAINTENANCE_TYPE MT ON ML.Type_ID = MT.Type_ID
        WHERE MT.Type_Description = 'C-Check'
          AND ML.Operation_Date >= ADD_MONTHS(SYSDATE, -12)
    );
