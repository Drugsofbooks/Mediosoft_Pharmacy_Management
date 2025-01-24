-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2025 at 06:54 PM
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
-- Database: `mediosoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_subject` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `contact_subject`, `email`, `message`, `created_at`) VALUES
(1, 'Saiful', 'Need Help', 'saiful@gmail.com', 'please contact', '2025-01-18 09:47:06'),
(2, 'Saiful', 'Need Help', 'saiful@gmail.com', 'please contact', '2025-01-18 09:47:10'),
(3, 'Saiful', 'Need Help', 'saiful@gmail.com', 'please contact', '2025-01-18 09:47:14'),
(4, 'Saiful', 'Need Help', 'saiful@gmail.com', 'please contact', '2025-01-18 09:47:18'),
(5, 'Saiful', 'Need Help', 'saiful@gmail.com', 'please contact', '2025-01-18 09:47:21'),
(6, 'Saiful', 'Need Help', 'saiful@gmail.com', 'please contact', '2025-01-18 09:47:25'),
(7, 'Saiful', 'Need Help', 'saiful@gmail.com', 'please contact', '2025-01-18 09:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `live_chats`
--

CREATE TABLE `live_chats` (
  `id` int(11) NOT NULL,
  `chat_subject` varchar(255) NOT NULL,
  `chat_message` text NOT NULL,
  `chat_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `live_chats`
--

INSERT INTO `live_chats` (`id`, `chat_subject`, `chat_message`, `chat_by`, `created_at`, `updated_at`) VALUES
(1, 'help', 'hiii how are you', 2, '2025-01-18 09:54:43', '2025-01-18 09:54:43'),
(2, 'die', 'i want to see you.', 2, '2025-01-18 09:59:27', '2025-01-18 09:59:27'),
(3, 'hi', 'hii', 7, '2025-01-19 14:48:54', '2025-01-19 14:48:54'),
(4, 'eugsbuhvbfjsh', 'gbnishfighigehd', 7, '2025-01-19 20:07:15', '2025-01-19 20:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `medicine_title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_id` int(25) NOT NULL,
  `company_id` int(25) NOT NULL,
  `medicine_price` decimal(25,0) NOT NULL,
  `medicine_quanity` int(25) NOT NULL,
  `added_by` int(25) NOT NULL,
  `manufacturing_date` date NOT NULL,
  `expire_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `image_url`, `medicine_title`, `description`, `category_id`, `company_id`, `medicine_price`, `medicine_quanity`, `added_by`, `manufacturing_date`, `expire_date`) VALUES
(1, '../assets/image/medicines/napa_extra.jpeg', 'Napa Extra 500mg 1 Box', 'lore ipsum', 2, 1, 50, 20, 3, '2023-11-23', '2013-10-23'),
(2, '../assets/image/medicines/xeldrin_tablet.png', 'Xeldrin 500mg 1 Box', 'lorem ipsum', 1, 2, 56, 20, 3, '2023-11-23', '2013-10-23'),
(7, '../assets/image/medicines/medicine_tablet.jpg', 'Ampicillin 400mg 1 Box', 'Ampicillin is a good medicine', 1, 2, 500, 15, 1, '2023-11-30', '2023-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `medicines_category`
--

CREATE TABLE `medicines_category` (
  `id` int(11) NOT NULL,
  `category_title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `added_by` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicines_category`
--

INSERT INTO `medicines_category` (`id`, `category_title`, `description`, `added_by`) VALUES
(1, 'Analgesics', 'lorem ipsum', 1),
(2, 'Antibacterials', 'Antibacterials is category', 1);

-- --------------------------------------------------------

--
-- Table structure for table `medicines_company`
--

CREATE TABLE `medicines_company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `added_by` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicines_company`
--

INSERT INTO `medicines_company` (`id`, `company_name`, `description`, `added_by`) VALUES
(1, 'ACI', 'ACI is a company name', 1),
(2, 'Chemist', 'Chemist is a company name', 1),
(4, 'Square', 'sqaure is good company', 1);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_requests`
--

CREATE TABLE `medicine_requests` (
  `id` int(11) NOT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `medicine_category` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `medicine_country` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `chat_id`, `sender_id`, `message`, `created_at`) VALUES
(1, 1, 6, 'i am fine\n', '2025-01-18 10:04:01'),
(2, 3, 7, 'hlw', '2025-01-19 14:49:04'),
(3, 1, 6, 'wihfigfiuys', '2025-01-19 15:54:27'),
(4, 3, 7, 'hlllllllllllllllllllllllllllllllllll', '2025-01-19 15:55:06'),
(5, 3, 7, 'hksvrhijgsajhgfhsghsilhvslkjfvkjsfvbb', '2025-01-19 15:55:13'),
(6, 3, 6, 'uuyguhguhgugu', '2025-01-19 15:55:39'),
(7, 4, 6, 'bkabascbkha', '2025-01-19 20:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `destination_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(25,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `image_url`, `destination_name`, `description`, `price`) VALUES
(6, '../assets/image/package/full-shot-travel-concept-with-landmarks_23-2149153258.avif', 'travel two', 'travel two  description', 30),
(7, '../assets/image/package/travel_one.jpg', 'Travel One', 'Travel One description', 30);

-- --------------------------------------------------------

--
-- Table structure for table `pages_options`
--

CREATE TABLE `pages_options` (
  `id` int(11) NOT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_description` text DEFAULT NULL,
  `btn_text` varchar(255) DEFAULT NULL,
  `button_url` varchar(255) DEFAULT NULL,
  `map_link` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `office_address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(500) NOT NULL,
  `category` int(11) NOT NULL,
  `added_by` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `image`, `title`, `description`, `category`, `added_by`, `date`) VALUES
(14, '../assets/image/posts/medicine_image_one.jpeg', 'Napa Extra 500mg 1 Box', 'Napa Extra 500 mg+65 mg is the result of mixing caffeine with paracetamol (acetaminophen).', 12, 1, '2023-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `posts_category`
--

CREATE TABLE `posts_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `short_description` varchar(250) NOT NULL,
  `added_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts_category`
--

INSERT INTO `posts_category` (`id`, `category_name`, `short_description`, `added_by`) VALUES
(5, 'health and wealth', 'health is wealth and health is wealth', '1'),
(12, 'medicine', 'updated category.. again', '1');

-- --------------------------------------------------------

--
-- Table structure for table `replies_ticket`
--

CREATE TABLE `replies_ticket` (
  `reply_id` int(11) NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `reply_message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `replies_ticket`
--

INSERT INTO `replies_ticket` (`reply_id`, `ticket_id`, `sender_id`, `receiver_id`, `reply_message`, `created_at`) VALUES
(1, 1, 3, NULL, 'fdfdf', '2023-11-26 18:14:32'),
(2, 1, 3, NULL, 'fdfdfd', '2023-11-26 18:14:38'),
(3, 1, 3, NULL, 'another reply', '2023-11-26 18:18:37'),
(4, 1, 3, NULL, 'third reply', '2023-11-26 18:18:49'),
(5, 1, 3, NULL, 'forth reply', '2023-11-26 18:18:57'),
(6, 1, 3, NULL, 'dfdfd', '2023-11-26 18:25:01'),
(7, 1, 3, NULL, 'ki khbr', '2023-11-26 19:14:59'),
(8, 2, 3, NULL, 'hi', '2023-11-26 19:52:09'),
(9, 2, 3, NULL, 'hi', '2023-11-26 19:52:11'),
(10, 2, 3, NULL, 'hi', '2023-11-26 19:52:14'),
(11, 1, 3, NULL, 'hi', '2023-11-26 19:52:34'),
(12, 1, 3, NULL, 'ki khbr', '2023-11-26 19:53:56'),
(13, 1, 3, NULL, 'ki obosta', '2023-11-26 19:54:25'),
(14, 1, 3, NULL, 'ki obsta', '2023-11-26 19:55:40'),
(15, 1, 3, NULL, 'ki khbr again', '2023-11-26 19:59:19'),
(16, 1, 3, NULL, 'ki khbr again', '2023-11-26 19:59:52'),
(17, 1, 3, NULL, 'new try', '2023-11-26 20:03:57'),
(18, 1, 3, NULL, 'new try', '2023-11-26 20:04:11'),
(19, 1, 3, NULL, 'again try', '2023-11-26 20:05:09'),
(20, 1, 3, NULL, 'again try', '2023-11-26 20:05:17'),
(21, 1, 3, NULL, 'abr try', '2023-11-26 20:06:39'),
(22, 1, 3, NULL, 'new try', '2023-11-26 20:06:46'),
(23, 1, 2, NULL, 'reply by ashik', '2023-11-26 20:14:16'),
(24, 1, 2, NULL, 'reply by ashik', '2023-11-26 20:14:24'),
(25, 1, 2, NULL, 'reply agian by ashik', '2023-11-26 20:14:33'),
(26, 1, 3, NULL, 'hi', '2023-11-26 20:26:17'),
(27, 1, 3, NULL, 'hey again me', '2023-11-26 20:33:17'),
(28, 1, 2, NULL, 'nice color', '2023-11-26 20:33:33'),
(29, 1, 3, NULL, 'yes looks great', '2023-11-26 20:33:43'),
(30, 1, 2, NULL, 'thanks', '2023-11-26 20:33:56'),
(31, 1, 3, NULL, 'hey ashik', '2023-11-26 20:40:40'),
(32, 1, 2, NULL, 'ki obsota', '2023-11-26 20:41:22'),
(33, 1, 3, NULL, 'valo', '2023-11-26 20:41:33'),
(34, 1, 2, NULL, 'nice chat system', '2023-11-26 20:41:43'),
(35, 3, 3, NULL, 'hi ashik', '2023-11-26 20:48:28'),
(36, 1, 3, NULL, 'hey ashik how are you', '2023-11-26 20:55:35'),
(37, 1, 2, NULL, 'I am fine, what about my ticket ?', '2023-11-26 20:56:15'),
(38, 1, 3, NULL, 'I am taking care of it.. thanks for your patience', '2023-11-26 20:56:40'),
(39, 1, 2, NULL, 'welcome', '2023-11-26 20:56:54'),
(40, 5, 3, NULL, 'can you please send us the medicine box image', '2023-11-27 14:37:55'),
(41, 5, 2, NULL, 'sure, let me send', '2023-11-27 14:38:30'),
(42, 5, 3, NULL, 'I have sent it', '2023-11-27 14:39:59'),
(43, 5, 2, NULL, 'yes', '2023-11-27 14:40:15'),
(44, 5, 3, NULL, 'nice', '2023-11-27 14:40:21'),
(45, 9, 4, NULL, 'hii', '2025-01-19 14:52:17'),
(46, 9, 4, NULL, 'hiu2wuhguiqwhe', '2025-01-19 20:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` int(25) NOT NULL,
  `medicine_id` int(25) NOT NULL,
  `ticket_subject` varchar(50) NOT NULL,
  `ticket_message` varchar(255) NOT NULL,
  `requested_by` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `medicine_id`, `ticket_subject`, `ticket_message`, `requested_by`) VALUES
(1, 2, 'this is first ticket', 'this is first ticket message', 2),
(2, 1, 'this is second ticket request', 'this is second ticket request message', 2),
(3, 1, 'this is third ticket', 'this is third ticket message', 2),
(4, 2, 'this is fourth ticket subject', 'this is forth ticket message', 2),
(5, 2, 'query about xeldrin', 'this medicine is out of date', 2),
(6, 1, 'tomar abbu', 'tomar ammu', 2),
(7, 1, 'tomar abbu', 'hhhh', 2),
(8, 2, 'need medicine', 'please give me medicine', 2),
(9, 7, 'need medicine', 'hi', 4),
(10, 2, 'uguyfu', 'bkjkhb', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `profile_photo` varchar(255) NOT NULL DEFAULT 'https://res.cloudinary.com/demo/image/twitter_name/BillClinton.jpg',
  `password` varchar(25) NOT NULL,
  `user_type` varchar(25) NOT NULL,
  `user_status` int(11) NOT NULL DEFAULT 1,
  `reset_token` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `full_name`, `email`, `gender`, `date_of_birth`, `profile_photo`, `password`, `user_type`, `user_status`, `reset_token`) VALUES
(1, 'abid', 'ABID NAZIR', 'pritomkabir19@gmail.com', 'male', '1998-12-28', '../assets/image/users/9762728-satoru-gojo-jujutsu-kaisen-hd-wallpaper.png', '12345678@', 'Admin', 1, 756597),
(2, 'sgfgfs', 'Babar', 'ashikurrahman@gmail.com', 'male', '2023-11-01', '../assets/image/users/9763326-jujutsu-kaisen-4k-pc-wallpaper.jpg', '12345678@', 'Customer', 1, NULL),
(3, 'lala', 'MANOB', 'faisal@gmail.com', 'male', '2023-11-30', '../assets/image/users/1301397-jujutsu-kaisen-hd-wallpaper-and-background.png', '12345678$', 'Pharmacist', 1, NULL),
(4, 'Saiful', 'Saiful', 'saiful@gmail.com', 'male', '2000-01-01', '../assets/image/users/Image (5).jpg', '12345678#', 'Customer', 1, NULL),
(5, 'Rifat', 'Rifat', 'Rifat@gmail.com', 'male', '2000-01-01', '../assets/image/users/Image (4).jpg', '12345678@', 'Pharmacist', 1, NULL),
(6, 'Nazir', 'Nazir', 'nazir@gmail.com', 'male', '2001-05-08', '../assets/image/users/Image (2).jpg', '12345678#', 'Admin', 1, NULL),
(7, 'Babar', 'Babar', 'babar@gmail.com', 'male', '2001-09-11', '../assets/image/users/Image (3).jpg', '12345678#', 'Pharmacist', 1, NULL),
(8, 'Manob', 'Manob', 'manob@gmail.com', 'male', '2002-12-30', '../assets/image/users/Image (6).jpg', '12345678@', 'Customer', 1, NULL),
(9, 'hola', 'hola', 'hola@gmail.com', 'male', '2025-01-18', 'https://res.cloudinary.com/demo/image/twitter_name/BillClinton.jpg', '12345678@', 'Customer', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_chats`
--
ALTER TABLE `live_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines_category`
--
ALTER TABLE `medicines_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines_company`
--
ALTER TABLE `medicines_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_requests`
--
ALTER TABLE `medicine_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chat` (`chat_id`),
  ADD KEY `fk_sender` (`sender_id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_options`
--
ALTER TABLE `pages_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_category`
--
ALTER TABLE `posts_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies_ticket`
--
ALTER TABLE `replies_ticket`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reset_token` (`reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `live_chats`
--
ALTER TABLE `live_chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medicines_category`
--
ALTER TABLE `medicines_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `medicines_company`
--
ALTER TABLE `medicines_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medicine_requests`
--
ALTER TABLE `medicine_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages_options`
--
ALTER TABLE `pages_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts_category`
--
ALTER TABLE `posts_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `replies_ticket`
--
ALTER TABLE `replies_ticket`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `fk_chat` FOREIGN KEY (`chat_id`) REFERENCES `live_chats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sender` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `replies_ticket`
--
ALTER TABLE `replies_ticket`
  ADD CONSTRAINT `replies_ticket_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `support_tickets` (`id`),
  ADD CONSTRAINT `replies_ticket_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `replies_ticket_ibfk_3` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
