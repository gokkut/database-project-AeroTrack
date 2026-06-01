
CREATE TABLE MAINTENANCE_TYPE (
    Type_ID NUMBER PRIMARY KEY,
    Type_Description VARCHAR2(100) NOT NULL,
    Standard_Cost NUMBER(10, 2) NOT NULL,
    CONSTRAINT chk_standard_cost CHECK (Standard_Cost > 0)
);

CREATE TABLE MAINTENANCE_LOG (
    Maintenance_ID NUMBER PRIMARY KEY,
    Operation_Date DATE NOT NULL,
    Total_Man_Hours NUMBER(5, 2) NOT NULL,
    Aircraft_ID NUMBER NOT NULL,
    Type_ID NUMBER NOT NULL,
    CONSTRAINT fk_log_aircraft FOREIGN KEY (Aircraft_ID) REFERENCES AIRCRAFT(Aircraft_ID),
    CONSTRAINT fk_log_type FOREIGN KEY (Type_ID) REFERENCES MAINTENANCE_TYPE(Type_ID)
);


INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (1, 'A-Check', 3500.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (2, 'B-Check', 15000.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (3, 'C-Check', 125000.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (4, 'D-Check', 500000.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (5, 'Line Maintenance', 800.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (6, 'Transit Check', 300.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (7, 'Daily Inspection', 500.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (8, 'Weekly Inspection', 1200.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (9, 'Engine Wash', 2500.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (10, 'Landing Gear Lubrication', 900.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (11, 'Avionics Calibration', 4200.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (12, 'Cabin Deep Cleaning', 1100.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (13, 'APU Servicing', 3800.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (14, 'Radar Radome Inspection', 1600.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (15, 'Battery Replacement', 750.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (16, 'Oxygen System Pressure Check', 600.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (17, 'Main Landing Gear Tire Replacement', 1800.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (18, 'Brake Assembly Overhaul', 5400.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (19, 'Cockpit Windshield Replacement', 12500.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (20, 'Pitot Tube Cleaning', 450.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (21, 'Fuel Tank Contamination Check', 2200.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (22, 'Emergency Equipment Verification', 650.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (23, 'Cargo Door Seal Lubrication', 350.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (24, 'Engine Oil Filter Change', 850.00);
INSERT INTO MAINTENANCE_TYPE (Type_ID, Type_Description, Standard_Cost) VALUES (25, 'Hydraulic Fluid Top-up', 400.00);
COMMIT;

INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1001, TO_DATE('2025-11-10', 'YYYY-MM-DD'), 4.5, 101, 6);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1002, TO_DATE('2025-11-15', 'YYYY-MM-DD'), 12.0, 102, 8);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1003, TO_DATE('2025-12-01', 'YYYY-MM-DD'), 45.5, 103, 1);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1004, TO_DATE('2025-12-10', 'YYYY-MM-DD'), 2.0, 104, 7);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1005, TO_DATE('2025-12-22', 'YYYY-MM-DD'), 180.0, 105, 2);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1006, TO_DATE('2026-01-05', 'YYYY-MM-DD'), 8.5, 106, 9);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1007, TO_DATE('2026-01-12', 'YYYY-MM-DD'), 3.0, 107, 25);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1008, TO_DATE('2026-01-20', 'YYYY-MM-DD'), 6.5, 108, 12);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1009, TO_DATE('2026-02-02', 'YYYY-MM-DD'), 24.0, 109, 18);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1010, TO_DATE('2026-02-14', 'YYYY-MM-DD'), 1.5, 110, 20);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1011, TO_DATE('2026-02-28', 'YYYY-MM-DD'), 450.0, 101, 3);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1012, TO_DATE('2026-03-05', 'YYYY-MM-DD'), 5.0, 102, 10);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1013, TO_DATE('2026-03-15', 'YYYY-MM-DD'), 14.5, 103, 11);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1014, TO_DATE('2026-03-22', 'YYYY-MM-DD'), 2.5, 104, 15);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1015, TO_DATE('2026-04-01', 'YYYY-MM-DD'), 35.0, 105, 19);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1016, TO_DATE('2026-04-10', 'YYYY-MM-DD'), 4.0, 106, 22);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1017, TO_DATE('2026-04-18', 'YYYY-MM-DD'), 8.0, 107, 21);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1018, TO_DATE('2026-04-25', 'YYYY-MM-DD'), 3.5, 108, 24);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1019, TO_DATE('2026-05-02', 'YYYY-MM-DD'), 120.0, 109, 4);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1020, TO_DATE('2026-05-08', 'YYYY-MM-DD'), 2.0, 110, 23);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1021, TO_DATE('2026-05-15', 'YYYY-MM-DD'), 48.0, 101, 1);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1022, TO_DATE('2026-05-20', 'YYYY-MM-DD'), 6.0, 102, 17);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1023, TO_DATE('2026-05-25', 'YYYY-MM-DD'), 9.5, 103, 13);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1024, TO_DATE('2026-05-28', 'YYYY-MM-DD'), 3.0, 104, 16);
INSERT INTO MAINTENANCE_LOG (Maintenance_ID, Operation_Date, Total_Man_Hours, Aircraft_ID, Type_ID) VALUES (1025, TO_DATE('2026-05-30', 'YYYY-MM-DD'), 18.0, 105, 14);

COMMIT;


/*Query 1
Problem
Identify aircraft that pose an immediate flight safety risk because they have exceeded 
15,000 flight hours and have not undergone a heavy 'C-Check' maintenance operation within the last 12 months.

- Kendime minik Hatirlatici: Bu sorgu NOT IN ve Subquery (Alt Sorgu) kullanarak,
 uçus saati 15.000'i geçen AMA son 1 yilda 'C-Check' bakimi YAPILMAYAN riskli uçaklari buluyor.*/

SELECT  A.Aircraft_ID, A.Tail_Reg_No, A.Current_Flight_Hours
FROM AIRCRAFT A
WHERE A.Current_Flight_Hours > 15000
    AND A.Aircraft_ID NOT IN (
        SELECT ML.Aircraft_ID
        FROM MAINTENANCE_LOG ML
        JOIN MAINTENANCE_TYPE MT ON ML.Type_ID = MT.Type_ID
        WHERE MT.Type_Description = 'C-Check'
          AND ML.Operation_Date >= ADD_MONTHS(SYSDATE, -12)
    );


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