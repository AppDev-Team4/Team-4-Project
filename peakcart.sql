-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2024 at 09:50 AM
-- Server version: 8.0.32
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peakcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerpurchases`
--

CREATE TABLE `customerpurchases` (
  `CustomerID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `NumPurchased` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerpurchases`
--

INSERT INTO `customerpurchases` (`CustomerID`, `ProductID`, `NumPurchased`) VALUES
(14, 1, 1),
(14, 27, 2),
(14, 22, 1),
(14, 20, 1),
(13, 6, 3),
(13, 26, 2),
(13, 20, 3),
(15, 13, 2),
(15, 8, 1),
(17, 1, 3),
(17, 33, 1),
(17, 31, 1),
(17, 44, 2),
(18, 65, 1),
(18, 57, 2),
(18, 59, 1),
(18, 32, 1),
(18, 54, 2),
(19, 12, 2),
(19, 9, 1),
(19, 8, 2),
(19, 1, 2),
(19, 6, 1),
(20, 56, 1),
(20, 64, 2),
(20, 2, 1),
(20, 66, 1),
(21, 51, 1),
(21, 52, 2),
(21, 44, 1),
(21, 41, 1),
(21, 43, 1),
(21, 10, 1),
(22, 37, 1),
(22, 25, 1),
(22, 36, 1),
(23, 53, 1),
(23, 67, 1),
(23, 24, 1),
(23, 23, 1),
(23, 22, 3),
(23, 21, 1),
(24, 9, 1),
(24, 4, 1),
(24, 5, 1),
(24, 3, 1),
(24, 20, 1),
(24, 21, 1),
(25, 61, 1),
(25, 65, 1),
(25, 58, 1),
(25, 57, 1),
(25, 60, 1),
(26, 31, 1),
(26, 32, 2),
(26, 30, 1),
(26, 35, 2),
(26, 34, 1),
(27, 60, 1),
(27, 69, 1),
(27, 68, 1),
(28, 45, 1),
(28, 47, 1),
(28, 48, 1),
(28, 39, 1),
(28, 40, 1),
(28, 38, 1),
(28, 2, 1),
(28, 3, 1),
(28, 5, 1),
(29, 13, 1),
(29, 11, 3),
(29, 17, 1),
(29, 15, 1),
(29, 21, 2),
(29, 44, 1),
(29, 50, 1),
(29, 49, 1),
(30, 22, 1),
(30, 28, 1),
(30, 36, 1),
(30, 29, 1),
(30, 37, 1),
(30, 62, 1),
(31, 55, 1),
(31, 53, 1),
(31, 67, 1),
(31, 63, 1),
(31, 69, 2),
(31, 68, 1),
(32, 16, 1),
(32, 15, 1),
(32, 4, 1),
(32, 5, 1),
(33, 33, 1),
(33, 34, 1),
(33, 27, 1),
(33, 26, 1),
(33, 32, 1),
(33, 9, 1),
(33, 10, 1),
(34, 46, 1),
(34, 42, 1),
(34, 41, 1),
(34, 47, 1),
(34, 14, 1),
(34, 57, 1),
(34, 7, 1),
(35, 63, 1),
(35, 62, 2),
(35, 54, 1),
(35, 61, 1),
(35, 59, 1),
(35, 48, 1),
(36, 50, 1),
(36, 68, 1),
(36, 37, 1),
(36, 23, 1),
(36, 24, 1),
(36, 13, 1),
(37, 45, 1),
(37, 27, 1),
(37, 30, 1),
(37, 32, 1),
(37, 61, 1),
(37, 54, 2),
(38, 20, 1),
(38, 1, 1),
(38, 10, 1),
(40, 29, 1),
(40, 2, 1),
(40, 12, 1),
(40, 16, 1),
(40, 21, 1),
(40, 23, 1),
(40, 51, 1),
(40, 60, 1),
(41, 38, 1),
(41, 48, 1),
(41, 49, 1),
(41, 55, 1),
(41, 53, 1),
(41, 58, 1),
(41, 64, 1),
(42, 37, 1),
(42, 30, 1),
(42, 33, 1),
(42, 1, 1),
(43, 40, 1),
(43, 43, 1),
(43, 45, 1),
(43, 41, 1),
(43, 50, 1),
(44, 65, 1),
(44, 56, 1),
(44, 59, 1),
(44, 26, 1),
(45, 42, 1),
(45, 47, 1),
(45, 55, 1),
(45, 60, 1),
(45, 62, 1),
(45, 66, 1),
(46, 54, 1),
(46, 53, 1),
(46, 7, 1),
(46, 4, 1),
(46, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int NOT NULL,
  `FName` varchar(50) DEFAULT NULL,
  `LName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(2) NOT NULL,
  `ZipCode` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `FName`, `LName`, `Email`, `Password`, `Address`, `City`, `State`, `ZipCode`) VALUES
