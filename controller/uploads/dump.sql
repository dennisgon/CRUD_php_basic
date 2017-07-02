#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.4.274
#
# OPTIONS:
#   sourcefilename=E:\Downloads\Robby\solution2000.mdb
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=movedb
#   storageengine=MyISAM
#   dropdatabase=0
#   createtables=1
#   unicode=1
#   autocommit=1
#   transferdefaultvalues=1
#   transferindexes=1
#   transferautonumbers=1
#   transferrecords=1
#   columnlist=1
#   tableprefix=
#   negativeboolean=0
#   ignorelargeblobs=0
#   memotype=LONGTEXT
#   datetimetype=DATETIME
#

CREATE DATABASE IF NOT EXISTS `movedb`;
USE `movedb`;

#
# Table structure for table 'Beans'
#

DROP TABLE IF EXISTS `Beans`;

CREATE TABLE `Beans` (
  `Bean_ID` INTEGER NOT NULL AUTO_INCREMENT, 
  `Bean_Name` VARCHAR(30) NOT NULL, 
  `Bean_Description` VARCHAR(255), 
  `Price_Per_Unit` DECIMAL(19,4), 
  PRIMARY KEY (`Bean_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Beans'
#

INSERT INTO `Beans` (`Bean_ID`, `Bean_Name`, `Bean_Description`, `Price_Per_Unit`) VALUES (1, 'Cubita', 'Cubita Coffee is sun dried and hand sorted.  It originates from an elevation of over 2000 meters in the Andes Mountains of Ecuador, which is located closest to the sun on the Equator.  Superb aroma and rich Flavor.', 12);
INSERT INTO `Beans` (`Bean_ID`, `Bean_Name`, `Bean_Description`, `Price_Per_Unit`) VALUES (2, 'Colombian Supremo', 'This smooth, full-flavored coffee from Colombia boasts a sweet delicate aroma and a rich, balanced flavor.  A classic coffee appropriate for any occasion.', 13.5);
INSERT INTO `Beans` (`Bean_ID`, `Bean_Name`, `Bean_Description`, `Price_Per_Unit`) VALUES (3, 'Pure Kona Fancy', 'Grown on the Big Island of Hawaii, this coffee is known for its tantalizing aroma.  This medium bodied brew offers a rich flavor with subtle winery tones.', 15.9);
INSERT INTO `Beans` (`Bean_ID`, `Bean_Name`, `Bean_Description`, `Price_Per_Unit`) VALUES (4, 'Kenyan', 'The complex coffee from the highlands of East Africa features a winey, full flavor coupled with an intriguing aroma.  A delightfully delicate selection for coffee lovers.', 24);
INSERT INTO `Beans` (`Bean_ID`, `Bean_Name`, `Bean_Description`, `Price_Per_Unit`) VALUES (5, 'Costa Rican', 'Arabicas normally set aside for the demanding Northern European market produce this lively, well-balanced coffee distinguished by its snappy, clean taste.', 12.3);
INSERT INTO `Beans` (`Bean_ID`, `Bean_Name`, `Bean_Description`, `Price_Per_Unit`) VALUES (6, 'Kona Peaberry', 'Occasionally coffee fruit produces a single, rather than a double, bean.  These \"peaberries\" provide all the flavor and aroma of their larger, regular cousins, but in a smaller package.', 10);
INSERT INTO `Beans` (`Bean_ID`, `Bean_Name`, `Bean_Description`, `Price_Per_Unit`) VALUES (7, 'Sumatra', 'The wonderful cocoa-like finish of this smooth, full-bodied coffee is reminiscent of rich, dark chocolate.  Its unique characteristics can only be captured from the rich soils of this isle of Indonesia.', 9.5);
INSERT INTO `Beans` (`Bean_ID`, `Bean_Name`, `Bean_Description`, `Price_Per_Unit`) VALUES (8, 'Kona Blend', '25% Kona, 25% Sumatra and 50% Colombian.  This combination unites the fragrant aroma of Kona with the full body of Sumatra and the dry snap of Colombian.', 12.15);
INSERT INTO `Beans` (`Bean_ID`, `Bean_Name`, `Bean_Description`, `Price_Per_Unit`) VALUES (9, 'Kona Espresso', 'Some like it dark roasted to give it the smokey, bittersweet tan that espresso drinkers crave.', 13);
INSERT INTO `Beans` (`Bean_ID`, `Bean_Name`, `Bean_Description`, `Price_Per_Unit`) VALUES (10, 'Italian Roast', 'Roasted in the Southern Italian tradition, this boldly flavored dark roast is a perfect choice for either a hearty cup of drip coffee or a shot of espresso. ', 11.9);
# 10 records

#
# Table structure for table 'Country'
#

DROP TABLE IF EXISTS `Country`;

CREATE TABLE `Country` (
  `Country_ID` INTEGER NOT NULL AUTO_INCREMENT, 
  `Country_Name` VARCHAR(50) NOT NULL, 
  INDEX (`Country_ID`), 
  PRIMARY KEY (`Country_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Country'
#

INSERT INTO `Country` (`Country_ID`, `Country_Name`) VALUES (2, 'USA');
INSERT INTO `Country` (`Country_ID`, `Country_Name`) VALUES (4, 'Canada');
INSERT INTO `Country` (`Country_ID`, `Country_Name`) VALUES (5, 'United Kingdom');
INSERT INTO `Country` (`Country_ID`, `Country_Name`) VALUES (6, 'France');
INSERT INTO `Country` (`Country_ID`, `Country_Name`) VALUES (7, 'Australia');
INSERT INTO `Country` (`Country_ID`, `Country_Name`) VALUES (8, 'Japan');
INSERT INTO `Country` (`Country_ID`, `Country_Name`) VALUES (9, 'Germany');
INSERT INTO `Country` (`Country_ID`, `Country_Name`) VALUES (11, 'Belgium');
INSERT INTO `Country` (`Country_ID`, `Country_Name`) VALUES (12, 'The Netherlands');
# 9 records

#
# Table structure for table 'DailyBean'
#

DROP TABLE IF EXISTS `DailyBean`;

CREATE TABLE `DailyBean` (
  `Bean_ID` INTEGER NOT NULL DEFAULT 0, 
  `Sale_Price` DECIMAL(19,4) DEFAULT 0, 
  INDEX (`Bean_ID`), 
  PRIMARY KEY (`Bean_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'DailyBean'
#

INSERT INTO `DailyBean` (`Bean_ID`, `Sale_Price`) VALUES (1, 11);
# 1 records

#
# Table structure for table 'Distributor'
#

DROP TABLE IF EXISTS `Distributor`;

CREATE TABLE `Distributor` (
  `Distributor_ID` INTEGER NOT NULL AUTO_INCREMENT, 
  `Distributor_Name` VARCHAR(50), 
  `City` VARCHAR(30), 
  `State_Region` VARCHAR(30), 
  `Country_ID` INTEGER DEFAULT 0, 
  `Phone` VARCHAR(30), 
  `Email` VARCHAR(30), 
  PRIMARY KEY (`Distributor_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Distributor'
#

INSERT INTO `Distributor` (`Distributor_ID`, `Distributor_Name`, `City`, `State_Region`, `Country_ID`, `Phone`, `Email`) VALUES (1, 'Beans R Us', 'Brisbane', 'Queensland', 7, '+61 2 9360 7495', 'cwooley@beansrus.com');
INSERT INTO `Distributor` (`Distributor_ID`, `Distributor_Name`, `City`, `State_Region`, `Country_ID`, `Phone`, `Email`) VALUES (2, 'The Buzz', 'Munich', 'Bavaria', 9, '+49 89 21786942', 'aschosser@thebuzz.com');
INSERT INTO `Distributor` (`Distributor_ID`, `Distributor_Name`, `City`, `State_Region`, `Country_ID`, `Phone`, `Email`) VALUES (3, 'Coffee Galore', 'Capelle aan den IJssel', '', 12, '+31 10 458 7148', 'sslooten@coffeegalore.com');
INSERT INTO `Distributor` (`Distributor_ID`, `Distributor_Name`, `City`, `State_Region`, `Country_ID`, `Phone`, `Email`) VALUES (4, 'Perk Plus', 'Salem', 'MA', 2, '508-374-8274', 'mmorrissey@perkplus.com');
INSERT INTO `Distributor` (`Distributor_ID`, `Distributor_Name`, `City`, `State_Region`, `Country_ID`, `Phone`, `Email`) VALUES (5, 'Café Colombian', 'Hawthorne', 'Victoria', 7, '(+613) 8862 3255', 'jhoeks@cafecol.com');
INSERT INTO `Distributor` (`Distributor_ID`, `Distributor_Name`, `City`, `State_Region`, `Country_ID`, `Phone`, `Email`) VALUES (6, 'Jumpin\' Java', 'Sydney', 'NSW', 7, '+61 2 9360 3855', 'gbowers@jumpinjava.com');
INSERT INTO `Distributor` (`Distributor_ID`, `Distributor_Name`, `City`, `State_Region`, `Country_ID`, `Phone`, `Email`) VALUES (7, 'Coffee 2000', 'Munich', 'Bavaria', 9, '+49-89-630 27 30', 'werner.brandt@coffee2000.de');
INSERT INTO `Distributor` (`Distributor_ID`, `Distributor_Name`, `City`, `State_Region`, `Country_ID`, `Phone`, `Email`) VALUES (8, 'The Whole Bean', 'Alton', 'Hampshire', 5, '01420 542730', 'kroche@wholebean.com');
INSERT INTO `Distributor` (`Distributor_ID`, `Distributor_Name`, `City`, `State_Region`, `Country_ID`, `Phone`, `Email`) VALUES (9, 'Roast Resellers', 'Vancouver', 'BC', 4, '604-662-7551', 'tim@roastresellers.com');
INSERT INTO `Distributor` (`Distributor_ID`, `Distributor_Name`, `City`, `State_Region`, `Country_ID`, `Phone`, `Email`) VALUES (36, 'kjh', 'kjh', 'kjh', 2, '87678', '876');
# 10 records

#
# Table structure for table 'LineItem'
#

DROP TABLE IF EXISTS `LineItem`;

CREATE TABLE `LineItem` (
  `Order_ID` INTEGER NOT NULL, 
  `Line_No` INTEGER NOT NULL, 
  `Bean_ID` INTEGER DEFAULT 0, 
  `Quantity` INTEGER NOT NULL DEFAULT 1, 
  `Price_Per_Unit` DECIMAL(19,4) DEFAULT 0, 
  `Discount_Percent` FLOAT NULL DEFAULT 0, 
  PRIMARY KEY (`Order_ID`, `Line_No`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'LineItem'
#

INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (1, 1, 1, 100, 12, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (1, 2, 4, 200, 24, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (1, 3, 3, 150, 15.9, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (2, 1, 2, 400, 14.5, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (2, 2, 5, 50, 12.3, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (3, 1, 6, 100, 10, 3);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (3, 2, 7, 100, 10, 3);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (3, 3, 2, 100, 15, 3);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (4, 1, 7, 200, 9.5, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (4, 2, 6, 100, 10.5, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (4, 3, 5, 100, 12.3, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (5, 1, 8, 60, 12.15, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (5, 2, 4, 100, 24, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (5, 3, 3, 140, 15.9, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (5, 4, 1, 70, 12, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (6, 1, 6, 30, 10, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (6, 2, 1, 200, 12, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (7, 1, 7, 4090, 12, 15);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (7, 2, 6, 5000, 14.5, 15);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (7, 3, 2, 1003, 15, 15);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (8, 1, 4, 50, 24, 5);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (8, 2, 2, 50, 14.5, 5);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (8, 3, 7, 50, 12, 5);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (9, 1, 8, 100, 12.15, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (9, 2, 6, 100, 10, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (10, 1, 5, 1000, 12.3, 10);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (10, 2, 8, 1999, 12.15, 10);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (10, 3, 7, 3999, 12, 10);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (11, 1, 1, 100, 12, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (11, 2, 5, 100, 12.3, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (12, 1, 1, 1200, 12, 20);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (12, 2, 7, 2000, 12, 20);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (12, 3, 10, 16, 16.4, 20);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (13, 1, 9, 180, 20.4, 15);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (13, 2, 4, 200, 24, 15);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (14, 1, 3, 15, 15.9, 0);
INSERT INTO `LineItem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES (14, 2, 2, 15, 15, 0);
# 37 records

#
# Table structure for table 'Logins'
#

DROP TABLE IF EXISTS `Logins`;

CREATE TABLE `Logins` (
  `Login` VARCHAR(8) NOT NULL, 
  `Password` VARCHAR(20), 
  PRIMARY KEY (`Login`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Logins'
#

INSERT INTO `Logins` (`Login`, `Password`) VALUES ('training', 'coldfusion');
# 1 records

#
# Table structure for table 'Orders'
#

DROP TABLE IF EXISTS `Orders`;

CREATE TABLE `Orders` (
  `Order_ID` INTEGER NOT NULL AUTO_INCREMENT, 
  `Distributor_ID` INTEGER NOT NULL, 
  `Status_Code` VARCHAR(50), 
  `Order_Date` DATETIME NOT NULL, 
  `BackOrdered` TINYINT(1), 
  `Shipment_Method` VARCHAR(3), 
  `Ship_Date` DATETIME, 
  `Tracking_Number` VARCHAR(30), 
  `Payment_Type` VARCHAR(2) NOT NULL, 
  `CC_Number` VARCHAR(30), 
  `CC_Expiration` DATETIME, 
  `CC_Type` VARCHAR(4), 
  `CC_Name` VARCHAR(30), 
  `PO_Number` VARCHAR(30), 
  INDEX (`Distributor_ID`), 
  PRIMARY KEY (`Order_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Orders'
#

INSERT INTO `Orders` (`Order_ID`, `Distributor_ID`, `Status_Code`, `Order_Date`, `BackOrdered`, `Shipment_Method`, `Ship_Date`, `Tracking_Number`, `Payment_Type`, `CC_Number`, `CC_Expiration`, `CC_Type`, `CC_Name`, `PO_Number`) VALUES (1, 1, 'Q', '1997-01-11 00:00:00', 0, NULL, NULL, NULL, 'CC', '8737-049450-0987', '1998-04-01 00:00:00', 'AMEX', 'B. Cantlon', NULL);
INSERT INTO `Orders` (`Order_ID`, `Distributor_ID`, `Status_Code`, `Order_Date`, `BackOrdered`, `Shipment_Method`, `Ship_Date`, `Tracking_Number`, `Payment_Type`, `CC_Number`, `CC_Expiration`, `CC_Type`, `CC_Name`, `PO_Number`) VALUES (2, 2, 'F', '1996-11-30 00:00:00', 0, 'UPS', '1996-12-04 00:00:00', '937047', 'CC', '3937-7458-8474', '1999-01-01 00:00:00', 'VISA', 'Nancy Blum', NULL);
INSERT INTO `Orders` (`Order_ID`, `Distributor_ID`, `Status_Code`, `Order_Date`, `BackOrdered`, `Shipment_Method`, `Ship_Date`, `Tracking_Number`, `Payment_Type`, `CC_Number`, `CC_Expiration`, `CC_Type`, `CC_Name`, `PO_Number`) VALUES (3, 3, 'H', '1997-01-02 00:00:00', 1, NULL, NULL, NULL, 'PO', NULL, NULL, NULL, NULL, 'BW-397-38489');
INSERT INTO `Orders` (`Order_ID`, `Distributor_ID`, `Status_Code`, `Order_Date`, `BackOrdered`, `Shipment_Method`, `Ship_Date`, `Tracking_Number`, `Payment_Type`, `CC_Number`, `CC_Expiration`, `CC_Type`, `CC_Name`, `PO_Number`) VALUES (4, 4, 'N', '1997-02-01 00:00:00', 0, NULL, NULL, NULL, 'CC', '3787-0987-3745', '1997-05-01 00:00:00', 'MC', 'Maria Morrissey', NULL);
INSERT INTO `Orders` (`Order_ID`, `Distributor_ID`, `Status_Code`, `Order_Date`, `BackOrdered`, `Shipment_Method`, `Ship_Date`, `Tracking_Number`, `Payment_Type`, `CC_Number`, `CC_Expiration`, `CC_Type`, `CC_Name`, `PO_Number`) VALUES (5, 5, 'P', '1997-02-13 00:00:00', 0, 'FED', '1997-02-16 00:00:00', '397479', 'PO', NULL, NULL, NULL, NULL, 'CC-937-84779');
INSERT INTO `Orders` (`Order_ID`, `Distributor_ID`, `Status_Code`, `Order_Date`, `BackOrdered`, `Shipment_Method`, `Ship_Date`, `Tracking_Number`, `Payment_Type`, `CC_Number`, `CC_Expiration`, `CC_Type`, `CC_Name`, `PO_Number`) VALUES (6, 1, 'P', '1997-01-15 00:00:00', 0, 'FED', '1997-01-20 00:00:00', '937479', 'CC', '3974-9374-9375', '1997-05-01 00:00:00', 'VISA', 'B. Cantlon', NULL);
INSERT INTO `Orders` (`Order_ID`, `Distributor_ID`, `Status_Code`, `Order_Date`, `BackOrdered`, `Shipment_Method`, `Ship_Date`, `Tracking_Number`, `Payment_Type`, `CC_Number`, `CC_Expiration`, `CC_Type`, `CC_Name`, `PO_Number`) VALUES (7, 2, 'Q', '1998-04-03 00:00:00', 1, NULL, NULL, NULL, 'cc', '3988-8377-8478', '1998-05-01 00:00:00', 'AMEX', 'N. Blum', NULL);
INSERT INTO `Orders` (`Order_ID`, `Distributor_ID`, `Status_Code`, `Order_Date`, `BackOrdered`, `Shipment_Method`, `Ship_Date`, `Tracking_Number`, `Payment_Type`, `CC_Number`, `CC_Expiration`, `CC_Type`, `CC_Name`, `PO_Number`) VALUES (8, 3, 'H', '1998-05-09 00:00:00', 1, NULL, NULL, NULL, 'PO', NULL, NULL, NULL, NULL, 'WU-937-9437');
INSERT INTO `Orders` (`Order_ID`, `Distributor_ID`, `Status_Code`, `Order_Date`, `BackOrdered`, `Shipment_Method`, `Ship_Date`, `Tracking_Number`, `Payment_Type`, `CC_Number`, `CC_Expiration`, `CC_Type`, `CC_Name`, `PO_Number`) VALUES (9, 4, 'S', '1998-09-09 00:00:00', 1, NULL, NULL, NULL, 'CC', '9388-9798-9879', '1998-09-01 00:00:00', 'VISA', 'M. Morrissey', NULL);
INSERT INTO `Orders` (`Order_ID`, `Distributor_ID`, `Status_Code`, `Order_Date`, `BackOrdered`, `Shipment_Method`, `Ship_Date`, `Tracking_Number`, `Payment_Type`, `CC_Number`, `CC_Expiration`, `CC_Type`, `CC_Name`, `PO_Number`) VALUES (10, 5, 'F', '1998-09-20 00:00:00', 0, 'UPS', '1998-09-23 00:00:00', '923789', 'PO', NULL, NULL, NULL, NULL, 'WY-093-9388');
INSERT INTO `Orders` (`Order_ID`, `Distributor_ID`, `Status_Code`, `Order_Date`, `BackOrdered`, `Shipment_Method`, `Ship_Date`, `Tracking_Number`, `Payment_Type`, `CC_Number`, `CC_Expiration`, `CC_Type`, `CC_Name`, `PO_Number`) VALUES (11, 6, 'F', '1998-04-04 00:00:00', 0, 'FED', '1998-04-20 00:00:00', '938987', 'CC', '9387-9488-9838', '1999-12-01 00:00:00', 'MC', 'J. Shmoe', NULL);
INSERT INTO `Orders` (`Order_ID`, `Distributor_ID`, `Status_Code`, `Order_Date`, `BackOrdered`, `Shipment_Method`, `Ship_Date`, `Tracking_Number`, `Payment_Type`, `CC_Number`, `CC_Expiration`, `CC_Type`, `CC_Name`, `PO_Number`) VALUES (12, 7, 'N', '1998-05-05 00:00:00', 0, NULL, NULL, NULL, 'PO', NULL, NULL, NULL, NULL, 'WE-938-8477');
INSERT INTO `Orders` (`Order_ID`, `Distributor_ID`, `Status_Code`, `Order_Date`, `BackOrdered`, `Shipment_Method`, `Ship_Date`, `Tracking_Number`, `Payment_Type`, `CC_Number`, `CC_Expiration`, `CC_Type`, `CC_Name`, `PO_Number`) VALUES (13, 8, 'H', '1998-02-08 00:00:00', 1, NULL, NULL, NULL, 'CC', '2398-9348-9848', '1999-04-01 00:00:00', 'AMEX', 'T. Bear', 'IE-387098');
INSERT INTO `Orders` (`Order_ID`, `Distributor_ID`, `Status_Code`, `Order_Date`, `BackOrdered`, `Shipment_Method`, `Ship_Date`, `Tracking_Number`, `Payment_Type`, `CC_Number`, `CC_Expiration`, `CC_Type`, `CC_Name`, `PO_Number`) VALUES (14, 9, 'P', '1998-06-09 00:00:00', 0, 'AIR', '1998-06-14 00:00:00', '385788', 'PO', NULL, NULL, NULL, NULL, 'OW-3948989');
# 14 records

#
# Table structure for table 'Status_Codes'
#

DROP TABLE IF EXISTS `Status_Codes`;

CREATE TABLE `Status_Codes` (
  `Status_Code` VARCHAR(3) NOT NULL, 
  `Status` VARCHAR(30) NOT NULL, 
  PRIMARY KEY (`Status_Code`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Status_Codes'
#

INSERT INTO `Status_Codes` (`Status_Code`, `Status`) VALUES ('A', 'At Fulfillment');
INSERT INTO `Status_Codes` (`Status_Code`, `Status`) VALUES ('F', 'Fulfilled');
INSERT INTO `Status_Codes` (`Status_Code`, `Status`) VALUES ('H', 'Accounting Hold');
INSERT INTO `Status_Codes` (`Status_Code`, `Status`) VALUES ('N', 'Cancelled');
INSERT INTO `Status_Codes` (`Status_Code`, `Status`) VALUES ('P', 'Fulfillment Pending');
INSERT INTO `Status_Codes` (`Status_Code`, `Status`) VALUES ('Q', 'In Queue');
INSERT INTO `Status_Codes` (`Status_Code`, `Status`) VALUES ('S', 'Suspect');
INSERT INTO `Status_Codes` (`Status_Code`, `Status`) VALUES ('U', 'Unknown');
# 8 records

#
# Table structure for table 'Toppings'
#

DROP TABLE IF EXISTS `Toppings`;

CREATE TABLE `Toppings` (
  `Topping_Desc` VARCHAR(50), 
  `Topping_ID` INTEGER NOT NULL AUTO_INCREMENT, 
  PRIMARY KEY (`Topping_ID`), 
  INDEX (`Topping_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Toppings'
#

INSERT INTO `Toppings` (`Topping_Desc`, `Topping_ID`) VALUES ('Pepperoni', 1);
INSERT INTO `Toppings` (`Topping_Desc`, `Topping_ID`) VALUES ('Mushroom', 2);
INSERT INTO `Toppings` (`Topping_Desc`, `Topping_ID`) VALUES ('Anchovy', 3);
INSERT INTO `Toppings` (`Topping_Desc`, `Topping_ID`) VALUES ('Extra Cheese', 4);
# 4 records

#
# Table structure for table 'Upload'
#

DROP TABLE IF EXISTS `Upload`;

CREATE TABLE `Upload` (
  `File_ID` INTEGER NOT NULL AUTO_INCREMENT, 
  `Document_Name` VARCHAR(50), 
  `File_Name` VARCHAR(50), 
  `Upload_Path` VARCHAR(50), 
  `Date_Published` DATETIME, 
  `Author` VARCHAR(50), 
  INDEX (`File_ID`), 
  PRIMARY KEY (`File_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Upload'
#

# 0 records

