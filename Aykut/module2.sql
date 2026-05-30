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

COMMIT;
