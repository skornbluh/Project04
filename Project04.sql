DROP DATABASE project_04;
CREATE DATABASE project_04;
USE project_04;

CREATE TABLE Persons (
	id varchar(10) not null,
    person_type char(1) not null, #C = client, E = expert, J = junior
    sec_id varchar(20),
	last_name varchar(30) not null,
    first_name varchar(30) not null,
    street varchar(40) not null,
    city varchar(30) not null,
    state varchar(30) not null,
    zipcode varchar(12),
    country varchar(40) not null,
    PRIMARY KEY (id)
);

INSERT INTO Persons VALUES ('944c','C', NULL, 'Castro', 'Starlin','1060 West Addison Street','Chicago','IL','60613','USA');
INSERT INTO Persons VALUES ('306a','C', NULL, 'Sampson', 'Brock','123 N 1st Street','Omaha','NE','68116','USA');
INSERT INTO Persons VALUES ('2342','C', NULL, 'O\'Brien','Miles','123 Friendly Street','Ottawa','ON','K1A 0G9','Canada');
INSERT INTO Persons VALUES ('aef1','E','sec001','Gekko', 'Gordon','1 Wall Street','New York','NY','10005-0012','USA');
INSERT INTO Persons VALUES ('321f','J','sec991','Fox', 'Bud','321 Bronx Street','New York','NY','10004','USA');
INSERT INTO Persons VALUES ('ma12', 'C', NULL, 'Sveum', 'Dale', '1060 West Addison Street', 'Chicago', 'IL', '60613', 'USA');
INSERT INTO Persons VALUES ('321nd','C', NULL, 'Hartnell', 'William', '1060 West Addison Street', 'Chicago','IL','60613','USA');
INSERT INTO Persons VALUES ('nf32a','C',NULL, 'Troughton', 'Patrick','1060 West Addison Street','Chicago','IL','60613','USA');
INSERT INTO Persons VALUES ('321na','E','sec125','Pertwee', 'Jon','301 Front St W', 'Toronto', 'ON', 'M5V 2T6', 'Canada');
INSERT INTO Persons VALUES ('231','E','sec221','Baker','Tom','1 Blue Jays Way', 'Toronto', 'ON', 'M5V 1J1', 'Canada');
INSERT INTO Persons VALUES ('6doc','J','sec982','Hurndall', 'Richard','Campos El290','Mexico City', 'FD', NULL, 'Mexico');
INSERT INTO Persons VALUES ('321dr','J','sec543','Baker', 'C.','Avery Hall','Lincoln','NE','68503','USA');
INSERT INTO Persons VALUES ('1svndr','C',NULL, 'McCoy','Sylvester','126-01 Roosevelt Ave', 'Flushing', 'NY','11368','USA');
INSERT INTO Persons VALUES ('123lst','E','sec31x','McGann', 'Paul','1 MetLife Stadium Dr', 'East Rutherford', 'NJ','07073','USA');
INSERT INTO Persons VALUES ('nwdoc1','J','sec953','Eccleston', 'Chris','1 E 161st', 'St, Bronx', 'NY','10451','USA');
INSERT INTO Persons VALUES ('2ndbestd','C',NULL, 'Tennant', 'David','700 E Grand Ave', 'Chicago', 'IL', '60611','USA');
INSERT INTO Persons VALUES ('wrddoc','C',NULL, 'Smith', 'Matt','333 W 35th St,', 'Chicago', 'IL','60616','USA');
INSERT INTO Persons VALUES ('bbchar','C',NULL, 'Ehrmantraut', 'Kaylee','800 West 7th Street', 'Albuquerque', 'NM', '87105','USA');
INSERT INTO Persons VALUES ('doc05','C',NULL, 'Davison', 'Peter','123 Cabo San Lucas', 'Los Cabos', 'BCS', NULL, 'Mexico');

CREATE TABLE Emails (
	id varchar(10) primary key not null,
    person_id char(10) not null,
    email_address varchar(60),
	CONSTRAINT FK_EmailPersons FOREIGN KEY (person_id) REFERENCES Persons(id)
    ON DELETE CASCADE
);

