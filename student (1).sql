-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2025 at 01:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `course` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course`, `description`, `degree`) VALUES
(1, 'BSIT', 'Business Analytics', 'Bachelor of Science in Information Technology'),
(2, 'BSBA', 'Financial Management', 'Bachelor of Science in Business Administration'),
(4, 'BSA', 'Crop Science', 'Bachelor of Science in Agriculture'),
(5, 'BTLED', 'Livelihood Education', 'Bachelor of Technology in Livelihood Education');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `studentNum` int(100) NOT NULL,
  `year` varchar(4) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `studentNum`, `year`, `course`, `firstName`, `lastName`, `gender`, `birth`, `status`, `image`, `date`) VALUES
(11, 2022, '3', 'BSA', 'Kyle', 'Mahilom', 'Male', '2003-12-25', 'Enrolled', 'C:\\\\Users\\\\USER\\\\Pictures\\\\Camera Roll\\\\WIN_20240707_20_48_37_Pro.jpg', '2024-12-19 16:00:00'),
(8, 2026189, '3', 'BSIT', 'Sarah Mae', 'Cantiga', 'Male', '2004-05-29', 'Enrolled', 'C:\\\\Users\\\\USER\\\\Pictures\\\\Camera Roll\\\\WIN_20240605_13_59_24_Pro.jpg', '2024-12-15 16:00:00'),
(10, 20002814, '4', 'BTLED', 'Janisa', 'Oranda', 'Female', '2000-01-22', 'Enrolled', 'C:\\\\Users\\\\USER\\\\Pictures\\\\Camera Roll\\\\WIN_20240707_20_47_05_Pro.jpg', '2024-12-19 16:00:00'),
(9, 20221234, '4', 'BSBA', 'ryan', 'gallo', 'Male', '2000-01-11', 'Enrolled', 'C:\\\\Users\\\\USER\\\\Pictures\\\\Camera Roll\\\\WIN_20240715_20_59_29_Pro.jpg', '2024-12-16 16:00:00'),
(1, 20221677, '3', 'BSIT', 'Cali', 'Storm', 'Male', '1998-09-01', 'Enrolled', 'C:\\\\Users\\\\memay\\\\Pictures\\\\flowershop\\\\cats\\\\car_logo.jpg', '2024-12-13 16:00:00'),
(2, 20223291, '2', 'BSIT', 'Train', 'Vargaz', 'Male', '2002-12-04', 'Enrolled', 'C:\\\\Users\\\\memay\\\\Pictures\\\\flowershop\\\\cats\\\\car_logo.jpg', '2024-12-13 16:00:00'),
(3, 20223833, '3', 'BSIT', 'Czarina', 'Stroam', 'Female', '2003-12-02', 'Enrolled', 'C:\\\\Users\\\\memay\\\\Pictures\\\\flowershop\\\\cats\\\\car_logo.jpg', '2024-12-13 16:00:00'),
(6, 20226185, '3', 'BSIT', 'Archaile', 'Pangilan', 'Male', '2004-04-07', 'Enrolled', 'C:\\\\Users\\\\USER\\\\Pictures\\\\Camera Roll\\\\WIN_20240707_20_46_11_Pro.jpg', '2024-12-15 16:00:00'),
(7, 20226186, '3', 'BSIT', 'Nadine', 'Canas', 'Female', '2003-09-07', 'Enrolled', 'C:\\\\Users\\\\USER\\\\Pictures\\\\Camera Roll\\\\WIN_20241201_20_54_29_Pro.jpg', '2024-12-15 16:00:00'),
(4, 20226189, '3', 'BSIT', 'Sara', 'Pequero', 'Female', '2004-12-01', 'Enrolled', 'C:\\\\Users\\\\memay\\\\Pictures\\\\flowershop\\\\cats\\\\car_logo.jpg', '2024-12-13 16:00:00'),
(5, 20227654, '2', 'BSIT', 'Mhelanie', 'Vergara', 'Female', '2003-11-27', 'Enrolled', 'C:\\\\Users\\\\memay\\\\Pictures\\\\flowershop\\\\cats\\\\car_logo.jpg', '2024-12-13 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_grade`
--

CREATE TABLE `student_grade` (
  `studentNum` int(11) NOT NULL,
  `year` varchar(4) NOT NULL,
  `course` varchar(255) NOT NULL,
  `first_sem` decimal(5,2) DEFAULT 0.00,
  `second_sem` decimal(5,2) DEFAULT 0.00,
  `final` decimal(5,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_grade`
--

INSERT INTO `student_grade` (`studentNum`, `year`, `course`, `first_sem`, `second_sem`, `final`) VALUES
(2022, '3', 'BSA', 0.00, 0.00, 0.00),
(2026189, '3', 'BSIT', 0.00, 0.00, 0.00),
(20002814, '4', 'BTLED', 0.00, 0.00, 0.00),
(20221234, '4', 'BSBA', 0.00, 0.00, 0.00),
(20221677, '3', 'BSIT', 2.00, 2.50, 1.00),
(20223291, '2', 'BSIT', 1.00, 1.00, 1.00),
(20223833, '3', 'BSIT', 1.00, 1.00, 0.00),
(20226185, '3', 'BSIT', 2.00, 1.00, 1.50),
(20226189, '3', 'BSIT', 2.00, 3.00, 2.50),
(20227654, '2', 'BSIT', 3.00, 1.00, 2.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course` (`course`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentNum`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `student_grade`
--
ALTER TABLE `student_grade`
  ADD PRIMARY KEY (`studentNum`,`year`,`course`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_grade`
--
ALTER TABLE `student_grade`
  ADD CONSTRAINT `student_grade_ibfk_1` FOREIGN KEY (`studentNum`) REFERENCES `student` (`studentNum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
