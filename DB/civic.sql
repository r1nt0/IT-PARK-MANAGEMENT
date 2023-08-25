-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2023 at 03:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `civic`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bid` int(11) NOT NULL,
  `rentid` int(11) NOT NULL,
  `companyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bid`, `rentid`, `companyid`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `companyjob`
--

CREATE TABLE `companyjob` (
  `jobid` int(11) NOT NULL,
  `jobname` varchar(50) NOT NULL,
  `descr` varchar(100) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `companyjob`
--

INSERT INTO `companyjob` (`jobid`, `jobname`, `descr`, `qualification`, `experience`, `cid`) VALUES
(2, 'Share Point Developer', 'we want a share point developer', 'MCA', '0', 1),
(3, 'devop', 'adcdsfsaf', 'MCA', '2 years', 1),
(4, 'devop', 'adcdsfsaf', 'MCA', '2 years', 1),
(5, 'devop', 'adcdsfsaf', 'MCA', '2 years', 1),
(6, 'manager', 'figikhhlijli', 'MBA', '3', 5),
(7, 'developer', 'sfsdf', 'BCA', '5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `companyreg`
--

CREATE TABLE `companyreg` (
  `cid` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `companyreg`
--

INSERT INTO `companyreg` (`cid`, `cname`, `address`, `phone`, `email`, `password`, `status`) VALUES
(1, 'CCS', 'Infopark', '7412589630', 'ccs@gmail.com', '123', 1),
(5, 'GAILIN CONSULTANCY', 'AROOR NORTH', '221342444', 'pu@gmail.com', '123', 1),
(8, 'Innovature', 'IT assistance', '9090909090', 'inno@gmail,com', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_reg`
--

