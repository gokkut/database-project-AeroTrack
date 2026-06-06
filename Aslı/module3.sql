*Module 3*/
CREATE TABLE SUPPLIER (
  Supplier_ID NUMBER PRIMARY KEY,
  Company_Name VARCHAR2(50) NOT NULL,
  Contact_Email VARCHAR2(50) NOT NULL,
  Quality_Cert_No VARCHAR2(30),
	CONSTRAINT chk_supplier_email CHECK (Contact_Email LIKE '%@%.%')
);

CREATE TABLE SPARE_PART (
  Part_ID NUMBER PRIMARY KEY,
  Part_Description VARCHAR2(100) NOT NULL,
  Current_Stock NUMBER DEFAULT 0,
  Critical_Threshold NUMBER NOT NULL,
	CONSTRAINT chk_current_stock CHECK (Current_Stock >= 0),
	CONSTRAINT chk_critical_threshold CHECK (Critical_Threshold > 0)
);

CREATE TABLE PART_SUPPLIER_CATALOG (
  Catalog_ID NUMBER PRIMARY KEY,
  Part_ID NUMBER NOT NULL,
  Supplier_ID NUMBER NOT NULL,
	CONSTRAINT uq_part_supplier UNIQUE (Part_ID, Supplier_ID),
	CONSTRAINT fk_catalog_part FOREIGN KEY (Part_ID) 
  REFERENCES SPARE_PART(Part_ID) ON DELETE CASCADE,
	CONSTRAINT fk_catalog_supplier FOREIGN KEY (Supplier_ID) 
  REFERENCES SUPPLIER(Supplier_ID) ON DELETE CASCADE
);


	/*SUPPLIERS INSERTION*/
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (1, 'Global AeroParts Inc', 'sales@globalaero.com', 'AS9100-REV-D');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (2, 'Turbine Logistics Corp', 'info@turbinelog.com', 'ISO9001-2015');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (3, 'Skyline Avionics Ltd', 'support@skylineavionics.com', 'EASA-PART-145');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (4, 'Hydraulic Systems Intl', 'orders@hydrosys.com', 'AS9120-B');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (5, 'Fastener Supply Co', 'contact@fastenersupply.com', 'ISO14001-2015');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (6, 'AeroEngine Solutions', 'tech@aeroengines.com', 'AS9100-REV-D');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (7, 'Delta Cabin Interiors', 'rfq@deltacabin.com', 'ISO9001-2015');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (8, 'Apex Landing Gears', 'parts@apexlanding.com', 'FAA-PMA-2024');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (9, 'Titanium Aerospace', 'metal@titaniumaero.com', 'AS9100-REV-C');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (10, 'Beacon Avionics Group', 'ops@beaconavionics.com', 'EASA-PART-21');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (11, 'Matrix Composites', 'info@matrixcomposites.com', 'ISO9001-2015');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (12, 'Pacific Air Supplies', 'sales@pacificair.com', 'AS9120-B');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (13, 'Vortex Propulsion Ltd', 'support@vortexprop.com', 'AS9100-REV-D');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (14, 'Summit Hose and Seal', 'orders@summitseals.com', 'ISO9001-2015');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (15, 'Starlight Lighting Co', 'light@starlightaero.com', 'FAA-PMA-2025');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (16, 'Thermal Shield Tech', 'engineering@thermalshield.com', 'AS9100-REV-D');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (17, 'NextGen Sensors Corp', 'sales@nextgensensors.com', 'ISO14001-2015');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (18, 'Horizon Brake Systems', 'contact@horizonbrakes.com', 'AS9100-REV-D');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (19, 'Atlantic Fuel Cells', 'support@atlanticfuel.com', 'EASA-PART-145');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (20, 'Oasis Climate Systems', 'info@oasisclimate.com', 'ISO9001-2015');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (21, 'Precision Rivets LLC', 'sales@precisionrivets.com', 'AS9120-B');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (22, 'Omni Wire and Cable', 'orders@omnicable.com', 'ISO9001-2015');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (23, 'SafeFlight Oxygen Ltd', 'tech@safeflightox.com', 'AS9100-REV-D');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (24, 'EcoFilters Aerospace', 'green@ecofilters.com', 'ISO14001-2015');
	INSERT INTO SUPPLIER (Supplier_ID, Company_Name, Contact_Email, Quality_Cert_No) VALUES (25, 'United Aero Structures', 'contract@unitedaero.com', 'AS9100-REV-D');

		
	/*SPARE PARTS INSERTION*/ 
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (101, 'Boeing 737 Brake Assembly', 3, 4);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (102, 'Airbus A320 Fuel Pump', 8, 3);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (103, 'Hydraulic Actuator Seal Kit', 12, 15);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (104, 'Titanium Fuselage Rivet Box', 120, 30);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (105, 'LED Navigation Wingtip Light', 1, 2);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (106, 'Engine Turbine Blade CFM56', 4, 2);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (107, 'Cockpit Oxygen Mask', 15, 5);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (108, 'Main Landing Gear Tire', 22, 6);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (109, 'Pitot-Static Tube Probe', 9, 3);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (110, 'Cabin Air Recirculation Filter', 8, 10);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (111, 'Weather Radar Transceiver', 3, 1);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (112, 'Flight Data Recorder (BlackBox)', 2, 1);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (113, 'Passenger Seat Belt Buckle', 200, 50);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (114, 'Galley Coffee Maker Unit', 7, 2);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (115, 'Nose Landing Gear Actuator', 5, 2);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (116, 'Avionics Cooling Fan', 14, 4);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (117, 'Emergency Exit Slide Bottle', 8, 3);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (118, 'Windshield Wiper Blade', 18, 6);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (119, 'Engine Oil Pressure Sensor', 25, 8);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (120, 'APU Starter Motor', 4, 2);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (121, 'Cabin Window Pane (Inner)', 30, 10);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (122, 'Cockpit Audio Control Panel', 3, 1);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (123, 'High-Pressure Fuel Hose', 40, 12);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (124, 'Smoke Detector Sensor', 60, 15);
	INSERT INTO SPARE_PART (Part_ID, Part_Description, Current_Stock, Critical_Threshold) VALUES (125, 'Elevator Control Cable Assembly', 11, 3);
	
	/*PART_SUPPLIER_CATALOG INSERTION*/
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (1, 101, 1);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (2, 102, 2);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (3, 103, 4);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (4, 104, 5);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (5, 105, 3);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (6, 106, 6);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (7, 107, 23);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (8, 108, 23);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (9, 109, 10);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (10, 110, 24);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (11, 111, 3);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (12, 112, 12);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (13, 113, 7);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (14, 114, 2);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (15, 115, 8);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (16, 116, 11);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (17, 117, 1);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (18, 118, 5);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (19, 119, 17);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (20, 120, 13);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (21, 121, 25);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (22, 101, 10);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (23, 123, 5);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (24, 124, 17);
	INSERT INTO PART_SUPPLIER_CATALOG (Catalog_ID, Part_ID, Supplier_ID) VALUES (25, 125, 9);
	
	  /*QUERIES*/
	  
		/*1. List the names and part amount of each company that supplies at least 1 part.*/
		
	SELECT s.Company_Name, COUNT(c.Part_ID) AS total_parts_supplied
	FROM SUPPLIER s
	LEFT JOIN PART_SUPPLIER_CATALOG c ON c.Supplier_ID = s.Supplier_ID
	GROUP BY s.Company_Name
	HAVING total_parts_supplied >= 1 
	ORDER BY total_parts_supplied DESC;

		/*2. List the companies whose current stocks are less than their critical thresholds. 
		     Display current stock, critical threshold, and the parts that are running out of stock*/
		
	SELECT s.Company_Name, p.Part_Description, p.Current_Stock, p.Critical_Threshold
	FROM SPARE_PART p
	JOIN PART_SUPPLIER_CATALOG c ON p.Part_ID = c.Part_ID
	JOIN SUPPLIER s ON c.Supplier_ID = s.Supplier_ID
	WHERE p.Current_Stock < p.Critical_Threshold
	ORDER BY s.Company_Name;
