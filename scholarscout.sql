-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 07, 2026 at 05:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scholarscout`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password_hash`) VALUES
(1, 'Admin One', 'admin1@scholarscout.example.com', 'dummy_hash_admin1'),
(2, 'Admin Two', 'admin2@scholarscout.example.com', 'dummy_hash_admin2'),
(3, 'Admin Three', 'admin3@scholarscout.example.com', 'dummy_hash_admin3'),
(4, 'Admin Four', 'admin4@scholarscout.example.com', 'dummy_hash_admin4'),
(5, 'Admin Five', 'admin5@scholarscout.example.com', 'dummy_hash_admin5');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(5, 'EWS'),
(1, 'General'),
(2, 'OBC'),
(6, 'Other'),
(3, 'SC'),
(4, 'ST');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `gender_id` int(10) UNSIGNED NOT NULL,
  `gender_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`gender_id`, `gender_name`) VALUES
(2, 'Female'),
(1, 'Male'),
(3, 'Other'),
(5, 'Prefer not to say'),
(4, 'Transgender');

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `provider_id` int(10) UNSIGNED NOT NULL,
  `provider_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`provider_id`, `provider_name`, `email`, `password_hash`, `website`) VALUES
(1, 'National Education Trust', 'contact@nettrust.example.org', 'dummy_hash_prov1', 'https://nettrust.example.org'),
(2, 'Bright Future Foundation', 'info@brightfuture.example.org', 'dummy_hash_prov2', 'https://brightfuture.example.org'),
(3, 'State Merit Board', 'board@statemerit.example.gov', 'dummy_hash_prov3', 'https://statemerit.example.gov'),
(4, 'Tech Scholars Council', 'hello@techscholars.example.com', 'dummy_hash_prov4', 'https://techscholars.example.com'),
(5, 'Women in STEM Fund', 'team@womeninstem.example.org', 'dummy_hash_prov5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `saves`
--

CREATE TABLE `saves` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `scholarship_id` int(10) UNSIGNED NOT NULL,
  `saved_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saves`
--

INSERT INTO `saves` (`user_id`, `scholarship_id`, `saved_at`) VALUES
(1, 1, '2026-11-07 16:09:31'),
(1, 5, '2026-11-07 16:09:31'),
(2, 1, '2026-11-07 16:09:31'),
(2, 5, '2026-11-07 16:09:31'),
(3, 2, '2026-11-07 16:09:31'),
(4, 4, '2026-11-07 16:09:31'),
(5, 3, '2026-11-07 16:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `scholarship_id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(10) UNSIGNED NOT NULL,
  `approved_by` int(10) UNSIGNED DEFAULT NULL,
  `scholarship_name` varchar(200) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `max_income` decimal(12,2) DEFAULT NULL,
  `min_marks` decimal(5,2) DEFAULT NULL,
  `deadline` date NOT NULL,
  `education_level` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `apply_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('pending','approved','rejected','expired') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`scholarship_id`, `provider_id`, `approved_by`, `scholarship_name`, `amount`, `max_income`, `min_marks`, `deadline`, `education_level`, `description`, `apply_link`, `created_at`, `status`) VALUES
(1, 1, 1, 'Merit Excellence Scholarship', 50000.00, 500000.00, 85.00, '2027-03-31', 'Undergraduate', 'For high-scoring undergraduate students.', 'https://nettrust.example.org/merit', '2026-11-07 16:09:31', 'approved'),
(2, 2, 2, 'Bright Future Grant', 30000.00, 300000.00, 70.00, '2027-02-28', 'Undergraduate', 'Support for students from low-income families.', 'https://brightfuture.example.org/grant', '2026-11-07 16:09:31', 'approved'),
(3, 3, 1, 'State Topper Award', 25000.00, 400000.00, 90.00, '2027-01-15', 'Higher Secondary', 'Award for state-level toppers.', 'https://statemerit.example.gov/topper', '2026-11-07 16:09:31', 'approved'),
(4, 4, NULL, 'Tech Scholars Fellowship', 75000.00, 600000.00, 80.00, '2027-04-30', 'Postgraduate', 'Fellowship for postgraduate students in tech.', 'https://techscholars.example.com/apply', '2026-11-07 16:09:31', 'pending'),
(5, 5, 3, 'Women in STEM Scholarship', 60000.00, 450000.00, 75.00, '2027-05-20', 'Undergraduate', 'For women pursuing science and engineering.', 'https://womeninstem.example.org/apply', '2026-11-07 16:09:31', 'approved'),
(6, 2, 2, 'Skill Development Stipend', 15000.00, 250000.00, 60.00, '2026-12-31', 'Diploma', 'Stipend for diploma and vocational students.', 'https://brightfuture.example.org/skills', '2026-11-07 16:09:31', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_category`
--

CREATE TABLE `scholarship_category` (
  `scholarship_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scholarship_category`
--

INSERT INTO `scholarship_category` (`scholarship_id`, `category_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 1),
(4, 5),
(5, 1),
(5, 2),
(5, 3),
(6, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_gender`
--

CREATE TABLE `scholarship_gender` (
  `scholarship_id` int(10) UNSIGNED NOT NULL,
  `gender_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scholarship_gender`
--

INSERT INTO `scholarship_gender` (`scholarship_id`, `gender_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(4, 3),
(5, 2),
(5, 4),
(6, 1),
(6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_state`
--

CREATE TABLE `scholarship_state` (
  `scholarship_id` int(10) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scholarship_state`
--

INSERT INTO `scholarship_state` (`scholarship_id`, `state_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4),
(3, 1),
(4, 2),
(4, 5),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(6, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(10) UNSIGNED NOT NULL,
  `state_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(6, 'Andhra Pradesh'),
(7, 'Arunachal Pradesh'),
(8, 'Assam'),
(9, 'Bihar'),
(10, 'Chhattisgarh'),
(11, 'Goa'),
(5, 'Gujarat'),
(12, 'Haryana'),
(13, 'Himachal Pradesh'),
(14, 'Jharkhand'),
(15, 'Karnataka'),
(16, 'Kerala'),
(1, 'Madhya Pradesh'),
(2, 'Maharashtra'),
(17, 'Manipur'),
(18, 'Meghalaya'),
(19, 'Mizoram'),
(20, 'Nagaland'),
(21, 'Odisha'),
(29, 'Other'),
(22, 'Punjab'),
(4, 'Rajasthan'),
(23, 'Sikkim'),
(24, 'Tamil Nadu'),
(25, 'Telangana'),
(26, 'Tripura'),
(3, 'Uttar Pradesh'),
(27, 'Uttarakhand'),
(28, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `student_profile`
--

CREATE TABLE `student_profile` (
  `profile_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `gender_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `annual_income` decimal(12,2) DEFAULT NULL,
  `marks_percentage` decimal(5,2) DEFAULT NULL,
  `education_level` varchar(50) DEFAULT NULL
) ;

--
-- Dumping data for table `student_profile`
--

INSERT INTO `student_profile` (`profile_id`, `user_id`, `gender_id`, `category_id`, `state_id`, `annual_income`, `marks_percentage`, `education_level`) VALUES
(1, 1, 1, 1, 1, 450000.00, 88.50, 'Undergraduate'),
(2, 2, 2, 2, 2, 280000.00, 92.00, 'Undergraduate'),
(3, 3, 1, 3, 3, 150000.00, 76.40, 'Diploma'),
(4, 4, 2, 5, 1, 190000.00, 81.25, 'Postgraduate'),
(5, 5, 1, 4, 4, 120000.00, 69.80, 'Higher Secondary');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `name`, `email`, `password_hash`) VALUES
(1, 'user1', 'Aarav Sharma', 'aarav.sharma@example.com', 'dummy_hash_user1'),
(2, 'user2', 'Priya Verma', 'priya.verma@example.com', 'dummy_hash_user2'),
(3, 'user3', 'Rohan Patel', 'rohan.patel@example.com', 'dummy_hash_user3'),
(4, 'user4', 'Sneha Joshi', 'sneha.joshi@example.com', 'dummy_hash_user4'),
(5, 'user5', 'Imran Khan', 'imran.khan@example.com', 'dummy_hash_user5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `uq_admin_email` (`email`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `uq_category_name` (`category_name`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`gender_id`),
  ADD UNIQUE KEY `uq_gender_name` (`gender_name`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`provider_id`),
  ADD UNIQUE KEY `uq_provider_email` (`email`);

--
-- Indexes for table `saves`
--
ALTER TABLE `saves`
  ADD PRIMARY KEY (`user_id`,`scholarship_id`),
  ADD KEY `idx_saves_scholarship` (`scholarship_id`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`scholarship_id`),
  ADD KEY `idx_scholarship_status_deadline` (`status`,`deadline`),
  ADD KEY `fk_scholarship_provider` (`provider_id`),
  ADD KEY `fk_scholarship_admin` (`approved_by`);

--
-- Indexes for table `scholarship_category`
--
ALTER TABLE `scholarship_category`
  ADD PRIMARY KEY (`scholarship_id`,`category_id`),
  ADD KEY `idx_sc_category` (`category_id`);

--
-- Indexes for table `scholarship_gender`
--
ALTER TABLE `scholarship_gender`
  ADD PRIMARY KEY (`scholarship_id`,`gender_id`),
  ADD KEY `idx_sg_gender` (`gender_id`);

--
-- Indexes for table `scholarship_state`
--
ALTER TABLE `scholarship_state`
  ADD PRIMARY KEY (`scholarship_id`,`state_id`),
  ADD KEY `idx_ss_state` (`state_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`),
  ADD UNIQUE KEY `uq_state_name` (`state_name`);

--
-- Indexes for table `student_profile`
--
ALTER TABLE `student_profile`
  ADD PRIMARY KEY (`profile_id`),
  ADD UNIQUE KEY `uq_profile_user` (`user_id`),
  ADD KEY `fk_profile_gender` (`gender_id`),
  ADD KEY `fk_profile_category` (`category_id`),
  ADD KEY `fk_profile_state` (`state_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `uq_users_email` (`email`),
  ADD UNIQUE KEY `uq_users_username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `gender_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `provider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `scholarship`
--
ALTER TABLE `scholarship`
  MODIFY `scholarship_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `student_profile`
--
ALTER TABLE `student_profile`
  MODIFY `profile_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `saves`
--
ALTER TABLE `saves`
  ADD CONSTRAINT `fk_saves_scholarship` FOREIGN KEY (`scholarship_id`) REFERENCES `scholarship` (`scholarship_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_saves_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD CONSTRAINT `fk_scholarship_admin` FOREIGN KEY (`approved_by`) REFERENCES `admin` (`admin_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_scholarship_provider` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`provider_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scholarship_category`
--
ALTER TABLE `scholarship_category`
  ADD CONSTRAINT `fk_sc_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sc_scholarship` FOREIGN KEY (`scholarship_id`) REFERENCES `scholarship` (`scholarship_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scholarship_gender`
--
ALTER TABLE `scholarship_gender`
  ADD CONSTRAINT `fk_sg_gender` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sg_scholarship` FOREIGN KEY (`scholarship_id`) REFERENCES `scholarship` (`scholarship_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scholarship_state`
--
ALTER TABLE `scholarship_state`
  ADD CONSTRAINT `fk_ss_scholarship` FOREIGN KEY (`scholarship_id`) REFERENCES `scholarship` (`scholarship_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ss_state` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON UPDATE CASCADE;

--
-- Constraints for table `student_profile`
--
ALTER TABLE `student_profile`
  ADD CONSTRAINT `fk_profile_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_profile_gender` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_profile_state` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_profile_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