INSERT INTO Emails VALUES ('1','944c','scastro@cubs.com');
INSERT INTO Emails VALUES('2','944c','starlin_castro13@gmail.com');
INSERT INTO Emails VALUES('3','306a','brock_f_sampson@gmail.com');
INSERT INTO Emails VALUES('4','306a','bsampson@venture.com');
INSERT INTO Emails VALUES('5','321f','bfox@gmail.com');
INSERT INTO Emails VALUES('6','321f','csheen@crazy.net');
INSERT INTO Emails VALUES('7','ma12','sveum@cubs.com');
INSERT INTO Emails VALUES('8','321nd','whartnell@doctors.com');
INSERT INTO Emails VALUES('9','321nd','dr@who.com');
INSERT INTO Emails VALUES('10','nf32a','ptroug@cse.unl.edu');
INSERT INTO Emails VALUES('11','nf32a','ptrou32@unl.edu');
INSERT INTO Emails VALUES('12','321na','jpet@whofan.com');
INSERT INTO Emails VALUES('13','231','famousdoc@who.com');
INSERT INTO Emails VALUES('14','231','tbaker@cse.unl.edu');
INSERT INTO Emails VALUES('15','231','mostfamous@whovian.com');
INSERT INTO Emails VALUES('16','231','thedoctor@bbc.com');
INSERT INTO Emails VALUES('17','6doc','rhurndall@cse.unl.edu');
INSERT INTO Emails VALUES('18','6doc','richard@unl.edu');
INSERT INTO Emails VALUES('19','321dr','dr@baker.com');
INSERT INTO Emails VALUES('20','1svndr','slyguy@hotmail.com');
INSERT INTO Emails VALUES('21','1svndr','mccoy@whofan.com');
INSERT INTO Emails VALUES('22','123lst','pmcgann@mlb.com');
INSERT INTO Emails VALUES('23','123lst','foo@bar.com');
INSERT INTO Emails VALUES('24','123lst', 'pmc@unl.edu');
INSERT INTO Emails VALUES('25','nwdoc1','newguy@whovian.com');
INSERT INTO Emails VALUES('26','2ndbestd','actor@shakespeare.com');
INSERT INTO Emails VALUES('27','2ndbestd','tdavid@unl.edu');
INSERT INTO Emails VALUES('28','wrddoc','msmith@who.com');
INSERT INTO Emails VALUES('29','wrddoc','thedoc@cse.unl.edu');


CREATE TABLE Assets (
	id varchar(10),
	account_type  char(1) not null,
    label varchar(40) not null,
    apr int,
	quarterly_dividend int,
    total_balance int,
    base_rate_of_return int,
    omega_measure int,
    percentage int,
    total_value int,
    beta_measure int,
    number_of_shares int,
	stock_symbol varchar(20),
    share_price int,
    PRIMARY KEY (id)
);

