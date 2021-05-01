-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2019 at 05:07 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_proj`
--

-- --------------------------------------------------------

--
-- Table structure for table `Business`
--

CREATE TABLE IF NOT EXISTS `Business` (
  `business_id` int(20) NOT NULL,
  `business_name` varchar(200) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `website` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Business`
--

INSERT INTO `Business` (`business_id`, `business_name`, `fax`, `website`) VALUES
(1, 'Dravmo', '785-654-3254', 'dravmo.com'),
(2, 'Oxour', '856-645-7895', 'oxour.com'),
(3, 'Fariox', '909-876-2345', 'fariox.com'),
(4, 'Yigat', '455-785-2145', 'yigati.com'),
(5, 'Vorofy', '233-178-9458', 'Vorofy@website.com'),
(6, 'Lebami', '784-688-3974', 'Lebami@company.com'),
(7, 'Nozzy', '877-451-2258', 'Nozzy@company.com'),
(8, 'Jox', '824-555-7415', 'jox.com'),
(9, 'Nario', '444-788-5577', 'Nario@company.com'),
(10, 'Writzy', '866-999-2115', 'Writzy.com'),
(11, 'Fovty', '966-555-2828', 'Fovty.com'),
(12, 'Dravmo', '787-451-2655', 'Dravmo@company.com'),
(13, 'Tiollo', '900-932-1333', 'tiollo@company.com'),
(14, 'Yexle', '787-787-7878', 'Yexle@company.com'),
(15, 'Zexmon', '889-200-4541', 'zexmon@company.com'),
(16, 'Synaty', '212-353-6565', 'synaty@company.com'),
(17, 'Eirmon', '717-999-9999', 'eirmon.com'),
(18, 'Moriox', '123-444-5432', 'moriox.com'),
(19, 'Gorofy', '542-667-1235', 'gorofy.com'),
(20, 'Gatello', '877-828-9191', 'gatello.com'),
(21, 'Boniry', '702-999-2222', 'boniry.com'),
(22, 'Wirmon', '787-888-5122', 'wirmon.com'),
(23, 'Romofy', '910-111-2929', 'romofy.com'),
(24, 'Intrepidem', '', 'intrepidem.com'),
(25, 'Intrepidem', '', 'intrepidem.com'),
(26, 'asdf', '', 'asdf'),
(27, 'asdf', '', 'asdf'),
(28, 'Intrepidem, LLC', '', 'intrepidem.com');

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE IF NOT EXISTS `Category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`category_id`, `category_name`) VALUES
(6, 'Domestic Robot Accessories'),
(7, 'Domestic Robot Replacement Parts'),
(5, 'Personal and Domestic Robots'),
(9, 'Professional and Service Robots'),
(11, 'Robot Books'),
(12, 'Robot Education'),
(1, 'Robot Parts'),
(8, 'Robot Toys'),
(2, 'Robots and Kits'),
(4, 'Tools and Equipment'),
(3, 'UAVs and Drones'),
(10, 'Wearable Technology');

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE IF NOT EXISTS `Customer` (
  `customer_id` int(20) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `password` varchar(25) NOT NULL,
  `zipcode` int(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `business_id` int(20) DEFAULT NULL,
  `state_id` int(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`customer_id`, `first_name`, `last_name`, `address`, `city`, `password`, `zipcode`, `phone`, `business_id`, `state_id`, `email`) VALUES
(1, 'Aguston', 'Flannery', '164 Creeks Edge Cir', '', '', 71270, '318-555-6688', NULL, 15, NULL),
(2, 'Donn', 'Nevels', '776 Johnson Mcallister Rd', '', '', 28433, '917-565-2222', NULL, 7, NULL),
(3, 'Darcie', 'Alsop', '846 N 200th E', '', '', 84501, '899-788-4562', 9, 2, NULL),
(4, 'Malisa', 'Goble', '9273 Sassas Rd', '', '', 89562, '855-744-1256', 11, 7, NULL),
(5, 'Clay', 'Jones', '24 Kellogg Rd', '', '', 14458, '788-999-5587', NULL, 27, NULL),
(6, 'Gala', 'Araj', '100 Janis St', '', '', 70760, '888-444-5252', 10, 3, NULL),
(8, 'Romana', 'Osini', '16160 Water St', '', '', 43135, '444-999-8785', 4, 51, NULL),
(9, 'Chloe', 'Baham', '900 Federal St', '', '', 24504, '888-754-2155', NULL, 5, NULL),
(10, 'Julian', 'Gray', '160 Grey Rock Rdg', '', '', 28751, '745-212-3313', 1, 42, NULL),
(11, 'Maurine', 'Krider', '1400 Gaut St', '', '', 37311, '333-556-8911', NULL, 18, NULL),
(12, 'Joslyn', 'Synder', '369 Woodfield Square Ln', '', '', 48116, '819-955-7474', 2, 33, NULL),
(13, 'Royce', 'Clifton', '17162 Woodbine St', '', '', 48219, '3133-488-9562', NULL, 16, NULL),
(14, 'Mikki', 'Ovedo', '411 E Clare St', '', '', 62362, '985-646-3003', 3, 38, NULL),
(15, 'Mei', 'Lareu', '79 Lake Side Dr', '', '', 10045, '701-200-8452', NULL, 50, NULL),
(16, 'Star', 'Leon', '822 Pinehaven Dr', '', '', 45454, '810-744-5188', 7, 25, NULL),
(17, 'Mac', 'Bakken', '3015 Ironwood Ln', '', '', 78541, '300-699-5024', 5, 22, NULL),
(18, 'Scarlet', 'Borou', '5768 Lake Hill Dr', '', '', 50216, '789-655-4012', NULL, 9, NULL),
(19, 'Todd', 'Arata', '306 S Russell Ave', '', '', 61254, '309-944-6561', NULL, 39, NULL),
(20, 'Helen', 'Conoto', '5172 Northfork Rd', '', '', 24112, '276-650-3573', NULL, 44, NULL),
(21, 'Raul', 'Kemper', '1975 Riverside Dr', '', '', 10025, '656-888-4541', NULL, 25, NULL),
(22, 'Fabian', 'Repka', '1900 W County 100 Rd N', '', '', 19045, '900-455-6211', NULL, 42, NULL),
(23, 'Lamar', 'Byrington', '4103 Cliffvale Rd', '', '', 40125, '777-895-4511', NULL, 12, NULL),
(24, 'Aba', 'Eberhardt', '1018 Orange St', '', '', 52100, '602-393-8555', NULL, 43, NULL),
(25, 'Lourdes', 'Pince', '621 Elm St', '', '', 66801, '811-455-9745', NULL, 38, NULL),
(26, 'Tayrn', 'Provo', '133 Zerby Ave', '', '', 14495, '655-455-8485', NULL, 30, NULL),
(27, 'Keanu', 'Brown', '7238 Saxon Road ', '', '', 19188, '542-393-0099', 12, 52, NULL),
(28, 'Ebrahim', 'Morton', '622 South Hartford Court', '', '', 78550, '200-155-4523', 13, 9, NULL),
(29, 'Riaan', 'Guilano', '9 Meadow Drive ', '', '', 56233, '980-123-3541', 14, 51, NULL),
(30, 'Collette', 'Lowery', '8970 Court Street ', '', '', 78451, '788-200-1456', 15, 46, NULL),
(31, 'Emil', 'Terrel', '8393 Shirley Street', '', '', 45002, '102-445-7788', NULL, 51, NULL),
(32, 'Ami', 'Shanan', '622 South Hartford Court ', '', '', 31162, '311-855-4522', 16, 6, NULL),
(33, 'Elani', 'Guthrie', '19 Harrison Street', '', '', 85222, '656-322-1455', 17, 25, NULL),
(34, 'Aman', 'Alexander', '83 W. Courtland Lane', '', '', 85522, '244-789-9455', 18, 42, NULL),
(35, 'Dustin', 'Lu', '9434 Ridgeview Street ', '', '', 84450, '544-741-1225', 19, 4, NULL),
(36, 'Adnan', 'Gupta', '64 High Noon Street', '', '', 60004, '900-166-3255', 20, 39, NULL),
(37, 'Ameera', 'Moretti', '1 Saxton Ave', '', '', 62210, '744-555-4122', 21, 52, NULL),
(38, 'Farah', 'Narin', '9640 Tarkiln Hill St', '', '', 52145, '633-455-5110', 22, 43, NULL),
(39, 'Manuel', 'Bains', '7541 Broad Street', '', '', 85522, '451-777-8500', 23, 18, NULL),
(40, 'Pia', 'Corrigan', '64 1st Drive', '', '', 54888, '744-555-8966', NULL, 16, NULL),
(41, 'Yousif', 'Fara', '172 East Court', '', '', 78444, '313-555-7444', NULL, 28, NULL),
(42, 'Bilaal', 'Mavan', '8053 Mayfair St', '', '', 85544, '300-985-2014', NULL, 30, NULL),
(43, 'Kiri', 'Owens', '7789 Overlook St', '', '', 85411, '455-788-9652', NULL, 29, NULL),
(44, 'Manuel', 'Banes', '430 4th Avenue', '', '', 74451, '102-444-8955', NULL, 49, NULL),
(45, 'Cherry', 'Hayden', '48 Saxton Street', '', '', 50011, '655-444-7822', NULL, 39, NULL),
(46, 'Mylie', 'Coles', '9103 John Circle ', '', '', 24557, '785-888-5200', NULL, 40, NULL),
(47, 'Chance', 'Benson', '706 Center Street ', '', '', 50244, '744-559-6522', NULL, 38, NULL),
(48, 'Elisa', 'Rees', '823 Studebaker Ave', '', '', 30047, '988-554-7444', NULL, 8, NULL),
(49, 'Arianna', 'Graves', '115 Newcastle Rd', '', '', 85541, '300-740-1054', NULL, 51, NULL),
(50, 'Zavier', 'Campbell', '173 Park St', '', '', 57884, '202-699-9855', NULL, 51, NULL),
(51, 'Serenity', 'Walsh', '149 Tarkiln Hill Street ', '', '', 80021, '454-700-1200', NULL, 27, NULL),
(52, 'Tia', 'Arrelano', '173 Park St', '', '', 75520, '333-200-1450', NULL, 26, NULL),
(53, 'Braylon', 'Shields', '906 Holly Ave', '', '', 50014, '879-355-4700', NULL, 1, NULL),
(54, 'Laci', 'Howell', '233 High Lane ', '', '', 98555, '655-874-8963', NULL, 40, NULL),
(55, 'Keegan', 'Garison', '7348 Riverside Lane', '', '', 15440, '554-677-8504', NULL, 4, NULL),
(58, 'Em', 'Ka', 'asdfasdf', 'asdf', 'asdfasdf', 0, 'asdf', 26, NULL, 'asdf@asdf.com'),
(59, 'Emily', 'kauffman', 'asdf', 'asdf', 'asdfasdf', 0, 'sadf', 27, NULL, 'asdf@gmail.com'),
(60, 'Emily', 'Kauffman', '5311 Wellesley Ave', 'Pittsburgh', 'x273vr', 15206, '7175133325', 28, NULL, 'kauffmanes@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE IF NOT EXISTS `Products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(4000) NOT NULL,
  `quantity_remaining` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`product_id`, `name`, `price`, `description`, `quantity_remaining`, `category_id`) VALUES