(1, 'James', 'Leonard', 'jleonard5@leomail.tamuc.edu', '$2y$10$AdtlM0dEsYOYW', NULL, '', '', 0),
(4, 'Ashish', 'Acharya', 'ashishacharya@gmail.com', '$2y$10$m88sHr4aVMUUB', NULL, '', '', 0),
(14, 'Wade', 'Testing', 'wade@testing.com', '$2y$10$ESvDydYH.22ZegXOcnDH7OvTpz9MpDovLAuekmkARRn3uakVr2M0C', '123 Commerce St.', 'Commerce', 'TX', 75428),
(11, 'Testy', 'Tester', 'testy@tester.com', '$2y$10$7v4q5wnQUVbosPs1870XlOWMZBhlmsfHOA9wQr3Hd22KIp71qqaWm', '123 Main Street', 'Commerce', 'TX', 75428),
(12, 'alex', 'JaCkSoN', 'email@domain.org', '$2y$10$E8DWcVEF.EEG0rtW.YlGde/oKomJzguWHGwL2ZT2JAW/LgNEdCGxW', '5678 Street Blvd', 'Township', 'FL', 66520),
(13, 'Ethan', 'Jansak-Noble', 'ECJTest@gmail.com', '$2y$10$XK9FCPiU4I3/Ziu9EsDGaekB3C2Eb.AuMNsjNRZ8kEJ9CPV98UJzu', '1234 PR 1234', 'Greenville', 'TX', 12345),
(17, 'Test', 'test', 'test1@gmail.com', '$2y$10$byckKVKn4YtrKXucPzvgmuXQf3UfoJwtAJxFGN1rjgs0opS8l9omi', 'test', 'test', 'AK', 12345),
(16, 'John', 'Doe', 'JohnDoe@gmail.com', '$2y$10$lV7.lPaZS6v4MUHHm8Koe.VeX0iG75S3HwnS6v/coDun.pKHv5kTS', '1234 Ln', 'huntville', 'KY', 12345),
(18, 't34567h', 'test', 'test2@gmail.com', '$2y$10$zjI1TbO.6K9EvtLSySE3v.Ftbai1ixtcbYh3HgcKvlZt5tSBtMxkC', 'test', 'test', 'DE', 12345),
(19, 'bob', 'boo', 'test3@gmail.com', '$2y$10$toHQghc/aZJuTgligVeavOCLRCh./u1sTIO4ZnjP1zOarbRPN5q/S', 'lane 1234', 'gtttr', 'AR', 1234),
(20, 'test', 'test', 'test4@gmail.com', '$2y$10$leyZAvjOvnSxgJQsh0KH0uW5OJZxyj4r0QddW19FBLtn4tjh7jssO', 'frghj', 'test', 'ID', 23456),
(21, 'test', 'test', 'test5@gmail.com', '$2y$10$OCskxyJ6C4C8mDXP4BxmL.5cNaoOAOpvZZJTsYcTw7Ori0g2A4rbW', 'frghj', 'test', 'IL', 23456),
(22, 'test', 'test', 'test6@gmail.com', '$2y$10$WSavuMMoMhG4HEk6n/SrZOG1lgWhSnZIOwSNVn771oI0mEPYdgYn2', 'frghj', 'test', 'HI', 23456),
(23, 'test', 'test', 'test7@gmail.com', '$2y$10$o0HNPJL4K/8CtV739KywGOpW8eENDFKccOe6KvjLF8XyVDhAVXtQa', 'frghj', 'test', 'ID', 23456),
(24, 'dfghj', 'testdfgh', 'test8@gmail.com', '$2y$10$TOEFNYo4Z1o.ZUXJKlLfHOn/sPrSuYshpoQbSE59lZ3DDNslDq9jC', 'hijk', 'hhhh', 'IN', 23456),
(25, 'test', 'test', 'test9@gmail.com', '$2y$10$2D/lRRSgMk1wpPgxbKQhsuTnpliv5rhWxyWqfCpRenBkLDyQUW81G', 'frghj', 'test', 'AZ', 23456),
(26, 'test', 'test', 'test10@gmail.com', '$2y$10$hhwzVc.4YpeyYrnjOTT8l.Zs/zkd6KuQ/fl11ywS.jMsgAgZDyPUa', 'frghj', 'test', 'CT', 23456),
(27, 'test', 'test', 'test11@gmail.com', '$2y$10$AGh00RketPh0lvyKmHpgD.zgUYKnsucg.xP2h8AsjIcpqHKC/MZx.', 'frghj', 'test', 'MA', 2346),
(28, 'test', 'test', 'Test12@gmail.com', '$2y$10$bHxkQG83ST3suRN0Rp7KC.0Ntt0AN5lGxx62RDGw5N7zgycFmrBJy', 'frghj', 'test', 'CO', 23456),
(29, 'test', 'test', 'Test13@gmail.com', '$2y$10$VD9CCZWdb6MWlX72g5FwdOKo9kWQ.b365yu8b0CYa1BxuvChxbokq', 'frghj', 'test', 'WV', 23456),
(30, 'test', 'test', 'Test14@gmail.com', '$2y$10$cn3YQwzXTl10tklLNprUCetB8VjESsH4Abz70IiltwcCE0wUms1yS', 'frghj', 'test', 'GA', 23456),
(31, 'test', 'test', 'Test15@gmail.com', '$2y$10$/PMzUrMNNpMpWWaTVk60TeaUDCAO.BF0EZAzcGjcdxw/A8dyskdeq', 'frghj', 'test', 'WI', 23456),
(32, 'test', 'test', 'Test16@gmail.com', '$2y$10$cduA1ynYwD3gRzEXNlZxUeIi3QgKm4IweZEwnzADwafMrOJ7rg4.S', 'frghj', 'test', 'TX', 23456),
(33, 'test', 'test', 'Test17@gmail.com', '$2y$10$g0wXvCjjOuOdfKDLI0uVMuq0ROPDl2Vh2faDZLLtq4i6K0k7HVQ3W', 'frghj', 'test', 'WY', 23456),
(34, 'test', 'test', 'Test18@gmail.com', '$2y$10$6fp8euyFqcGUlP4LNpEnKe7q24te9pBGMw15Kehzws1dJdrX86AMW', 'frghj', 'test', 'OK', 23456),
(35, 'test', 'test', 'Test19@gmail.com', '$2y$10$fo56XXkO.s5q7y76LgL9me8.oPq8aTa2TKiImDD6LWyMzfJ4ivn..', 'frghj', 'test', 'CT', 23456),
(36, 'test', 'test', 'Test20@gmail.com', '$2y$10$X4x2EkYHE1ugssNQYgOxpuYSzaRhqSxLcsphTNc5R1azCEc701ypq', 'frghj', 'test', 'IN', 23456),
(37, 'test', 'test', 'Test21@gmail.com', '$2y$10$wJoFcsgvg6l4/LR2g0vSfe3h7fjo9ZziEaKoT5ZBTuwnmkdNR.xda', 'frghj', 'test', 'ID', 23456),
(38, 'test', 'test', 'Test22@gmail.com', '$2y$10$DRtmPCi4o9P8UUJiui1SFuM10cjrhszrf7jxjUzibjZPY59vkjJCq', 'frghj', 'test', 'CA', 23456),
(39, 'test', 'test', 'Test23@gmail.com', '$2y$10$9BVmGH8zYwyvuK6RggEZXOOXA1HyykGi9Dl0v93BlaNGd/y6MXinS', 'frghj', 'test', 'SD', 23456),
(40, 'test', 'test', 'Test24@gmail.com', '$2y$10$qMW9Od1ftgDKAGjBzb2loO34kqDTHBM6mNkSEd8ZbmEZdVo/9xhz6', 'frghj', 'test', 'IA', 23456),
(41, 'test', 'test', 'Test25@gmail.com', '$2y$10$XAF4BsH9b13Lkd2Wql.DUeSa/EqH2HJAUXCnrSP5KhFveOid1leSi', 'frghj', 'test', 'SD', 23456),
(42, 'test', 'test', 'Test26@gmail.com', '$2y$10$B7j6etL3LJ1QOauCroesmelb90XZitwEXLSRM67cM3wF3ZU6MV3AS', 'frghj', 'test', 'CT', 23456),
(43, 'test', 'test', 'Test27@gmail.com', '$2y$10$eLlz65h3z8RTcdRI9eyZc.8VSVqjGyO9L8yFenJu9AAOccr249oKC', 'frghj', 'test', 'TN', 23456),
(44, 'test', 'test', 'Test28@gmail.com', '$2y$10$yOQos/YANLT1kGzEK/sXtehupdkwSt5mu0qi14UY9qF90pcoVMk7K', 'frghj', 'test', 'PA', 23456),
(45, 'test', 'test', 'Test29@gmail.com', '$2y$10$IC2Q1RhmcUDoU6TVaM6D3uQAnfQzZvcyENRNidncrE3ISbvr/oN0i', 'frghj', 'test', 'DE', 23456),
(46, 'test', 'test', 'Test30@gmail.com', '$2y$10$/vaQxxIWw2mTavrOblYaueeUDZpbMzzqxLGEhFUDdGmaS6nr.2UjG', 'frghj', 'test', 'OR', 23456);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int NOT NULL,
  `OrderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CustomerID` int DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderDate`, `CustomerID`, `Total`) VALUES
(30, '2024-04-25 01:38:12', 13, 129.89),
(29, '2024-04-25 01:37:42', 13, 252.18),
(28, '2024-04-25 01:36:51', 13, 303.07),
(27, '2024-04-25 00:04:46', 14, 195.91),
(26, '2024-04-25 00:00:31', 14, 229.46),
(25, '2024-04-19 21:33:48', 13, 86.59),
(24, '2024-04-19 21:17:09', 13, 140.71),
(21, '2024-04-07 01:06:10', 0, 0.00),
(22, '2024-04-19 18:56:20', 0, 0.00),
(20, '2024-03-05 01:12:17', 13, 20.56),
(23, '2024-04-19 21:15:09', 13, 86.59),
(19, '2024-03-05 01:11:46', 13, 519.54),
(31, '2024-04-26 16:57:38', 15, 274.92),
(32, '2024-04-26 20:03:18', 17, 417.77),
(33, '2024-04-26 20:06:04', 18, 618.03),
(34, '2024-04-26 20:20:10', 19, 943.85),
(35, '2024-04-26 20:21:51', 20, 562.85),
(36, '2024-04-26 20:23:26', 21, 498.96),
(37, '2024-04-26 20:24:35', 22, 224.05),
(38, '2024-04-26 20:25:46', 23, 244.56),
(39, '2024-04-26 20:27:14', 24, 351.75),
(40, '2024-04-26 20:28:15', 25, 351.76),
(41, '2024-04-26 20:29:16', 26, 403.70),
(42, '2024-04-26 20:32:11', 27, 51.94),
(43, '2024-04-26 20:33:58', 28, 285.68),
(44, '2024-04-26 20:35:12', 29, 406.90),
(45, '2024-04-26 20:36:33', 30, 513.04),
(46, '2024-04-26 20:41:11', 31, 444.85),
(47, '2024-04-26 20:42:47', 32, 128.77),
(48, '2024-04-26 20:44:12', 33, 812.88),
(49, '2024-04-26 20:45:38', 34, 283.54),
(50, '2024-04-26 20:47:44', 35, 995.84),
(51, '2024-04-26 20:49:17', 36, 181.81),
(52, '2024-04-26 20:54:35', 37, 774.99),
(53, '2024-04-26 20:56:42', 38, 336.63),
(54, '2024-04-26 21:00:12', 40, 390.70),
(55, '2024-04-26 21:01:34', 41, 189.36),
(56, '2024-04-26 21:02:42', 42, 243.52),
(57, '2024-04-26 21:03:38', 43, 112.53),
(58, '2024-04-26 21:09:30', 44, 497.91),
(59, '2024-04-26 21:10:41', 45, 481.65),
(60, '2024-04-26 21:12:08', 46, 375.57);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Subcategory` varchar(50) DEFAULT NULL,
  `Color` varchar(20) DEFAULT NULL,
  `Description` text,
  `Price` decimal(10,2) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `ImagePath` varchar(255) DEFAULT NULL,
  `Featured` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `Name`, `Category`, `Subcategory`, `Color`, `Description`, `Price`, `Quantity`, `ImagePath`, `Featured`) VALUES
