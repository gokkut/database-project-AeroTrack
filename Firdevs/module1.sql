CREATE TABLE Hangars (
    Hangar_ID INT PRIMARY KEY,
    Hangar_Code VARCHAR2(50) NOT NULL,
    Capacity_Aircraft_Count NUMBER,
    Location_Airport VARCHAR2(100) NOT NULL,
    CONSTRAINT chk_hangar_capacity CHECK (Capacity_Aircraft_Count >= 0)
);

CREATE TABLE Aircrafts (
    Aircraft_ID INT PRIMARY KEY,
    Hangar_ID INT,
    Tail_Reg_No VARCHAR2(20) NOT NULL,
    Production_Year NUMBER,
    Current_Flight_Hours NUMBER DEFAULT 0,
    Flight_Status VARCHAR2(20) NOT NULL,
    CONSTRAINT uq_tail_reg_no UNIQUE (Tail_Reg_No),
    CONSTRAINT chk_flight_status CHECK (Flight_Status IN ('Active', 'Maintenance', 'Standby')),
    CONSTRAINT chk_flight_hours CHECK (Current_Flight_Hours >= 0),
    CONSTRAINT fk_aircraft_hangar FOREIGN KEY (Hangar_ID) 
    REFERENCES Hangars(Hangar_ID) ON DELETE SET NULL
);
CREATE TABLE Aircraft_Components (
    Aircraft_ID INT,
    Component_No INT,
    Component_Name VARCHAR2(100) NOT NULL,
    Component_Type VARCHAR2(50),
    Condition_Status VARCHAR2(50),
    Production_Year INT,
    CONSTRAINT pk_aircraft_component PRIMARY KEY (Aircraft_ID, Component_No),
    CONSTRAINT fk_weak_entity_aircraft FOREIGN KEY (Aircraft_ID) 
    REFERENCES Aircrafts(Aircraft_ID) ON DELETE CASCADE
);


   /*AIRCRAFT COMPONENTS INSERTION */
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (101, 1, 'Left Engine CFM56', 'Engine', 'Good', 2015);
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (101, 2, 'Right Engine CFM56', 'Engine', 'Needs Inspection', 2015);
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (101, 3, 'Main Landing Gear', 'Landing Gear', 'Good', 2015);
    
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (102, 1, 'Left Engine CFM56', 'Engine', 'Excellent', 2016);
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (102, 2, 'Right Engine CFM56', 'Engine', 'Excellent', 2016);
    
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (103, 1, 'Weather Radar System', 'Avionics', 'Under Maintenance', 2012);
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (103, 2, 'Flight Management Computer', 'Avionics', 'Good', 2012);
    
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (104, 1, 'APU (Auxiliary Power Unit)', 'Power Unit', 'Good', 2018);
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (104, 2, 'Nose Landing Gear', 'Landing Gear', 'Excellent', 2018);
    
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (105, 1, 'Elevator Actuator', 'Flight Control', 'Needs Inspection', 2020);
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (105, 2, 'Rudder Control Unit', 'Flight Control', 'Good', 2020);
    
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (106, 1, 'Cabin Air Compressor', 'Environmental Control', 'Good', 2019);
    
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (107, 1, 'Left Winglet', 'Structure', 'Under Maintenance', 2014);
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (107, 2, 'Right Winglet', 'Structure', 'Under Maintenance', 2014);
    
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (108, 1, 'Engine Fuel Pump', 'Fuel System', 'Excellent', 2022);
    
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (109, 1, 'Hydraulic Pump A', 'Hydraulic System', 'Needs Inspection', 2011);
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (109, 2, 'Hydraulic Pump B', 'Hydraulic System', 'Good', 2011);
    
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (110, 1, 'VHF Communication Radio', 'Avionics', 'Excellent', 2021);
    
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (111, 1, 'Passenger Oxygen System', 'Safety System', 'Good', 2017);
    
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (112, 1, 'Brake Assembly Left', 'Landing Gear', 'Needs Inspection', 2013);
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (112, 2, 'Brake Assembly Right', 'Landing Gear', 'Good', 2013);
    
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (113, 1, 'Cargo Door Actuator', 'Hydraulic System', 'Excellent', 2019);
    
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (114, 1, 'Anti-Ice System Valve', 'Environmental Control', 'Under Maintenance', 2015);
    
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (115, 1, 'Left Engine LEAP-1A', 'Engine', 'Excellent', 2023);
    INSERT INTO Aircraft_Components (Aircraft_ID, Component_No, Component_Name, Component_Type, Condition_Status, Production_Year) VALUES (115, 2, 'Right Engine LEAP-1A', 'Engine', 'Excellent', 2023);

    /*HANGARS INSERTION*/
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (1, 'HNG-IST-01', 12, 'Istanbul Airport (IST)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (2, 'HNG-IST-02', 8, 'Istanbul Airport (IST)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (3, 'HNG-ESB-01', 5, 'Ankara Esenboga Airport (ESB)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (4, 'HNG-ADB-01', 6, 'Izmir Adnan Menderes Airport (ADB)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (5, 'HNG-AYT-01', 10, 'Antalya Airport (AYT)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (6, 'HNG-SAW-01', 15, 'Sabiha Gokcen Airport (SAW)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (7, 'HNG-ADA-01', 4, 'Adana Airport (ADA)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (8, 'HNG-TZX-01', 3, 'Trabzon Airport (TZX)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (9, 'HNG-BJV-01', 4, 'Milas-Bodrum Airport (BJV)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (10, 'HNG-DLM-01', 4, 'Dalaman Airport (DLM)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (11, 'HNG-GZT-01', 3, 'Gaziantep Airport (GZT)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (12, 'HNG-ASR-01', 2, 'Kayseri Erkilet Airport (ASR)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (13, 'HNG-KYA-01', 3, 'Konya Airport (KYA)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (14, 'HNG-MLX-01', 2, 'Malatya Erhaç Airport (MLX)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (15, 'HNG-NAV-01', 2, 'Nevsehir Kapadokya Airport (NAV)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (16, 'HNG-DNZ-01', 2, 'Denizli Çardak Airport (DNZ)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (17, 'HNG-DIY-01', 4, 'Diyarbakir Airport (DIY)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (18, 'HNG-ERZ-01', 3, 'Erzurum Airport (ERZ)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (19, 'HNG-AOE-01', 2, 'Eskisehir Hasan Polatkan Airport (AOE)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (20, 'HNG-SZX-01', 3, 'Siirt Airport (SZX)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (21, 'HNG-BZR-01', 2, 'Balikesir Merkez Airport (BZR)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (22, 'HNG-VAN-01', 3, 'Van Ferit Melen Airport (VAN)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (23, 'HNG-GNY-01', 2, 'Sanliurfa GAP Airport (GNY)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (24, 'HNG-SZF-01', 4, 'Samsun Çarsamba Airport (SZF)');
    INSERT INTO Hangars (Hangar_ID, Hangar_Code, Capacity_Aircraft_Count, Location_Airport) VALUES (25, 'HNG-VAS-01', 2, 'Sivas Nuri Demirag Airport (VAS)');


    /*AIRCRAFTS INSERTION*/ 
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (101, 1, 'TC-JGA', 2015, 24500, 'Active');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (102, 1, 'TC-JGB', 2016, 22100, 'Active');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (103, 2, 'TC-JGC', 2012, 35000, 'Maintenance');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (104, 3, 'TC-JGD', 2018, 18000, 'Active');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (105, 4, 'TC-JGE', 2020, 10500, 'Standby');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (106, 5, 'TC-LAA', 2019, 15200, 'Active');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (107, 6, 'TC-LAB', 2014, 29000, 'Maintenance');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (108, 1, 'TC-LAC', 2022, 5400, 'Active');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (109, 2, 'TC-LAD', 2011, 41000, 'Maintenance');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (110, 3, 'TC-LAE', 2021, 8900, 'Standby');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (111, 7, 'TC-SNA', 2017, 21000, 'Active');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (112, 5, 'TC-SNB', 2013, 33500, 'Active');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (113, 6, 'TC-SNC', 2019, 16000, 'Standby');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (114, 4, 'TC-SND', 2015, 26000, 'Maintenance');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (115, 1, 'TC-SNE', 2023, 1200, 'Active');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (116, 8, 'TC-YAA', 2016, 23000, 'Active');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (117, 9, 'TC-YAB', 2015, 24100, 'Active');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (118, 10, 'TC-YAC', 2018, 14000, 'Maintenance');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (119, 11, 'TC-YAD', 2017, 19500, 'Active');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (120, 12, 'TC-YAE', 2020, 9200, 'Standby');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (121, 13, 'TC-ZAA', 2014, 28500, 'Active');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (122, 17, 'TC-ZAB', 2013, 31000, 'Maintenance');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (123, 20, 'TC-ZAC', 2021, 6200, 'Active');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (124, 22, 'TC-ZAD', 2019, 13400, 'Standby');
    INSERT INTO Aircrafts (Aircraft_ID, Hangar_ID, Tail_Reg_No, Production_Year, Current_Flight_Hours, Flight_Status) VALUES (125, 24, 'TC-ZAE', 2022, 4800, 'Active');

   /* 1. Retrieve the details of 'Active' aircraft that have more flight hours than the overall average of the entire fleet. */
    
 SELECT 
    a.Tail_Reg_No, 
    a.Production_Year, 
    a.Current_Flight_Hours,
    h.Hangar_Code
 FROM Aircrafts a
  JOIN Hangars h 
  ON a.Hangar_ID = h.Hangar_ID
 WHERE a.Flight_Status = 'Active' 
  AND a.Current_Flight_Hours > 
  (SELECT AVG(Current_Flight_Hours)
   FROM Aircrafts)
 ORDER BY a.Current_Flight_Hours DESC; 
 
 
          
/* 2. List the hangars, their maximum capacity, and the current number of aircraft inside them. */
          
SELECT 
    h.Hangar_Code,
    h.Location_Airport,
    h.Capacity_Aircraft_Count AS Total_Capacity,
    COUNT(a.Aircraft_ID) AS Current_Aircraft_Count
FROM Hangars h
LEFT JOIN Aircrafts a ON h.Hangar_ID = a.Hangar_ID
GROUP BY h.Hangar_Code, h.Location_Airport, h.Capacity_Aircraft_Count
ORDER BY Current_Aircraft_Count DESC;