(1, 'Lynxmotion SSC-32U USB Servo Controller', 44.95, 'Controls up to 32 servo motors\r\nComes preassembled\r\nUSB interface (cable included), Xbee socket, and TTL serial\r\nBidirectional communication with Query commands\r\nLarge capacitors to prevent brownouts\r\nThis product replaces RB-Lyn-100 and is an improved USB version.', 800, 1),
(2, 'Hitec HS-422 Servo Motor', 11.68, 'Speed (sec/60o): 0.16\r\nTorque (Kg-cm/Oz-in): 4.1/57\r\nSize (mm): 41 x 20 x 37\r\nWeight (g/oz): 45.5/1.6', 100, 1),
(3, 'Arduino Starter Kit', 70.89, 'Walks you through the basics of using the Arduino in a hands-on way\r\nFrom this kit you''ll learn through building several creative projects\r\nIncludes a selection of the most common and useful electronic components with a book of 15 projects\r\nComes with Arduino UNO board rev.3\r\nEnglish manual', 500, 1),
(4, 'Raspberry Pi 3 B Computer Board', 39.95, 'A 1.2GHz 64-bit quad-core ARM Cortex-A53 CPU\r\nIntegrated 802.11n wireless LAN and Bluetooth 4.1\r\nComplete compatibility with Raspberry Pi 1 and 2\r\nCan be run from a 5V micro-USB power adapter\r\n', 993, 1),
(5, 'Sharp GP2Y0A21YK0F IR Range Sensor - 10cm to 80cm', 9.95, 'Infrared range finder 10cm (~4") to 80cm (~30")\r\nAnalog interface\r\nLead free, ROHS compliant\r\nReplaces the discontinued GP2D1', 233, 1),
(6, 'Break Away Headers - Straight', 1.5, 'Used with custom PCBs or general custom headers\r\nA row of headers - break to fit. 40 pins that can be cut to any size\r\nNumber of Pins: 40\r\nPin Style: Square', 3000, 1),
(7, 'Arduino Uno R3 USB Microcontroller', 21.99, 'Arduino microcontroller module with USB connection\r\nWide variety of accessory "Shields" available\r\nIt is intended for roboticists, artists, designers and hobbyists\r\nVariety of I/O pins including analog, digital, PWM and more\r\nBased on the ATmega328 (removable DIP IC)\r\nRevision 3\r\n', 155, 1),
(8, 'Roomba Battery NiMH 3500mAH ', 31.97, 'Nominal Voltage: 14.4V\r\nChemistry: NiMH\r\nCapacity: 3.5 Ah\r\nContinuous Discharge: 3.5 A', 210, 1),
(9, 'Makeblock mBot v1.1 Blue STEM Educational Programmable Robot (Bluetooth)', 94.99, 'Hands-on experience of programming, electronics, and robotics\r\nEasy to assemble and blue colored\r\nBased on Scratch 2.0 and Arduino IDE\r\nIncludes an IR remote control (CR2025 Button Cell Battery is not included)\r\nAges: 12+', 140, 2),
(10, 'Arduboy Arduino Electronic Kit', 49, 'Play, create and share games\r\nFully Programmable with Arduino\r\n6 Soft-Touch Tactile Buttons and 2 Channel Piezo Speaker\r\n32KB Flash, 2.5KB RAM, 1KB EEPROM\r\n8+ Hour Battery Life & Rechargable', 177, 2),
(11, 'VEX IQ Super Kit', 329.99, 'Kit for introduction to STEM and robotics\r\nOver 850 structural & motion components\r\n4 smart motors, 7 sensors, robot brain, controller & batteries included\r\nStorage bin & tray included for organized storage of all parts', 350, 2),
(12, 'Snap Circuits Jr. 100-in-1 Experiments Kit', 22.99, 'Build your own circuits by snapping together up to 30 parts\r\nFull-color assembly manual with 100 exciting projects \r\nAges 8 and up. Does not require soldering \r\nNo tools required', 340, 2),
(13, 'MakeBlock mBot-S Explorer Kit w/ LED Matrix', 79.99, 'MakeBlock mBot-S Explorer Kit\r\nEntry-level educational robot for STEAM education\r\nContains many electronic modules\r\nUpdated version of mBot\r\nComes with an LED matrix display', 99, 2),
(14, 'Edison Programmable V2.0 Robot', 49, 'Edison V2.0 has wheel encoders\r\nWheel encoders allow Edison to travel specific distances at exact speeds\r\nClutch mechanism\r\nEdison V2.0 has upgraded motor drive components that deliver more power to the wheels\r\nLonger range obstacle detection\r\nLonger battery life', 66, 2),
(15, 'Elenco Snap Circuits Pro 750-in-1 w/Computer Interface Kit', 99.99, 'Build your own circuits by snapping together up to 80 parts\r\nFull-color assembly manual with 750 exciting projects and 70 computer interfaced experiments\r\nAges 8 and up. Does not require soldering \r\nNo tools required', 333, 2),
(17, 'Lynxmotion AL5D PLTW Robotic Arm Kit', 358.42, 'Custom AL5D robotic arm for Project Lead The Way (PLTW)\r\nWorks perfectly with the free software FlowArm PLTW\r\nAdvanced inverse kinematics positioning control using mouse\r\nIncludes medium duty wrist rotate upgrade\r\nIncludes new SSC-32U servo controller board\r\nIncludes everything you need to control the arm from a personal computer (USB port)', 147, 2),
(19, 'Elenco Snap Circuits 300-in-1 Experiments Kit', 44.19, 'Build your own circuits by snapping together up to 60 parts\r\nFull-color assembly manual with 300 exciting projects \r\nAges 8 and up. Does not require soldering \r\nNo tools required', 668, 2),
(20, 'AutoScan FM Radio Soldering Kit', 11.96, 'Designed to receive FM signals in the frequency range (88-108MHz).\r\nUses electronic auto-scan to search for FM stations\r\nMaximizes the learning process, while keeping the chance of assembly error at a minimum\r\nConstructed in two sections Audio and RF', 75, 2),
(21, 'Pixhawk 2.1 Standard Set', 238, 'Modular design for flexibility\r\nReady for RTK GPS & multiple GPS \r\nTriple redundancy IMU system\r\nIsolated, dampened and temperature controled IMU', 50, 3),
(22, 'Navio2 Autopilot Kit for Raspberry Pi 2', 213, 'Autopilot kit for for Raspberry Pi 2 & 3\r\nGPS/Glonas/Beidou U-blox M8N receiver\r\nUART, SPI, I2C for extensions\r\nIncludes power module, wire pack and GPS / GNSS antenna', 88, 3),
(23, 'Lynxmotion Quadrino Nano Drone/UAV Flight Controller (with GPS)', 139.99, 'ATmega2560, Arduino Compatible Microcontroller \r\nVery small size: 53x53mm (in case) \r\nIntegrated Sensors (Gyroscope / Accelerometer / Magnetometer / Barometer) \r\nBuilt-in GPS Module with External Antenna \r\nEasy Connection for Motor Controller and Radio System \r\nSemi-transparent case to view LED status \r\nMultiWii software compatible \r\nExpansion ports for experimentation (I2C, UART, GPIO)', 52, 3),
(24, 'MakeBlock Airblock Modular Hexacopter Drone', 89.1, 'Easy to assemble modular and programmable drone with six rotors\r\nCan be transformed into a drone, a hovercraft and other systems\r\nControllable integrated LED lights\r\nGraphic programming software on iOS and Android devices\r\nAges: 8+', 104, 3),
(25, 'BlackBird 2 3D FPV Camera', 179, '2D video mode\r\nDual-channel 3D video mode allows you to obtain the best stereo image\r\nPlugins available\r\nThe voltage from 5 to 15 Volts and up to 150 mA consumption', 230, 3),
(26, 'Tarot IRON MAN 650 Folding Carbon Fiber Quadcopter Frame', 105, 'Tarot Iron Man 650 4-axis vehicle frame\r\nDesign standards higher than similar products\r\nFull set of rack weighs only 476 grams\r\nFull folding design', 80, 3),
(27, 'Wall Adapter Power Supply - 9VDC 650mA', 5.95, 'High quality switching ''wall wart'' AC to DC 9V 650mA wall power supply\r\nThese will power most projects that don''t require more than 650mA of current\r\nCenter-positive 5.5x2.1mm barrel connector\r\nRoHS Compliant', 62, 4),
(28, '170 Tie Point Mini Solderless Breadboard Pair - White', 4.99, '170 tie point breadboard - White\r\n17 x 5 x 2 points\r\nABS plastic material\r\nCompletely reusable', 200, 4),
(29, '140 Piece Pre-formed Jumper Wire Kit', 4.98, '140 Pre-stripped, pre-formed #22 AWG solid wire in various colors\r\n14 different lengths of 10 pieces each\r\nContained in a plastic case\r\n140 Pre-stripped, pre-formed #22 AWG solid wire in various colors\r\n14 different lengths of 10 pieces each\r\nContained in a plastic case', 36, 4),
(30, 'Black PLA 1.0kg Spool 1.75mm Filament', 22.99, 'Color: Black\r\nMaterial: PLA\r\nThickness: 1.75mm\r\nQuantity: 1Kg\r\nSpool: Included\r\n', 18, 4),
(31, 'Elenco 25'' #22 Gauge Black Hook-Up Wire', 2.95, '25'' #22 gauge black hook-up wire\r\nUseful for prototyping on breadboards \r\nMaximum recommended current: 7A', 63, 4),
(32, 'Carbide Precision Collet and Nut for Dewalt DWP611', 29.99, 'Precision 1/8" collet\r\nAllow you to use end mills with an 1/8" shank\r\nNut for the Dewalt DWP611\r\nMade of alloy steel', 33, 4),
(33, 'Replicator 2 Hot End Assembly w/ Stranded Thermocouple', 350, 'Hot end assembly with stranded thermocouple\r\nCompatible with Makerbot Replicator 2', 18, 4),
(34, 'Carbide3D Shapeoko 3 CNC Starter Bundle', 1450, 'Designed to be affordable and powerful enough to work\r\nIncludes almost everything you need to get started\r\nEnclosed electronics, no need for a fan\r\nOne-piece MDF table, no need for bottom straps\r\nCarbide Create & Motion softwares\r\nCutting Area: 16"(X), 16"(Y), 3"(Z)', 27, 4),
(35, 'Litter-Robot III Open Air Automatic Self-Cleaning Litter Box', 449.99, 'Automatic MoonGlo NiteLite (Blue Led)\r\nDrawer Full Indication\r\nSelf-Adjusting Cat Sensor\r\nLarge Upward Facing Entry for ''Open Air'' Feel\r\nSuitable for cats of all sizes\r\n18 months full warranty', 60, 5),
(36, 'Ageless Innovations Tabby Cat Interactive Companion', 99.99, 'Built-in sensors respond to motion and touch\r\nRealistic, soft fur looks and feels like a real cat\r\nCat-like movements and sounds\r\nVibraPurr sounds and feels like real purring\r\nBatteries Included: 4 x 1.5V C Alkaline Batteries', 101, 5),
(37, 'iRobot Roomba 880 Vacuum Cleaning Robot', 522.22, 'Revolutionary tangle-free AeroForce Performance Cleaning System\r\nRemoves up to 50% more dirt, dust, hair and debris from all floor types\r\nAutomatically adjusts between floor types to clean carpets, tile, hardwood and laminate floors\r\niAdapt responsive navigation technology\r\nAutomatically returns to its Home Base to dock and recharge\r\n', 23, 5),
(38, 'Ageless Innovations Golden Pup Interactive Robot Toy Dog', 119, 'Built-in sensors respond to motion and touch\r\nFeel the heartbeat with your calming touch\r\nLifelike coat and authentic sounds\r\nResponds to your voice with BARKBACK technology\r\nBatteries Included: 4 x 1.5V ''''C size'''' Alkaline Batteries', 81, 5),
(39, 'Neato Botvac D80 Robot Vacuum Cleaner', 699.99, 'High-performance robot vacuum that''s best for picking up dust and allergens \r\nIncludes new spiral blade brush, high performance filter, boundary markers and new brush and filter cleaning tool\r\nUses patented Neato BotVision to scan and map the room \r\nVacuums dirt, crumbs, and dust bunnies from all floor types \r\nCombines powerful suction with a 50% larger brush \r\nEasily scheduled daily cleanings', 74, 5),
(40, 'Grillbot Automatic Grill Cleaning Robot (Red)', 62.97, 'World''s first automatic grill cleaning robot\r\nIncludes three powerful electric motors\r\nBuilt-in LCD alarm & timer and push-button operation\r\nSmart computer technology to regulate speed & direction', 65, 5),
(41, 'Clocky Robot Alarm Clock - Aqua', 39.99, 'Robot alarm clock that runs away and hides when you don''t wake up!\r\nBeeps and flashes as it runs around your bedroom\r\nJumps off your nightstand from up to 3 feet', 94, 5),
(42, 'HEXBUG Mouse Robotic Cat Toy ', 9.99, 'Battery-operated robotic mouse\r\nIdeal for entertaining house cats\r\nRealistic random movements\r\nWhite or grey color depending on stock', 70, 5),
(43, 'CatGenie Washable Granules Case', 19.95, 'Never replace your cat litter again\r\nCats use CatGenie like a clean litter box \r\n1,6 kg (3.5lbs) of comfy Granules to help cats dig and cover \r\nFor use only with the Catgenie 120 Self Washing Cat Box Tabby', 93, 6),
(45, 'CatGenie 120 Scented SaniSolution SmartCartridge', 20.1, 'Scented version\r\nExclusively for cat-safe, hygienic cleaning of the Petnovations Catgenie 120 Self Washing Cat Box Tabby\r\nDecontaminates the Granules and cat box of germs and odors\r\nCannot be used with the Old Catgenie 60', 96, 6),
(46, 'Litter-Robot Drawer Liners (25 Pack)', 9.99, 'Comes in pack of 25\r\n25 Biodegradable bags for any Litter-Robot\r\nKeep the Litter-Robot drawer neat and clean for easy disposal of litter clumps', 65, 6),
(49, 'Litter-Robot III Open Air Filter and Seal Kit', 19.99, 'Add odour control features to your Litter-Robot\r\nIncludes 3 carbon filters and 2 seals', 50, 6),
(50, 'Neato Botvac Replacement Battery', 49.99, 'Replacement battery pack for Neato Botvac\r\nKeep your robot vacuum running at peak performance\r\nRechargeable NiMH battery pack\r\nCompatible only with Neato Botvac series only, not Neato BotVac Connected', 200, 6),
(51, 'Side Brush for Neato Botvac (2pk)', 13.49, 'Replacement side brush for Neato Botvac, Botvac D and Connected\r\nHelps you get deep into corners and right up against walls\r\nEnsures superior cleaning coverage\r\nCompatible with Neato Botvac series robot vacuums', 64, 6),
(52, 'Beige Key Plug for Litter-Robot III Open Air Globe Assembly', 1, 'Replaces the inner shield\r\nHolds your Litter-Robot black key in place', 336, 6),
(53, 'Litter-Robot III Open Air Cat Sensor', 8.49, 'Replacement cat sensor force sensor for litter-robot III open air\r\nCompatible with litter-robot III open air only', 214, 7),
(55, 'Neato XV RPS Motor', 7.99, 'Replacement RPS motor for your Neato Robotics XV Series Robot Vacuums\r\n6 months warranty\r\nMust inverse polarity so the RPS spins the right way', 96, 7),
(56, 'Litter-Robot III Open Air DFI Hardware', 80, 'Replacement DFI Hardware for your Litter-Robot 3\r\nCompatible with Litter-Robot 3 only', 74, 7),
(57, 'Neato XV Replacement Wheel', 8, 'Neato replacement wheel\r\nReplacement for your XV series Neato Robotics Robot Vacuums\r\nRobotShop is an authorized reseller of Neato Robotics parts', 67, 7),
(58, 'Litter-Robot III Open Air Anti-Pinch Pins (2pk)', 2.5, 'Replacement anti-pinch pins for Litter-Robot III Open Air', 432, 7),
(59, 'Litter-Robot III Open Air Drawer Step Mat', 17.99, 'Replacement drawer step mat for your Litter-Robot\r\nCompatible with Litter-Robot 3 only', 85, 7),
(60, 'Ozobot 2.0 Bit Starter Pack (Cool Blue)', 59, 'Blends coding and creativity in endless fun experiences\r\nUses optical sensors\r\nUse OzoCodes to command the bot to speed up, slow down, spin and more\r\nComes with an OzoCode\r\nIncludes everything you need\r\nAges: 8+', 65, 8),
(61, 'Ozobot Color Markers (4pk)', 6, 'Draw color combinations of red, blue, green and black\r\nControl Ozobot''s movements with colors\r\nSimply start with a plain piece of white paper\r\nOzobot markers to experience the magic', 90, 8),
(62, 'WowWee Fingerlings Untamed Velociraptor - Fury (Blue)', 14.95, 'WowWee Fingerlings Untamed baby velociraptor Fury\r\nColor: Blue with Grey and Orange accents\r\nReacts to touch, motion, and sound with over 40 different sounds and animations\r\nTwo playing modes:  tamed (nuzzles, purrs and loves) and untamed (roars, hisses and chomps)\r\nSnapping jaws and gripping claws like dinosaurs\r\nAges: 5+', 41, 8),
(64, 'Wonder Workshop Dash and Dot Robot Pack (Wonder Pack)', 279.99, 'Pair of robots that combines playing and learning for children\r\nAble to sense their environment and wirelessly programmable\r\nThey Move, glow, make sounds and interact with each other\r\nFully assembled and ready to play\r\nIncludes Dash and Dot robots and accessories\r\nAges: 8+', 26, 8),
(65, 'HEXBUG Nano Robot Creature (Random Color)', 4.99, 'One Nano HEXBUG\r\nRandom Color\r\nAutonomous micro robotic creature\r\nBehaves like a real bug\r\nBatteries included\r\nAges: 3+', 515, 8),
(66, 'ReCon 6.0 Programmable Robotic Rover Toy', 45.86, 'Programmable rover with onboard LCD screen\r\nPerforms all kinds of fun and interesting tasks\r\nEntertains you with latest dance moves\r\nCollect field intelligence with its built-in microphone\r\nIncludes a guide book with 10 missions\r\nNo computer required\r\nAges: 8+', 80, 8),
(67, 'Owi 3 in 1 ATR: All Terrain Robot Kit', 39.75, 'Multi-function tracked mobile robotic kit\r\nMoves forward, backward, turn, grip and lift\r\nFeatures Forklift, Rover and Gripper modes\r\nGreat for students\r\nNo soldering required\r\nAges: 13+', 67, 8),
(68, 'Wicked Cool Toys Power Action Pikachu Interactive Toy', 14, 'WCT Power Action Pikachu interactive toy\r\nFeatures an interactive design with a motion action sensor\r\nTail and cheeks light up\r\nBatteries are included\r\nAges: 4+', 120, 8),
(70, 'Sanbot S1 Cloud-Based IoT Humanoid Development Platform (Open Box)', 6000, 'Open Box: Product like new, customer return\r\nSanbot S1 Cloud-Based IoT Humanoid development platform ideal for development or education\r\nProvides you all the required hardware to program your own autonomous or telepresence robot\r\nIncludes sensors for multiple capabilities (voice commands, human interaction and movement)\r\nAndroid-based API system open to app developers\r\nFeatures a docking station and a projector (1920 x 720, 16:9 aspect ratio)\r\nNote: This is a development platform; it is not a ready-to-use product', 70, 9),
(71, 'PadBot U1 Telepresence Robot', 699.99, 'Due to the CPU performance deficiency, we recommend not using PadBot App V2.0 on iPad3 or iPad mini.\r\nTelepresence robot for iPad\r\nTilting and rising head\r\nWheeled motion system and stretchable fixture\r\nFeatured with collision prevention and anti falling system\r\nBluetooth 4.0 connectivity\r\nTablet not included', 69, 9),
(72, 'Robot Arm Mover4 Starter Set', 4100, 'Designed especially to meet the needs of schools, universities and R&D institutions\r\nIncludes two finger gripper and CPRog programming environment\r\nOffers best functionality with a very high value for money\r\nCommunication: USB, internally CAN\r\nPower Supply: 12V via mains adapter, <60W', 53, 9),
(74, 'Ubbo Open Source Telepresence Robot', 1500, 'Telepresence robot kit\r\nIdeal for work, school or even at home\r\nCan go for up to 6 hours without charging\r\nMecanum wheels allow for smooth mouvement\r\nTablet and docking station not included', 88, 9),
(75, 'Padbot U2 Telepresence Robot', 999, 'Telepresence robot with a stretchable fixture\r\nSupports 8 and 10" tablet (not included)\r\nFunctions: remote control, real-time video chat, auto answering, etc.\r\nTilting and rising head\r\nFor accompanying family members, playing with kids, and using it as a monitor\r\nCompatible with WIFI and 4G Networks', 67, 9),
(76, 'Dobot M1 Industrial Robotic Arm', 4999, 'Dobot M1 4-Axis Cooperative Robotic Arm\r\nReach: 400 mm / Payload: 1.5 kg\r\nCan realize multiple functions of assembly line\r\nVisual recognition and PCB plug-in', 42, 9),
(77, 'ZoraBots Nao w/ Zora Solution', 13000, 'Can be used in healthcare or in school with special education needs\r\nUnique combination of mechanical engineering and software\r\nFriendly looking advanced humanoid\r\n25 degrees of freedom\r\nMultitude of sensors see, feel, hear and speak\r\nAvailable in many languages', 22, 9),
(78, 'Jaguar V4 Tracked Mobile Robotic Platform', 16500, 'Comes with four articulated arms and is fully wirelessly 802.11N connected\r\nRugged, light weight (< 30Kg), compact, weather and water resistant\r\nDesigned for extreme terrains and capable of stair or vertical climbing up to 300mm with ease\r\nIndoor and outdoor operation requiring higher ground clearance and on tough terrains', 25, 9),
(79, 'Husarion CORE2 Self-Balancing Telepresence Robot Kit', 309, 'Ralph Self-Balancing Telepresence Robot Kit\r\nNeeds a smartphone or a tablet to work (not included)\r\nWorks with a mobile app for video and audio streaming\r\nCan be mounted under 5 minutes after unboxing\r\nControlled through a web browser with arrows on your keyboard', 24, 9),
(80, 'Leap Motion 3D Motion Controller', 89.99, 'Leap Motion Controller with highly accurate hand tracking with extremely low latency\r\nLets you interact directly with digital content on Windows PCs using your bare hands (requires Windows 7+) \r\nQuick setup: download the Leap Motion software, plug the device into your USB port, and you’re ready to go\r\nDownload free apps for desktop and virtual reality on the Leap Motion Gallery\r\nBuild maker projects, virtual and augmented reality applications, and more\r\nReal 3D interaction: 135-degree field of view creates a wide interactive space', 40, 10),
(81, 'Garmin vivosmart HR+ Smart Fitness Watch', 170.99, 'GPS tracks distance and pace while mapping out your run or walk\r\nSwim-friendly, sleek band is comfortable to wear all day, and the always-on touchscreen display shows your stats, even in sunlight\r\nMeasures steps, distance, calories, floors climbed, activity intensity and heart rate on your wrist\r\nReceive full suite of smart notifications, which includes email, call, text, social media alerts and more — all from your wrist\r\nAuto sync to Garmin Connect Mobile to join fitness challenges, review data and receive smart coaching', 82, 10),
(82, 'Smooth Conductive Stainless Steel Thread Bobbin - 12m', 3.95, 'Material: 12UM Stainless steel fiber\r\nGram Weight:0.2458g\r\nStrength: 2.8KGF\r\nDiameter(mm): 0.12\r\nResistance (?/m): 27\r\n12m per spool (on plastic spools)', 430, 10),
(83, 'Conductive Thread - 360 Yards', 41.95, 'Large spool to get into wearable electronics\r\nMade from stainless steel fibers\r\nResistance: 28 Ohms per foot\r\nRoHS compliant', 200, 10),
(84, 'LilyPad Rainbow LED (6 Colors)', 4.99, 'Pack of 7 LilyPad LEDs\r\nAttached to one another\r\nWearable E-Textile Technology\r\nLetting you snap the LEDs apart at your leisure\r\nIncludes two white LEDs', 180, 10),
(85, 'QuickFit 20 Watch Bands Champagne Stainless Steel', 142.49, 'Just swap, click and go\r\nFor your fenix 5S watch\r\nEasy to switch, and always secure\r\nNo extra tools required\r\n', 152, 10),
(86, 'Mono Maker (Wifi & Bluetooth) Smart Device', 143, 'Includes everything you need\r\nPowerful user interface\r\nWiFi and Bluetooth compatible\r\nDriven by a versatile Cypress PSoC5 MCU\r\nCan be used to extend your Arduino project', 75, 10),
(88, 'TOKK Smart Wearable Assistant (White)', 38.4, 'A wearable high-quality mic and speaker \r\nReplaces Bluetooth headsets, headphones, and other portable Bluetooth speakers\r\nCompatible with iOS, Android and Windows devices for voice dialing and hands-free calling\r\nRemote shutter ability for picture taking\r\n40-hour stand-by time and 4-hour continuous usage time', 69, 10),
(89, 'Garmin vivofit jr. Real Flower Smart Activity Tracker', 71.99, 'Garmin vivofit jr. Real Flower Smart Activity Tracker with a stretchy watch band\r\nSwim-friendly kids activity tracker with Real Flower theme\r\nTracks steps, sleep and 60 minutes of daily recommended activity\r\nParent-controlled mobile app with chore management and schedule alert tools\r\nAges: 6+', 65, 10),
(90, 'VEX IQ Robotics Education Guide', 9.99, 'Mapped to National Standards (STL, NGSS & Common Core)\r\n12 Flexible Units of STEM Instruction\r\nDesigned for Elementary & Middle School Levels\r\nIncludes a step-by-step means to confidently introduce STEM to students regardless of experience level', 200, 11),
(91, 'Muscle Wires Project Book & Deluxe Kit', 34.95, 'Muscle Wires project book v3.01\r\n1 meter of each 0.002" (RB-Dyn-09), 0.004" (RB-Dyn-13) and 0.006" (RB-Dyn-17) LT Flexinol wire\r\nAn ideal starter package for engineers, students and experimenters of all ages', 120, 11),
(92, 'Arduino Cookbook', 29.95, 'Use Arduino with a variety of popular input devices and sensors\r\nInteract with devices that use remote controls\r\nLearn basic techniques for reading digital and analog signals\r\nDrive visual displays, generate sound, and control several types of motors', 420, 11),
(94, 'Arduino: A Quick-Start Guide', 26.16, 'Create your gadgets within a few minutes\r\nStep-by-step instructions and photos throughout the book\r\nUp-to-date for the new Arduino Uno board\r\nWhat If It Doesn''t Work - sections for helps', 210, 11),
(95, 'The Robot Builder''s Bonanza 4th Edition', 21.99, 'Learn how to design, construct, and use small robots\r\nRichly illustrated guide to meet your requirements\r\nFully updated with the latest technologies and techniques\r\nAuthor: Gordon McComb', 89, 11),
(96, 'Sherline TableTop Machining Guide Book By Joe Martin', 42, 'Learn how to use Sherline machines\r\nWritten by Sherline''s owner, Joe Martin\r\n"Hows" & "whys" of machining at both ends of the size scale', 65, 11),
(97, 'Adventures in Raspberry Pi, 3rd Edition', 32, 'Adventures in Raspberry Pi, 3rd Edition \r\n288-page book\r\nMakes learning to program fun and easy with 10 super-cool projects\r\nGet acquainted with your Raspberry Pi''s bits and pieces\r\nProgram games, code music, and build a jukebox\r\nAges: 11+', 70, 11),
(99, 'The Ultimate Guide to DIY Animatronics by Steve Koci', 49.95, 'The Ultimate Guide To DIY Animatronics\r\nWritten by Steve Koci\r\nLets you explore the fascinating world of animated character\r\nProvides easy to understand instructions', 84, 11),
(100, 'T4 Transforming Solar Robot Kit', 14.96, 'Completely solar-powered robotic kit\r\nMany transformations and equipped with larger parts\r\nEasily convertible between one of four different modes\r\nKit to explain about mechanical transmissions\r\nAges: 8+', 40, 12),
(101, 'Finch Programmable Mobile Robot Platform', 89, 'Light, temperature, and obstacle sensors\r\nFull-color beak LED\r\nFeatures pen mount for drawing capability\r\nPlugs into USB port - no batteries are required', 63, 12),
(102, 'Mio The Robot Programmable Robot Toy (English)', 32.95, 'A unique and original scientific kit\r\nEnjoy programming its path and participate in exciting challenges with your friends\r\nRich collection of interchangeable components included in the set\r\nIllustrated scientific manual includes lots of information\r\nAges: 8+', 100, 12),
(103, 'Ozobot Evo Classroom Kit', 1195, 'Classroom Kit with 12 small Ozobot Evo robots\r\nRecommended for children from 8 to 12 years old\r\nVisual coding with optical sensors, OzoCodes and Block programming with OzoBlockly\r\nProximity sensors, for detecting obstacles\r\nExpressive sounds and enhanced LED lights\r\nBluetooth LE connection, for updates and program uploads\r\nHands-on learning for educators to teach coding, STEM, art, history', 240, 12),
(104, 'Cubelets Six Starter Kit', 129.94, 'Cubelets six starter kit\r\nPerfect tool to explore robotics\r\nIdeal for age group 4+\r\nEasy to build and play', 87, 12),
(105, 'Let''s Go Code! Activity Set', 27.96, 'Learning Style: Visual, Kinesthetic, Tactile', 120, 12),
(106, 'Cubetto Educational Coding Robot', 225, 'Teach your child to code before they can read\r\nFriendly 2WD wooden robot + programmer to teach basics of computer programming\r\nFeatures one adventure and hands on play\r\nPowered by a playful programming language\r\nAward-winning for girls and boys\r\nAge: 3+', 94, 12),
(108, 'Terminal to 2.1mm Barrel Jack', 0.58, 'DC Jack to DG126 converter\r\nSold individually', 94, 1),
(109, 'XBee Explorer USB', 24.95, 'Simple to use USB to serial base unit XBee line\r\nWorks with all XBee modules including Series 1 & 2.5, standard and Pro\r\nBuilt-in FT231X USB-to-Serial converter\r\nRX, TX, RSSI (signal-strength indicator) and power indicator', 105, 1),
(110, 'Replacement Battery Holder for Snap Circuits', 2.75, 'Replacement battery holder for snap circuits\r\nCan be bought as spare for lost or broken product', 302, 1),
(111, '\r\n0.78 Kg Micro Load Cell', 6, 'Capacity: 780g\r\nWheatstone bridge sensor\r\nSmall size: 45mm x 9.3mm x 6mm', 200, 1),
(112, 'Interlink Electronics 0.5" Circular FSR', 6.6, '0.5" Circular Force Sensing Resistor\r\nOptimized for use in human touch control applications\r\nMaintenance-free\r\nRobust design tested to over 10 million actuations\r\nUseful for exact control applications', 155, 1),
(113, 'Replacement Fan for Snap Circuits', 0.5, 'Replacement fan for snap circuits\r\nCan be bought as spare for lost or broken product\r\nFor ages 8 and up', 90, 1),
(114, '5mm Colored LED Pack (50pk)', 3.4, 'Voltage: 1.8 - 2.2V (Basic Red,Green,Yellow)\r\nMax Current: 20mA\r\nPositive Lead (Anode): Longer Lead\r\nLarger Plate Inside LED', 655, 1),
(115, 'SmartiPi Touch Case for Raspberry Pi Display (w/ Blank Front)', 24.95, 'Extremely thin in profile case (no LEGO compatible studs on front)\r\nHAT boards can be attached to the back of the case and secured with screws\r\nAdjustable angle which allows you to position in whatever way you wish\r\nThreaded 75mm VESA mount holes', 300, 1),
(116, '20 Kg Micro Load Cell', 7, 'Capacity: 20kg\r\nWheatstone bridge sensor\r\nSmall size: 55.25mm x 12.7mm x 12.7mm\r\nPlugs into the Phidgets PhidgetBridge Wheatstone Bridge Sensor Interface', 98, 1),
(117, 'Raspberry Pi Camera Module V2', 25, 'High Definition camera module\r\nResolution: 8-megapixel\r\nCompatible with all Raspberry Pi models\r\nUltra small and lightweight design', 188, 1),
(118, 'AutoScan FM Radio Soldering Kit', 11.98, 'Designed to receive FM signals in the frequency range (88-108MHz).\r\nUses electronic auto-scan to search for FM stations\r\nMaximizes the learning process, while keeping the chance of assembly error at a minimum\r\nConstructed in two sections Audio and RF', 80, 2),
(119, 'Snap Circuits LIGHT Experiments Kit', 59.99, 'Contains over 55 parts\r\nMore than 175 projects are possible\r\nColor Changing LED\r\nPlug in you iPod on any other MP3 player', 213, 2),
(120, 'MakeBlock Ultimate 2.0 10-in-1 Kit w/ Electronics', 349.99, 'Ten building forms for different application\r\nIncludes the MakeBlock MegaPi Microcontroller\r\nWirelessly control your robots with smart devices through Bluetooth\r\nMade of anodized 6061 aluminum mechanical parts with threaded-slot\r\nGreat for learning robotics, electronics, graphical programming, Arduino programming and Python programming\r\nAges: 12+', 86, 2),
(121, 'Orbit Mobile Brain-Controlled Helicopter', 189.99, 'Unique Spherical Design\r\nMobile edition operated with an EEG headset\r\nColorful Visuals and Physical Feedback\r\nUser can select a "Flight Path" for the helicopter\r\nAges: 14+', 22, 2),
(122, 'SonicModell AR.Wing 900mm Drone FPV Flying Wing Plug & Fly', 89.99, 'Medium size 900mm FPV & Standard flying delta wing\r\nPartially assembled (PNP)\r\nBlack molded EPP foam structure\r\nMultiple camera compatibility\r\nRemovable wings for easy transportation', 90, 3),
(123, 'Lynxmotion HQuad500 Drone (Base Combo Kit + Quadrino Nano Controller)', 516.74, 'HQuad500 Frame and mounting hardware\r\nIncludes brushless motors, speed controller and propellers\r\n"Plug and play" for easy solder-less assembly', 50, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Purchases`
--

CREATE TABLE IF NOT EXISTS `Purchases` (
  `purchase_id` int(20) NOT NULL,
  `product_id` int(20) DEFAULT NULL,
  `quantity_sold` int(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=930 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Purchases`
--

INSERT INTO `Purchases` (`purchase_id`, `product_id`, `quantity_sold`) VALUES
(926, 113, 1),
(927, 113, 1),
(928, 113, 1),
(929, 113, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ShoppingCart`
--

CREATE TABLE IF NOT EXISTS `ShoppingCart` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ShoppingCart`
--

INSERT INTO `ShoppingCart` (`id`, `customer_id`, `product_id`) VALUES
(1, 60, 113),
(2, 60, 113),
(3, 60, 113),
(4, 60, 113),
(5, 60, 113),
(6, 60, 110),
(7, 60, 108),
(8, 60, 108),
(9, 60, 113),
(10, 60, 6),
(11, 60, 6);

-- --------------------------------------------------------

--
-- Table structure for table `State`
--

CREATE TABLE IF NOT EXISTS `State` (
  `state_id` int(2) NOT NULL,
  `state_name` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `State`
--

INSERT INTO `State` (`state_id`, `state_name`) VALUES
(1, 'Alabama'),
(2, 'Alaska'),
(3, 'Arizona'),
(4, 'Arkansas'),
(5, 'California'),
(6, 'Colorado'),
(7, 'Connecticut'),
(8, 'Delaware'),
(9, 'District of Columbia'),
(10, 'Florida'),
(11, 'Georgia'),
(12, 'Hawaii'),
(13, 'Idaho'),
(14, 'Illinois'),
(15, 'Indiana'),
(16, 'Iowa'),
(17, 'Kansas'),
(18, 'Kentucky'),
(19, 'Louisiana'),
(20, 'Maine'),
(21, 'Maryland'),
(22, 'Massachusetts'),
(23, 'Michigan'),
(24, 'Minnesota'),
(25, 'Mississippi'),
(26, 'Missouri'),
(27, 'Montana'),
(28, 'Nebraska'),
(29, 'Nevada'),
(30, 'New Hampshire'),
(31, 'New Jersey'),
(32, 'New Mexico'),
(33, 'New York'),
(34, 'North Carolina'),
(35, 'North Dakota'),
(36, 'Ohio'),
(37, 'Oklahoma'),
(38, 'Oregon'),
(39, 'Pennsylvania'),
(40, 'Puerto Rico'),
(41, 'Rhode Island'),
(42, 'South Carolina'),
(43, 'South Dakota'),
(44, 'Tennessee'),
(45, 'Texas'),
(46, 'Utah'),
(47, 'Vermont'),
(48, 'Virginia'),
(49, 'Washington'),
(50, 'West Virginia'),
(51, 'Wisconsin'),
(52, 'Wyoming');

-- --------------------------------------------------------

--
-- Table structure for table `Transactions`
--

CREATE TABLE IF NOT EXISTS `Transactions` (
  `trans_id` int(20) NOT NULL,
  `customer_id` int(20) DEFAULT NULL,
  `purchase_id` int(20) DEFAULT NULL,
  `date_of_transaction` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Transactions`
--

INSERT INTO `Transactions` (`trans_id`, `customer_id`, `purchase_id`, `date_of_transaction`) VALUES
(1, 60, 926, '2019-04-18'),
(2, 60, 927, '2019-04-18'),
(3, 60, 928, '2019-04-18'),
(4, 60, 929, '2019-04-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Business`
--
ALTER TABLE `Business`
  ADD PRIMARY KEY (`business_id`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `FK_BusinessId` (`business_id`),
  ADD KEY `FK_StateId` (`state_id`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FK_CategoryId` (`category_id`);

--
-- Indexes for table `Purchases`
--
ALTER TABLE `Purchases`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `FK_ProductID` (`product_id`);

--
-- Indexes for table `ShoppingCart`
--
ALTER TABLE `ShoppingCart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `State`
--
ALTER TABLE `State`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `Transactions`
--
ALTER TABLE `Transactions`
  ADD PRIMARY KEY (`trans_id`),
  ADD UNIQUE KEY `purchase_id` (`purchase_id`),
  ADD KEY `FK_CustomerID` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Business`
--
ALTER TABLE `Business`
  MODIFY `business_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Customer`
--
ALTER TABLE `Customer`
  MODIFY `customer_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `Purchases`
--
ALTER TABLE `Purchases`
  MODIFY `purchase_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=930;
--
-- AUTO_INCREMENT for table `ShoppingCart`
--
ALTER TABLE `ShoppingCart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `State`
--
ALTER TABLE `State`
  MODIFY `state_id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT for table `Transactions`
--
ALTER TABLE `Transactions`
  MODIFY `trans_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Customer`
--
ALTER TABLE `Customer`
  ADD CONSTRAINT `FK_BusinessId` FOREIGN KEY (`business_id`) REFERENCES `Business` (`business_id`),
  ADD CONSTRAINT `FK_StateId` FOREIGN KEY (`state_id`) REFERENCES `State` (`state_id`);

--
-- Constraints for table `Products`
--
ALTER TABLE `Products`
  ADD CONSTRAINT `FK_CategoryId` FOREIGN KEY (`category_id`) REFERENCES `Category` (`category_id`);

--
-- Constraints for table `Purchases`
--
ALTER TABLE `Purchases`
  ADD CONSTRAINT `FK_ProductID` FOREIGN KEY (`product_id`) REFERENCES `Products` (`product_id`);

--
-- Constraints for table `Transactions`
--
ALTER TABLE `Transactions`
  ADD CONSTRAINT `FK_CustomerID` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`),
  ADD CONSTRAINT `FK_PurchaseID` FOREIGN KEY (`purchase_id`) REFERENCES `Purchases` (`purchase_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
