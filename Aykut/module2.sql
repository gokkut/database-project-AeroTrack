/*MODULE 2*/
CREATE TABLE Department(
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR2(50) NOT NULL,
    Contact_Number VARCHAR2(30) NOT NULL
);


CREATE TABLE Staff(
    Staff_ID INT PRIMARY KEY,
    Department_ID INT,
    First_Name VARCHAR2(50) NOT NULL,
    Last_Name VARCHAR2(50) NOT NULL,
    Role VARCHAR2(50) NOT NULL,
    Cert_Expiry_Date DATE NOT NULL,
    Seniority_Level NUMBER(1) NOT NULL
        CONSTRAINT chk_seniority CHECK (Seniority_Level BETWEEN 1 AND 5),
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)   
);




/*Insertion Part*/
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (1, 'Avionics', '+905551234501');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (2, 'Engine', '+905551234502');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (3, 'Airframe', '+905551234503');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (4, 'Hydraulics', '+905551234504');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (5, 'Pneumatics', '+905551234505');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (6, 'Landing Gear', '+905551234506');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (7, 'Electrical Systems', '+905551234507');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (8, 'Cabin Interiors', '+905551234508');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (9, 'Paint Shop', '+905551234509');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (10, 'Sheet Metal', '+905551234510');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (11, 'Non-Destructive Testing', '+905551234511');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (12, 'Auxiliary Power Unit', '+905551234512');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (13, 'Flight Controls', '+905551234513');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (14, 'Radar & Communications', '+905551234514');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (15, 'Safety & Quality Assurance', '+905551234515');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (16, 'Line Maintenance', '+905551234516');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (17, 'Base Maintenance', '+905551234517');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (18, 'Maintenance Planning', '+905551234518');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (19, 'Reliability Engineering', '+905551234519');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (20, 'Tooling & Calibration', '+905551234520');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (21, 'Composite Repair', '+905551234521');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (22, 'In-Flight Entertainment', '+905551234522');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (23, 'Oxygen Systems', '+905551234523');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (24, 'Fuel Systems', '+905551234524');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (25, 'Windows & Doors', '+905551234525');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (26, 'Environmental Control', '+905551234526');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (27, 'Fleet Management', '+905551234527');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (28, 'Technical Records', '+905551234528');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (29, 'Supply Chain & Logistics', '+905551234529');
INSERT INTO Department (Department_ID, Department_Name, Contact_Number) VALUES (30, 'Training & Certification', '+905551234530');

INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (1, 1, 'Aykut', 'Gök', 'Avionics Technician', DATE '2027-05-15', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (2, 2, 'Aslı', 'Okur', 'Engine Specialist', DATE '2026-11-20', 5);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (3, 3, 'İrem Nil', 'Ataç', 'Airframe Inspector', DATE '2028-02-10', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (4, 4, 'Firdevs', 'Yeşilyurt', 'Hydraulics Engineer', DATE '2026-09-05', 2);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (5, 5, 'Ümran', 'Çağ', 'Pneumatics Tech', DATE '2029-01-30', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (6, 6, 'Liam', 'O''Connor', 'Landing Gear Expert', DATE '2027-08-12', 5);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (7, 7, 'Burak', 'Şahin', 'Electrical Engineer', DATE '2026-12-01', 1);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (8, 8, 'Sophia', 'Müller', 'Cabin Interior Tech', DATE '2028-04-22', 2);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (9, 9, 'Can', 'Çelik', 'Paint Specialist', DATE '2027-07-18', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (10, 10, 'Wei', 'Chen', 'Sheet Metal Worker', DATE '2026-10-15', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (11, 11, 'Zeynep', 'Arslan', 'NDT Inspector', DATE '2028-11-30', 5);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (12, 12, 'Oliver', 'Brown', 'APU Technician', DATE '2027-03-05', 2);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (13, 13, 'Mehmet', 'Öztürk', 'Flight Controls Eng', DATE '2029-06-11', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (14, 14, 'Isabella', 'Rossi', 'Radar Systems Tech', DATE '2026-12-25', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (15, 15, 'Fatma', 'Yıldız', 'Quality Assurance Mgr', DATE '2030-01-15', 5);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (16, 16, 'Lucas', 'Silva', 'Line Maintenance Tech', DATE '2027-09-09', 2);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (17, 17, 'Hakan', 'Erdoğan', 'Base Maint Supervisor', DATE '2028-05-14', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (18, 18, 'Mia', 'Jensen', 'Maintenance Planner', DATE '2026-08-20', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (19, 19, 'Kemal', 'Polat', 'Reliability Analyst', DATE '2029-02-28', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (20, 20, 'Yuki', 'Takahashi', 'Calibration Tech', DATE '2027-11-11', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (21, 21, 'Cem', 'Kılıç', 'Composite Tech', DATE '2028-10-05', 2);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (22, 22, 'Amelia', 'Davies', 'IFE Specialist', DATE '2026-12-10', 1);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (23, 23, 'Selin', 'Aydın', 'Oxygen Systems Eng', DATE '2029-07-22', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (24, 24, 'Ethan', 'Wilson', 'Fuel Systems Tech', DATE '2027-04-16', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (25, 25, 'Emre', 'Bulut', 'Doors Specialist', DATE '2028-01-08', 2);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (26, 26, 'Chloe', 'Martin', 'ECS Engineer', DATE '2026-10-31', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (27, 27, 'Deniz', 'Koç', 'Fleet Manager', DATE '2030-03-15', 5);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (28, 28, 'Alexander', 'Ivanov', 'Technical Records Clerk', DATE '2027-06-25', 1);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (29, 29, 'Ozan', 'Turan', 'Logistics Coordinator', DATE '2028-09-12', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (30, 30, 'Harper', 'Lee', 'Training Instructor', DATE '2029-12-05', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (31, 15, 'Mert', 'Yılmaz', 'Safety Inspector', DATE '2028-05-10', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (32, 8, 'Emma', 'Watson', 'Cabin Trim Specialist', DATE '2027-11-22', 2);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (33, 24, 'Kaan', 'Özdemir', 'Fuel Systems Inspector', DATE '2029-01-15', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (34, 2, 'David', 'Miller', 'Engine Mechanic', DATE '2026-08-30', 5);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (35, 12, 'Ayşenur', 'Çetin', 'APU Engineer', DATE '2030-03-12', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (36, 18, 'Hiroshi', 'Sato', 'Maintenance Scheduler', DATE '2027-06-18', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (37, 1, 'Canan', 'Kurt', 'Avionics Diagnostician', DATE '2028-12-05', 2);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (38, 9, 'Pablo', 'Garcia', 'Paint Shop Supervisor', DATE '2029-09-09', 5);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (39, 14, 'Barış', 'Aksoy', 'Comms Technician', DATE '2027-02-28', 1);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (40, 21, 'Sophie', 'Laurent', 'Composite Inspector', DATE '2028-07-14', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (41, 3, 'Gökhan', 'Yavuz', 'Airframe Welder', DATE '2026-10-05', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (42, 29, 'James', 'Anderson', 'Logistics Analyst', DATE '2030-01-20', 2);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (43, 7, 'Zehra', 'Güneş', 'Electrical Tech', DATE '2027-04-16', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (44, 26, 'Lars', 'Nielsen', 'ECS Specialist', DATE '2029-11-30', 5);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (45, 5, 'Onur', 'Taş', 'Pneumatics Engineer', DATE '2028-08-25', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (46, 11, 'Maria', 'Silva', 'NDT Specialist', DATE '2027-05-01', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (47, 16, 'Ece', 'Köse', 'Line Maintenance Mgr', DATE '2030-06-10', 5);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (48, 30, 'William', 'Taylor', 'Training Coordinator', DATE '2028-02-14', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (49, 25, 'Kerem', 'Işık', 'Doors Technician', DATE '2026-12-12', 2);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (50, 19, 'Anna', 'Kowalski', 'Reliability Engineer', DATE '2029-04-08', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (51, 12, 'Barış', 'Aksoy', 'Avionics Technician', DATE '2028-05-10', 2);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (52, 3, 'Barış', 'Yavuz', 'Airframe Welder', DATE '2029-01-15', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (53, 7, 'Zehra', 'Güneş', 'Electrical Tech', DATE '2027-11-20', 1);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (54, 16, 'Zehra', 'Güneş', 'Line Maintenance Tech', DATE '2028-03-22', 2);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (55, 11, 'Maria', 'Silva', 'NDT Inspector', DATE '2026-09-30', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (56, 39, 'Gökhan', 'Yavuz', 'Comms Technician', DATE '2027-12-01', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (57, 21, 'Ece', 'Aksoy', 'Composite Inspector', DATE '2030-02-18', 2);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (58, 30, 'William', 'Taylor', 'Training Coordinator', DATE '2029-08-14', 5);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (59, 29, 'William', 'Taylor', 'Logistics Analyst', DATE '2028-10-10', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (60, 5, 'Onur', 'Taş', 'Pneumatics Tech', DATE '2027-06-05', 2);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (61, 25, 'Sophie', 'Laurent', 'Doors Technician', DATE '2028-11-11', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (62, 19, 'Kerem', 'Işık', 'Reliability Engineer', DATE '2031-01-25', 3);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (63, 26, 'Anna', 'Kowalski', 'ECS Specialist', DATE '2029-07-07', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (64, 16, 'Lars', 'Nielsen', 'Line Maintenance Tech', DATE '2028-04-12', 2);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (65, 3, 'Gökhan', 'Köse', 'Airframe Welder', DATE '2027-03-15', 1);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (66, 16, 'Ece', 'Köse', 'Line Maintenance Mgr', DATE '2030-12-01', 5);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (67, 29, 'James', 'Anderson', 'Supply Chain Analyst', DATE '2029-05-20', 4);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (68, 11, 'Maria', 'Silva', 'NDT Specialist', DATE '2028-09-09', 2);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (69, 7, 'Barış', 'Aksoy', 'Electrical Tech', DATE '2026-11-11', 1);
INSERT INTO Staff (Staff_ID, Department_ID, First_Name, Last_Name, Role, Cert_Expiry_Date, Seniority_Level) VALUES (70, 5, 'Zehra', 'Taş', 'Pneumatics Engineer', DATE '2030-10-30', 3);

/*Querries*/

/* Lists employees in maintenance departments with certificates expiring in 2028 or later. */
SELECT s.First_Name, s.Last_Name, d.Department_Name, s.Role, s.Cert_Expiry_Date
FROM Staff s
JOIN Department d 
ON s.Department_ID = d.Department_ID
WHERE d.Department_Name LIKE '%Maintenance%'
AND s.Cert_Expiry_Date >= DATE '2028-01-01';

/* Lists the department name, contact number, and the specific first or last name that is duplicated among employees in that department. */
SELECT d.Department_Name, d.Contact_Number, s.First_Name AS Shared_Name
FROM Staff s
JOIN Department d 
ON s.Department_ID = d.Department_ID
GROUP BY d.Department_ID, d.Department_Name, d.Contact_Number, s.First_Name
HAVING COUNT(s.First_Name) > 1
    
UNION
    
SELECT  d.Department_Name, d.Contact_Number, s.Last_Name AS Shared_Name
FROM Staff s
JOIN Department d 
ON s.Department_ID = d.Department_ID
GROUP BY d.Department_ID, d.Department_Name, d.Contact_Number, s.Last_Name
HAVING COUNT(s.Last_Name) > 1;

COMMIT;
