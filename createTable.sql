-- Module 1
CREATE TABLE Hangar(
    Hangar_ID INT PRIMARY KEY,
    Hangar_Code VARCHAR2(50) NOT NULL,
    Capacity_Aircraft_Count INT DEFAULT 0, /*Eğer bilgi girilmediyse içinde uçak yok*/
    Location_Airport VARCHAR2(100) NOT NULL
);

CREATE TABLE Aircraft(
    Aircraft_ID INT PRIMARY KEY,
    Hangar_ID INT,
    Tail_Reg_No VARCHAR2(50) NOT NULL UNIQUE,
    Production_Year INT NOT NULL,
    Current_Flight_Hour INT DEFAULT 0, /*Eğer bilgi girilmediyse yeni uçak gibi yani sıfır*/
    Flight_Status VARCHAR2(50) DEFAULT 'Active', /*Eğer bilgi girilmediyse zaten hazır*/
    FOREIGN KEY (Hangar_ID) REFERENCES Hangar(Hangar_ID)
);

CREATE TABLE Aircraft_Component (
    Aircraft_ID INT NOT NULL,
    Component_No INT NOT NULL,
    Component_Name VARCHAR2(60) NOT NULL,
    Component_Type VARCHAR2(40),
    Condition_Status VARCHAR2(30),
    Production_Year INT,
    CONSTRAINT pk_aircraft_component PRIMARY KEY (Aircraft_ID, Component_No),
    CONSTRAINT fk_component_aircraft FOREIGN KEY (Aircraft_ID) REFERENCES Aircraft(Aircraft_ID) ON DELETE CASCADE
);

-- Module 2
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

-- Module 3
CREATE TABLE Supplier(
    Supplier_ID     INT PRIMARY KEY,
    Company_Name    VARCHAR2(50) NOT NULL,
    Contact_Email   VARCHAR2(80) NOT NULL UNIQUE,
    Quality_Cert_No VARCHAR2(50) NOT NULL UNIQUE
);

CREATE TABLE Spare_Part(
    Part_ID INT PRIMARY KEY,
    Part_Description VARCHAR2(200) NOT NULL,
    Current_Stock INT DEFAULT 0, /*Eğer bilgi girilmediyse stok boş*/
    Critical_Threshold INT DEFAULT 5  /*Minimum stok seviyesi*/
);

CREATE TABLE Part_Supplier_Catalog(
    Catalog_ID INT PRIMARY KEY,
    Part_ID INT NOT NULL,
    Supplier_ID INT NOT NULL,
    CONSTRAINT uq_part_supplier UNIQUE (Part_ID, Supplier_ID),
	CONSTRAINT fk_catalog_part FOREIGN KEY (Part_ID) 
    REFERENCES Spare_Part(Part_ID) ON DELETE CASCADE,
	CONSTRAINT fk_catalog_supplier FOREIGN KEY (Supplier_ID) 
    REFERENCES Supplier(Supplier_ID) ON DELETE CASCADE
);

-- Module 4
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

-- Module 5
CREATE TABLE System_User(
    User_ID INT PRIMARY KEY,
    Staff_ID INT NOT NULL UNIQUE,
    Username VARCHAR2(40) NOT NULL UNIQUE,
    Password_Hash VARCHAR2(255) NOT NULL,
    CONSTRAINT fk_user_staff FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID) ON DELETE CASCADE
);
 
CREATE TABLE Maintenance_Crew(
    Crew_ID INT PRIMARY KEY,
    Maintenance_ID INT NOT NULL,
    Staff_ID INT NOT NULL,
    CONSTRAINT uq_crew UNIQUE (Maintenance_ID, Staff_ID),
    CONSTRAINT fk_crew_log FOREIGN KEY (Maintenance_ID) REFERENCES Maintenance_Log(Maintenance_ID) ON DELETE CASCADE,
    CONSTRAINT fk_crew_staff FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID) ON DELETE CASCADE
);
 
CREATE TABLE Maintenance_Parts_Used(
    Detail_ID INT PRIMARY KEY,
    Maintenance_ID INT NOT NULL,
    Part_ID INT NOT NULL,
    Quantity_Used INT NOT NULL,
    CONSTRAINT chk_qty_used CHECK (Quantity_Used > 0),
    CONSTRAINT uq_parts_used UNIQUE (Maintenance_ID, Part_ID),
    CONSTRAINT fk_pu_log  FOREIGN KEY (Maintenance_ID) REFERENCES Maintenance_Log(Maintenance_ID) ON DELETE CASCADE,
    CONSTRAINT fk_pu_part FOREIGN KEY (Part_ID) REFERENCES Spare_Part(Part_ID) ON DELETE CASCADE
);

