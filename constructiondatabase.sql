-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2018 at 12:51 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `constructiondatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE `developer` (
  `user_name` varchar(20) NOT NULL,
  `mason` tinyint(1) DEFAULT NULL,
  `tile` tinyint(1) DEFAULT NULL,
  `carpentor` tinyint(1) DEFAULT NULL,
  `plumber` tinyint(1) DEFAULT NULL,
  `electrician` tinyint(1) DEFAULT NULL,
  `painter` tinyint(1) DEFAULT NULL,
  `concrete_slab` tinyint(1) DEFAULT NULL,
  `ceiling` tinyint(1) DEFAULT NULL,
  `welding` tinyint(1) DEFAULT NULL,
  `aluminium` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`user_name`, `mason`, `tile`, `carpentor`, `plumber`, `electrician`, `painter`, `concrete_slab`, `ceiling`, `welding`, `aluminium`) VALUES
('Gongale', 0, 0, 1, 1, 0, 1, 0, 1, 0, 0),
('Nimal', 1, 1, 0, 1, 0, 1, 1, 1, 0, 0),
('Pathmila', 0, 0, 0, 0, 1, 0, 0, 0, 1, 1),
('Piyadasa', 0, 0, 0, 1, 1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `customer_name` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `details` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`customer_name`, `user_name`, `details`) VALUES
('Ranga', 'Nimal', 'His works are perfect'),
('Ranga', 'Senevi', 'Good Service'),
('Ranga', 'Lucky', 'Good service'),
('Nawodya', 'Nimal', 'Better'),
('Dilanka', 'Nimal', 'Better'),
('Ranga', 'Tikiri', 'Good Service\r\nPerfect'),
('Ranga', 'Melon', 'Good Service');

-- --------------------------------------------------------

--
-- Table structure for table `hardwareowner`
--

CREATE TABLE `hardwareowner` (
  `user_name` varchar(20) NOT NULL,
  `hardware_name` varchar(30) NOT NULL,
  `hardware_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hardwareowner`
--

INSERT INTO `hardwareowner` (`user_name`, `hardware_name`, `hardware_address`) VALUES
('Lucky', 'New Lucky Hardware', '53/1, Viharagoda Road, Badulla'),
('Melon', 'Melon Hardware', '53/1, Flower Road, Badulla'),
('Upul', 'Upul Hardware', '53/1, Flower Road, Badulla');

-- --------------------------------------------------------

--
-- Table structure for table `transpoter`
--

CREATE TABLE `transpoter` (
  `user_name` varchar(20) NOT NULL,
  `vehicle_no` varchar(12) NOT NULL,
  `model` varchar(20) NOT NULL,
  `charge` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transpoter`
--

