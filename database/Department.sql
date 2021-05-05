CREATE TABLE `Departments` (
  `Dept_name` varchar(100) not null,
  `Year` varchar(30) NOT NULL,
  `Year_of_Establishment` varchar(200) DEFAULT NULL,
  `Names_of_programmes` varchar(200) DEFAULT NULL,
  `Number_of_teaching_posts_Sanctioned/Filled` varchar(250) DEFAULT NULL,
  `Number_of_students_enrolled` varchar(250) DEFAULT NULL,
  `Number_of_Research_Projects:` varchar(250) DEFAULT NULL,
  `Total_grants_received` varchar(250) DEFAULT NULL,
  `Inter–institutional_collaborative_projects_and_Associated_grants` varchar(200) DEFAULT NULL,
  `National_collaboration` varchar(500) DEFAULT NULL,
  `International_collaboration` varchar(500) DEFAULT NULL,
  `Departmental_projects_funded_by_DST-FIST,_DBT,_ICSSR,etc:` varchar(500) DEFAULT NULL,
  `Special_research_laboratories_created_by_industry_or_corporate` varchar(250) DEFAULT NULL,
  `Number_of_Papers_published` varchar(200) DEFAULT NULL,
  `Number_of_Books_with_ISBN` varchar(200) DEFAULT NULL,
  `Number_of_Citation_Index–range/average` varchar(250) DEFAULT NULL,
  `Number_of_Impact_Factor–range/average` varchar(250) DEFAULT NULL,
  `Number_of_h-index` varchar(250) DEFAULT NULL,
  `Details_of_patents_and_income_generated` varchar(500) DEFAULT NULL,
  `Areas_of_consultancy_and_income_generated` varchar(500) DEFAULT NULL,
  `Faculty_awards` varchar(250) DEFAULT NULL,
  `Doctoral/Post_doctoral_fellows_awards` varchar(250) DEFAULT NULL,
  `Students_awards` varchar(500) DEFAULT NULL,
  `How_many_students_have_cleared_Civil_Services_and_Defense` varchar(250) DEFAULT NULL,
  `No_of_Research_Scholars/PG_students_getting_financial_assistance` varchar(250) DEFAULT NULL,
  primary key (Dept_name,Year)
);

INSERT INTO `Departments` (`Dept_name`,`Year`,`Year_of_Establishment`, `Names_of_programmes`, `Number_of_teaching_posts_Sanctioned/Filled`, `Number_of_students_enrolled`, `Number_of_Research_Projects:`, `Total_grants_received`, `Inter–institutional_collaborative_projects_and_Associated_grants`, `National_collaboration`, `International_collaboration`, `Departmental_projects_funded_by_DST-FIST,_DBT,_ICSSR,etc:`, `Special_research_laboratories_created_by_industry_or_corporate`, `Number_of_Papers_published`, `Number_of_Books_with_ISBN`, `Number_of_Citation_Index–range/average`, `Number_of_Impact_Factor–range/average`, `Number_of_h-index`, `Details_of_patents_and_income_generated`, `Areas_of_consultancy_and_income_generated`, `Faculty_awards`, `Doctoral/Post_doctoral_fellows_awards`, `Students_awards`, `How_many_students_have_cleared_Civil_Services_and_Defense`, `No_of_Research_Scholars/PG_students_getting_financial_assistance`) VALUES

-- biotechnology
('Bio Technology','2014-15', 'B.E.  - 2002; M.Tech - 2012', 'BE & M Tech; MSc (Enginnering by Research); PhD', '14', '60 (BE)+16 (MTech)', '2','1157920', NULL, NULL, NULL, '1157920', NULL, '34', '1(ISBN - 10: 9788173719462)', NULL, '0.5 -2.5', '13 - 60', 'SYNERGISTIC THERAPEUTIC POLYPHENOLIC NUTRACEUTICAL COMPOSITIONS, Filed (5287/CHE/2015 A)', NULL, NULL, NULL, NULL, '15', '1 (PG)'),

('Bio Technology','2015-16', 'B.E.  - 2002; M.Tech - 2012', 'BE & M Tech; MSc (Enginnering by Research); PhD', '15', '58 (BE)+ 18 (MTech)', '3','0', NULL, NULL, NULL, '0', NULL, '11', NULL, NULL, '0.83-3.47', '24 - 63', NULL, NULL, NULL, NULL, NULL, '2', '17 (PG)'),

('Bio Technology','2016-17', 'B.E.  - 2002; M.Tech - 2012', 'BE & M Tech; MSc (Enginnering by Research); PhD','14', '57 (BE)+18 (MTech)', 1,'600000', NULL, NULL, NULL, '600000', NULL, '21',NULL, NULL, '0.5-4.816', '21-135', NULL, NULL, NULL, NULL, NULL, '15', '19 (PG ) +2 (RS)'),

('Bio Technology','2017-18', 'B.E.  - 2002; M.Tech - 2012', 'BE & M Tech; MSc (Enginnering by Research); PhD', 14, '56 (BE)+14 (MTech)', 3,'982000', NULL, NULL, NULL, '982000', NULL, '13', NULL, NULL, '0.3225-5.21', '61 - 168',NULL, NULL, NULL, NULL, NULL, '21', '8 ( PG )+ 3 (RS)'),

