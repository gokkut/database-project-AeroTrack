/*Module 3*/
CREATE TABLE Suppliers (
  Supplier_ID NUMBER PRIMARY KEY,
  Company_Name VARCHAR2(50) NOT NULL,
  Contact_Email VARCHAR2(50) NOT NULL,
  Quality_Cert_No VARCHAR2(30),
	CONSTRAINT chk_supplier_email CHECK (Contact_Email LIKE '%@%.%')
);

CREATE TABLE Spare_Parts (
  Part_ID NUMBER PRIMARY KEY,
  Part_Description VARCHAR2(100) NOT NULL,
  Current_Stock NUMBER DEFAULT 0,
  Critical_Threshold NUMBER NOT NULL,
	CONSTRAINT chk_current_stock CHECK (Current_Stock >= 0),
	CONSTRAINT chk_critical_threshold CHECK (Critical_Threshold > 0)
);

CREATE TABLE Part_Supplier_Catalog (
  Catalog_ID NUMBER PRIMARY KEY,
  Part_ID NUMBER NOT NULL,
  Supplier_ID NUMBER NOT NULL,
	CONSTRAINT uq_part_supplier UNIQUE (Part_ID, Supplier_ID),
	CONSTRAINT fk_catalog_part FOREIGN KEY (Part_ID) 
  REFERENCES Spare_Parts(Part_ID) ON DELETE CASCADE,
	CONSTRAINT fk_catalog_supplier FOREIGN KEY (Supplier_ID) 
  REFERENCES Suppliers(Supplier_ID) ON DELETE CASCADE
);