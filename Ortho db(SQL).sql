-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2024 at 12:32 PM
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
-- Database: `ortho1`
--

-- --------------------------------------------------------

--
-- Table structure for table `addtask`
--

CREATE TABLE `addtask` (
  `s_no` int(11) NOT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `selected_titles` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addtask`
--

INSERT INTO `addtask` (`s_no`, `patient_id`, `selected_titles`) VALUES
(34, 'pat1', '[\"knee\",\"elbow\",\"shoulder\"]'),
(35, 'pat2', '[\"raghu\",\"Ortho Knee Advance\",\"Elamaran\"]'),
(36, 'pat3', '[\"knee\",\"juji\",\"bat\"]'),
(37, 'pat4', '[\"knee\",\"elbow\",\"appe\"]'),
(38, 'patp1', '[\"Elamaran\"]'),
(39, 'pat5', '[\"knee\",\"elbow\",\"appe\",\"bat\"]'),
(40, 'patient11', '[\"Ortho Knee Advance\",\"raghu\"]'),
(41, 'pat9', '[\"Ortho Knee Advance\",\"raghu\"]'),
(42, '1', '[\"Elamaran\"]'),
(43, 's123', '[\"Side plank\",\"Side SLR\",\"Single Dead Lift\"]'),
(44, 'mahi12', '[\"Step up '),
(45, 'xx', '[\"Side SLR\",\"Side plank\",\"Single Dead Lift\",\"Step up & down\"]'),
(46, '65665', '[\"Ankle pumps\",\"Prone SLR\",\"Side SLR\",\"Side plank\"]'),
(47, 'pat6', '[\"Prone SLR\", \"Side SLR\"]'),
(48, 'E123', '[\"Ankle pumps\", \"Front Plank\", \"Prone SLR\"]');

-- --------------------------------------------------------

--
-- Table structure for table `doc_det`
--

CREATE TABLE `doc_det` (
  `doc_id` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `doc_name` varchar(50) NOT NULL,
  `doc_gender` varchar(20) NOT NULL,
  `doc_age` varchar(20) NOT NULL,
  `doc_contact` varchar(20) NOT NULL,
  `doc_mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doc_det`
--

INSERT INTO `doc_det` (`doc_id`, `pass`, `doc_name`, `doc_gender`, `doc_age`, `doc_contact`, `doc_mail`) VALUES
('doc1', 'docp1', 'Elamaran', 'Male', '24', '989898989', 'elamaran@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `dotask`
--

CREATE TABLE `dotask` (
  `id` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `task` varchar(200) NOT NULL,
  `result` int(11) NOT NULL,
  `feedback` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dotask`
--

INSERT INTO `dotask` (`id`, `date`, `task`, `result`, `feedback`) VALUES
('pat1', '2024-02-22', '40', 0, ''),
('pat1', '2024-02-25', 'ghufhe', 40, 'kjirng hgfurhgu'),
('pat1', '2024-02-25', '', 0, ''),
('', '0000-00-00', '', 0, ''),
('pat1', '2024-02-25', 'ghufhe', 40, 'kjirng hgfurhgu'),
('pat2', '2024-02-28', 'ghufhe', 55, 'good'),
('', '0000-00-00', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `s_no` int(11) NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`s_no`, `id`, `image`) VALUES
(1, 'pat2', 'image/Screenshot 2024-01-27 114542.png'),
(2, 'krishn', 'image/Nitro_Wallpaper_01_3840x2400.jpg'),
(3, 'pat4', 'image/Nitro_Wallpaper_03_3840x2400.jpg'),
(4, 'pat4', 'image/Nitro_Wallpaper_02_3840x2400.jpg'),
(5, 'pat4', 'image/Nitro_Wallpaper_02_3840x2400.jpg'),
(6, 'pat4', 'image/Nitro_Wallpaper_02_3840x2400.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `patienttask`
--

CREATE TABLE `patienttask` (
  `s_no` int(11) NOT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `selected_titles` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patienttask`
--

INSERT INTO `patienttask` (`s_no`, `patient_id`, `selected_titles`, `date`, `feedback`) VALUES
(2, 'pat1', '[\"knee\",\"elbow\",\"appe\"]', '2024-02-19', 'nouyervbybvbhviyg5yhbrunvuhvywgyvbwrunvuwhvyg3bvwnruhuvgybvnernu'),
(3, 'pat1', '[\"knee\",\"elbow\",\"appe\"]', '2024-02-20', 'maran\n'),
(4, 'pat1', '[\"knee\",\"elbow\",\"appe\"]', '2024-02-22', 'maran\nhjh'),
(6, 'pat2', '[\"knee\",\"elbow\",\"appe\"]', '2024-02-22', 'buiaebuvggfeygeubadygvyuofewyvyveysyufweyvyy3vl6igwbvyigwygyvbybrybd'),
(7, 'pat3', '[\"knee\",\"elbow\",\"appe\"]', '2024-02-22', 'hchjeduhcnedwhuicn'),
(8, 'pat3', '[\"knee\",\"elbow\",\"appe\"]', '2024-02-24', 'hchjeduhcnedwhuicn'),
(9, 'pat1', '[\"knee\", \"elbow\"]', '2024-02-24', 'The excessive is not easy'),
(10, 'pat1', '[\"knee\", \"elbow\", \"shoulder\"]', '2024-02-27', 'completed\n'),
(11, 'patp1', '[\"Elamaran\"]', '2024-02-28', 'Easy to do these exercises and make new videos for better improvement\n'),
(12, 'pat1', '[\"shoulder\"]', '2024-02-28', 'Very difficult to do these exercises\n'),
(13, '1', '[\"Elamaran\"]', '2024-02-28', '1'),
(14, 's123', '[\"Zoro Knee Advanve\"]', '2024-02-28', 'it’s good video my pain is much better'),
(15, 'pat1', '[\"knee\",\"shoulder\"]', '2024-03-28', 'hshsjs'),
(16, 'patp1', '[\"Elamaran\"]', '2024-03-28', 'sss'),
(17, 's123', '[\"Side SLR\",\"Side plank\"]', '2024-03-30', 'completed tasks'),
(18, 's123', '[\"Side SLR\"]', '2024-04-01', 'xxf'),
(19, 's123', '[]', '2024-04-02', 'Enter Any Comments'),
(20, 'pat6', '[\"Side SLR\", \"Prone SLR\"]', '2024-04-23', 'Completed'),
(21, 's123', '[\"Straight leg raise\", \"Step up ', '2024-04-23', 'Welcome sir'),
(22, 's123', '[]', '2024-05-09', 'Enter Any Comments'),
(23, 'E123', '[\"Ankle pumps\", \"Front Plank\", \"Prone SLR\"]', '2024-05-09', 'Completed All the tasks');

-- --------------------------------------------------------

--
-- Table structure for table `pat_details`
--

CREATE TABLE `pat_details` (
  `pat_id` varchar(20) NOT NULL,
  `pat_pass` varchar(10) NOT NULL,
  `pat_name` varchar(50) NOT NULL,
  `pat_contact` varchar(20) NOT NULL,
  `pat_age` varchar(20) NOT NULL,
  `pat_gender` varchar(20) NOT NULL,
  `pat_height` varchar(20) NOT NULL,
  `pat_weight` varchar(20) NOT NULL,
  `pat_dos` date NOT NULL,
  `weight_to_carry` varchar(200) NOT NULL,
  `dp` varchar(300) NOT NULL DEFAULT 'image/dflt.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pat_details`
--

INSERT INTO `pat_details` (`pat_id`, `pat_pass`, `pat_name`, `pat_contact`, `pat_age`, `pat_gender`, `pat_height`, `pat_weight`, `pat_dos`, `weight_to_carry`, `dp`) VALUES
('A1234', '1234', 'Ajay', '9876542130', '26', 'Male', '5.6', '55', '2024-02-12', '', 'image/B0CD9890-3214-4506-B36E-F443701BC590.jpg'),
('E123', 'E123', 'Elamaran iOS', '9874561230', '26', 'Male', '6', '60', '1111-12-11', '', 'image/dflt.png'),
('K1234', '1234', 'Krishna sai', '7894561232', '22', 'Male', '5.5', '75', '2024-01-10', '', 'image/5FE4C259-9AD4-4E87-A854-1EBA0C0498FB.jpg'),
('M1234', '1234', 'Mohith', '123456789', '28', 'male', '6', '70', '2023-01-09', '', 'image/1711691715.jpg'),
('M12345', '2345', 'Mahi', '4567891230', '29', 'Male', '4.9', '59', '2024-03-15', '', 'image/1711600192.jpg'),
('O6789', '6789', 'omkar', '95582256478', '22', 'male', '5', '55', '1111-04-25', '', 'image/1714930513.jpg'),
('p1234', '1234', 'purandhar', '61649646', '24', 'male', '6', '60', '1111-12-01', '', 'image/1712892914.jpg'),
('p1563', '1563', 'Sumanth', '1234567890', '21', 'male', '4.8', '60', '2024-02-18', '', 'image/1712892402.jpg'),
('patient', 'ient', 'pat', '2548', '21', 'nale', '12', '', '1111-12-12', '', 'image/1711617297.jpg'),
('patp1', 'atp1', 'Elamaran G', '9879879877', '25', 'male', '6.4', '72', '2024-02-10', '10 Kg', 'image/AAC2F6D0-6D08-40AA-AAD0-DCD476DB593C.jpg'),
('s123', 's123', 'sarada', '65558', '55', 'female', '5', '56', '1111-11-12', '1 Kg', 'image/1710779933.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pat_task`
--

CREATE TABLE `pat_task` (
  `pat_id` varchar(20) NOT NULL,
  `task_id` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `feedback` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pat_task`
--

INSERT INTO `pat_task` (`pat_id`, `task_id`, `status`, `date_time`, `feedback`) VALUES
('002', '01', 0, '0000-00-00 00:00:00', ''),
('002', '02', 0, '2024-01-25 21:38:45', ''),
('002', '02', 0, '2024-01-27 08:46:11', ''),
('002', '02', 0, '2024-01-27 08:46:55', ''),
('002', '02', 1, '2024-01-27 08:48:04', ''),
('002', '002', 3, '2024-01-27 09:08:48', ''),
('', '', 0, '2024-01-29 14:31:21', ''),
('', '', 0, '2024-01-29 14:33:17', ''),
('pat22345678', '01', 0, '2024-01-31 14:46:59', ''),
('pat22345678', '01', 0, '2024-01-31 14:47:35', '');

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `s_no` int(11) NOT NULL,
  `patient_id` varchar(20) NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `result` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`s_no`, `patient_id`, `date`, `result`) VALUES
(15, 'pat2', '2024-01-24 00:00:00.000000', '20'),
(16, 'pat1', '2024-02-23 00:00:00.000000', '56'),
(17, 'pat2', '2024-02-23 00:00:00.000000', '58'),
(18, 'pat4', '2024-02-24 00:00:00.000000', '58'),
(19, 'pat6', '2024-02-24 00:00:00.000000', '80'),
(20, 'pat1', '2024-02-24 00:00:00.000000', '55'),
(21, 'pat1', '2024-02-27 00:00:00.000000', '97'),
(22, 'patp1', '2024-02-28 00:00:00.000000', '97'),
(24, 'pat1', '2024-02-28 00:00:00.000000', '1'),
(25, '1', '2024-02-28 00:00:00.000000', '1'),
(26, 's123', '2024-02-28 00:00:00.000000', '58'),
(27, 'pat1', '2024-03-21 00:00:00.000000', '0'),
(28, '65665', '2024-03-29 00:00:00.000000', '56'),
(29, 's123', '2024-03-30 00:00:00.000000', '0'),
(30, 's123', '2024-04-23 00:00:00.000000', '5'),
(31, 'E123', '2024-05-09 00:00:00.000000', '75');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `task_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_id`, `task_name`) VALUES
(32, 'Ankle pumps'),
(33, 'Front Plank'),
(34, 'Prone SLR'),
(35, 'Side SLR'),
(36, 'Side plank'),
(37, 'Single Dead Lift'),
(38, 'Step up & down'),
(39, 'Straight leg raise'),
(40, 'Half squat');

-- --------------------------------------------------------

--
-- Table structure for table `video_data`
--

CREATE TABLE `video_data` (
  `s_no` int(11) NOT NULL,
  `video_path` varchar(255) NOT NULL,
  `video_title` varchar(255) NOT NULL,
  `video_description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video_data`
--

INSERT INTO `video_data` (`s_no`, `video_path`, `video_title`, `video_description`) VALUES
(61, 'vid/Ankle Pumps.mp4', 'Ankle pumps', 'In supine lying or long sitting position ask patient to move his ankle up & down till pain free range without bending knees.'),
(62, 'vid/Front Plank.mp4', 'Front Plank', 'lying on bothelbow with face down, tighten core muscles and maintain this position for some time. Lying on elbow in one side and maintain this position.\n'),
(63, 'vid/Prone SLR.mp4', 'Prone SLR', 'In prone lying position, keep pillow under feet and instruct patient to make straighten the knee and bring it down.'),
(64, 'vid/Side Leg Raise.mp4', 'Side SLR', 'In side lying position, ask the patient to tighten knee and ankle, lift it up and down with brace on. Patient should use gluteal muscles.'),
(65, 'vid/Side plank.mp4', 'Side plank', 'lying on bothelbow with face down, tighten core muscles and maintain this position for some time. Lying on elbow in one side and maintain this position.'),
(66, 'vid/Single Dead lift.mp4', 'Single Dead Lift', 'Single leg standing with holding weight on hand, bend forward and keep leg straight then progress with weights'),
(67, 'vid/Step up & down.mp4', 'Step up & down', 'Stand in front of box or stepper;start climbing up with one leg then climbing down with same leg, repeat this to other leg also, start with slowly then increase the speed.'),
(68, 'vid/Straight Leg Raise.mp4', 'Straight leg raise', 'In supine lying position, ask the patient to tighten knee and ankle, lift it up and down with brace on. Patient should use thigh muscles instead of abdominals'),
(69, 'vid/B6FA6361-76BF-46F0-840B-2747214BD766.mov', 'Half squat', 'In standing position, feet width apart\nand arms stretched forward, bring\nyour hip down');

-- --------------------------------------------------------

--
-- Table structure for table `weightsave`
--

CREATE TABLE `weightsave` (
  `s.no` int(11) NOT NULL,
  `pat_id` varchar(255) DEFAULT NULL,
  `weight` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weightsave`
--

INSERT INTO `weightsave` (`s.no`, `pat_id`, `weight`) VALUES
(1, 'patient11', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addtask`
--
ALTER TABLE `addtask`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `doc_det`
--
ALTER TABLE `doc_det`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `patienttask`
--
ALTER TABLE `patienttask`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `pat_details`
--
ALTER TABLE `pat_details`
  ADD PRIMARY KEY (`pat_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `video_data`
--
ALTER TABLE `video_data`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `weightsave`
--
ALTER TABLE `weightsave`
  ADD PRIMARY KEY (`s.no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addtask`
--
ALTER TABLE `addtask`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patienttask`
--
ALTER TABLE `patienttask`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `video_data`
--
ALTER TABLE `video_data`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `weightsave`
--
ALTER TABLE `weightsave`
  MODIFY `s.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