('Bio Technology','2018-19', 'B.E.  - 2002; M.Tech - 2012', 'BE & M Tech; MSc (Enginnering by Research); PhD', 16, '64 (BE)+10 (MTech)', 2,'4187779', NULL, NULL, NULL, '4187779', NULL, '24',NULL, NULL, '0.157 -5.294', '13 - 84', NULL, NULL, NULL, NULL, NULL, '20', '9 (PG)'),

-- Chemical department
('Chemical Engineering','2014-15', '1978', 'BE Chemical Engg.', '12', '61', '1', '0.25 Lakhs', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2 to 15', '0 to 1', '10', NULL, NULL, NULL, NULL, '3', '10', NULL),

('Chemical Engineering','2015-16', '1978', 'BE Chemical Engg.', '12', '66', '1', '0.6 Lakhs', NULL, NULL, NULL, NULL, NULL, '6', NULL, '2 to 15', '0.583 to 4.113', '12', NULL, NULL, NULL, NULL, '0', '10', '1'),

('Chemical Engineering','2016-17', '1978', 'BE Chemical Engg.', '12', '60', '1', '1.5 Lakhs', NULL, NULL, NULL, NULL, NULL, '4', NULL, '2 to 15', '1.2 to 3.064', '13', NULL, NULL, NULL, NULL, '1', '14', NULL),

('Chemical Engineering','2017-18', '1978', 'BE Chemical Engg.', '12', '58', '2', '38.3 Lakhs', NULL, NULL, NULL, 'DST WOA – 18.4 lakhs    DST WOA – 19.9 lakhs', NULL, '7', NULL, '2 to 15', '0.784 to 1.278', '14', NULL, NULL, NULL, NULL, '3', '14', '2'),

('Chemical Engineering','2018-19', '1978', 'BE Chemical Engg.', '12', '60', '1', '4.95 Lakhs', NULL, NULL, NULL, 'VGST  - 4.95Lakhs', NULL, '8', '1 ( ISBN:978-981-10-2674-4)', '2 to 20', '0.14 to 5', '17', NULL, NULL, NULL, NULL, '2', '13', '2'),

-- Chemistry
('Chemistry','2014-15', '1962',NULL, '10', NULL, NULL,NULL, NULL, NULL, NULL, NULL, NULL, '23', NULL, '27', '0-6.5', '10-150', NULL, NULL, '2', '0','0', NULL, NULL),

('Chemistry','2015-16', '1962',NULL, '10', NULL, '1','0.70 Lakhs', NULL, NULL, NULL, NULL, NULL, '12', NULL, '80', '0-6.5', '10-150', NULL, NULL, '4', '0','0', NULL, NULL),

('Chemistry','2016-17', '1962',NULL, '10', NULL, NULL,NULL, NULL, NULL, NULL, NULL, NULL, '14', NULL, '136', '0-6.5', '10-150', NULL, NULL, NULL, '0','0', NULL, NULL),

('Chemistry','2017-18', '1962',NULL, '10', NULL, '1','20.7 Lakhs', NULL, NULL, NULL, NULL, NULL, '20', NULL, '140', '0-6.5', '10-150', NULL, NULL, '1', '0','0', NULL, NULL),

('Chemistry','2018-19', '1962',NULL, '10', NULL,'1','10.0 Lakhs', NULL, '1', NULL, NULL, NULL, '48', '1', '150', '0-6.5', '10-150', NULL, NULL, '2', '0','0', NULL, NULL),

-- Civil 
('Civil Engineering','2014-15', 'UG - 1971 and PG - 1983', 'UG - BE Civil Engineering, PG - M Tech Structural Engineering', 32, 174, 1,'Title of the Project: An Investigation on the Production, Mechanical Properties and Performance of Geopolymer Concrete.\nProject File No &  20/AICTE/RIFD/RPS/(POLICY-III)131/ 2012-13 &\nDate     MARCH 6th 2013\nAmount Sanctioned Rs. 12 Lakhs', NULL, NULL, NULL, NULL, NULL, '16', '2', '24', NULL, '3', NULL, 'Materials testing 207550/-', NULL, NULL, NULL, '12', '18'),

('Civil Engineering','2015-16', 'UG - 1971 and PG - 1983', 'UG - BE Civil Engineering, PG - M Tech Structural Engineering', 32, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19', NULL, '24', NULL, '3', NULL, 'Materials testing 138350/-', NULL, NULL, NULL, '25', '18'),

('Civil Engineering','2016-17', 'UG - 1971 and PG - 1983', 'UG - BE Civil Engineering, PG - M Tech Structural Engineering', 32, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13', NULL, '24', '1.25', '3', NULL, 'Materials testing 123600/-', NULL, NULL, NULL, '8', '23'),

('Civil Engineering','2017-18', 'UG - 1971 and PG - 1983', 'UG - BE Civil Engineering, PG - M Tech Structural Engineering', 34, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20', NULL, '24', NULL, '3', NULL, 'Materials testing 20400/-', NULL, NULL, NULL, '15', '20'),

('Civil Engineering','2018-19', 'UG - 1971 and PG - 1983', 'UG - BE Civil Engineering, PG - M Tech Structural Engineering', 34, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37', '3', '24-32','3.28', '3', NULL, 'Materials testing and Structural Consultancy 2756200/-',NULL, NULL, NULL, 4, 37),

-- Computer science
('Computer Science And Engineering','2014-15', '1984 (BE)\n1998 (M.Tech. in Computer Science & Engineering)\n2014 ( M.Tech. in Computer Network Engineeirng)', 'B. E. (Computer Science & Engineering)\nM.Tech. ( Computer Science & Engineering)\nM.Tech. (Computer Network Engineering)', '32', '224', '1', '1200000', NULL, NULL, NULL, '1200000', NULL, '31', '0', '(0-39)/1.7', '(0-5)/1', '2.2', '1', NULL, NULL, NULL, '9', '12', '17'),
('Computer Science And Engineering','2015-16', '1984 (BE)\n1998 (M.Tech. in Computer Science & Engineering)\n2014 ( M.Tech. in Computer Network Engineeirng)', 'B. E. (Computer Science & Engineering)\nM.Tech. ( Computer Science & Engineering)\nM.Tech. (Computer Network Engineering)', '33', '224', '1', '1200000', NULL, NULL, NULL, '1200000', NULL, '54', '14', '(0-14)/1.5', '(0-6)/1', '3.2', '0', NULL, NULL, NULL, '2', '20', '6'),
('Computer Science And Engineering','2016-17', '1984 (BE)\n1998 (M.Tech. in Computer Science & Engineering)\n2014 ( M.Tech. in Computer Network Engineeirng)', 'B. E. (Computer Science & Engineering)\nM.Tech. ( Computer Science & Engineering)\nM.Tech. (Computer Network Engineering)', '32', '221', '0', NULL, NULL, NULL, NULL, NULL, NULL, '77', '3', '(0-15)/1.3', '(0-4)/3', '5.2', '0', NULL, NULL, NULL, '15', '24', '3'),
('Computer Science And Engineering','2017-18', '1984 (BE)\n1998 (M.Tech. in Computer Science & Engineering)\n2014 ( M.Tech. in Computer Network Engineeirng)', 'B. E. (Computer Science & Engineering)\nM.Tech. ( Computer Science & Engineering)\nM.Tech. (Computer Network Engineering)', '33', '217', '0', NULL, NULL, NULL, NULL, NULL, NULL, '70', '9', '(0-17)/1', '(0-4)/3', '2.3', '0', NULL, NULL, NULL, '8', '8', '6'),

('Computer Science And Engineering','2018-19', '1984 (BE)\n1998 (M.Tech. in Computer Science & Engineering)\n2014 ( M.Tech. in Computer Network Engineeirng)', 'B. E. (Computer Science & Engineering)\nM.Tech. ( Computer Science & Engineering)\nM.Tech. (Computer Network Engineering)', '32', '202', '0', NULL, NULL, NULL, NULL, NULL, NULL, '122', '3', '(0-3)/0.3', '(0-4)/3', '3.2', '2', '2 consultancy projects\n1)TDU, Bangalore, Rs.50000/- sanctioned\n2)"IT Solutions to MEP Design work and Evaluation", BPSS MEP Consultancy Services, Gujrat, Rs 2 lakhs sanctioned, Rs. 75,000 received', NULL, NULL, '11', '23', '3'),


-- Electrical and electronics
('Electrical And Electronics Engineering','2014-15', '1962(BE)\n2004(M.Tech)','BE (Electrical and Electronics Engineeirng)
M.Tech(Computer Applications in Industrial Drives)', '18', '78', NULL,NULL, NULL, NULL, NULL, NULL, NULL, '17', '0', '0', '(0-6.1)/3.05', '0', NULL, 'Test support, evaluation of LCA LRUs and Augmentation of Lightning Test Facility.
49.50 Lakhs', NULL, NULL,NULL, '10', NULL),

('Electrical And Electronics Engineering','2015-16', '1962(BE)\n2004(M.Tech)','BE (Electrical and Electronics Engineeirng)
M.Tech(Computer Applications in Industrial Drives)', '18', '78', NULL,NULL, NULL, NULL, NULL, NULL, NULL, '8', '0', '(0-1)/0.33', '0/0', '0', NULL, '1.Electric field and RoW estimation of 66kV covered conductor.\n1 Lakh.\n2.Design of 800kV High Voltage Laboratory for Corona and RIV Test.\n0.3Lakh', NULL, NULL,NULL, '1', NULL),


('Electrical And Electronics Engineering','2016-17', '1962(BE)\n2004(M.Tech)','BE (Electrical and Electronics Engineeirng)
M.Tech(Computer Applications in Industrial Drives)', '18', '78', '1','17 Lakhs', NULL, NULL, NULL, NULL, NULL, '18', '0', '(0-1)/0.5', '(0-0.26)/0.09', '0', NULL, 'Design and Installation 
of 6kWp roof top solar PV  system at SUNIYE, New Delhi.\n
5Lakhs.', NULL, NULL,NULL, '9', NULL),

('Electrical And Electronics Engineering','2017-18', '1962(BE)\n2004(M.Tech)','BE (Electrical and Electronics Engineeirng)
M.Tech(Computer Applications in Industrial Drives)', '18', '78', '1','6.35 Lakhs', NULL, NULL, NULL, NULL, NULL, '11', '0', '0', '0', '5', NULL,NULL, NULL, NULL,NULL, '1', NULL),

('Electrical And Electronics Engineering','2018-19', '1962(BE)\n2004(M.Tech)','BE (Electrical and Electronics Engineeirng)
M.Tech(Computer Applications in Industrial Drives)', '18', '78', '1','33.32 Lakhs', NULL, 'Development of Prosumer  Driven Integrated Smart grid.\n
33.32Lakhs', 'Development of Prosumer  Driven Integrated Smart grid.\n
33.32Lakhs', 'Development of Prosumer  Driven Integrated Smart grid.\n
33.32Lakhs', NULL, '19', '0', '0', '(0-10.68)/5.34', '2', NULL, '1.Lightning Protection Design of quartz/Cyanate Ester Radome for LCA for AESA Radar. 23.33Lakhs\n
2.Design & Development of IVG and HCG Systems at CABS.\n
44.49Lakhs', NULL, NULL,NULL, '4', NULL),

-- Electronics And Communication

('Electronics And Communication Engineering','2014-15', '1975', '1. B. E in Electronics and Communication\n \n2. M.Tech in Digital Electronics and Communication Engineering\n \n3. M.Tech in VLSI Design and Embedded Systems', '33', '204', '5', '47', NULL, NULL, NULL, '47', NULL, '30', '1', 'Max :59\nMin:0', 'Max:3.907\nMin:3.77', '5', '0', NULL, NULL, NULL, '2', '24', '67'),

('Electronics And Communication Engineering','2015-16', '1975', '1. B. E in Electronics and Communication\n \n2. M.Tech in Digital Electronics and Communication Engineering\n \n3. M.Tech in VLSI Design and Embedded Systems', '32', '200', '1', '6', NULL, NULL, NULL, '6', NULL, '35', NULL, 'Max:9\nMin:0', 'Max:2.34\nMin:0.732', '3', '0', NULL, '2', '1', '1', '14', '44'),

('Electronics And Communication Engineering','2016-17', '1975', '1. B. E in Electronics and Communication\n \n2. M.Tech in Digital Electronics and Communication Engineering\n \n3. M.Tech in VLSI Design and Embedded Systems', '32', '196', '3', '1', NULL, NULL, NULL, '1', NULL, '36', NULL, 'Max :10\nMin:0', 'Max:3.98\nMin:0', '3', '2', NULL, NULL, '1', NULL, '16', '20'),

('Electronics And Communication Engineering','2017-18', '1975', '1. B. E in Electronics and Communication\n 2. M.Tech in Digital Electronics and Communication Engineering\n 3. M.Tech in VLSI Design and Embedded Systems', '33', '199', '4', '2', NULL, NULL, NULL, '2', NULL, '35', NULL, 'Max :2\nMin:0', 'Max:2.72\nMin:1.2', '2', '1', NULL, '3', NULL, '9', '27', '15'),

('Electronics And Communication Engineering','2018-19', '1975', '1. B. E in Electronics and Communication\n2. M.Tech in Digital Electronics and Communication Engineering\n 3. M.Tech in VLSI Design and Embedded Systems', '36', '198', '19', '59', '1', NULL, NULL, '59', NULL, '49', NULL, 'Max :2\nMin:0', 'Max:5.339\nMin:0', '7', '1', '8.15 L', '1', NULL, '5', '25', '13'),


-- Electronics And Instrumentation Engineering

('Electronics And Instrumentation Engineering','2014-15', '1992', 'B.E. (Electronics & Instrumentation Engineering)', '12', '59', NULL,NULL, NULL, NULL, NULL, NULL, NULL, '6', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, '15', '5', NULL),

('Electronics And Instrumentation Engineering','2015-16', '1992', 'B.E. (Electronics & Instrumentation Engineering)', '13', '59', NULL,NULL, NULL, 'MoU with Mitsubishi Electric India Private Limited on Factory Automation to set up a Centre of Excellence in Factory Automation.\n
A QPLC & FX PLC training setup worth Rs. 8,23,800 received on 23/9/2015.', NULL, NULL, 'In collaboration with Mitsubishi Electric India Private Limited, Mitsubishi PLC lab has been established under the MoU', '6', NULL, '0', '0', '2', NULL, NULL, NULL, NULL, '21', '6', NULL),

('Electronics And Instrumentation Engineering','2016-17', '1992', 'B.E. (Electronics & Instrumentation Engineering)', '12', '57', NULL,NULL, NULL, NULL, NULL, NULL, 'In collaboration with Mitsubishi Electric India Private Limited, Mitsubishi PLC lab has been established under the MoU', '4', NULL, '3', '0.32', '6', NULL, NULL, NULL, NULL, '33', '1', NULL),

('Electronics And Instrumentation Engineering','2017-18', '1992', 'B.E. (Electronics & Instrumentation Engineering)', '11', '59', NULL,NULL, NULL, 'Received from SUDE Engineering corporation, a two way globe valve fitted with single phase linear electrical actuator worth Rs.88,860', NULL, NULL, 'In collaboration with Mitsubishi Electric India Private Limited, Mitsubishi PLC lab has been established under the MoU', '11', NULL, '0', '0.13', '5', '1 patent, 1 copyright', NULL, NULL, NULL, '17', '4', NULL),

('Electronics And Instrumentation Engineering','2018-19', '1992', 'B.E. (Electronics & Instrumentation Engineering)', '12', '60', NULL,NULL, NULL, 'MoU with Mitsubishi Electric India Private Limited on Factory Automation to set up a Centre of Excellence in Factory Automation.\n
An iQ-R training setup worth Rs. 12,15,600 received on 20/7/2018.', NULL, NULL, 'In collaboration with Mitsubishi Electric India Private Limited, Mitsubishi PLC lab has been established under the MoU', '9', NULL, '1', '0.815', '5', '4 patents applied by students', NULL, NULL, NULL, '16', '16', NULL),

-- Electronics and telecommunication

('Electronics And Telecommunication Engineering','2014-15', '1996(UG), 2004(PG)', 'Telecommunication Engineering(UG), Digital Communication(PG)', '15', '90', '2','30.38Lakhs' , NULL, NULL, NULL, '79.908 Lacs (VGST - 40,000, KSCST -7000, ABB -24.44 Lacs, DST - 54.998 Lacs)', NULL, '28', '0', '9', '3', '7', NULL, NULL, NULL, NULL, NULL, '18', '10'),

('Electronics And Telecommunication Engineering','2015-16', '1996(UG), 2004(PG)', 'Telecommunication Engineering(UG), Digital Communication(PG)', '16', '90', '3', '72.47Lakhs', NULL, NULL, '6.5lakhs', '46.9 Lacs (VGST - 40 Lacs, Stanford University - 6.5 Lacs, VGST - 40,000)', NULL, '31', '1: PRINT ISBN-978-3-319-20987-6\n2: PRINT ISBN-978-81-322-2140-1', '10', '4', '10', 'INTEGRATED SMOKE MONITORING AND CONTROL SYSTEM FOR FLARING OPERATIONS, Publication number: 20150260397, Publication date: September 17, 2015, Viswanath Talasila, Chinmaya Kar et. al.   No income generated', NULL, NULL, NULL, NULL, '6', '4'),

('Electronics And Telecommunication Engineering','2016-17', '1996(UG), 2004(PG)', 'Telecommunication Engineering(UG), Digital Communication(PG)', '15', '86', '1', '40.4Lakhs', NULL, NULL, NULL, '0.075Lakhs (KSCST)', NULL, '39', NULL, '6', '11', '12','Feedback control for reducing flaring process smoke and noise, Patent number: 9594359, Date of Grant: March 14, 2017, Mohammed Ibrahim Mohideen, Madhukar Madhavamurthy Gundappa, Mahesh Gellaboina, Viswanath Talasila.    No income generated]', NULL, NULL, NULL, NULL, '5', '1'),

('Electronics And Telecommunication Engineering','2017-18', '1996(UG), 2004(PG)', 'Telecommunication Engineering(UG), Digital Communication(PG)', '15', '86', NULL, '0.075Lakhs', NULL, NULL, NULL, NULL, NULL, '38', '1: Print ISBN-978-981-10-3934-8     2: Print ISBN-978-981-10-3934-8   3: eBook ISBN - 9781315151908    4: eBook ISBN - 9781315151908  5: ISBN-10: 813153362X', '4', '5', '12','Device, System and Apparatus for Functional Electrical Stimulation of Muscle, Publication date: August 10, 2017, Publication number: 20170224985, Ramesh Debur, Viswanath Talasila et. al.    No income generated', NULL, NULL, NULL, NULL, '6', '0'),

('Electronics And Telecommunication Engineering','2018-19', '1996(UG), 2004(PG)', 'Telecommunication Engineering(UG), Digital Communication(PG)', '15', '90', '1', '73.2Lakhs', NULL, NULL, NULL, '73.2 Lakhs( DST- 33.32 Lacs and VGST -40 Lacs)', NULL, '18', '0', '3', '3', '5','Provisional Patent Filed 6/26/2019 :  1. A SMART HELMET, Patent Application No. 201941025905, Aakriti Suman, Abhigya Parashar, Annada Shukla, Kanwal deep singh saluja and K R Shobha\n2. METHOD OF SAFETY HELMET DESIGNING, Application No. 201941025906, Aakriti Suman, Abhigya Parashar, Annada Shukla, Kanwal deep singh saluja and K R Shobha\n 3.DESIGN OF SMART HELMET, Application No. 201941025907, Aakriti Suman, Abhigya Parashar, Annada Shukla, Kanwal deep singh saluja and K R Shobha ', NULL, NULL, NULL, NULL, '0', '3'),

-- Industrial engineering and management
('Industrial Engineering And Management','2014-15', '1979-UG 2012-PG','INDUSTRIAL ENGINEERING & MANAGEMENT -UG\nINDUSTRIAL ENGINEERING-PG', '14', '72-UG, 14-PG', NULL,NULL, NULL, '1', NULL, NULL, NULL, '18', NULL, '2', '6.2', '5', NULL, NULL, '1', NULL,'1', '18', NULL),

('Industrial Engineering And Management','2015-16', '1979-UG 2012-PG','INDUSTRIAL ENGINEERING & MANAGEMENT -UG\nINDUSTRIAL ENGINEERING-PG', '14', '72-UG, 15-PG', NULL,NULL, NULL, NULL, NULL, NULL, NULL, '22', NULL, '66', '3.5', '5', NULL, NULL, NULL, NULL,'11', '10', NULL),

('Industrial Engineering And Management','2016-17', '1979-UG 2012-PG','INDUSTRIAL ENGINEERING & MANAGEMENT -UG\nINDUSTRIAL ENGINEERING-PG', '14', '72-UG, 09-PG', NULL,NULL, NULL, NULL, NULL, '8,25,000/- (AICTE)\n 3,00000(AICTE )2,0000(VGST)', NULL, '33', NULL, '2', '4.14', '5', NULL, NULL, '1', NULL,NULL, '15','01- Backword community fee concesion'),

('Industrial Engineering And Management','2017-18', '1979-UG 2012-PG','INDUSTRIAL ENGINEERING & MANAGEMENT -UG\nINDUSTRIAL ENGINEERING-PG', '14', '72-UG, 05-PG', NULL,NULL, NULL, NULL, NULL, '5,71,000/-(AICTE), 5,00000/- (VGST)', NULL, '23', NULL, '5', '6.9', '5', NULL, NULL, NULL, NULL,'1', '16', NULL),

('Industrial Engineering And Management','2018-19', '1979-UG 2012-PG','INDUSTRIAL ENGINEERING & MANAGEMENT -UG\nINDUSTRIAL ENGINEERING-PG', '14', '72-UG, 11-PG', NULL,NULL, NULL, '1', NULL, '70,000/-(IIIE)', NULL, '20', NULL, '50', '6.5', '8', NULL, 'Rs. 7,200/- (utilization of CNC/CMM)', NULL, NULL,'3', '12', '02-state scholarship\n01-fee concesion'),

-- Information Science and engineering

('Information Science And Engineering','2014-15', 'B.E -1992  M. Tech – 2004','B.E (ISE),M.Tech(Software Engineering)', '28', '138', NULL,NULL, NULL,NULL, NULL, 'VGST – 4 Lakhs, AICTE – 7.35Lakhs', 'Nokia Mobile Computing Lab – 81,358, SECO Lab  -5 Lakhs worth components,  Honeywell – 20Lakhs', '36', '0', '0-18', '0.17-0.2', '2', '0', NULL,NULL, NULL,'5',NULL,'1'),

('Information Science And Engineering','2015-16', 'B.E -1992  M. Tech – 2004','B.E (ISE),M.Tech(Software Engineering)', '28', '138', NULL,NULL, NULL,NULL, NULL, 'KSCST (Nos.– 5 )– 20,000 , DST-SERB- 54.99Lakhs, Total Grants – 55.19L', 'Nokia Mobile Computing Lab – 84,322, Intel – 1.8 L, Intel Grove Kits – 1.35L', '57', '1', '0-4', '0.1-0.2', '3', '1', 'Byram Holdings  - 60,000/-',NULL, NULL,'0',NULL,'3'),

('Information Science And Engineering','2016-17', 'B.E -1992  M. Tech – 2004','B.E (ISE),M.Tech(Software Engineering)', '27', '147', NULL,NULL, NULL,'ICMR-30,97,975', NULL, 'KSCST- 4,000 , DST-SERB- 54.99Lakhs, Total Grants – 55.03L', 'Nokia Mobile Computing Lab –1,63,500', '33', '3', '1-13', '0.16-0.23', '12', '0', 'Agrorythm- 1.5 Lakhs',NULL, NULL,'0','23','3'),

('Information Science And Engineering','2017-18', 'B.E -1992  M. Tech – 2004','B.E (ISE),M.Tech(Software Engineering)', '26', '145','1','Rs. 14.53Lakhs', NULL,'ICMR-17,30,010', NULL, 'KSCST- 5,000 ,DST-SERB- 54.99Lakhs, Total Grants – 55.04L',NULL, '42', '5', '0-1', '0.31-0.43', '6', '0', NULL,NULL, NULL,'1','14',NULL),

('Information Science And Engineering','2018-19', 'B.E -1992  M. Tech – 2004','B.E (ISE),M.Tech(Software Engineering)', '30', '146','1','Rs. 14.53Lakhs', NULL,'ICMR-13,63,906', NULL, 'DST-SERB- 54.99Lakhs, Total Grants – 54.99L',NULL, '54', '0', '1-4', '0.11-0.56', '7', '0', 'M S Ramaiah Medical College(Heart Rescue India) 45,000/-, Trestel Labs 10,000',NULL, NULL,'1','9',NULL),

-- Master of business administration

('Master Of Business Administration','2014-15', '1998', '1 ( MBA )', '14', '116',NULL,NULL, NULL, NULL, NULL, NULL, NULL, '34', '2', '3', '2', '0', NULL, NULL, NULL, NULL, NULL,NULL, NULL),

('Master Of Business Administration','2015-16', '1998', '1 ( MBA )', '14', '108',NULL,NULL, NULL, NULL, NULL, NULL, NULL, '32', '2', '9', '2', '0', NULL, NULL, NULL, NULL, NULL,NULL, NULL),

('Master Of Business Administration','2016-17', '1998', '1 ( MBA )', '14', '119','3','334000', NULL, NULL, NULL, 'KSCST-Rs.9000\nICSSR, New Delhi- Rs. 2,00,000\nICSSR, New Delhi- Rs. 1,25,000\nTotal- Rs. 3,34,000', NULL, '5', '2', '9', '3', '1', NULL, NULL, NULL, NULL, NULL,NULL, NULL),

('Master Of Business Administration','2017-18', '1998', '1 ( MBA )', '14', '117','2','25000', NULL, NULL, NULL, 'KSCST- Rs. 12,500\nKSCST- Rs. 12,500\nTotal- Rs. 25,000', NULL, '28', '3', '9', '3', '1', NULL, NULL, NULL, NULL,'* Students are awarded "Best Project of the Year" for the title "Financial Analysis of Bio Diesel Manufacturing" by KSCST during 2017-18 ','Cleared NET Exam  Roll Nos.\n1)   Pavan Kumar Muttahalli- 30006255\n 2)  Prajwal- 30005783', NULL),

('Master Of Business Administration','2018-19', '1998', '1 ( MBA )', '13', '120','3','3162000', NULL, '1) Ernst and Young LLP,\n2)  Multi Commodity Exchange of India', NULL, 'DST, New Delhi- Rs. 13,00,000\nICSSR (IMPRESS)- Rs. 9,45,000\nTotal- Rs.22,45,000', NULL, '23', '2', '5', '5', '2', NULL, NULL,'*  Dr. Y.M.Satish-Best Project Award,KSCST, Bangalore- 26th & 27th July 2019 \n* Dr. S.Santhosh Kumar, Academy of Management Professionals,16-06-19', NULL, '* Students are awarded "Best Project of the Year" for the title "Development of Sustainable Supply Chain Model for Biodiesel Manufacturing from used Cooking Oil in Bangalore city" by KSCST during 2018-19\n* Students got 1st Prize for presenting a case study titled "Unlocking Companies True Potential Through a Demerger',NULL, NULL),

-- Master of Computer Application

('Master Of Computer Application','2014-15', '1997 (MCA)', 'PG-Master of Computer Applications', '12', '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '35', '1', '0 to 27', ' 0.426 to 1.76', '0 to 6', NULL, NULL, NULL, NULL, NULL,NULL,NULL),
('Master Of Computer Application','2015-16', '1997 (MCA)', 'PG-Master of Computer Applications', '12', '55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24', '2', '0 to 52', ' 0.299 to 6.187', '0 to 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Master Of Computer Application','2016-17', '1997 (MCA)', 'PG-Master of Computer Applications', '12', '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '35', '0', '0 to 65', '0.75 to 6.672', '0 to 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Master Of Computer Application','2017-18', '1997 (MCA)', 'PG-Master of Computer Applications', '12', '55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', '1', '0 to 61', '3.996 to 7.19', '0 to 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Master Of Computer Application','2018-19', '1997 (MCA)', 'PG-Master of Computer Applications', '11', '59', '1', '3332000',NULL, 'Development of Prosumer Driven Integrated Smart Grid (Rs. 33,32,000), \nCreating Scientific Awareness through Demonstration of Medicinal Plants (Rs. 22,00,000)', 'Development of Prosumer Driven Integrated Smart Grid', NULL, NULL, '21', '4', '0 to 153', '0.92 to 7.19', '1 to 13', 'Dr. Niranjanamurthy M -"Coffee Writing pen" Design No.: 319977-001, Grant Date: 25/07/2019 Income generated: Nil', NULL, NULL, NULL, NULL, NULL, NULL),

-- Mathematics

('Mathematics','2014 - 15', '1962', NULL, '20', NULL, '1', '2,00,000', '1', '1', NULL, NULL, NULL, '9', NULL, '14', '1.873', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Mathematics','2015 - 16', '1962', NULL, '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '1', '16', '3.8', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Mathematics','2016 - 17', '1962', NULL, '20', NULL, '1', '1,75,000', '1', '1', NULL, NULL, NULL, '6', NULL, '9', '2.903', '4', NULL, NULL, NULL, NULL, NULL, NULL, '1'),
('Mathematics','2017 - 18', '1962', NULL, '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14', NULL, '19', '2.33', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Mathematics','2018 - 19', '1962', NULL, '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '33', NULL, '23', '0.6', '5', NULL, NULL, '1', NULL, NULL, NULL, NULL),

-- Mechanical engineering

('Mechanical Engineering','2014 - 15', '1962', '1. BE in Mechanical Engineering\n2. M.Tech in Manufacutring science and Engineering\n3. M.Tech in Computer Intergrated Manufacturing', '47', '249', '3', '27,06,000', NULL, '1', NULL, '3 projects -  27,06,000 /-', NULL, '36', '2', '1 to 784', '0.1 to 1.0', '2', '1. Dr.Raji George and Ganguly Arnab - Composition for brake lining and wear sensor – Patent No: 248607 -2011\n2. File NO. 717/CHE/2014 - Synthesis of Nano tubes reinforced Brake Liner Material by Dr. Raji George & Mr. Sridhar B S (Under Process)', '38400', NULL, '3', '10', 'GATE-29', '2'),
('Mechanical Engineering','2015 - 16', '1962', '1. BE in Mechanical Engineering\n2. M.Tech in Manufacutring science and Engineering\n3. M.Tech in Computer Intergrated Manufacturing', '50', '244', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '68', '2', '1 to 784', '0.1 to 1.0', '2', '1.Bhardwaj GururajAnilkum ar& Girish V Kulkarni - Non-Robotic Material Transfer Mechanism - 2037/CHE/2015 (Under Process)', '27000', NULL, '1', '18', 'GATE-19', NULL),
('Mechanical Engineering','2016 - 17', '1962', '1. BE in Mechanical Engineering\n2. M.Tech in Manufacutring science and Engineering\n3. M.Tech in Computer Intergrated Manufacturing', '48', '245', NULL, NULL, NULL, '1', NULL, NULL, NULL, '33', '7', '1 to 784', '0.1 to 1.0', '11', '1. Mr. Bhardwaj GururajAnilkumar - Dynamic Cricket Pitch -  E-2/2060/2016-CHE -2016 (Under Process)\n2. Mr. G V Kulkarni and Mr. Bhardwaj GururajAnilkumar - Material Transfer Mechanism - A non-Robotic System - E-2/2034/2016-CHE -2016 (Under Process)', '35100', NULL, '4', '15', 'GATE-18', NULL),
('Mechanical Engineering','2017 - 18', '1962', '1. BE in Mechanical Engineering\n2. M.Tech in Manufacutring science and Engineering\n3. M.Tech in Computer Intergrated Manufacturing', '51', '239', '1', '11,58,824', NULL, '1', NULL, '1 project -  11,58,824 /-', NULL, '52', '4', '1 to 784', '0.5 to 1.076', '11', NULL, '42000', NULL, '6', '15', 'GATE-21', '1'),
('Mechanical Engineering','2018 - 19', '1962', '1. BE in Mechanical Engineering\n2. M.Tech in Manufacutring science and Engineering\n3. M.Tech in Computer Intergrated Manufacturing', '50', '241', '3', '88,64,000', '1 & Grant - INR 80 Lakhs', '4', '1', '3 projects -   88,64,000 /-', '2', '71', '4', ' 1 to 784', '0.1 to 1.092', '11', NULL, '3070150', '2', '14', '25', 'GATE-8', NULL),

-- medical electronics

('Medical Electronics','2014 - 15', '1996', 'BE (Medical Electronics)', '12', '60', '1', '1.37 lakh', 'MSRIT internal Funding :1.37 lakh', NULL, NULL, NULL, NULL, '11', '0', '1-22', '0-0.64', '14', NULL, NULL, NULL, NULL, '20', '9', NULL),
('Medical Electronics','2015 - 16', '1996', 'BE (Medical Electronics)', '12', '60', '1', '48.05 lakh', NULL, 'DBT: 48.05 lakh', NULL, 'DBT-48.05 lakh', 'DBT lab', '11', '0', '1-11', '0-3.076', '15', '201641022845 :NIL' , NULL, NULL, NULL, '24', '5', NULL),
('Medical Electronics','2016 - 17', '1996', 'BE (Medical Electronics)', '12', '60', '1', '23.92 lakh', NULL, 'IGCAR-DAE: 23.92 lakh', NULL, 'IGCAR-DAE: 23.92 lakh', NULL, '14', '1', '1-27', '0.0 - 4.873', '16', NULL, NULL, NULL, NULL, '20', '5', NULL),
('Medical Electronics','2017 - 18', '1996', 'BE (Medical Electronics)', '12', '60', '1', '9 lakh', NULL, 'LUCID software: 9 lakh ', NULL, 'LUCID software: 9 lakh ', 'OCT lab', '21', '0', '0-21', '0-2.696', '18', NULL, 'Infrared Thermographic Imaging for Population Screening and Diagnostic Testing for Breast Cancer- A study on early screening and detection (ITIPSD) :23.92 Lakhs', NULL, NULL, '20', '9', NULL),
('Medical Electronics','2018 - 19', '1996', 'BE (Medical Electronics)', '13', '60', '1', '23.8876 lakh', NULL, 'DST: 23.8876 lakhs', NULL, 'DST: 23.8876 lakhs', NULL, '10', '1', '0-5', '0-3.076', '19', NULL, NULL, NULL, NULL, '25', '2', NULL),

-- Physics

('Physics','2014 - 15', '1962', NULL, '9', NULL, '1', '4,00,000', NULL, NULL, NULL, '4,00,000', NULL, '16', NULL, '0-5', '0-5', '46-96', NULL, NULL, NULL, '0', '0', NULL, NULL),
('Physics','2015 - 16', '1962', NULL, '9', NULL, '1', '27,70,875', NULL, NULL, NULL, '27,70,875', NULL, '14', NULL, '0-5', '0-5', '2-101', NULL, NULL, NULL, '0', '0', NULL, '1'),
('Physics','2016 - 17', '1962', NULL, '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, '0-3', '0-5', '0.5-101', NULL, NULL, NULL, '0', '0', NULL, '1'),
('Physics','2017 - 18', '1962', NULL, '9', NULL, '1', '5,00,000/- (ongoing)', NULL, NULL, NULL, '5,00,000/- (ongoing)', NULL, '9', NULL, '0-2', '0-5', '14-122', NULL, NULL, '1', '0', '0', NULL, '1'),
('Physics','2018 - 19', '1962', NULL, '9', NULL, '1', '5,00,000/- (ongoing)', NULL, NULL, NULL, '5,00,000/- (ongoing)', NULL, '21(2018), 20 (2019 till November)', '1 (book chapter)', '0-4', '0-5', '11-217', NULL, NULL, '1', '0', '0', NULL, '1'),

-- School Of Architecture
('School Of Architecture','2014 - 15', '1992', 'B.ARCH\nM.ARCH', '19', '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '0', '0', '0', NULL, NULL, NULL, NULL, '17', NULL,NULL),
('School Of Architecture','2015 - 16', '1992', 'B.ARCH\nM.ARCH', '18', '89', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', '0', '0', '0', NULL, NULL, NULL, NULL, '17',NULL,NULL),
('School Of Architecture','2016 - 17', '1992', 'B.ARCH\nM.ARCH', '23', '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', '1', '0', '0', '0', NULL, NULL, '1', NULL, '13', NULL,NULL),
('School Of Architecture','2017 - 18', '1992', 'B.ARCH\nM.ARCH', '24', '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', '2', '0', '0', '0', NULL, NULL, '1', NULL, '11', NULL,NULL),
('School Of Architecture','2018 - 19', '1992', 'B.ARCH\nM.ARCH', '31', '96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '0', '0', '0', '0', NULL, NULL, NULL, NULL, '3', NULL,NULL);
COMMIT;