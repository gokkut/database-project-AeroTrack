/*MODUL 5*/

/* 1. TABLO: Sistem Kullanıcıları (Giriş Bilgileri)*/
CREATE TABLE System_Users (
    User_ID       INT            PRIMARY KEY,
    Staff_ID      INT            NOT NULL,
    Username      VARCHAR2(50)   UNIQUE NOT NULL,
    -- UYARI: Asagidaki sutun gercek bir sistemde hashlenip saklanmali.
    -- Ornek: DBMS_CRYPTO.HASH(UTL_RAW.CAST_TO_RAW(plain_pw), 3)
    Password_Hash VARCHAR2(255)  NOT NULL,
    CONSTRAINT fk_sysusers_staff
        FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID) ON DELETE CASCADE
);
/* 2. TABLO: Bakım Ekipleri Görevlendirmeleri*/
CREATE TABLE Crew_Assignments (
    Crew_ID        INT  PRIMARY KEY,
    Maintenance_ID INT  NOT NULL,
    Staff_ID       INT  NOT NULL,
    CONSTRAINT fk_crew_maintenance
        FOREIGN KEY (Maintenance_ID) REFERENCES Maintenance_Logs(Maintenance_ID) ON DELETE CASCADE,
    CONSTRAINT fk_crew_staff
        FOREIGN KEY (Staff_ID)       REFERENCES Staff(Staff_ID)                  ON DELETE CASCADE
);
/* 3. TABLO: Bakımlarda Kullanılan Yedek Parçaların Detayları*/
CREATE TABLE Maintenance_Parts (
    Detail_ID      INT  PRIMARY KEY,
    Maintenance_ID INT  NOT NULL,
    Part_ID        INT  NOT NULL,   -- Duzeltme: NUMBER → INT (Spare_Parts.Part_ID ile tip eslesmesi)
    Quantity_Used  INT  NOT NULL,
    CONSTRAINT chk_quantity_positive CHECK (Quantity_Used > 0),
    CONSTRAINT fk_parts_maintenance
        FOREIGN KEY (Maintenance_ID) REFERENCES Maintenance_Logs(Maintenance_ID) ON DELETE CASCADE,
    CONSTRAINT fk_parts_spare
        FOREIGN KEY (Part_ID)        REFERENCES Spare_Parts(Part_ID)             ON DELETE CASCADE
);
 

 
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5001,  1, 'aykut.gok',          'Aykut.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5002,  2, 'asli.okur',           'Asli.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5003,  3, 'iremnil.atac',        'IremNil.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5004,  4, 'firdevs.yesilyurt',   'Firdevs.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5005,  5, 'umran.cag',           'Umran.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5006,  6, 'liam.oconnor',        'Liam.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5007,  7, 'burak.sahin',         'Burak.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5008,  8, 'sophia.muller',       'Sophia.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5009,  9, 'can.celik',           'Can.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5010, 10, 'wei.chen',            'Wei.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5011, 11, 'zeynep.arslan',       'Zeynep.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5012, 12, 'oliver.brown',        'Oliver.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5013, 13, 'mehmet.ozturk',       'Mehmet.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5014, 14, 'isabella.rossi',      'Isabella.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5015, 15, 'fatma.yildiz',        'Fatma.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5016, 16, 'lucas.silva',         'Lucas.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5017, 17, 'hakan.erdogan',       'Hakan.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5018, 18, 'mia.jensen',          'Mia.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5019, 19, 'kemal.polat',         'Kemal.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5020, 20, 'yuki.takahashi',      'Yuki.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5021, 21, 'cem.kilic',           'Cem.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5022, 22, 'amelia.davies',       'Amelia.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5023, 23, 'selin.aydin',         'Selin.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5024, 24, 'ethan.wilson',        'Ethan.1234');
INSERT INTO System_Users (User_ID, Staff_ID, Username, Password_Hash) VALUES (5025, 25, 'emre.bulut',          'Emre.1234');
 

 
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6001, 1001,  1);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6002, 1001,  2);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6003, 1002,  3);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6004, 1003,  4);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6005, 1004,  1); 
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6006, 1005,  6);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6007, 1006,  7);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6008, 1007,  8);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6009, 1008,  2); 
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6010, 1009, 10);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6011, 1010, 11);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6012, 1011, 12);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6013, 1012, 13);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6014, 1013, 14);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6015, 1014, 15);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6016, 1015, 16);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6017, 1016,  3);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6018, 1017, 18);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6019, 1018, 19);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6020, 1019, 20);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6021, 1020, 21);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6022, 1021, 22);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6023, 1022, 23);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6024, 1023, 24);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6025, 1024, 25);
INSERT INTO Crew_Assignments (Crew_ID, Maintenance_ID, Staff_ID) VALUES (6026, 1025,  9); 
 

 
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7001, 1001, 101,  2);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7002, 1001, 102,  1);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7003, 1002, 103,  4);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7004, 1003, 104, 10);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7005, 1004, 105,  1);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7006, 1005, 106,  2);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7007, 1006, 107,  3);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7008, 1007, 108,  4);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7009, 1008, 109,  1);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7010, 1009, 110,  2);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7011, 1010, 111,  1);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7012, 1011, 112,  1);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7013, 1012, 113,  5);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7014, 1013, 114,  2);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7015, 1014, 115,  1);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7016, 1015, 116,  3);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7017, 1016, 117,  2);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7018, 1017, 118,  4);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7019, 1018, 119,  1);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7020, 1019, 120,  1);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7021, 1020, 121,  6);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7022, 1021, 122,  1);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7023, 1022, 123,  2);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7024, 1023, 124,  5);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7025, 1024, 125,  2);
INSERT INTO Maintenance_Parts (Detail_ID, Maintenance_ID, Part_ID, Quantity_Used) VALUES (7026, 1025, 101,  3); 
 


SELECT 
    sp.Part_Description,
    SUM(mp.Quantity_Used) AS Total_Used
FROM Maintenance_Parts mp
JOIN Spare_Parts sp ON mp.Part_ID = sp.Part_ID
WHERE sp.Current_Stock > 5 AND sp.Critical_Threshold > 1 
GROUP BY sp.Part_ID, sp.Part_Description
HAVING SUM(mp.Quantity_Used) >= 2
ORDER BY Total_Used DESC;

SELECT
    d.Department_Name,
    COUNT(ca.Crew_ID) AS Total_Assignments
FROM Crew_Assignments ca
JOIN Staff      s ON ca.Staff_ID      = s.Staff_ID
JOIN Department d ON s.Department_ID  = d.Department_ID
GROUP BY d.Department_ID, d.Department_Name
HAVING COUNT(ca.Crew_ID) > (
    SELECT AVG(Assignment_Count)
    FROM (
        SELECT COUNT(ca2.Crew_ID) AS Assignment_Count
        FROM Crew_Assignments ca2
        JOIN Staff s2 ON ca2.Staff_ID = s2.Staff_ID
        GROUP BY s2.Department_ID
    )
)
ORDER BY Total_Assignments DESC;