INSERT INTO `transpoter` (`user_name`, `vehicle_no`, `model`, `charge`) VALUES
('Senevi', 'up LC-5316', 'Mitshubishi', '60'),
('Shantha', 'up LG-5069', 'Mitshubishi', '50'),
('Tikiri', 'up DAB-9095', 'Bolero', '70');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `birth_day` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `password` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`first_name`, `last_name`, `user_name`, `birth_day`, `address`, `city`, `email`, `mobile`, `password`, `type`) VALUES
('Dilanka', 'Piumal', 'Dilanka', '1988-05-12', '26/3, Mahiyanganaya Road, Badulla', 'Badulla', 'Dilanka@gmail.com', '0711533111', '0711533111', 'Customer'),
('Gongale', 'Banda', 'Gongale', '1988-05-12', '26/3, Mahiyanganaya Road, Badulla', 'Badulla', 'Gongale@gmail.com', '0711111111', 'pppppppppp', 'Developer'),
('Lucky', 'Silva', 'Lucky', '1988-05-12', '26/3, Mahiyanganaya Road, Badulla', 'Badulla', 'Lucky527@gmail.com', '0711111111', 'pppppppppp', 'HardwareOwner'),
('Melon', 'Rathnayaka', 'Melon', '1988-05-12', '26/3, Mahiyanganaya Road, Badulla', 'Badulla', 'Melon@gmail.com', '0711111111', 'pppppppppp', 'HardwareOwner'),
('Nawodya', 'Shehaan', 'Nawodya', '1988-05-12', '26/3, Colombo Road, Rathnapura', 'Rathnapura', 'Nawodya@gmail.com', '0773312389', 'pppppppppp', 'Customer'),
('Nimal', 'Gamage', 'Nimal', '1988-05-12', '26/3, Mahiyanganaya Road, Badulla', 'Badulla', 'Nimal@gmail.com', '0711111111', 'pppppppppp', 'Developer'),
('Pathmila', 'Madura', 'Pathmila', '1988-05-12', '26/3, Mahiyanganaya Road, Badulla', 'Badulla', 'Pathmila@gmail.com', '0711111111', 'pppppppppp', 'Developer'),
('Piyadasa', 'Mudalige', 'Piyadasa', '1988-05-12', '26/3, Mahiyanganaya Road, Badulla', 'Badulla', 'piyadasa@gmail.com', '0711111111', 'pppppppppp', 'Developer'),
('Ranga', 'Indunil', 'Ranga', '1993-12-15', '49/1, Kappetipola road, Badulla', 'Badulla', 'ranga.indunil@gmail.com', '0715215011', '0715215011', 'Customer'),
('Senevi', 'Rathnayaka', 'Senevi', '1988-05-12', '26/3, Mahiyanganaya Road, Badulla', 'Badulla', 'Senevi527@gmail.com', '0711111111', 'pppppppppp', 'Transpoter'),
('Shantha', 'Karunarathna', 'Shantha', '1988-05-12', '26/3, Passara Road, Badulla', 'Badulla', 'Shantha@gmail.com', '0711111111', 'pppppppppp', 'Transpoter'),
('Tikiri', 'Banda', 'Tikiri', '1988-05-12', '63/5, Passara road, Badulla', 'Badulla', 'Tikiri@gmail.com', '0711111111', 'pppppppppp', 'Transpoter'),
('Upul', 'Gamage', 'Upul', '1988-05-12', '26/3, Mahiyanganaya Road, Badulla', 'Badulla', 'Upul@gmail.com', '0711111111', 'pppppppppp', 'HardwareOwner'),
('Vruna', 'Lakshan', 'Varuna', '1997-04-05', '50/1, Colombo road, Rathnapura', 'Rathnapura', 'Varuna@gmail.com', '0711111111', 'pppppppppp', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `userpoto`
--

CREATE TABLE `userpoto` (
  `user_name` varchar(20) NOT NULL,
  `poto_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userpoto`
--

INSERT INTO `userpoto` (`user_name`, `poto_name`) VALUES
('Dilanka', 'HIACE.jpg'),
('Gongale', 'images (1).jpg'),
('Lucky', 'Lucky.jpg'),
('Melon', 'images.jpg'),
('Nawodya', 'HIACE.jpg'),
('Nimal', 'NimalPoto.jpg'),
('Pathmila', 'images (3).jpg'),
('Piyadasa', 'Passport-size-photo-1.jpg'),
('Ranga', 'Ranga.jpg'),
('Senevi', 'Transpoter.jpg'),
('Shantha', 'rod-passport-size.jpg'),
('Tikiri', 'images.jpg'),
('Upul', 'Passport-Size-Pic.jpg'),
('Varuna', 'Passport-Size-Pic.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `hardwareowner`
--
ALTER TABLE `hardwareowner`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `transpoter`
--
ALTER TABLE `transpoter`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `userpoto`
--
ALTER TABLE `userpoto`
  ADD PRIMARY KEY (`user_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `developer`
--
ALTER TABLE `developer`
  ADD CONSTRAINT `developer_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `userdetails` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hardwareowner`
--
ALTER TABLE `hardwareowner`
  ADD CONSTRAINT `hardwareowner_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `userdetails` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transpoter`
--
ALTER TABLE `transpoter`
  ADD CONSTRAINT `transpoter_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `userdetails` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userpoto`
--
ALTER TABLE `userpoto`
  ADD CONSTRAINT `userpoto_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `userdetails` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
