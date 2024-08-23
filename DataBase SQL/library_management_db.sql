-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2024 at 12:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `BookID` int(11) NOT NULL,
  `BookName` varchar(150) NOT NULL,
  `Author` varchar(150) NOT NULL,
  `Stream` varchar(50) NOT NULL,
  `Class` varchar(50) NOT NULL,
  `Available` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookID`, `BookName`, `Author`, `Stream`, `Class`, `Available`) VALUES
(1, 'Principles of Accounting', 'Jerry J. Weygandt', 'Commerce', 'FYBCom', 'NO'),
(2, 'Biology', 'Catherine J. Murphy', 'Science', 'FYBScCS', 'NO'),
(3, 'The History of Art', 'Marilyn Stockstad', 'Arts', 'FYBA', 'YES'),
(112, 'Chemistry', 'xyz', 'Science', 'FYBScCS', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(150) NOT NULL,
  `BookId` int(11) NOT NULL,
  `BookName` varchar(150) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `IssueDate` varchar(50) NOT NULL,
  `SStream` varchar(50) NOT NULL,
  `SClass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`StudentId`, `StudentName`, `BookId`, `BookName`, `Address`, `IssueDate`, `SStream`, `SClass`) VALUES
(2, 'Ahmed Ali', 2, 'Biology', 'example streat 25, city 24', '10-08-2024', 'Arts', 'FYBA'),
(2, 'Ahmed Ali', 1, 'Principles of Accounting', 'example streat 25, city 24', '10-08-2024', 'Arts', 'FYBA');

-- --------------------------------------------------------

--
-- Table structure for table `returndetail`
--

CREATE TABLE `returndetail` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(150) NOT NULL,
  `BookId` int(11) NOT NULL,
  `BookName` varchar(150) NOT NULL,
  `IssueDate` varchar(50) NOT NULL,
  `ReturnDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `returndetail`
--

INSERT INTO `returndetail` (`StudentId`, `StudentName`, `BookId`, `BookName`, `IssueDate`, `ReturnDate`) VALUES
(1, 'Muhammad Asad', 1, 'Principles of Accounting', '10-08-2024', '10-08-2024'),
(12, 'Umer', 3, 'The History of Art', '23-08-2024', '23-08-2024');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(150) NOT NULL,
  `SStream` varchar(50) NOT NULL,
  `SClass` varchar(50) NOT NULL,
  `Address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentId`, `StudentName`, `SStream`, `SClass`, `Address`) VALUES
(1, 'Muhammad Asad', 'Science', 'FYBScCS', 'example streat 24, city 24'),
(2, 'Ahmed Ali', 'Arts', 'FYBA', 'example streat 25, city 24'),
(3, 'Ayaz', 'Commerce', 'SYBCom', 'example streat 26, city 24'),
(12, 'Umer', 'Commerce', 'FYBCom', 'streat 4 , Punjab');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