(1, 'Three Tier Table', 'Home Goods', 'Tables', 'Brown', 'Enhance your living space with this versatile Three Tier Table. Its contemporary design and sturdy construction make it a perfect addition to any room. The three-tiered shelves provide ample space for displaying decor or organizing essentials.', 59.99, 30, 'https://i.postimg.cc/05pHXBp7/3tier-Table.webp', 1),
(2, 'Bankers Lamp', 'Home Goods', 'Lamps', 'Green', 'Illuminate your workspace with the classic elegance of the Bankers Lamp. Featuring a timeless design, this lamp adds a touch of sophistication to your desk or table. The green glass shade and antique brass finish create a vintage-inspired look.', 34.99, 25, 'https://i.postimg.cc/hvbyJXS2/bankers-Lamp.jpg', 0),
(3, 'Metal End Table', 'Home Goods', 'Tables', 'Gold', 'Add an industrial touch to your home with the Metal End Table. Crafted from durable metal, this end table combines style and functionality. The open design and sleek lines make it a chic choice for any modern living space.', 48.99, 65, 'https://i.postimg.cc/2SJwSQQz/metal-Table.jpg', 0),
(4, 'Mushroom Lamp', 'Home Goods', 'Lamps', 'Multi', 'Bring a whimsical charm to your home with the Mushroom Lamp. The unique mushroom-shaped design adds a playful element to your decor. The warm glow creates a cozy atmosphere, making it an ideal choice for bedside tables or cozy corners.', 26.99, 30, 'https://i.postimg.cc/qq0Qdp8y/mushroom-Lamp.jpg', 0),
(5, 'Rectangular Lamp', 'Home Goods', 'Lamps', 'White', 'Illuminate your space with the clean and modern design of the Rectangular Lamp. Its simple yet stylish form complements various decor styles. The rectangular shade provides focused lighting, making it perfect for reading nooks or workspaces.', 18.99, 50, 'https://i.postimg.cc/XvRQQfq2/rectangle-Lamp.jpg', 0),
(6, 'Rustic End Table', 'Home Goods', 'Tables', 'Tan', 'Infuse your space with rustic charm using the Rustic End Table. Crafted from reclaimed wood, each piece is unique and carries its own story. The distressed finish and sturdy construction make it a perfect addition to your farmhouse-inspired decor.', 79.99, 10, 'https://i.postimg.cc/Gpyj84Kv/rustic-Table.webp', 1),
(7, 'Cream Office Chair', 'Home Goods', 'Chairs', 'White', 'Upgrade your office with the Cream Office Chair. Designed for both comfort and style, this chair features plush cream-colored upholstery and ergonomic support. The swivel base and adjustable height provide convenience for your workday.', 119.99, 20, 'https://i.postimg.cc/BQp74P76/cream-Office-Chair.jpg', 1),
(8, 'Cozy Chair', 'Home Goods', 'Chairs', 'White', 'Sink into comfort with the Cozy Chair. Its oversized design and plush cushions make it the perfect spot for relaxation. Whether placed in the living room or bedroom, this chair adds a touch of luxury to your home.', 209.99, 30, 'https://i.postimg.cc/x1dxCjBP/cozy-Chair.jpg', 1),
(9, 'Velvet Office Chair', 'Home Goods', 'Chairs', 'White', 'Elevate your workspace with the Velvet Office Chair. The luxurious velvet upholstery and gold accents create a chic and sophisticated look. Ergonomically designed for comfort, this chair seamlessly combines style and functionality.', 141.99, 25, 'https://i.postimg.cc/sxwPd7fC/velvetOfficeChair.webp', 1),
(10, 'Grey Accent Chair', 'Home Goods', 'Chairs', 'Grey', 'Make a statement with the Grey Accent Chair. The sleek design and neutral grey upholstery blend seamlessly into any decor. With its modern silhouette and comfortable seating, this accent chair is a stylish addition to your living space.', 199.99, 18, 'https://i.postimg.cc/bJ1LMZ2q/grey-Accent-Chair.webp', 1),
(11, 'Shaggy Throw Pillows (2pk)', 'Home Goods', 'Pillows', 'Grey', 'Add texture and coziness to your sofa or bed with the Shaggy Throw Pillows. This set of two pillows features a shaggy, plush exterior that invites you to relax and unwind. The neutral color palette effortlessly complements various decor styles.', 48.99, 50, 'https://i.postimg.cc/28kTc8jf/shaggy-Pillows.jpg', 0),
(12, 'Velvet Throw Pillows (2pk)', 'Home Goods', 'Pillows', 'Grey', 'Infuse a touch of luxury into your living space with the Velvet Throw Pillows. This set of two pillows showcases sumptuous velvet fabric and a rich color palette, instantly elevating the look of your sofa or bedroom.', 54.99, 30, 'https://i.postimg.cc/qRcXwW9R/velvetPillows.jpg', 1),
(13, 'Floral Watercolor Throw', 'Home Goods', 'Pillows', 'Multi', 'Bring the beauty of nature indoors with the Floral Watercolor Throw. This cozy throw blanket features a delicate watercolor floral print, adding a touch of elegance to your space. Perfect for draping over a couch or at the foot of your bed.', 21.99, 30, 'https://i.postimg.cc/RV4pkLRy/floral-Pillow.jpg', 0),
(14, 'Abstract Mosaic Pillow', 'Home Goods', 'Pillows', 'Multi', 'Make a bold statement with the Abstract Mosaic Pillow. The contemporary design and vibrant colors create a focal point in any room. This accent pillow effortlessly combines artistry with comfort.', 19.99, 30, 'https://i.postimg.cc/J4px9VtH/mosaic-Pillow.jpg', 0),
(26, 'Cowboy Sweater', 'Clothing', 'Sweaters', 'Multi', 'Embrace a rugged yet stylish look with the Cowboy Sweater. Crafted for both warmth and fashion, this sweater features a classic knit pattern and a comfortable fit. Perfect for chilly days and casual outings.', 119.99, 50, 'https://i.postimg.cc/3rsYmV3p/cowboy-Sweater.jpg', 1),
(25, 'Cableknit Zipper', 'Clothing', 'Sweaters', 'Tan', 'Stay cozy and chic in the Cableknit Zipper sweater. The timeless cable-knit design adds a classic touch, while the zipper detail brings a modern edge. A versatile and stylish choice for your cold-weather wardrobe.', 78.99, 50, 'https://i.postimg.cc/2jbCqrNr/cableknit-Sweater.webp', 1),
(17, 'Boho Throw Pillow', 'Home Goods', 'Pillows', 'Multi', 'Introduce bohemian flair to your decor with the Boho Throw Pillow. The eclectic patterns and fringe details bring a free-spirited vibe to any space. Mix and match with other pillows for a personalized touch.', 19.99, 30, 'https://i.postimg.cc/Fz9bBD4x/boho-Pillow.jpg', 0),
(15, 'Faux Fur Pillow', 'Home Goods', 'Pillows', 'Orange', 'Indulge in the luxurious feel of the Faux Fur Pillow. The soft faux fur adds a touch of opulence to your sofa or bed. This pillow is not only a cozy accessory but also a stylish addition to your home decor.', 24.99, 40, 'https://i.postimg.cc/mg6dFfsW/faux-Fur-Pillow.jpg', 0),
(16, 'Brown Throw Pillows (4pk)', 'Home Goods', 'Pillows', 'Brown', 'Elevate the comfort and style of your living space with the Brown Throw Pillows. This set of four pillows features a rich brown hue, adding warmth and sophistication to your sofa or lounge area.', 47.99, 50, 'https://i.postimg.cc/JhDpN6rD/brown-Pillows.jpg', 0),
(22, 'Cactus Planter', 'Home Goods', 'Pots & Planters', 'Green', 'Bring a touch of the desert into your home with the Cactus Planter. This charming planter showcases a realistic cactus design, adding a playful and natural element to your indoor garden.', 21.99, 30, 'https://i.postimg.cc/90jgFdj4/cactus-Planter.jpg', 0),
(23, 'Pothead Planter (2pk)', 'Home Goods', 'Pots & Planters', 'Grey', 'Add a humorous twist to your plant display with the Pothead Planter set. These quirky planters are designed to bring a smile to your face while adding a touch of whimsy to your home.', 30.99, 30, 'https://i.postimg.cc/qBXjxCTL/head-Planters.jpg', 0),
(24, 'Kitty Planter', 'Home Goods', 'Pots & Planters', 'Blue', 'Infuse cuteness into your space with the Kitty Planter. This adorable planter is shaped like a cat, making it a delightful addition to your home. Perfect for displaying small plants or succulents.', 21.99, 30, 'https://i.postimg.cc/gjDsz1D5/kitty-Planter.webp', 0),
(20, 'Large Teal Pot', 'Home Goods', 'Pots & Planters', 'Green', 'Make a bold statement with the Large Teal Pot. The vibrant teal color adds a pop of color to your indoor or outdoor garden. This spacious pot is ideal for housing larger plants or creating a focal point in your decor.', 50.99, 20, 'https://i.postimg.cc/TwvJrTNF/teal-Planter.jpg', 1),
(21, 'Small Terracotta Pots (3pk)', 'Home Goods', 'Pots & Planters', 'Red', 'Cultivate a charming mini garden with the Small Terracotta Pots set. These petite pots are perfect for small herbs or succulents, allowing you to create a personalized and compact green space.', 36.99, 30, 'https://i.postimg.cc/Jztx86B6/sm-Terracotta3pk.jpg', 0),
(27, 'Nike Sweater', 'Clothing', 'Sweaters', 'White', 'Stay comfy in style with the Nike Sweater. Crafted for looks and comfort, this sweater features the iconic Nike logo and a posh design. Whether you\'re attending gatherings or running errands, stay effortlessly on-trend.', 129.99, 50, 'https://i.postimg.cc/DzwT7KcV/nike-Sweater.webp', 1),
(28, 'Brown-ish Turtleneck', 'Clothing', 'Sweaters', 'Brown', 'Embrace cozy sophistication with the Brown-ish Turtleneck. The turtleneck design provides extra warmth, while the versatile brown hue makes it a wardrobe staple for the colder seasons.', 78.99, 50, 'https://i.postimg.cc/GhnnHDjx/turtleneck-Sweater.jpg', 1),
(29, 'Wool Overshirt', 'Clothing', 'Sweaters', 'Tan', 'Elevate your casual style with the Wool Overshirt. This versatile piece combines the comfort of an overshirt with the warmth of wool, making it an excellent choice for layering or as a standalone statement.', 99.99, 50, 'https://i.postimg.cc/wB4dvbW1/wool-Overshirt.jpg', 1),
(30, 'Brown Cargo Pants', 'Clothing', 'Pants', 'Brown', 'Achieve a rugged yet stylish look with the Brown Cargo Pants. Designed for both comfort and functionality, these cargo pants feature ample pockets and a neutral brown color that pairs well with various tops.', 60.99, 25, 'https://i.postimg.cc/vDFqTWFg/brown-Cargo.webp', 1),
(31, 'Tactical Pants', 'Clothing', 'Pants', 'Black', 'Gear up for any adventure with the Tactical Pants. Engineered for durability and versatility, these pants feature tactical-inspired details and a comfortable fit, making them a reliable choice for outdoor activities.', 60.99, 25, 'https://i.postimg.cc/6pwK1Z2p/tactical.webp', 1),
(32, 'Black Cargo Pants', 'Clothing', 'Pants', 'Black', 'Stay on-trend with the Black Cargo Pants. The classic cargo style meets a modern silhouette, creating a versatile wardrobe essential. Pair them with sneakers or boots for a casual yet polished look.', 60.99, 25, 'https://i.postimg.cc/cLmWqJwM/black-Cargo.webp', 1),
(33, 'Basketweave Belt', 'Clothing', 'Belts', 'Brown', 'Complete your outfit with the timeless elegance of the Basketweave Belt. The intricate basketweave pattern adds a touch of texture to your look, making it a stylish accessory for both casual and formal occasions.', 54.99, 60, 'https://i.postimg.cc/1tg1NcTJ/basketweave-Belt.jpg', 1),
(34, 'Mahogany Belt', 'Clothing', 'Belts', 'Brown', 'Elevate your style with the Mahogany Belt. The rich mahogany color and sleek design make it a sophisticated addition to your wardrobe. Whether worn with jeans or dress pants, this belt adds a polished finishing touch.', 42.99, 50, 'https://i.postimg.cc/QxcsbmMz/brown-Leather.jpg', 0),
(35, 'Deep Brown Belt', 'Clothing', 'Pants', 'Brown', 'Define your waist with the Deep Brown Belt. The deep brown hue and classic buckle make it a versatile accessory for various outfits. Cinch it over dresses, tunics, or tailored pants for a chic and put-together look.', 42.99, 50, 'https://i.postimg.cc/v8VdYh5m/dk-Brown-Leather.jpg', 0),
(36, 'Heart Sweater', 'Clothing', 'Sweaters', 'Red', 'Spread love and warmth with the Heart Sweater. Adorned with a charming heart pattern, this sweater combines playfulness with comfort. Perfect for adding a touch of romance to your casual wardrobe.', 78.99, 60, 'https://i.postimg.cc/26PRdLNm/heart-Sweater.webp', 1),
(37, 'Brown Fleece Pants', 'Clothing', 'Pants', 'Brown', 'Stay cozy and stylish in the Brown Fleece Pants. Crafted from soft fleece fabric, these pants provide warmth and comfort. The neutral brown color adds versatility, making them a go-to choice for lounging or casual outings.', 48.99, 50, 'https://i.postimg.cc/GtG0X3bD/brown-Fleece.webp', 0),
(38, 'Acrylic Paints (24pk)', 'Hobbies', 'Painting', 'Multi', 'High-quality set of 24 acrylic paints for all your painting needs.', 30.99, 25, 'https://i.postimg.cc/MTBrSsg2/acrylic-Pack.jpg', 0),
(39, 'Acrylic Starter Kit', 'Hobbies', 'Painting', 'Multi', 'Get started with acrylic painting using this comprehensive starter kit.', 34.99, 60, 'https://i.postimg.cc/CxJ3PQpc/acrylic-Set.webp', 0),
(40, 'Colorful Jigsaw Puzzle', 'Hobbies', 'Puzzles', 'Multi', 'Enjoy assembling this vibrant and colorful jigsaw puzzle.', 19.99, 35, 'https://i.postimg.cc/XqMmBM9Y/colorful-Puzzle.webp', 0),
(41, 'Crochet Tools', 'Hobbies', 'Knitting/Crochet', 'Multi', 'Essential tools for your crochet projects, including hooks and accessories.', 24.99, 45, 'https://i.postimg.cc/1ztLLr9s/crochet-Tools.jpg', 0),
(42, 'Holiday Jigsaw Puzzle', 'Hobbies', 'Puzzles', 'Multi', 'Celebrate the holidays with this festive-themed jigsaw puzzle.', 23.99, 50, 'https://i.postimg.cc/QMwnvL4J/holiday-Puzzle.webp', 0),
(43, 'Metal Knitting Hooks', 'Hobbies', 'Knitting/Crochet', 'Silver', 'Durable and sleek metal knitting hooks for your knitting projects.', 10.99, 20, 'https://i.postimg.cc/3wcP70Rp/knitting-Metal.png', 0),
(44, 'Wooden Knitting Needles (10pk)', 'Hobbies', 'Knitting/Crochet', 'Brown', 'Premium set of 10 wooden knitting needles for a comfortable knitting experience.', 44.99, 65, 'https://i.postimg.cc/XYVMg0mZ/knitting-Wood.jpg', 1),
(45, 'Paintbrush/Pen Set', 'Hobbies', 'Painting', 'Multi', 'Versatile set featuring both paintbrushes and pens for your artistic endeavors.', 23.99, 30, 'https://i.postimg.cc/mD1KrZzn/paintbrush-Set.webp', 0),
(46, 'Pratchett Jigsaw Puzzle', 'Hobbies', 'Puzzles', 'Multi', 'A challenging and engaging jigsaw puzzle inspired by the works of Terry Pratchett.', 21.99, 55, 'https://i.postimg.cc/Jz7gk5HZ/pratchett-Puzzle.jpg', 0),
(47, 'Roll-Up Puzzle Mat', 'Hobbies', 'Puzzles', 'Black', 'Convenient roll-up mat for assembling and storing your puzzles.', 15.99, 40, 'https://i.postimg.cc/K89Wr3tV/puzzle-Mat.webp', 0),
(48, 'Travel Watercolor Kit', 'Hobbies', 'Painting', 'Multi', 'Compact watercolor kit perfect for artists on the go.', 34.99, 70, 'https://i.postimg.cc/v89pFBdg/travel-Watercolor.jpg', 1),
(49, 'Ultraviolet Yarn (3pk)', 'Hobbies', 'Knitting/Crochet', 'Multi', 'Unique ultraviolet yarn in a set of three for your creative projects.', 18.99, 25, 'https://i.postimg.cc/YqzZ0s0t/yarnCool.webp', 0),
(50, 'Muted Hues Yarn (4pk)', 'Hobbies', 'Knitting/Crochet', 'Multi', 'A collection of yarn in muted and calming hues for your knitting and crochet projects.', 23.99, 60, 'https://i.postimg.cc/prD7D0BY/yarn-Mutede.webp', 0),
(51, 'Pastel Yarn (6pk)', 'Hobbies', 'Knitting/Crochet', 'Multi', 'Vibrant pastel-colored yarn set to add a pop of color to your creations.', 39.99, 35, 'https://i.postimg.cc/R0NDPCR0/yarn-Pastel.jpg', 1),
(52, 'Warm Tones Yarn (10pk)', 'Hobbies', 'Knitting/Crochet', 'Multi', 'A rich and warm-toned yarn set for cozy and beautiful projects.', 69.99, 45, 'https://i.postimg.cc/YqHTpHpX/yarnWarm.jpg', 1),
(53, 'Purple Yoga Mat', 'Wellness', 'Yoga', 'Purple', 'Start your fitness journey with the Purple Yoga Mat. This yoga mat is perfect for any yoga endeavor with its soft design and flavorful color choice which is sure to bring flair to your fitness session.', 14.99, 50, 'https://i.postimg.cc/50J8Xn6M/purpleYogaMat.jpg', 0),
(54, 'Adjustable Dumbbell', 'Wellness', 'Weights', 'Black', 'This Adjustable Dumbbell is a crucial item for any gym. With its ability to adjust to your selected weight, it makes it versatile for any exercise.', 149.99, 30, 'https://i.postimg.cc/brCnFPLz/adjustableDumbbell.webp', 1),
(55, 'Green Yoga Ball', 'Wellness', 'Yoga', 'Green', 'Add to your yoga collection with the Green Yoga Ball. This yoga ball is essential for core and balance exercises making it a great item to expand your possible fitness repertoire. ', 19.99, 40, 'https://i.postimg.cc/tg3xGWDv/yogaBall.jpg', 0),
(56, 'Adjustable Flat Incline Bench', 'Wellness', 'Weights', 'Black', 'Expand your weight collection with the Adjustable Flat Incline Bench. With its sturdy and adjustable design, you can expand your range of motion as compared to a regular bench. ', 199.99, 20, 'https://i.postimg.cc/RhVfRh7s/adjustableFlatInclineBench.webp', 0),
(57, 'Soccer Ball', 'Wellness', 'Sports', 'Multi', 'Enhance your play with the Soccer Ball. Its classic look and sleek patterns serve as a great ball to practice with or bring to the field.', 34.99, 65, 'https://i.postimg.cc/TYsmVRp0/soccerBall.jpg', 0),
(58, 'Football', 'Wellness', 'Sports', 'Brown', 'Bring a classic look to your game with the Football. This football has bold white accents and rich deep brown leather that gives it that exemplary look.', 24.99, 20, 'https://i.postimg.cc/9XJyfP2v/football.webp', 0),
(59, 'Basketball', 'Wellness', 'Sports', 'Orange', 'Add a tasteful piece to your sports collection with the basketball. This basketball holds that childhood schoolyard appearance with its orange and tan color set.', 29.99, 45, 'https://i.postimg.cc/0yLYs8vj/basketball.jpg', 0),
(60, 'Golf Balls (3pk)', 'Wellness', 'Sports', 'White', 'A collection of Golf Balls perfect for use on the driving range or green.', 14.99, 50, 'https://i.postimg.cc/1570vGYp/golfBall3pk.webp', 0),
(61, 'Soccer Cleats', 'Wellness', 'Sports', 'Tan', 'Strap on a sleek pair of Soccer Cleats perfect for the pitch. These soccer cleats have a mute tan body with a gold sole that will attract the attention of any of your teammates. Not only do they have an elegant appearance but they have great traction with their cleat pattern which will prevent slipping.', 139.99, 10, 'https://i.postimg.cc/TwTWd14d/soccerCleats.webp', 1),
(62, '45LB Weight Plates (2pk)', 'Wellness', 'Weights', 'Black', 'These 45-lb Weight Plates are a great addition to gym weight equipment like the weight bar.', 144.99, 15, 'https://i.postimg.cc/Kv8r7qQG/45lbWeightPlates.webp', 0),
(63, '45LB Weightlifting Bar', 'Wellness', 'Weights', 'Silver', 'This 45-lb Weightlifting Bar is a great addition to your weight lifting equipment.', 275.00, 20, 'https://i.postimg.cc/MpjBthBS/weightBar45lb.webp', 0),
(64, 'Resistance Bands (5pk)', 'Wellness', 'Weights', 'Multi', 'These Resistance Bands are a great way to dynamically add resistance to a multitude of exercises. The five different colored bands each provide a different resistance suitable for your strength.', 29.99, 15, 'https://i.postimg.cc/HLXQWfW2/resistenceBands5ct.jpg', 0),
(65, 'Running Shoes', 'Wellness', 'Sports', 'Green', 'These vibrant Running Shoes are perfect for any runner who enjoys a daily hike or the occasional ultramarathon.', 109.99, 10, 'https://i.postimg.cc/Dy0L4Wym/runningShoes.jpg', 1),
(66, 'Jump Box Step (4pk)', 'Wellness', 'Weights', 'Red', 'This collection of Jump Box Steps is great for jump training with an assortment of heights.', 224.99, 35, 'https://i.postimg.cc/JzyNvs9S/jumpBoxSteps4ct.jpg', 0),
(67, 'Resistance Parachute', 'Wellness', 'Weights', 'Black', 'The Resistance Parachute is a great addition for any coach or player aiming to improve their speed training.', 54.99, 45, 'https://i.postimg.cc/ydn3kKMF/resistenceParachute.jpg', 1),
(68, 'Agility Ladder', 'Wellness', 'Sports', 'Yellow', 'This Agility Ladder acts as a great trainer for any athlete aiming to improve their agility and speed through ladder drills.', 20.00, 15, 'https://i.postimg.cc/4d1VVV9H/Agility_ladder.jpg', 0),
(69, 'Sports Cones', 'Wellness', 'Sports', 'Multi', 'For any sports training, you need Sports Cones. These multi-colored cones are perfect for any coach or athlete who wants to set up drills or boundaries for their practice.', 12.99, 40, 'https://i.postimg.cc/hGWdYp87/sportCones.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