CREATE TABLE `employee_reg` (
  `empid` int(11) NOT NULL,
  `jobname` varchar(50) NOT NULL,
  `ename` varchar(50) NOT NULL,
  `adhar` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee_reg`
--

INSERT INTO `employee_reg` (`empid`, `jobname`, `ename`, `adhar`, `gender`, `phone`, `email`, `password`) VALUES
(3, 'Electrition', 'alan', '6766 8788 9877', 'Male', '9876777000', 'alan@gmail.com', '123'),
(11, 'Plumber', 'nikhil', '8787 9898 0000', 'Male', '8787878787', 'nik@gmail.com', '123'),
(12, 'Gardener', 'anna', '9890 0000 9898', 'Female', '9898956565', 'anna@gmail.com', '123'),
(13, 'Gardener', 'sarita', '8988 8888 8888', 'Female', '0907878766', 'sar@gmail.com', '123'),
(14, 'Plumber', 'vishnu', '0900 9900 3393', 'Male', '9090899090', 'vis@gmail.com', '123'),
(15, 'Gardener', 'joyal', '8788 9000 8888', 'Male', '7878676767', 'joyal@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `jobapply`
--

CREATE TABLE `jobapply` (
  `jid` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `resume` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jobapply`
--

INSERT INTO `jobapply` (`jid`, `jobid`, `sid`, `resume`) VALUES
(2, 2, 1, 'valid_documents_list.pdf'),
(3, 2, 2, 'PHP-X25.pdf'),
(4, 6, 2, 'PHP-X25.pdf'),
(5, 6, 2, 'PHP-X25.pdf'),
(6, 4, 2, 'PHP-X25.pdf'),
(7, 3, 1, 'DESIGN.pdf'),
(9, 6, 1, 'reciept.pdf'),
(10, 7, 7, 'fee.pdf'),
(11, 5, 7, 'syllabus.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `number` int(255) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`number`, `uname`, `pass`, `utype`) VALUES
(1, 'vishnu@gmail.com', '123', 'Student'),
(2, 'ccs@gmail.com', '123', 'Company'),
(3, 'admin@gmail.com', 'admin', 'Admin'),
(4, 'lcc@gmail.com', '123', 'Company'),
(5, 'soft@gmail.com', '123', 'Company'),
(6, 'vinod@gmail.com', '123', 'Employee'),
(7, 'vasu@gmail.com', '1234', 'Company'),
(8, 'joe@gmail.com', 'joe', 'Employee'),
(9, 'pu@gmail.com', '123', 'Company'),
(10, 'kar@gmail.com', '123', 'Student'),
(11, 'stas@gmail.com', '123', 'Company'),
(12, 'alan@gmail.com', '123', 'Employee'),
(14, 'joyel@gmail.com', '123', 'Student'),
(15, 'ananthu@gmail.com', '123', 'Student'),
(16, 'black@gmail.com', '123', 'Company'),
(17, 'joe@gmail.com', '12345', 'Employee'),
(20, 'anju@gmail.com', '123', 'Employee'),
(21, 'chgchgc', '123', 'Employee'),
(22, 'inno@gmail,com', '123', 'Company'),
(23, 'john@gmail.com', '123', 'Employee'),
(24, 'ami@gmail.com', '123', 'Employee'),
(25, 'nik@gmail.com', '123', 'Employee'),
(26, 'anna@gmail.com', '123', 'Employee'),
(27, 'sar@gmail.com', '123', 'Employee'),
(28, 'trdtrs@gmail.com', '123', 'Company'),
(29, 'ajdf@gmail.com', '123', 'Company'),
(30, 'vis@gmail.com', '123', 'Employee'),
(31, 'joyal@gmail.com', '123', 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `mid` int(11) NOT NULL,
  `compid` int(11) NOT NULL,
  `maintenance` varchar(50) NOT NULL,
  `descr` varchar(100) NOT NULL,
  `budget` varchar(50) NOT NULL,
  `completiondate` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`mid`, `compid`, `maintenance`, `descr`, `budget`, `completiondate`, `status`) VALUES
(2, 0, 'electrition', 'vjcjhgcgcgc', '3000', '2023-06-02', '0'),
(3, 1, 'plumber', 'jgjgjbjb', '5666', '2222-04-08', 'Completed'),
(4, 5, 'gardener', 'jbkbbjb', '4000', '2023-02-04', 'Alloted'),
(6, 1, 'gardener', 'gagfgf', '5333', '2023-03-31', 'Alloted'),
(7, 1, 'plumber', 'lbkbb', '3200', '2023-04-02', 'Alloted'),
(8, 1, 'electrition', 'vvvhjvj', '6700', '2023-03-30', 'Rejected'),
(9, 1, 'tile', 'kvkjvh', '4000', '2023-03-23', 'Alloted'),
(10, 1, 'gardener', 'kjbbk', '900', '2023-03-30', 'Alloted'),
(11, 1, 'plumber', 'vkvkv', '8000', '2023-03-29', 'Alloted'),
(12, 1, 'a', 'to light our third floor', '4000', '2023-03-29', 'Rejected'),
(13, 1, 'a', 'we want', '8000', '2023-04-06', 'Rejected'),
(14, 1, 'Electrition', 'jjjj', '3000', '2023-03-31', 'Alloted'),
(15, 1, 'Plumber', 'work at thrid floor', '1200', '2023-04-08', 'Alloted'),
(16, 1, 'Tile', 'We want to change all the tiles in our floor', '25000', '2019-08-30', 'Alloted');

-- --------------------------------------------------------

--
-- Table structure for table `rent_request`
--

CREATE TABLE `rent_request` (
  `rentreqid` int(11) NOT NULL,
  `rentid` int(11) NOT NULL,
  `companyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rent_request`
--

INSERT INTO `rent_request` (`rentreqid`, `rentid`, `companyid`) VALUES
(4, 1, 2),
(6, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rent_space`
--

CREATE TABLE `rent_space` (
  `rentid` int(11) NOT NULL,
  `compid` int(11) NOT NULL,
  `space` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rent_space`
--

INSERT INTO `rent_space` (`rentid`, `compid`, `space`, `amount`, `status`) VALUES
(1, 1, '900', 25500, '1');

-- --------------------------------------------------------

--
-- Table structure for table `studentreg`
--

CREATE TABLE `studentreg` (
  `sid` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `house` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `passout` int(11) NOT NULL,
  `workexp` int(11) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `studentreg`
--

INSERT INTO `studentreg` (`sid`, `sname`, `house`, `district`, `location`, `phone`, `email`, `qualification`, `passout`, `workexp`, `password`) VALUES
(1, 'Vishnu', 'LCC', 'Ernakulam', 'Menaka', '7418529630', 'vishnu@gmail.com', 'MCA', 2017, 0, '123'),
(2, 'Karthik', 'ppppp', 'ernankulam', 'palluruthi', '2321313133', 'kar@gmail.com', 'MCA', 2023, 0, '123'),
(7, 'joyel', 'kakoth', 'ernankulam', 'kerala', '13445588', 'joyel@gmail.com', 'MBA', 2022, 3, '123'),
(12, 'ananthu', 'kakoth', 'kottayam', 'kerala', '+13445588555', 'ananthu@gmail.com', 'MBA', 2021, 2, '123');

-- --------------------------------------------------------

--
-- Table structure for table `work_allotment`
--

CREATE TABLE `work_allotment` (
  `wid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `eid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `work_allotment`
--

INSERT INTO `work_allotment` (`wid`, `mid`, `eid`) VALUES
(1, 1, 1),
(2, 3, 0),
(3, 4, 0),
(4, 6, 0),
(5, 6, 0),
(6, 6, 0),
(7, 7, 0),
(8, 9, 0),
(9, 10, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `companyjob`
--
ALTER TABLE `companyjob`
  ADD PRIMARY KEY (`jobid`);

--
-- Indexes for table `companyreg`
--
ALTER TABLE `companyreg`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `employee_reg`
--
ALTER TABLE `employee_reg`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `jobapply`
--
ALTER TABLE `jobapply`
  ADD PRIMARY KEY (`jid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `rent_request`
--
ALTER TABLE `rent_request`
  ADD PRIMARY KEY (`rentreqid`);

--
-- Indexes for table `rent_space`
--
ALTER TABLE `rent_space`
  ADD PRIMARY KEY (`rentid`);

--
-- Indexes for table `studentreg`
--
ALTER TABLE `studentreg`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `work_allotment`
--
ALTER TABLE `work_allotment`
  ADD PRIMARY KEY (`wid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companyjob`
--
ALTER TABLE `companyjob`
  MODIFY `jobid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `companyreg`
--
ALTER TABLE `companyreg`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee_reg`
--
ALTER TABLE `employee_reg`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jobapply`
--
ALTER TABLE `jobapply`
  MODIFY `jid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `number` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rent_request`
--
ALTER TABLE `rent_request`
  MODIFY `rentreqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rent_space`
--
ALTER TABLE `rent_space`
  MODIFY `rentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `studentreg`
--
ALTER TABLE `studentreg`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `work_allotment`
--
ALTER TABLE `work_allotment`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
