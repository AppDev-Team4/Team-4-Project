-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql113.infinityfree.com
-- Generation Time: Apr 26, 2024 at 03:22 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_35989662_peakcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `CustomerPurchases`
--

CREATE TABLE `CustomerPurchases` (
  `CustomerID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `NumPurchased` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CustomerPurchases`
--

INSERT INTO `CustomerPurchases` (`CustomerID`, `ProductID`, `NumPurchased`) VALUES
(14, 1, 1),
(14, 27, 2),
(14, 22, 1),
(14, 20, 1),
(13, 6, 3),
(13, 26, 2),
(13, 20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Customers`
--

CREATE TABLE `Customers` (
  `CustomerID` int(11) NOT NULL,
  `FName` varchar(50) DEFAULT NULL,
  `LName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(2) NOT NULL,
  `ZipCode` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customers`
--

INSERT INTO `Customers` (`CustomerID`, `FName`, `LName`, `Email`, `Password`, `Address`, `City`, `State`, `ZipCode`) VALUES
(1, 'James', 'Leonard', 'jleonard5@leomail.tamuc.edu', '$2y$10$AdtlM0dEsYOYW', NULL, '', '', 0),
(4, 'Ashish', 'Acharya', 'ashishacharya@gmail.com', '$2y$10$m88sHr4aVMUUB', NULL, '', '', 0),
(14, 'Wade', 'Testing', 'wade@testing.com', '$2y$10$ESvDydYH.22ZegXOcnDH7OvTpz9MpDovLAuekmkARRn3uakVr2M0C', '123 Commerce St.', 'Commerce', 'TX', 75428),
(11, 'Testy', 'Tester', 'testy@tester.com', '$2y$10$7v4q5wnQUVbosPs1870XlOWMZBhlmsfHOA9wQr3Hd22KIp71qqaWm', '123 Main Street', 'Commerce', 'TX', 75428),
(12, 'alex', 'JaCkSoN', 'email@domain.org', '$2y$10$E8DWcVEF.EEG0rtW.YlGde/oKomJzguWHGwL2ZT2JAW/LgNEdCGxW', '5678 Street Blvd', 'Township', 'FL', 66520),
(13, 'Ethan', 'Jansak-Noble', 'ECJTest@gmail.com', '$2y$10$XK9FCPiU4I3/Ziu9EsDGaekB3C2Eb.AuMNsjNRZ8kEJ9CPV98UJzu', '1234 PR 1234', 'Greenville', 'TX', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `OrderID` int(11) NOT NULL,
  `OrderDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CustomerID` int(11) DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`OrderID`, `OrderDate`, `CustomerID`, `Total`) VALUES
(30, '2024-04-25 01:38:12', 13, '129.89'),
(29, '2024-04-25 01:37:42', 13, '252.18'),
(28, '2024-04-25 01:36:51', 13, '303.07'),
(27, '2024-04-25 00:04:46', 14, '195.91'),
(26, '2024-04-25 00:00:31', 14, '229.46'),
(25, '2024-04-19 21:33:48', 13, '86.59'),
(24, '2024-04-19 21:17:09', 13, '140.71'),
(21, '2024-04-07 01:06:10', 0, '0.00'),
(22, '2024-04-19 18:56:20', 0, '0.00'),
(20, '2024-03-05 01:12:17', 13, '20.56'),
(23, '2024-04-19 21:15:09', 13, '86.59'),
(19, '2024-03-05 01:11:46', 13, '519.54');

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `ProductID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Subcategory` varchar(50) DEFAULT NULL,
  `Color` varchar(20) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `ImagePath` varchar(255) DEFAULT NULL,
  `Featured` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`ProductID`, `Name`, `Category`, `Subcategory`, `Color`, `Description`, `Price`, `Quantity`, `ImagePath`, `Featured`) VALUES
(1, 'Three Tier Table', 'Home Goods', 'Tables', 'Brown', 'Enhance your living space with this versatile Three Tier Table. Its contemporary design and sturdy construction make it a perfect addition to any room. The three-tiered shelves provide ample space for displaying decor or organizing essentials.', '59.99', 30, 'https://i.postimg.cc/05pHXBp7/3tier-Table.webp', 1),
(2, 'Bankers Lamp', 'Home Goods', 'Lamps', 'Green', 'Illuminate your workspace with the classic elegance of the Bankers Lamp. Featuring a timeless design, this lamp adds a touch of sophistication to your desk or table. The green glass shade and antique brass finish create a vintage-inspired look.', '34.99', 25, 'https://i.postimg.cc/hvbyJXS2/bankers-Lamp.jpg', 0),
(3, 'Metal End Table', 'Home Goods', 'Tables', 'Gold', 'Add an industrial touch to your home with the Metal End Table. Crafted from durable metal, this end table combines style and functionality. The open design and sleek lines make it a chic choice for any modern living space.', '48.99', 65, 'https://i.postimg.cc/2SJwSQQz/metal-Table.jpg', 0),
(4, 'Mushroom Lamp', 'Home Goods', 'Lamps', 'Multi', 'Bring a whimsical charm to your home with the Mushroom Lamp. The unique mushroom-shaped design adds a playful element to your decor. The warm glow creates a cozy atmosphere, making it an ideal choice for bedside tables or cozy corners.', '26.99', 30, 'https://i.postimg.cc/qq0Qdp8y/mushroom-Lamp.jpg', 0),
(5, 'Rectangular Lamp', 'Home Goods', 'Lamps', 'White', 'Illuminate your space with the clean and modern design of the Rectangular Lamp. Its simple yet stylish form complements various decor styles. The rectangular shade provides focused lighting, making it perfect for reading nooks or workspaces.', '18.99', 50, 'https://i.postimg.cc/XvRQQfq2/rectangle-Lamp.jpg', 0),
(6, 'Rustic End Table', 'Home Goods', 'Tables', 'Tan', 'Infuse your space with rustic charm using the Rustic End Table. Crafted from reclaimed wood, each piece is unique and carries its own story. The distressed finish and sturdy construction make it a perfect addition to your farmhouse-inspired decor.', '79.99', 10, 'https://i.postimg.cc/Gpyj84Kv/rustic-Table.webp', 1),
(7, 'Cream Office Chair', 'Home Goods', 'Chairs', 'White', 'Upgrade your office with the Cream Office Chair. Designed for both comfort and style, this chair features plush cream-colored upholstery and ergonomic support. The swivel base and adjustable height provide convenience for your workday.', '119.99', 20, 'https://i.postimg.cc/BQp74P76/cream-Office-Chair.jpg', 1),
(8, 'Cozy Chair', 'Home Goods', 'Chairs', 'White', 'Sink into comfort with the Cozy Chair. Its oversized design and plush cushions make it the perfect spot for relaxation. Whether placed in the living room or bedroom, this chair adds a touch of luxury to your home.', '209.99', 30, 'https://i.postimg.cc/x1dxCjBP/cozy-Chair.jpg', 1),
(9, 'Velvet Office Chair', 'Home Goods', 'Chairs', 'White', 'Elevate your workspace with the Velvet Office Chair. The luxurious velvet upholstery and gold accents create a chic and sophisticated look. Ergonomically designed for comfort, this chair seamlessly combines style and functionality.', '141.99', 25, 'https://i.postimg.cc/sxwPd7fC/velvetOfficeChair.webp', 1),
(10, 'Grey Accent Chair', 'Home Goods', 'Chairs', 'Grey', 'Make a statement with the Grey Accent Chair. The sleek design and neutral grey upholstery blend seamlessly into any decor. With its modern silhouette and comfortable seating, this accent chair is a stylish addition to your living space.', '199.99', 18, 'https://i.postimg.cc/bJ1LMZ2q/grey-Accent-Chair.webp', 1),
(11, 'Shaggy Throw Pillows (2pk)', 'Home Goods', 'Pillows', 'Grey', 'Add texture and coziness to your sofa or bed with the Shaggy Throw Pillows. This set of two pillows features a shaggy, plush exterior that invites you to relax and unwind. The neutral color palette effortlessly complements various decor styles.', '48.99', 50, 'https://i.postimg.cc/28kTc8jf/shaggy-Pillows.jpg', 0),
(12, 'Velvet Throw Pillows (2pk)', 'Home Goods', 'Pillows', 'Grey', 'Infuse a touch of luxury into your living space with the Velvet Throw Pillows. This set of two pillows showcases sumptuous velvet fabric and a rich color palette, instantly elevating the look of your sofa or bedroom.', '54.99', 30, 'https://i.postimg.cc/qRcXwW9R/velvetPillows.jpg', 1),
(13, 'Floral Watercolor Throw', 'Home Goods', 'Pillows', 'Multi', 'Bring the beauty of nature indoors with the Floral Watercolor Throw. This cozy throw blanket features a delicate watercolor floral print, adding a touch of elegance to your space. Perfect for draping over a couch or at the foot of your bed.', '21.99', 30, 'https://i.postimg.cc/RV4pkLRy/floral-Pillow.jpg', 0),
(14, 'Abstract Mosaic Pillow', 'Home Goods', 'Pillows', 'Multi', 'Make a bold statement with the Abstract Mosaic Pillow. The contemporary design and vibrant colors create a focal point in any room. This accent pillow effortlessly combines artistry with comfort.', '19.99', 30, 'https://i.postimg.cc/J4px9VtH/mosaic-Pillow.jpg', 0),
(26, 'Cowboy Sweater', 'Clothing', 'Sweaters', 'Multi', 'Embrace a rugged yet stylish look with the Cowboy Sweater. Crafted for both warmth and fashion, this sweater features a classic knit pattern and a comfortable fit. Perfect for chilly days and casual outings.', '119.99', 50, 'https://i.postimg.cc/3rsYmV3p/cowboy-Sweater.jpg', 1),
(25, 'Cableknit Zipper', 'Clothing', 'Sweaters', 'Tan', 'Stay cozy and chic in the Cableknit Zipper sweater. The timeless cable-knit design adds a classic touch, while the zipper detail brings a modern edge. A versatile and stylish choice for your cold-weather wardrobe.', '78.99', 50, 'https://i.postimg.cc/2jbCqrNr/cableknit-Sweater.webp', 1),
(17, 'Boho Throw Pillow', 'Home Goods', 'Pillows', 'Multi', 'Introduce bohemian flair to your decor with the Boho Throw Pillow. The eclectic patterns and fringe details bring a free-spirited vibe to any space. Mix and match with other pillows for a personalized touch.', '19.99', 30, 'https://i.postimg.cc/Fz9bBD4x/boho-Pillow.jpg', 0),
(15, 'Faux Fur Pillow', 'Home Goods', 'Pillows', 'Orange', 'Indulge in the luxurious feel of the Faux Fur Pillow. The soft faux fur adds a touch of opulence to your sofa or bed. This pillow is not only a cozy accessory but also a stylish addition to your home decor.', '24.99', 40, 'https://i.postimg.cc/mg6dFfsW/faux-Fur-Pillow.jpg', 0),
(16, 'Brown Throw Pillows (4pk)', 'Home Goods', 'Pillows', 'Brown', 'Elevate the comfort and style of your living space with the Brown Throw Pillows. This set of four pillows features a rich brown hue, adding warmth and sophistication to your sofa or lounge area.', '47.99', 50, 'https://i.postimg.cc/JhDpN6rD/brown-Pillows.jpg', 0),
(22, 'Cactus Planter', 'Home Goods', 'Pots & Planters', 'Green', 'Bring a touch of the desert into your home with the Cactus Planter. This charming planter showcases a realistic cactus design, adding a playful and natural element to your indoor garden.', '21.99', 30, 'https://i.postimg.cc/90jgFdj4/cactus-Planter.jpg', 0),
(23, 'Pothead Planter (2pk)', 'Home Goods', 'Pots & Planters', 'Grey', 'Add a humorous twist to your plant display with the Pothead Planter set. These quirky planters are designed to bring a smile to your face while adding a touch of whimsy to your home.', '30.99', 30, 'https://i.postimg.cc/qBXjxCTL/head-Planters.jpg', 0),
(24, 'Kitty Planter', 'Home Goods', 'Pots & Planters', 'Blue', 'Infuse cuteness into your space with the Kitty Planter. This adorable planter is shaped like a cat, making it a delightful addition to your home. Perfect for displaying small plants or succulents.', '21.99', 30, 'https://i.postimg.cc/gjDsz1D5/kitty-Planter.webp', 0),
(20, 'Large Teal Pot', 'Home Goods', 'Pots & Planters', 'Green', 'Make a bold statement with the Large Teal Pot. The vibrant teal color adds a pop of color to your indoor or outdoor garden. This spacious pot is ideal for housing larger plants or creating a focal point in your decor.', '50.99', 20, 'https://i.postimg.cc/TwvJrTNF/teal-Planter.jpg', 1),
(21, 'Small Terracotta Pots (3pk)', 'Home Goods', 'Pots & Planters', 'Red', 'Cultivate a charming mini garden with the Small Terracotta Pots set. These petite pots are perfect for small herbs or succulents, allowing you to create a personalized and compact green space.', '36.99', 30, 'https://i.postimg.cc/Jztx86B6/sm-Terracotta3pk.jpg', 0),
(27, 'Nike Sweater', 'Clothing', 'Sweaters', 'White', 'Stay comfy in style with the Nike Sweater. Crafted for looks and comfort, this sweater features the iconic Nike logo and a posh design. Whether you\'re attending gatherings or running errands, stay effortlessly on-trend.', '129.99', 50, 'https://i.postimg.cc/DzwT7KcV/nike-Sweater.webp', 1),
(28, 'Brown-ish Turtleneck', 'Clothing', 'Sweaters', 'Brown', 'Embrace cozy sophistication with the Brown-ish Turtleneck. The turtleneck design provides extra warmth, while the versatile brown hue makes it a wardrobe staple for the colder seasons.', '78.99', 50, 'https://i.postimg.cc/GhnnHDjx/turtleneck-Sweater.jpg', 1),
(29, 'Wool Overshirt', 'Clothing', 'Sweaters', 'Tan', 'Elevate your casual style with the Wool Overshirt. This versatile piece combines the comfort of an overshirt with the warmth of wool, making it an excellent choice for layering or as a standalone statement.', '99.99', 50, 'https://i.postimg.cc/wB4dvbW1/wool-Overshirt.jpg', 1),
(30, 'Brown Cargo Pants', 'Clothing', 'Pants', 'Brown', 'Achieve a rugged yet stylish look with the Brown Cargo Pants. Designed for both comfort and functionality, these cargo pants feature ample pockets and a neutral brown color that pairs well with various tops.', '60.99', 25, 'https://i.postimg.cc/vDFqTWFg/brown-Cargo.webp', 1),
(31, 'Tactical Pants', 'Clothing', 'Pants', 'Black', 'Gear up for any adventure with the Tactical Pants. Engineered for durability and versatility, these pants feature tactical-inspired details and a comfortable fit, making them a reliable choice for outdoor activities.', '60.99', 25, 'https://i.postimg.cc/6pwK1Z2p/tactical.webp', 1),
(32, 'Black Cargo Pants', 'Clothing', 'Pants', 'Black', 'Stay on-trend with the Black Cargo Pants. The classic cargo style meets a modern silhouette, creating a versatile wardrobe essential. Pair them with sneakers or boots for a casual yet polished look.', '60.99', 25, 'https://i.postimg.cc/cLmWqJwM/black-Cargo.webp', 1),
(33, 'Basketweave Belt', 'Clothing', 'Belts', 'Brown', 'Complete your outfit with the timeless elegance of the Basketweave Belt. The intricate basketweave pattern adds a touch of texture to your look, making it a stylish accessory for both casual and formal occasions.', '54.99', 60, 'https://i.postimg.cc/1tg1NcTJ/basketweave-Belt.jpg', 1),
(34, 'Mahogany Belt', 'Clothing', 'Belts', 'Brown', 'Elevate your style with the Mahogany Belt. The rich mahogany color and sleek design make it a sophisticated addition to your wardrobe. Whether worn with jeans or dress pants, this belt adds a polished finishing touch.', '42.99', 50, 'https://i.postimg.cc/QxcsbmMz/brown-Leather.jpg', 0),
(35, 'Deep Brown Belt', 'Clothing', 'Pants', 'Brown', 'Define your waist with the Deep Brown Belt. The deep brown hue and classic buckle make it a versatile accessory for various outfits. Cinch it over dresses, tunics, or tailored pants for a chic and put-together look.', '42.99', 50, 'https://i.postimg.cc/v8VdYh5m/dk-Brown-Leather.jpg', 0),
(36, 'Heart Sweater', 'Clothing', 'Sweaters', 'Red', 'Spread love and warmth with the Heart Sweater. Adorned with a charming heart pattern, this sweater combines playfulness with comfort. Perfect for adding a touch of romance to your casual wardrobe.', '78.99', 60, 'https://i.postimg.cc/26PRdLNm/heart-Sweater.webp', 1),
(37, 'Brown Fleece Pants', 'Clothing', 'Pants', 'Brown', 'Stay cozy and stylish in the Brown Fleece Pants. Crafted from soft fleece fabric, these pants provide warmth and comfort. The neutral brown color adds versatility, making them a go-to choice for lounging or casual outings.', '48.99', 50, 'https://i.postimg.cc/GtG0X3bD/brown-Fleece.webp', 0),
(38, 'Acrylic Paints (24pk)', 'Hobbies', 'Painting', 'Multi', 'High-quality set of 24 acrylic paints for all your painting needs.', '30.99', 25, 'https://i.postimg.cc/MTBrSsg2/acrylic-Pack.jpg', 0),
(39, 'Acrylic Starter Kit', 'Hobbies', 'Painting', 'Multi', 'Get started with acrylic painting using this comprehensive starter kit.', '34.99', 60, 'https://i.postimg.cc/CxJ3PQpc/acrylic-Set.webp', 0),
(40, 'Colorful Jigsaw Puzzle', 'Hobbies', 'Puzzles', 'Multi', 'Enjoy assembling this vibrant and colorful jigsaw puzzle.', '19.99', 35, 'https://i.postimg.cc/XqMmBM9Y/colorful-Puzzle.webp', 0),
(41, 'Crochet Tools', 'Hobbies', 'Knitting/Crochet', 'Multi', 'Essential tools for your crochet projects, including hooks and accessories.', '24.99', 45, 'https://i.postimg.cc/1ztLLr9s/crochet-Tools.jpg', 0),
(42, 'Holiday Jigsaw Puzzle', 'Hobbies', 'Puzzles', 'Multi', 'Celebrate the holidays with this festive-themed jigsaw puzzle.', '23.99', 50, 'https://i.postimg.cc/QMwnvL4J/holiday-Puzzle.webp', 0),
(43, 'Metal Knitting Hooks', 'Hobbies', 'Knitting/Crochet', 'Silver', 'Durable and sleek metal knitting hooks for your knitting projects.', '10.99', 20, 'https://i.postimg.cc/3wcP70Rp/knitting-Metal.png', 0),
(44, 'Wooden Knitting Needles (10pk)', 'Hobbies', 'Knitting/Crochet', 'Brown', 'Premium set of 10 wooden knitting needles for a comfortable knitting experience.', '44.99', 65, 'https://i.postimg.cc/XYVMg0mZ/knitting-Wood.jpg', 1),
(45, 'Paintbrush/Pen Set', 'Hobbies', 'Painting', 'Multi', 'Versatile set featuring both paintbrushes and pens for your artistic endeavors.', '23.99', 30, 'https://i.postimg.cc/mD1KrZzn/paintbrush-Set.webp', 0),
(46, 'Pratchett Jigsaw Puzzle', 'Hobbies', 'Puzzles', 'Multi', 'A challenging and engaging jigsaw puzzle inspired by the works of Terry Pratchett.', '21.99', 55, 'https://i.postimg.cc/Jz7gk5HZ/pratchett-Puzzle.jpg', 0),
(47, 'Roll-Up Puzzle Mat', 'Hobbies', 'Puzzles', 'Black', 'Convenient roll-up mat for assembling and storing your puzzles.', '15.99', 40, 'https://i.postimg.cc/K89Wr3tV/puzzle-Mat.webp', 0),
(48, 'Travel Watercolor Kit', 'Hobbies', 'Painting', 'Multi', 'Compact watercolor kit perfect for artists on the go.', '34.99', 70, 'https://i.postimg.cc/v89pFBdg/travel-Watercolor.jpg', 1),
(49, 'Ultraviolet Yarn (3pk)', 'Hobbies', 'Knitting/Crochet', 'Multi', 'Unique ultraviolet yarn in a set of three for your creative projects.', '18.99', 25, 'https://i.postimg.cc/YqzZ0s0t/yarnCool.webp', 0),
(50, 'Muted Hues Yarn (4pk)', 'Hobbies', 'Knitting/Crochet', 'Multi', 'A collection of yarn in muted and calming hues for your knitting and crochet projects.', '23.99', 60, 'https://i.postimg.cc/prD7D0BY/yarn-Mutede.webp', 0),
(51, 'Pastel Yarn (6pk)', 'Hobbies', 'Knitting/Crochet', 'Multi', 'Vibrant pastel-colored yarn set to add a pop of color to your creations.', '39.99', 35, 'https://i.postimg.cc/R0NDPCR0/yarn-Pastel.jpg', 1),
(52, 'Warm Tones Yarn (10pk)', 'Hobbies', 'Knitting/Crochet', 'Multi', 'A rich and warm-toned yarn set for cozy and beautiful projects.', '69.99', 45, 'https://i.postimg.cc/YqHTpHpX/yarnWarm.jpg', 1),
(53, 'Purple Yoga Mat', 'Wellness', 'Yoga', 'Purple', 'Start your fitness journey with the Purple Yoga Mat. This yoga mat is perfect for any yoga endeavor with its soft design and flavorful color choice which is sure to bring flair to your fitness session.', '14.99', 50, 'https://i.postimg.cc/50J8Xn6M/purpleYogaMat.jpg', 0),
(54, 'Adjustable Dumbbell', 'Wellness', 'Weights', 'Black', 'This Adjustable Dumbbell is a crucial item for any gym. With its ability to adjust to your selected weight, it makes it versatile for any exercise.', '149.99', 30, 'https://i.postimg.cc/brCnFPLz/adjustableDumbbell.webp', 1),
(55, 'Green Yoga Ball', 'Wellness', 'Yoga', 'Green', 'Add to your yoga collection with the Green Yoga Ball. This yoga ball is essential for core and balance exercises making it a great item to expand your possible fitness repertoire. ', '19.99', 40, 'https://i.postimg.cc/tg3xGWDv/yogaBall.jpg', 0),
(56, 'Adjustable Flat Incline Bench', 'Wellness', 'Weights', 'Black', 'Expand your weight collection with the Adjustable Flat Incline Bench. With its sturdy and adjustable design, you can expand your range of motion as compared to a regular bench. ', '199.99', 20, 'https://i.postimg.cc/RhVfRh7s/adjustableFlatInclineBench.webp', 0),
(57, 'Soccer Ball', 'Wellness', 'Sports', 'Multi', 'Enhance your play with the Soccer Ball. Its classic look and sleek patterns serve as a great ball to practice with or bring to the field.', '34.99', 65, 'https://i.postimg.cc/TYsmVRp0/soccerBall.jpg', 0),
(58, 'Football', 'Wellness', 'Sports', 'Brown', 'Bring a classic look to your game with the Football. This football has bold white accents and rich deep brown leather that gives it that exemplary look.', '24.99', 20, 'https://i.postimg.cc/9XJyfP2v/football.webp', 0),
(59, 'Basketball', 'Wellness', 'Sports', 'Orange', 'Add a tasteful piece to your sports collection with the basketball. This basketball holds that childhood schoolyard appearance with its orange and tan color set.', '29.99', 45, 'https://i.postimg.cc/0yLYs8vj/basketball.jpg', 0),
(60, 'Golf Balls (3pk)', 'Wellness', 'Sports', 'White', 'A collection of Golf Balls perfect for use on the driving range or green.', '14.99', 50, 'https://i.postimg.cc/1570vGYp/golfBall3pk.webp', 0),
(61, 'Soccer Cleats', 'Wellness', 'Sports', 'Tan', 'Strap on a sleek pair of Soccer Cleats perfect for the pitch. These soccer cleats have a mute tan body with a gold sole that will attract the attention of any of your teammates. Not only do they have an elegant appearance but they have great traction with their cleat pattern which will prevent slipping.', '139.99', 10, 'https://i.postimg.cc/TwTWd14d/soccerCleats.webp', 1),
(62, '45LB Weight Plates (2pk)', 'Wellness', 'Weights', 'Black', 'These 45-lb Weight Plates are a great addition to gym weight equipment like the weight bar.', '144.99', 15, 'https://i.postimg.cc/Kv8r7qQG/45lbWeightPlates.webp', 0),
(63, '45LB Weightlifting Bar', 'Wellness', 'Weights', 'Silver', 'This 45-lb Weightlifting Bar is a great addition to your weight lifting equipment.', '275.00', 20, 'https://i.postimg.cc/MpjBthBS/weightBar45lb.webp', 0),
(64, 'Resistance Bands (5pk)', 'Wellness', 'Weights', 'Multi', 'These Resistance Bands are a great way to dynamically add resistance to a multitude of exercises. The five different colored bands each provide a different resistance suitable for your strength.', '29.99', 15, 'https://i.postimg.cc/HLXQWfW2/resistenceBands5ct.jpg', 0),
(65, 'Running Shoes', 'Wellness', 'Sports', 'Green', 'These vibrant Running Shoes are perfect for any runner who enjoys a daily hike or the occasional ultramarathon.', '109.99', 10, 'https://i.postimg.cc/Dy0L4Wym/runningShoes.jpg', 1),
(66, 'Jump Box Step (4pk)', 'Wellness', 'Weights', 'Red', 'This collection of Jump Box Steps is great for jump training with an assortment of heights.', '224.99', 35, 'https://i.postimg.cc/JzyNvs9S/jumpBoxSteps4ct.jpg', 0),
(67, 'Resistance Parachute', 'Wellness', 'Weights', 'Black', 'The Resistance Parachute is a great addition for any coach or player aiming to improve their speed training.', '54.99', 45, 'https://i.postimg.cc/ydn3kKMF/resistenceParachute.jpg', 1),
(68, 'Agility Ladder', 'Wellness', 'Sports', 'Yellow', 'This Agility Ladder acts as a great trainer for any athlete aiming to improve their agility and speed through ladder drills.', '20.00', 15, 'https://i.postimg.cc/4d1VVV9H/Agility_ladder.jpg', 0),
(69, 'Sports Cones', 'Wellness', 'Sports', 'Multi', 'For any sports training, you need Sports Cones. These multi-colored cones are perfect for any coach or athlete who wants to set up drills or boundaries for their practice.', '12.99', 40, 'https://i.postimg.cc/hGWdYp87/sportCones.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Customers`
--
ALTER TABLE `Customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Orders`
--
ALTER TABLE `Orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
