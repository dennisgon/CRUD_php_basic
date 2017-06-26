-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2017 at 07:18 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `beans`
--

CREATE TABLE `beans` (
  `Bean_ID` int(11) NOT NULL,
  `Bean_Name` varchar(30) NOT NULL,
  `Bean_Description` varchar(255) DEFAULT NULL,
  `Price_Per_Unit` decimal(19,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `beans`
--

INSERT INTO `beans` (`Bean_ID`, `Bean_Name`, `Bean_Description`, `Price_Per_Unit`) VALUES
(1, 'Cubita', 'Cubita Coffee is sun dried and hand sorted.  It originates from an elevation of over 2000 meters in the Andes Mountains of Ecuador, which is located closest to the sun on the Equator.  Superb aroma and rich Flavor.', '12.0000'),
(2, 'Colombian Supremo', 'This smooth, full-flavored coffee from Colombia boasts a sweet delicate aroma and a rich, balanced flavor.  A classic coffee appropriate for any occasion.', '13.5000'),
(3, 'Pure Kona Fancy', 'Grown on the Big Island of Hawaii, this coffee is known for its tantalizing aroma.  This medium bodied brew offers a rich flavor with subtle winery tones.', '15.9000'),
(4, 'Kenyan', 'The complex coffee from the highlands of East Africa features a winey, full flavor coupled with an intriguing aroma.  A delightfully delicate selection for coffee lovers.', '24.0000'),
(5, 'Costa Rican', 'Arabicas normally set aside for the demanding Northern European market produce this lively, well-balanced coffee distinguished by its snappy, clean taste.', '12.3000'),
(6, 'Kona Peaberry', 'Occasionally coffee fruit produces a single, rather than a double, bean.  These \"peaberries\" provide all the flavor and aroma of their larger, regular cousins, but in a smaller package.', '10.0000'),
(7, 'Sumatra', 'The wonderful cocoa-like finish of this smooth, full-bodied coffee is reminiscent of rich, dark chocolate.  Its unique characteristics can only be captured from the rich soils of this isle of Indonesia.', '9.5000'),
(8, 'Kona Blend', '25% Kona, 25% Sumatra and 50% Colombian.  This combination unites the fragrant aroma of Kona with the full body of Sumatra and the dry snap of Colombian.', '12.1500'),
(9, 'Kona Espresso', 'Some like it dark roasted to give it the smokey, bittersweet tan that espresso drinkers crave.', '13.0000'),
(10, 'Italian Roast', 'Roasted in the Southern Italian tradition, this boldly flavored dark roast is a perfect choice for either a hearty cup of drip coffee or a shot of espresso. ', '11.9000');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `Country_ID` int(11) NOT NULL,
  `Country_Name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`Country_ID`, `Country_Name`) VALUES
(2, 'USA'),
(4, 'Canada'),
(5, 'United Kingdom'),
(6, 'France'),
(7, 'Australia'),
(8, 'Japan'),
(9, 'Germany'),
(11, 'Belgium'),
(12, 'The Netherlands');

-- --------------------------------------------------------

--
-- Table structure for table `dailybean`
--

CREATE TABLE `dailybean` (
  `Bean_ID` int(11) NOT NULL DEFAULT '0',
  `Sale_Price` decimal(19,4) DEFAULT '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dailybean`
--

INSERT INTO `dailybean` (`Bean_ID`, `Sale_Price`) VALUES
(1, '11.0000');

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `Distributor_ID` int(11) NOT NULL,
  `Distributor_Name` varchar(50) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State_Region` varchar(30) DEFAULT NULL,
  `Country_ID` int(11) DEFAULT '0',
  `Phone` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`Distributor_ID`, `Distributor_Name`, `City`, `State_Region`, `Country_ID`, `Phone`, `Email`) VALUES
(1, 'Beans R Us', 'Brisbane', 'Queensland', 7, '+61 2 9360 7495', 'cwooley@beansrus.com'),
(2, 'The Buzz', 'Munich', 'Bavaria', 9, '+49 89 21786942', 'aschosser@thebuzz.com'),
(3, 'Coffee Galore', 'Capelle aan den IJssel', '', 12, '+31 10 458 7148', 'sslooten@coffeegalore.com'),
(4, 'Perk Plus', 'Salem', 'MA', 2, '508-374-8274', 'mmorrissey@perkplus.com'),
(5, 'Café Colombian', 'Hawthorne', 'Victoria', 7, '(+613) 8862 3255', 'jhoeks@cafecol.com'),
(6, 'Jumpin\' Java', 'Sydney', 'NSW', 7, '+61 2 9360 3855', 'gbowers@jumpinjava.com'),
(7, 'Coffee 2000', 'Munich', 'Bavaria', 9, '+49-89-630 27 30', 'werner.brandt@coffee2000.de'),
(8, 'The Whole Bean', 'Alton', 'Hampshire', 5, '01420 542730', 'kroche@wholebean.com'),
(9, 'Roast Resellers', 'Vancouver', 'BC', 4, '604-662-7551', 'tim@roastresellers.com'),
(36, 'kjh', 'kjh', 'kjh', 2, '87678', '876');

-- --------------------------------------------------------

--
-- Table structure for table `lineitem`
--

CREATE TABLE `lineitem` (
  `Order_ID` int(11) NOT NULL,
  `Line_No` int(11) NOT NULL,
  `Bean_ID` int(11) DEFAULT '0',
  `Quantity` int(11) NOT NULL DEFAULT '1',
  `Price_Per_Unit` decimal(19,4) DEFAULT '0.0000',
  `Discount_Percent` float DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lineitem`
--

INSERT INTO `lineitem` (`Order_ID`, `Line_No`, `Bean_ID`, `Quantity`, `Price_Per_Unit`, `Discount_Percent`) VALUES
(1, 1, 1, 100, '12.0000', 0),
(1, 2, 4, 200, '24.0000', 0),
(1, 3, 3, 150, '15.9000', 0),
(2, 1, 2, 400, '14.5000', 0),
(2, 2, 5, 50, '12.3000', 0),
(3, 1, 6, 100, '10.0000', 3),
(3, 2, 7, 100, '10.0000', 3),
(3, 3, 2, 100, '15.0000', 3),
(4, 1, 7, 200, '9.5000', 0),
(4, 2, 6, 100, '10.5000', 0),
(4, 3, 5, 100, '12.3000', 0),
(5, 1, 8, 60, '12.1500', 0),
(5, 2, 4, 100, '24.0000', 0),
(5, 3, 3, 140, '15.9000', 0),
(5, 4, 1, 70, '12.0000', 0),
(6, 1, 6, 30, '10.0000', 0),
(6, 2, 1, 200, '12.0000', 0),
(7, 1, 7, 4090, '12.0000', 15),
(7, 2, 6, 5000, '14.5000', 15),
(7, 3, 2, 1003, '15.0000', 15),
(8, 1, 4, 50, '24.0000', 5),
(8, 2, 2, 50, '14.5000', 5),
(8, 3, 7, 50, '12.0000', 5),
(9, 1, 8, 100, '12.1500', 0),
(9, 2, 6, 100, '10.0000', 0),
(10, 1, 5, 1000, '12.3000', 10),
(10, 2, 8, 1999, '12.1500', 10),
(10, 3, 7, 3999, '12.0000', 10),
(11, 1, 1, 100, '12.0000', 0),
(11, 2, 5, 100, '12.3000', 0),
(12, 1, 1, 1200, '12.0000', 20),
(12, 2, 7, 2000, '12.0000', 20),
(12, 3, 10, 16, '16.4000', 20),
(13, 1, 9, 180, '20.4000', 15),
(13, 2, 4, 200, '24.0000', 15),
(14, 1, 3, 15, '15.9000', 0),
(14, 2, 2, 15, '15.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `Login` varchar(8) NOT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`Login`, `Password`) VALUES
('training', 'coldfusion');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `Distributor_ID` int(11) NOT NULL,
  `Status_Code` varchar(50) DEFAULT NULL,
  `Order_Date` datetime NOT NULL,
  `BackOrdered` tinyint(1) DEFAULT NULL,
  `Shipment_Method` varchar(3) DEFAULT NULL,
  `Ship_Date` datetime DEFAULT NULL,
  `Tracking_Number` varchar(30) DEFAULT NULL,
  `Payment_Type` varchar(2) NOT NULL,
  `CC_Number` varchar(30) DEFAULT NULL,
  `CC_Expiration` datetime DEFAULT NULL,
  `CC_Type` varchar(4) DEFAULT NULL,
  `CC_Name` varchar(30) DEFAULT NULL,
  `PO_Number` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Distributor_ID`, `Status_Code`, `Order_Date`, `BackOrdered`, `Shipment_Method`, `Ship_Date`, `Tracking_Number`, `Payment_Type`, `CC_Number`, `CC_Expiration`, `CC_Type`, `CC_Name`, `PO_Number`) VALUES
(1, 1, 'Q', '1997-01-11 00:00:00', 0, NULL, NULL, NULL, 'CC', '8737-049450-0987', '1998-04-01 00:00:00', 'AMEX', 'B. Cantlon', NULL),
(2, 2, 'F', '1996-11-30 00:00:00', 0, 'UPS', '1996-12-04 00:00:00', '937047', 'CC', '3937-7458-8474', '1999-01-01 00:00:00', 'VISA', 'Nancy Blum', NULL),
(3, 3, 'H', '1997-01-02 00:00:00', 1, NULL, NULL, NULL, 'PO', NULL, NULL, NULL, NULL, 'BW-397-38489'),
(4, 4, 'N', '1997-02-01 00:00:00', 0, NULL, NULL, NULL, 'CC', '3787-0987-3745', '1997-05-01 00:00:00', 'MC', 'Maria Morrissey', NULL),
(5, 5, 'P', '1997-02-13 00:00:00', 0, 'FED', '1997-02-16 00:00:00', '397479', 'PO', NULL, NULL, NULL, NULL, 'CC-937-84779'),
(6, 1, 'P', '1997-01-15 00:00:00', 0, 'FED', '1997-01-20 00:00:00', '937479', 'CC', '3974-9374-9375', '1997-05-01 00:00:00', 'VISA', 'B. Cantlon', NULL),
(7, 2, 'Q', '1998-04-03 00:00:00', 1, NULL, NULL, NULL, 'cc', '3988-8377-8478', '1998-05-01 00:00:00', 'AMEX', 'N. Blum', NULL),
(8, 3, 'H', '1998-05-09 00:00:00', 1, NULL, NULL, NULL, 'PO', NULL, NULL, NULL, NULL, 'WU-937-9437'),
(9, 4, 'S', '1998-09-09 00:00:00', 1, NULL, NULL, NULL, 'CC', '9388-9798-9879', '1998-09-01 00:00:00', 'VISA', 'M. Morrissey', NULL),
(10, 5, 'F', '1998-09-20 00:00:00', 0, 'UPS', '1998-09-23 00:00:00', '923789', 'PO', NULL, NULL, NULL, NULL, 'WY-093-9388'),
(11, 6, 'F', '1998-04-04 00:00:00', 0, 'FED', '1998-04-20 00:00:00', '938987', 'CC', '9387-9488-9838', '1999-12-01 00:00:00', 'MC', 'J. Shmoe', NULL),
(12, 7, 'N', '1998-05-05 00:00:00', 0, NULL, NULL, NULL, 'PO', NULL, NULL, NULL, NULL, 'WE-938-8477'),
(13, 8, 'H', '1998-02-08 00:00:00', 1, NULL, NULL, NULL, 'CC', '2398-9348-9848', '1999-04-01 00:00:00', 'AMEX', 'T. Bear', 'IE-387098'),
(14, 9, 'P', '1998-06-09 00:00:00', 0, 'AIR', '1998-06-14 00:00:00', '385788', 'PO', NULL, NULL, NULL, NULL, 'OW-3948989');

-- --------------------------------------------------------

--
-- Table structure for table `status_codes`
--

CREATE TABLE `status_codes` (
  `Status_Code` varchar(3) NOT NULL,
  `Status` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status_codes`
--

INSERT INTO `status_codes` (`Status_Code`, `Status`) VALUES
('A', 'At Fulfillment'),
('F', 'Fulfilled'),
('H', 'Accounting Hold'),
('N', 'Cancelled'),
('P', 'Fulfillment Pending'),
('Q', 'In Queue'),
('S', 'Suspect'),
('U', 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `toppings`
--

CREATE TABLE `toppings` (
  `Topping_Desc` varchar(50) DEFAULT NULL,
  `Topping_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `toppings`
--

INSERT INTO `toppings` (`Topping_Desc`, `Topping_ID`) VALUES
('Pepperoni', 1),
('Mushroom', 2),
('Anchovy', 3),
('Extra Cheese', 4);

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `File_ID` int(11) NOT NULL,
  `Document_Name` varchar(50) DEFAULT NULL,
  `File_Name` varchar(50) DEFAULT NULL,
  `Upload_Path` varchar(50) DEFAULT NULL,
  `Date_Published` datetime DEFAULT NULL,
  `Author` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beans`
--
ALTER TABLE `beans`
  ADD PRIMARY KEY (`Bean_ID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`Country_ID`),
  ADD KEY `Country_ID` (`Country_ID`);

--
-- Indexes for table `dailybean`
--
ALTER TABLE `dailybean`
  ADD PRIMARY KEY (`Bean_ID`),
  ADD KEY `Bean_ID` (`Bean_ID`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`Distributor_ID`);

--
-- Indexes for table `lineitem`
--
ALTER TABLE `lineitem`
  ADD PRIMARY KEY (`Order_ID`,`Line_No`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`Login`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `Distributor_ID` (`Distributor_ID`);

--
-- Indexes for table `status_codes`
--
ALTER TABLE `status_codes`
  ADD PRIMARY KEY (`Status_Code`);

--
-- Indexes for table `toppings`
--
ALTER TABLE `toppings`
  ADD PRIMARY KEY (`Topping_ID`),
  ADD KEY `Topping_ID` (`Topping_ID`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`File_ID`),
  ADD KEY `File_ID` (`File_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beans`
--
ALTER TABLE `beans`
  MODIFY `Bean_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `Country_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `Distributor_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `toppings`
--
ALTER TABLE `toppings`
  MODIFY `Topping_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `File_ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