INSERT INTO Assets VALUES('AGTSAV','D','Savings Account','0.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Assets VALUES('BX001-23','D','Money Market Savings','1.05',NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Assets VALUES('CD99312','D','5-year CD','4.35',NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Assets VALUES('SAVE01','D','Online Savings A+', '1.90',NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Assets VALUES('CD1Y3X','D','1-year Rollover CD','2.75',NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Assets VALUES('RIRA01','D','Roth IRA','3.4',NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Assets VALUES('GOOG001','S','Google Inc',NULL,'0.0',NULL,'5.6',NULL, NULL, NULL,'1.15',NULL,'GOOG','814.708');
INSERT INTO Assets VALUES('DIAGEO12','S','Diageo PLC',NULL,'12.00',NULL,'3.2',NULL,NULL,NULL,'1.04',NULL,'DEO','122.75');
INSERT INTO Assets VALUES('123APP','S','Apple',NULL,'24.50',NULL,'4.3',NULL,NULL,NULL,'1.25',NULL,'AAPL','429.80');
INSERT INTO Assets VALUES('321CC','S','Coca-Cola',NULL,'5.45',NULL,'3.1',NULL,NULL,NULL,'0.68',NULL,'KO','41.08');
INSERT INTO Assets VALUES('No1BURR','S','Chipotle Mexican Grill',NULL,'45.57',NULL,'3.19',NULL,NULL,NULL,'.94',NULL,'CMG','341.91');
INSERT INTO Assets VALUES('B0oWM','S','Costco',NULL,'10.00',NULL,'2.25',NULL,NULL,NULL,'0.82',NULL,'COST','106.13');
INSERT INTO Assets VALUES('N0TPIX','S','3D Systems',NULL,'0.0',NULL,'1.25',NULL,NULL,NULL,'1.28',NULL,'DDD','35.40');
INSERT INTO Assets VALUES('wOOWoo1S','S','Canadian National Railway',NULL,'2.75',NULL,'4.6',NULL,NULL,NULL,'0.79',NULL,'CNI','97.75');
INSERT INTO Assets VALUES('BERK-B','S','Berkshire Hathaway',NULL,'0.0',NULL,'7.2',NULL,NULL,NULL,'0.29',NULL,'BRK-B','107.04');
INSERT INTO Assets VALUES('RENT445','P','Rental Property',NULL,'2400.00',NULL,'0.25','0.15',NULL,'120000',NULL, NULL, NULL, NULL);
INSERT INTO Assets VALUES('CMPROP0121','P','Commercial Property-Red Oaks Mall',NULL,'14240',NULL,'5.35','0.25',NULL,'10456000',NULL, NULL, NULL, NULL);
INSERT INTO Assets VALUES('FOOD12','P','Cluckin\'s restaurant chain',NULL,'35000',NULL,'00','3.0',NULL,'0.32','1212500.00',NULL, NULL, NULL);
INSERT INTO Assets VALUES('REALStr12','P','Fred\'s Fabulous Hardware Store',NULL,'1232',NULL,'1.23','0.13',NULL,'54300.00',NULL, NULL, NULL, NULL);
INSERT INTO Assets VALUES('IND321','P','Industrial Widget Manufacturers Inc.',NULL,'10500',NULL,'2','-0.15',NULL,'4213333',NULL, NULL, NULL, NULL);
INSERT INTO Assets VALUES('RSTOR322','P','7" Vinyl Records',NULL,'2453.21',NULL,'2.1','0.54',NULL,'13500.00',NULL, NULL, NULL, NULL);

CREATE TABLE Portfolios (
	id varchar(10) primary key not null,
    owner_id varchar(10)  not null,
    broker_id varchar(10) not null,
    beneficiary_id varchar(10),
    account_id varchar(10),
   CONSTRAINT FK_PersonsOwner FOREIGN KEY (owner_id) REFERENCES Persons(id),
   CONSTRAINT FK_PersonsBroker FOREIGN KEY (broker_id) REFERENCES Persons(id),
   CONSTRAINT FK_PersonsBeneficiary FOREIGN KEY (beneficiary_id) REFERENCES Persons(id),
   CONSTRAINT FK_AssetsAccount FOREIGN KEY (account_id) REFERENCES Assets(id)
   ON DELETE CASCADE
);

INSERT INTO Portfolios VALUES('PT001','944c','aef1','ma12','BX001-23');
INSERT INTO Portfolios VALUES('PF001','2342','aef1', NULL,'BX001-23');
INSERT INTO Portfolios VALUES('PD102','321dr','321f','aef1','RENT445');
INSERT INTO Portfolios VALUES('PF002','wrddoc','231','1svndr','321CC');
INSERT INTO Portfolios VALUES('PF003','2ndbestd','231','1svndr','N0TPIX');
INSERT INTO Portfolios VALUES('PF004','2ndbestd','6doc','bbchar','RIRA01');
INSERT INTO Portfolios VALUES('PF006','1svndr','231',NULL, NULL);
INSERT INTO Portfolios VALUES('PF007','231','231','bbchar','321CC');
INSERT INTO Portfolios VALUES('PF200','6doc','nwdoc1','bbchar', NULL);
INSERT INTO Portfolios VALUES('PF300','1svndr','6doc',NULL,'IND321');


