-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2023 at 07:43 PM
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
-- Database: `qldoantn`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `faculty_id` int(10) NOT NULL,
  `course_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `faculty_id`, `course_id`) VALUES
(1, 'HT22', 1, 2),
(2, 'HT23', 8, 3),
(3, 'DH8QM1', 1, 1),
(4, 'DH9C1', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` varchar(50) DEFAULT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `time`, `note`) VALUES
(1, 'HTTT', '2018-2022', 'Hệ thống thông tin'),
(2, 'TMDT', '2019-2023', 'Thương Mại Điện Tử\r\n'),
(3, 'KT', '2020-2025', 'Kinh Tế');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `birthday` varchar(50) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `code`, `name`, `phone`, `birthday`, `note`) VALUES
(1, 'CNTT', 'Công nghệ thông tin', '0972103238', '1111-11-11', ''),
(5, '12', 'Kinh tế', '12', '2111-12-12', '12'),
(8, 'KTVT', 'Kinh tế vận tải', '03365697', '2003-11-23', ''),
(10, 'CK', 'Cơ khí', '033652214', '1990-11-11', 'Khoa cơ khí');

-- --------------------------------------------------------

--
-- Table structure for table `hoidong`
--

CREATE TABLE `hoidong` (
  `id` int(11) NOT NULL,
  `tenhoidong` varchar(50) NOT NULL,
  `teachers` varchar(50) NOT NULL,
  `falcuty` varchar(50) NOT NULL,
  `ghichu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `avatar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `fullname`, `avatar`) VALUES
(1, 'test', 'd0521106f6ba7f9ac0a7370fb28d0ec6', 'trưởng khoa', 'mai1.jpg'),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', ''),
(5, 'admin1', '14e1b600b1fd579f47433b88e8d85291', 'Mai', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `code_project` varchar(50) NOT NULL,
  `point` int(11) NOT NULL,
  `linkdownload` varchar(100) DEFAULT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `title`, `content`, `student_id`, `teacher_id`, `code_project`, `point`, `linkdownload`, `file`) VALUES
(1, 'Quản lý thời trang nữ', '', 2, 3, 'ĐA01', 10, 'https://github.com/locdybala/bandienmay.git', 'FTU_Gioi thieu - Chuong 1.PDF'),
(2, 'Quản lý đồ án', '', 2, 3, '1212', 9, 'https://www.google.com.vn/drive/about.html', ''),
(5, 'Quản lí SV', '', 2, 3, 'ĐA03', 9, 'https://www.google.com/search?q=running+man+vietsub+ep+673&sca_esv=568507283&sxsrf=AM9HkKnKR8zfiBNVI', 'FTU_Gioi thieu - Chuong 1.PDF');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `birthday` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `code`, `name`, `birthday`, `email`, `phone`, `address`, `class_id`) VALUES
(2, '20051', 'Nguyễn Thị Thanh Mai', '1111-11-20', '0111@gmail.com', 366280440, '11112312', 1),
(6, '20052', 'Nguyễn Thị Mai', '1995-11-23', 'mai@gmail.com', 336572367, 'BN', 1),
(7, '20053', 'Nguyễn Văn A', '2003-12-26', 'email@email.com', 325631456, 'Hà Nội', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `birthday` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `faculty_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `birthday`, `phone`, `address`, `email`, `avatar`, `faculty_id`) VALUES
(1, 'Nguyễn Thị Thanh Mai', '1995-11-23', '12312312', '111222', '11112312', 'mai1.jpg', 5),
(2, 'ManageUseronPhalcon', '1111-11-11', '11111', '123124', 'locdz2000@gmail.com', 'image_2022_08_01T04_32_09_527Z.png', 3),
(3, 'Bùi Thị Xuân Hương', '1995-01-25', '0366280440', 'Hà Nội', 'locdybala11@gmail.com', 'z4422484803180_6b0ad24abd6579923bf84b17aa93071c.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoidong`
--
ALTER TABLE `hoidong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hoidong`
--
ALTER TABLE `hoidong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
