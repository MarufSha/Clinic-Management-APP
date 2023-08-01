-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2021 at 11:11 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phawa`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambulancebooktbl`
--

CREATE TABLE `ambulancebooktbl` (
  `bookingid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pickupadd` varchar(100) NOT NULL,
  `Destinationadd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttbl`
--

CREATE TABLE `appointmenttbl` (
  `aptid` int(100) NOT NULL,
  `doctorid` int(100) NOT NULL,
  `patientid` int(100) NOT NULL,
  `apdtname` varchar(100) NOT NULL,
  `apptname` varchar(100) NOT NULL,
  `appdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointmenttbl`
--

INSERT INTO `appointmenttbl` (`aptid`, `doctorid`, `patientid`, `apdtname`, `apptname`, `appdate`) VALUES
(36, 11, 39, 'Prof.Dr.AQM Reza ', 'Rahim Islam', '2021-10-21'),
(38, 13, 39, 'Dr. Tahera Nazrin ', 'Rahim Islam', '2021-10-19'),
(39, 11, 40, 'Prof.Dr.AQM Reza ', 'Karim  Islam', '2021-10-28'),
(54, 11, 38, 'Prof.Dr.AQM Reza ', 'MD.JAWDUL HASAN', '2021-11-27'),
(55, 11, 38, 'Prof.Dr.AQM Reza ', 'MD.JAWDUL HASAN ', '2021-11-19'),
(56, 11, 38, 'Prof.Dr.AQM Reza ', 'MD.JAWDUL HASAN ', '2021-11-06'),
(57, 11, 38, 'Prof.Dr.AQM Reza ', 'MD.JAWDUL HASAN ', '2021-11-20'),
(58, 11, 38, 'Prof.Dr.AQM Reza ', 'MD.JAWDUL HASAN ', '2021-12-04'),
(59, 11, 38, 'Prof.Dr.AQM Reza ', 'MD.JAWDUL HASAN ', '2021-11-20'),
(62, 11, 38, 'Prof.Dr.AQM Reza ', 'MD.JAWDUL HASAN ', '2021-12-17'),
(63, 11, 38, 'Prof.Dr.AQM Reza ', 'MD.JAWDUL HASAN ', '2021-12-17'),
(64, 28, 38, 'Abir Hossain', 'MD.JAWDUL HASAN ', '2021-12-23');

-- --------------------------------------------------------

--
-- Table structure for table `doctortbl`
--

CREATE TABLE `doctortbl` (
  `dtid` int(100) NOT NULL,
  `dtname` varchar(50) NOT NULL,
  `dtdegree` varchar(50) NOT NULL,
  `dtdept` varchar(50) NOT NULL,
  `dtchamber` varchar(50) NOT NULL,
  `dtvisitingtime` varchar(50) NOT NULL,
  `dtvisitingdays` varchar(50) NOT NULL,
  `dtphone` varchar(50) NOT NULL,
  `dtuser_name` varchar(50) NOT NULL,
  `dtemail_id` varchar(50) NOT NULL,
  `dtpass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctortbl`
--

INSERT INTO `doctortbl` (`dtid`, `dtname`, `dtdegree`, `dtdept`, `dtchamber`, `dtvisitingtime`, `dtvisitingdays`, `dtphone`, `dtuser_name`, `dtemail_id`, `dtpass`) VALUES
(11, 'Prof.Dr.AQM Reza ', 'MBBS MD (Cardiology)', 'Cardiology', 'level-5 (OPD)', '09:00 AM - 5:00 PM ', 'SAT-THU', '09666710678', 'REZA12', 'reja@gmail.com', '123'),
(13, 'Dr. Tahera Nazrin ', 'MBBS(SSMC) DCH (BICH), FCPS (Paed)', 'Cardiology', 'level-5 (OPD)', '09:00 AM - 5:00 PM ', 'SAT-THU', '55037242', 'tahera12', 'tahera@gmail.com', '123'),
(16, 'Prof. Dr. Tamzeed Ahmed ', 'MBBS MRPC (UK)', 'Cardiology', 'level-5 (OPD)', '09:00 AM - 5:00 PM ', 'SAT-THU', '06666710678', 'ahmed12', 'ahmed@gmail.com', '123'),
(20, 'Dr. Abdu Ali ', 'MBBS ', 'Consultant,  Diabetes ', 'MUKTI ', '5.00PM - 9.00PM', 'SAT-THU', ' +880-2-9896165', 'abdu12', 'abdu@gmail.com', '123'),
(21, 'Dr. Zafar A. Latif ', 'MBBS MD (Cardiology)', 'Cardiology', 'Ibrahim General Hospital & DCEC - Dhanmondi ', '10.00AM - 1.00PM', 'SAT-THU', '+880-2- 9146357', 'latif12', 'latif@gmail.com', '123'),
(25, 'Dr. Indrajit Prasad ', 'MBBS, FCPS, MD, MACE ( USA ) ', 'Diabetes & Endocrine ', 'Labaid Specialized Hospital ', '4.00PM - 10.00PM', 'SAT-THU', '+ 880-2-8610', 'Indrajit12', 'Indrajit@gmail.com', '123'),
(26, 'Dr. Afsana Begum', 'MBBS, FCPS ', 'Medicine ', 'United Hospital Limited', '4 PM-8 PM ', 'SAT-THU', ' +880-2-8836000', 'Afsana12', 'Afsana @gmail.com', '123'),
(27, 'Dr. Anup Kumar Saha', ' MBBS, FCPS   ', '  Medicine ', 'Health & Hope Hospital Ltd.', '5 PM-9 PM  ', 'SAT-THU', '+880-2-8318135', ' Anup12', ' Anup@gmail.com', '123'),
(28, 'Abir Hossain', 'MBBS, DTCD, MD(Chest)', 'Medicine Specialist ', 'Medinova Medical Services ', '5 PM-11 PM  ', 'SAT-THU', ' +880-2-8333811-3', 'Abir12', 'Abir@gmail.com', '123'),
(30, 'Dr. Md. Anisur Rahman ', 'MBBS,FCPS ', 'Allergy', 'Popular Diagnostic Centre Ltd ', '5 PM-9 PM ', 'SAT-THU', ' 09613787801', 'Anisur12', 'Anisur@gmail.com', '123'),
(31, 'Dr. M A Masuda ', 'FCPS, MD ( Gastro ) ', 'Gastroenterology  ', 'Liver Foundation of Bangladesh ', '6 PM-10 PM ', 'SAT-THU', ' +880-2-9146537', 'Masuda12', 'Masuda@gmail.com', '123'),
(32, 'Dr. Md. Anisur Rahman ', 'MBBS,FCPS ', 'Orthopedic', 'Popular Diagnostic Centre Ltd ', '5 PM-9 PM ', 'SAT-THU', ' 09613787801', 'Anisur12', 'Anisur@gmail.com', '123'),
(33, 'Dr. Abu Reza Mohammad ', 'Internal Medicine', 'Orthopedic', '', '09:00 AM - 5:00 PM ', 'SAT-THU', ' +880-2-8159457', 'REZA123', 'Reza2@gmail.com', '123'),
(34, 'Dr. Anowar Kabir ', 'MBBS, MRCP, FRCP, FCGE ', 'Senior Consultant ', 'Apollo Hospitals Dhaka', '4 PM-8 PM ', 'SAT-THU', ' +880-2-84016618', 'Anowar12', 'Anowar@gmail.com', '123'),
(35, 'Dr. A.S.M.A  Raihan ', 'MBBS, MD (Gastro),  ', '  Gastroenterology  ', 'Popular Diagnostic Centre Ltd.', '3:00 PM - 8:00 PM  ', 'SAT-THU', '9613787801', 'Raihan12', 'Raihan@gmail.com', '123'),
(36, 'Dr. Md. Abdur Rahim Miah ', 'MBBS, MD', ' Gastroenterology) ', ' Japan Bangladesh Friendship Hospital', '5.30PM - 9.00PM', 'SAT-THU', ' +880-2-9672277', 'Miah12', 'Miah@gmail.com', '123'),
(37, 'Dr. Iqbal Murshed Kabir', 'MBBS, FCPS (Medicine) MD', 'Gastroenterology and Hepatology ', 'Apollo Hospitals Dhaka)', '09:00 AM - 5:00 PM ', 'SAT-THU', ' +880-2-8401661', 'Kabir12', 'Kabir@gmail.com', '123'),
(38, '(Dr.) Md. Fakhrul  Islam ', 'MBBS, MD (Cardiology)  ', 'Heart Failure Specialist ', ' LABAID CARDIAC HOSPITAL', '11 AM-1 PM ', 'SAT-THU', ' 8610793-8', 'Fakhrul12', 'Fakhrul@gmail.com', '123'),
(39, '(Dr.) Mohammad Safiuddin ', 'MB BS(Dhaka), MD(Cardiology)', 'Cardoiogy', 'Popular Medical College Hospital Consultation Cent', '5.00PM - 9.00PM', 'SAT-THU', '06666710678', 'Safiuddin12', 'Safiuddin @gmail.com', '123'),
(40, 'Dr. Abdullah-Al-Safia ', 'MBBS, D. Card, MD(Card), FACC, FSGC', 'Cardiology /Heart Specialist ', 'Popular Diagnostic Centre Ltd.', '11.00PM - 1.00PM', 'SAT-THU', '+8809 606 111 2228', 'Safia12', 'Safia @gmail.com', '123'),
(41, 'Dr. AKM Mosharraf Hossain ', 'MBBS, FCPS', 'Dermatologists ', 'LabAid Specialized Hospital', '2 PM-7 PM  ', 'SAT-THU', ' +880-2-9676356', 'Mosharraf12', 'Mosharraf@gmail.com', '123'),
(42, 'Dr. Syed Rezaul Huq', 'MBBS, FRCP,  ', 'Dermatologists', 'Aysha Memorial Specialised Hospital', '4 PM-8 PM ', 'SAT-THU', ' +880-2-9122689', ' Rezaul12', ' Rezaul@gmail.com', '123'),
(44, 'Dr. Md. Atiqur Rahman', 'MBBS (Dhaka), DTCD ', '  Infectious disease doctors  ', 'Lab-Aid Gulshand.', '5:00 PM - 10:00 PM  ', 'WED-MON', '+880-2-8835981-4', ' Atiqur12', ' Atiqur@gmail.com', '123'),
(45, 'Dr. A.T.M. Asaduzzaman', 'MBBS, MD ', 'Infectious disease doctors   ', 'Japan Bangladesh Friendship Hospital ', '7:30 PM-9:30 PM ', 'SUN-TUE', ' 9672277', ' Asaduzzaman12', ' Asaduzzaman@gmail.com', '123'),
(46, 'Dr. Abida Sultana ', 'MBBS (Dhaka), DDV  ', ' Infectious disease doctors', 'Bangabandhu Sheikh Mujib Medical University ', '6 PM-9 PM ', 'SAT-THU', '8951928', 'Abida12', 'Abida@gmail.com', '123'),
(47, 'Dr. Md. Anwarul Karim ', 'MBBS, DIH, DEM', 'Ophthalmologists ', 'Central Hospital.', '07:00 AM - 10:00 PM ', 'THU-SUN', ' 01819217631', 'Anwarul12', 'Anwarul@gmail.com', '123'),
(48, 'Dr. Md. Abdul Aziz ', 'MBBS, MRCP ', 'Ophthalmologists', ' Hematology Center', '9AM - 5PM ', 'SAT-THU', ' 01731 236255', 'Aziz12', ' Aziz@gmail.com', '123'),
(49, 'Prof. Dr. A H M Nazmul Tariqul Islam ', 'MBBS, FCPS ', ' Ophthalmologists', 'Green Life Hospital', '011:00 AM - 5:00 PM ', 'SUN-THU', '+880 9613 787801', 'Nazmul12', 'Nazmul @gmail.com', '123'),
(50, 'Dr. Md. Zahir Uddin', 'MBBS, FCPS ', 'Obstetrician/gynecologist  ', 'Popular Diagnostic Centre Ltd ', '10AM - 2PM ', 'SAT-THU', '+880 9613 787801', 'Zahir12', 'Zahir@gmail.com', '123'),
(51, 'Dr. Md. Faizul  Islam Chowdhury', 'MBBS, FCPS  ', 'Obstetrician/gynecologist ', 'Popular Diagnostic Centre Ltd ', '4:00 PM - 6:30 PM  ', 'SAT-THU', ' +880 9613 787801', 'Faizul12', 'Faizul@gmail.com', '123'),
(55, 'Dr. Kamal Sayed Ahmed  Chowdhury', 'MBBS FCPS  ', ' Obstetrician/gynecologist', 'Universal Medical College & Hospital Ltd. ', '5.00PM - 9.00PM', 'SAT-THU', ' 09 606 111 222', 'Sayed12', 'Sayed@gmail.com', '123'),
(56, 'Dr. Saroj Kant Sinha ', ' MBBS, MD ', '  Endocrinologists', 'Apollo Hospitals Dhaka', '05:30 PM - 09:00 PM ', 'SAT-THU', ' +880 1841276556', 'Saroj12', 'Saroj@gmail.com', '123'),
(57, 'Dr. Mohammad  Zohir Uddin ', 'MBBS, FCPS  ', 'Endocrinologists', 'Ibn Sina Diagnostic & Imaging Center ', '6 PM -9 PM ', 'SAT-THU', ' 9128835-7', 'Zohir12', 'Zohir@gmail.com', '123'),
(58, 'Dr. Md. Rafiqul Islam', 'MBBS', 'Endocrinologists', 'Labaid Hospital', '09:00 AM - 5:00 PM ', 'SAT-THU', '9012102', 'Rafiqul12', 'Rafiqul@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `donortbl`
--

CREATE TABLE `donortbl` (
  `did` int(255) NOT NULL,
  `dnrname` varchar(50) NOT NULL,
  `dnrphone` varchar(50) NOT NULL,
  `dnrbrgp` varchar(50) NOT NULL,
  `dnrcity` varchar(50) NOT NULL,
  `dnrarea` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donortbl`
--

INSERT INTO `donortbl` (`did`, `dnrname`, `dnrphone`, `dnrbrgp`, `dnrcity`, `dnrarea`) VALUES
(8, 'Jawad', '01707615220', 'A+', 'Dhaka', 'Shibchar'),
(10, 'rana islam', '0179019101', 'Ab+', 'Dhaka', 'Merul'),
(13, 'Akbar islam', '0169019101', 'A+', 'Khulna', 'jamalgong'),
(16, 'Ishan islam', '0189019101', 'A-', 'Faridpur', 'kaligong'),
(17, 'Babar Azam', '0167019101', 'O+', 'Dhaka', 'Dohar'),
(18, 'Abu Hok ', '0169019708', 'AB+', 'Dhaka', 'Nowabpur'),
(19, 'Jihad hasn', '0150569504', 'O-', 'Dhaka', 'Baridhara'),
(20, 'Kabir sing', '0189019101', 'A-', 'Faridpur', 'pathuriya'),
(21, 'Asiq dawan', '0169019101', 'A+', 'Jamalpur', 'Minabazar'),
(22, 'Rabbi Ahamed', '0158019101', 'O+', 'Dhaka', 'Dhanmondi-2'),
(24, 'Esmile islam', '0149019656', 'A-', 'Dhaka', 'kaligong'),
(25, 'Moktar islam', '0133919101', 'AB+', 'Khulna', 'kayettulli'),
(26, 'kasem siddik ', '0169779101', 'AB-', 'Dhaka', 'mirpur'),
(27, 'jihid hasn', '0183563101', 'O-', 'Dhaka', 'Romna'),
(28, 'hridoy mridha', '0149031911', 'AB-', 'Faridpur', 'kalkini'),
(33, 'Aritra', '01707615220', 'AB+', 'Dhaka', 'Banasree'),
(34, 'Jawad Islam', '017-02615220', 'B+', 'Dhaka', 'New Market'),
(35, 'Joy Matubber', '017-03415220', 'A+', 'Dhaka', 'Kuril'),
(37, 'Jesun', '017-07615220', 'A+', 'NY', 'southenmpton');

-- --------------------------------------------------------

--
-- Table structure for table `excdatatbl`
--

CREATE TABLE `excdatatbl` (
  `exedtaid` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `crnt_date` date NOT NULL,
  `inruncounter` int(100) NOT NULL,
  `outruncounter` int(100) NOT NULL,
  `cyclingcounter` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `excdatatbl`
--

INSERT INTO `excdatatbl` (`exedtaid`, `username`, `crnt_date`, `inruncounter`, `outruncounter`, `cyclingcounter`) VALUES
(2, 'jawad12', '2021-11-22', 3, 1, 4),
(4, 'jawad12', '2021-11-19', 5, 2, 5),
(5, 'jawad12', '2021-11-20', 3, 2, 3),
(6, 'jawad12', '2021-11-21', 1, 4, 1),
(7, 'jawad12', '2021-11-23', 3, 3, 10),
(8, 'jawad12', '2021-11-24', 0, 2, 0),
(9, 'ADS', '2021-11-27', 2, 2, 1),
(10, 'jawad12', '2021-11-27', 2, 3, 1),
(11, 'jawad12', '2021-11-29', 0, 2, 0),
(12, 'jawad12', '2021-12-09', 3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `heartratedatatbl`
--

CREATE TABLE `heartratedatatbl` (
  `heartratedataid` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `crnt_date` date NOT NULL,
  `heartrcount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `heartratedatatbl`
--

INSERT INTO `heartratedatatbl` (`heartratedataid`, `username`, `crnt_date`, `heartrcount`) VALUES
(4, 'jawad12', '2021-11-21', 70),
(5, 'jawad12', '2021-11-20', 70),
(6, 'jawad12', '2021-11-19', 78),
(7, 'jawad12', '2021-11-18', 83),
(8, 'jawad12', '2021-11-17', 70),
(9, 'jawad12', '2021-11-16', 72),
(10, 'jawad12', '2021-11-29', 75),
(11, 'jawad12', '2021-12-01', 64);

-- --------------------------------------------------------

--
-- Table structure for table `notificationtbl`
--

CREATE TABLE `notificationtbl` (
  `Notificationid` int(11) NOT NULL,
  `Msg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notificationtbl`
--

INSERT INTO `notificationtbl` (`Notificationid`, `Msg`) VALUES
(5, 'Take the Vaccine ASAP!');

-- --------------------------------------------------------

--
-- Table structure for table `patienttbl`
--

CREATE TABLE `patienttbl` (
  `pid` int(255) NOT NULL,
  `ptname` varchar(50) NOT NULL,
  `ptphone` varchar(50) NOT NULL,
  `ptgender` varchar(50) NOT NULL,
  `ptage` int(10) NOT NULL,
  `ptbgrp` varchar(10) NOT NULL,
  `ptusername` varchar(100) NOT NULL,
  `ptpass` varchar(100) NOT NULL,
  `ptuseremail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patienttbl`
--

INSERT INTO `patienttbl` (`pid`, `ptname`, `ptphone`, `ptgender`, `ptage`, `ptbgrp`, `ptusername`, `ptpass`, `ptuseremail`) VALUES
(38, 'MD.JAWDUL HASAN ', '017-07615220', 'Male', 21, 'AB+', 'JAWAD12', '123', 'JHJAWAD111@GMAIL.COM'),
(46, 'isHhan Islam', '017-07615220', 'Male', 12, 'A+', 'ADS', '1121212', 'a@gmail.com'),
(48, 'ishan Islam', '017-07615220', 'Male', 21, 'AB+', 'jaw232', '12131', 'a121@gmail.com'),
(49, 'ishan Islam', '017-07615220', 'Male', 21, 'AB+', 'ja1wad12', '123', 'jawad111@gmail.com'),
(51, 'ishan Islam', '017-07615220', 'Male', 21, 'AB+', 'Ishan23', '12345678', 'abf@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptiontbl`
--

CREATE TABLE `prescriptiontbl` (
  `prsid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `prescription` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Dtname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescriptiontbl`
--

INSERT INTO `prescriptiontbl` (`prsid`, `did`, `pid`, `prescription`, `Date`, `Dtname`) VALUES
(4, 11, 38, 'Fexo-120, Monas-10', '2021-10-24', 'Prof.Dr.AQM Reza '),
(5, 20, 38, 'Cef-3 250mg', '2021-10-23', 'Dr. Abdu Ali '),
(6, 11, 40, 'napa', '2021-10-05', 'Prof.Dr.AQM Reza '),
(7, 28, 38, 'fexo-Fast', '2021-12-22', 'Abir Hossain'),
(8, 28, 38, 'napa', '2021-12-07', 'Abir Hossain');

-- --------------------------------------------------------

--
-- Table structure for table `sleepdatatbl`
--

CREATE TABLE `sleepdatatbl` (
  `sleepdataid` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `crnt_date` date NOT NULL,
  `hrcounter` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sleepdatatbl`
--

INSERT INTO `sleepdatatbl` (`sleepdataid`, `username`, `crnt_date`, `hrcounter`) VALUES
(18, 'jawad12', '2021-11-17', 7),
(24, 'jawad12', '2021-11-16', 10),
(25, 'jh', '2021-11-18', 23),
(28, 'jawad12', '2021-11-03', 5),
(29, 'jawad12', '2021-11-04', 7),
(31, 'jawad12', '2021-11-06', 9),
(32, 'jawad12', '2021-11-07', 12),
(33, 'jawad12', '2021-11-08', 7),
(34, 'jawad12', '2021-11-09', 4),
(35, 'jawad12', '2021-11-10', 8),
(36, 'jawad12', '2021-11-18', 9),
(38, 'jawad12', '2021-11-22', 9),
(39, 'jawad12', '2021-11-29', 10),
(40, 'jawad12', '2021-11-30', 8),
(41, 'jawad12', '2021-12-01', 7),
(42, 'jawad12', '2021-12-08', 8),
(43, 'Ishan23', '2021-12-09', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profile_image`, `bio`) VALUES
(11, '1637303398-jh.jpg', 'ishan'),
(12, '1637303810-101779189_604676026810787_7502492715678957568_n.jpg', ''),
(13, '1637303816-AIUB_whole_logo.png', ''),
(14, '1637329973-101779189_604676026810787_7502492715678957568_n.jpg', 'ishan');

-- --------------------------------------------------------

--
-- Table structure for table `vaccinedatatbl`
--

CREATE TABLE `vaccinedatatbl` (
  `vcnid` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `vname` varchar(100) NOT NULL,
  `vdoses` int(100) NOT NULL,
  `vdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccinedatatbl`
--

INSERT INTO `vaccinedatatbl` (`vcnid`, `username`, `vname`, `vdoses`, `vdate`) VALUES
(10, 'jawad12', 'Polio', 1, '2007-12-31'),
(11, 'jawad12', 'Covid', 2, '2021-10-18'),
(12, 'jawad12', 'flue', 3, '2021-11-20'),
(15, 'jawad12', 'Jolatonko', 2, '2016-03-02');

-- --------------------------------------------------------

--
-- Table structure for table `waterdatatbl`
--

CREATE TABLE `waterdatatbl` (
  `waterdataid` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `crnt_date` date NOT NULL,
  `watercounter` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `waterdatatbl`
--

INSERT INTO `waterdatatbl` (`waterdataid`, `username`, `crnt_date`, `watercounter`) VALUES
(1, 'jawad12', '2021-11-21', 11),
(3, 'jawad12', '2021-11-22', 5),
(4, 'jawad12', '2021-11-23', 10),
(8, 'jawad12', '2021-11-29', 9);

-- --------------------------------------------------------

--
-- Table structure for table `weightdatatbl`
--

CREATE TABLE `weightdatatbl` (
  `weightdataid` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `crnt_date` date NOT NULL,
  `whtcounter` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weightdatatbl`
--

INSERT INTO `weightdatatbl` (`weightdataid`, `username`, `crnt_date`, `whtcounter`) VALUES
(2, 'jawad12', '2021-11-21', 64),
(3, 'jawad12', '2021-11-20', 64),
(4, 'jawad12', '2021-11-19', 64),
(5, 'jawad12', '2021-11-17', 65),
(6, 'jawad12', '2021-11-22', 43),
(8, 'jawad12', '2021-11-29', 62),
(9, 'jawad12', '2021-12-09', 64);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulancebooktbl`
--
ALTER TABLE `ambulancebooktbl`
  ADD PRIMARY KEY (`bookingid`);

--
-- Indexes for table `appointmenttbl`
--
ALTER TABLE `appointmenttbl`
  ADD PRIMARY KEY (`aptid`);

--
-- Indexes for table `doctortbl`
--
ALTER TABLE `doctortbl`
  ADD PRIMARY KEY (`dtid`);

--
-- Indexes for table `donortbl`
--
ALTER TABLE `donortbl`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `excdatatbl`
--
ALTER TABLE `excdatatbl`
  ADD PRIMARY KEY (`exedtaid`);

--
-- Indexes for table `heartratedatatbl`
--
ALTER TABLE `heartratedatatbl`
  ADD PRIMARY KEY (`heartratedataid`);

--
-- Indexes for table `notificationtbl`
--
ALTER TABLE `notificationtbl`
  ADD PRIMARY KEY (`Notificationid`);

--
-- Indexes for table `patienttbl`
--
ALTER TABLE `patienttbl`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `prescriptiontbl`
--
ALTER TABLE `prescriptiontbl`
  ADD PRIMARY KEY (`prsid`);

--
-- Indexes for table `sleepdatatbl`
--
ALTER TABLE `sleepdatatbl`
  ADD PRIMARY KEY (`sleepdataid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaccinedatatbl`
--
ALTER TABLE `vaccinedatatbl`
  ADD PRIMARY KEY (`vcnid`);

--
-- Indexes for table `waterdatatbl`
--
ALTER TABLE `waterdatatbl`
  ADD PRIMARY KEY (`waterdataid`);

--
-- Indexes for table `weightdatatbl`
--
ALTER TABLE `weightdatatbl`
  ADD PRIMARY KEY (`weightdataid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ambulancebooktbl`
--
ALTER TABLE `ambulancebooktbl`
  MODIFY `bookingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `appointmenttbl`
--
ALTER TABLE `appointmenttbl`
  MODIFY `aptid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `doctortbl`
--
ALTER TABLE `doctortbl`
  MODIFY `dtid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `donortbl`
--
ALTER TABLE `donortbl`
  MODIFY `did` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `excdatatbl`
--
ALTER TABLE `excdatatbl`
  MODIFY `exedtaid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `heartratedatatbl`
--
ALTER TABLE `heartratedatatbl`
  MODIFY `heartratedataid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `notificationtbl`
--
ALTER TABLE `notificationtbl`
  MODIFY `Notificationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patienttbl`
--
ALTER TABLE `patienttbl`
  MODIFY `pid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `prescriptiontbl`
--
ALTER TABLE `prescriptiontbl`
  MODIFY `prsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sleepdatatbl`
--
ALTER TABLE `sleepdatatbl`
  MODIFY `sleepdataid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vaccinedatatbl`
--
ALTER TABLE `vaccinedatatbl`
  MODIFY `vcnid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `waterdatatbl`
--
ALTER TABLE `waterdatatbl`
  MODIFY `waterdataid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `weightdatatbl`
--
ALTER TABLE `weightdatatbl`
  MODIFY `weightdataid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
