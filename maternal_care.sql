-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 10:33 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maternal_care`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `verify_token` varchar(200) NOT NULL,
  `verify_status` tinyint(4) NOT NULL,
  `approval_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `password`, `verify_token`, `verify_status`, `approval_status`) VALUES
(1, 'Bijoy', '01732100530', '1803070@student.ruet.ac.bd', '123456', 'ee5b1271350fad064dd41b9eab4bbd4d', 1, 1),
(2, 'Mondol', '01768406895', 'hossainriad072@gmail.com', '123456', 'e1cb149fe9b467f44f9ed57e5118daa9', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(50) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `comment` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `name`, `comment`) VALUES
(7, 1, '1', 'Amit', 'Woww'),
(13, 5, '2', 'Tushar', 'It is the most powerful being in mcu'),
(15, 2, '1', 'Amit', 'thanks '),
(18, 9, '7', 'Afsana', 'Woww'),
(19, 10, '7', 'Afsana', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `maternal_reminder`
--

CREATE TABLE `maternal_reminder` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `rdate` date NOT NULL,
  `rstatus` tinyint(2) NOT NULL COMMENT '0= no, 1= yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maternal_reminder`
--

INSERT INTO `maternal_reminder` (`id`, `name`, `email`, `rdate`, `rstatus`) VALUES
(286, 'Tushar', 'ashrafamit70@gmail.com', '2022-08-09', 1),
(287, 'Tushar', 'ashrafamit70@gmail.com', '2022-09-30', 0),
(288, 'Tushar', 'ashrafamit70@gmail.com', '2022-10-28', 0),
(289, 'Tushar', 'ashrafamit70@gmail.com', '2022-11-24', 0),
(290, 'Tushar', 'ashrafamit70@gmail.com', '2022-12-22', 0),
(291, 'Tushar', 'ashrafamit70@gmail.com', '2023-01-19', 0),
(292, 'Tushar', 'ashrafamit70@gmail.com', '2023-02-16', 0),
(293, 'Tushar', 'ashrafamit70@gmail.com', '2023-03-02', 0),
(294, 'Tushar', 'ashrafamit70@gmail.com', '2023-03-16', 0),
(295, 'Tushar', 'ashrafamit70@gmail.com', '2023-03-31', 0),
(296, 'Tushar', 'ashrafamit70@gmail.com', '2023-04-14', 0),
(297, 'Tushar', 'ashrafamit70@gmail.com', '2023-04-21', 0),
(298, 'Tushar', 'ashrafamit70@gmail.com', '2023-04-28', 0),
(299, 'Tushar', 'ashrafamit70@gmail.com', '2023-05-05', 0),
(300, 'Tushar', 'ashrafamit70@gmail.com', '2023-05-12', 0),
(316, 'Amit', 'ashrafamit9227@gmail.com', '2022-08-29', 0),
(317, 'Amit', 'ashrafamit9227@gmail.com', '2022-09-26', 0),
(318, 'Amit', 'ashrafamit9227@gmail.com', '2022-10-24', 0),
(319, 'Amit', 'ashrafamit9227@gmail.com', '2022-11-20', 0),
(320, 'Amit', 'ashrafamit9227@gmail.com', '2022-12-18', 0),
(321, 'Amit', 'ashrafamit9227@gmail.com', '2023-01-15', 0),
(322, 'Amit', 'ashrafamit9227@gmail.com', '2023-02-12', 0),
(323, 'Amit', 'ashrafamit9227@gmail.com', '2023-02-26', 0),
(324, 'Amit', 'ashrafamit9227@gmail.com', '2023-03-12', 0),
(325, 'Amit', 'ashrafamit9227@gmail.com', '2023-03-27', 0),
(326, 'Amit', 'ashrafamit9227@gmail.com', '2023-04-10', 0),
(327, 'Amit', 'ashrafamit9227@gmail.com', '2023-04-17', 0),
(328, 'Amit', 'ashrafamit9227@gmail.com', '2023-04-24', 0),
(329, 'Amit', 'ashrafamit9227@gmail.com', '2023-05-01', 0),
(330, 'Amit', 'ashrafamit9227@gmail.com', '2023-05-08', 0),
(331, 'Fatema Akter', 'fatemaakteraleya@gmail.com', '2022-08-31', 0),
(332, 'Fatema Akter', 'fatemaakteraleya@gmail.com', '2022-09-28', 0),
(333, 'Fatema Akter', 'fatemaakteraleya@gmail.com', '2022-10-26', 0),
(334, 'Fatema Akter', 'fatemaakteraleya@gmail.com', '2022-11-22', 0),
(335, 'Fatema Akter', 'fatemaakteraleya@gmail.com', '2022-12-20', 0),
(336, 'Fatema Akter', 'fatemaakteraleya@gmail.com', '2023-01-17', 0),
(337, 'Fatema Akter', 'fatemaakteraleya@gmail.com', '2023-02-14', 0),
(338, 'Fatema Akter', 'fatemaakteraleya@gmail.com', '2023-02-28', 0),
(339, 'Fatema Akter', 'fatemaakteraleya@gmail.com', '2023-03-14', 0),
(340, 'Fatema Akter', 'fatemaakteraleya@gmail.com', '2023-03-29', 0),
(341, 'Fatema Akter', 'fatemaakteraleya@gmail.com', '2023-04-12', 0),
(342, 'Fatema Akter', 'fatemaakteraleya@gmail.com', '2023-04-19', 0),
(343, 'Fatema Akter', 'fatemaakteraleya@gmail.com', '2023-04-26', 0),
(344, 'Fatema Akter', 'fatemaakteraleya@gmail.com', '2023-05-03', 0),
(345, 'Fatema Akter', 'fatemaakteraleya@gmail.com', '2023-05-10', 0),
(346, 'Afsana', '1803070@student.ruet.ac.bd', '2022-08-29', 0),
(347, 'Afsana', '1803070@student.ruet.ac.bd', '2022-09-26', 0),
(348, 'Afsana', '1803070@student.ruet.ac.bd', '2022-10-24', 0),
(349, 'Afsana', '1803070@student.ruet.ac.bd', '2022-11-20', 0),
(350, 'Afsana', '1803070@student.ruet.ac.bd', '2022-12-18', 0),
(351, 'Afsana', '1803070@student.ruet.ac.bd', '2023-01-15', 0),
(352, 'Afsana', '1803070@student.ruet.ac.bd', '2023-02-12', 0),
(353, 'Afsana', '1803070@student.ruet.ac.bd', '2023-02-26', 0),
(354, 'Afsana', '1803070@student.ruet.ac.bd', '2023-03-12', 0),
(355, 'Afsana', '1803070@student.ruet.ac.bd', '2023-03-27', 0),
(356, 'Afsana', '1803070@student.ruet.ac.bd', '2023-04-10', 0),
(357, 'Afsana', '1803070@student.ruet.ac.bd', '2023-04-17', 0),
(358, 'Afsana', '1803070@student.ruet.ac.bd', '2023-04-24', 0),
(359, 'Afsana', '1803070@student.ruet.ac.bd', '2023-05-01', 0),
(360, 'Afsana', '1803070@student.ruet.ac.bd', '2023-05-08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `post_title` varchar(500) NOT NULL,
  `post_content` mediumtext NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `name`, `user_id`, `post_title`, `post_content`, `date`) VALUES
(1, 'Amit', '1', 'Trimester', 'Trimesters are counted from the start of your last menstrual period (are you sensing how important that date is). Remember, your fallopian tube doesn’t release an egg (that is later fertilized) until about 2 weeks after that period — so you’re not even actually PREGNANT until week 2 or so, but that’s how we count it. It is important that you take a prenatal vitamin as soon as you find out you’re pregnant.', '2022-08-06 02:07:07'),
(2, 'Amit', '1', 'Crying is communicating', 'Worried your infant is crying all the time? Up until the age of six months, the only way babies can communicate and emote their feelings is by crying. Though you will be rewarded with a heart-warming smile or cooing sounds once in a while, crying is the only way they can let you know that they need something. So instead of doubting if you have got the qualities of good parents, just be patient and address your baby’s cries with a good feed, diaper change or just some good-old cuddling time.', '2022-08-06 02:08:02'),
(3, 'Tushar', '2', 'Brain development in a newborn', 'Right from when your little one is born till the age of three years, their little brain develops at the speed of light - with more than a million neural connections per second to be precise. Additionally, apart from nutrition, the rate at which their brain develops depends on a multitude of external factors.', '2022-08-06 02:35:54'),
(5, 'Tushar', '2', 'Early nutrition', 'There is no doubt that breast milk is the best nutrition you can give your baby. Apart from a host of developmental benefits, breast milk will protect your baby from allergies, diseases, ear infections and a multitude of other external viruses. You can also introduce your baby to solid food while breastfeeding. Start with fresh fruits and wholesome grains to make a tailor-made meal plan that stimulates muscle, bone and brain development.', '2022-08-06 02:48:16'),
(6, 'Amit', '1', 'Effect of sleep on brain development', 'One of the main reasons why inducing a bedtime routine is important is because of the major role sleep plays in the brain development of your child. During the active REM cycle of sleep, key brain cell connections are developed and a vital layer of fat called myelin is created on the fibres of the nerves. Additionally, sleep also helps in creating stronger connections between the left and right hemispheres of the brain.', '2022-08-07 21:46:23'),
(8, 'Sumi', '4', 'Tips for Effective Parenting', 'Parenting is not an easy task and no parent is perfect. Kids share a unique bond with their parents. A good parent always make decisions for their kids best interest and what makes a child happy. They must always keep this in mind that a child will copy their actions and will incorporate it in their life. Hence, parents are very powerful figure in a child health care and development.', '2022-08-07 23:20:54'),
(9, 'Amit', '1', 'Boost Your Child\'s Self-Esteem', 'Kids start developing their sense of self as babies when they see themselves through their parents\' eyes. Your tone of voice, your body language, and your every expression are absorbed by your kids. Your words and actions as a parent affect their developing self-esteem more than anything else.', '2022-08-08 00:26:10'),
(10, 'Afsana', '7', 'Maternal health', 'Maternal health refers to the health of women during pregnancy, childbirth and the postnatal period. Each stage should be a positive experience, ensuring women and their babies reach their full potential for health and well-being.', '2022-08-08 00:28:45'),
(11, 'Fatema Akter', '10', 'Importance of Maternal Care', 'Improving maternal health is key to saving the lives of more than half a million women who die as a result of complications from pregnancy and childbirth each year. Almost all these deaths could be prevented if women in developing countries had access to adequate diets, safe water and sanitation facilities, basic literacy and health services during pregnancy and childbirth. Hunger and malnutrition have been found to increase both the incidence and the fatality rate of the conditions that cause up to 80 percent of maternal deaths.', '2022-08-08 00:47:17'),
(12, 'Amit', '1', 'Make Time for Your Kids', 'It`s often hard for parents and kids to get together for a family meal, let alone spend quality time together. But there is probably nothing kids would like more. Get up 10 minutes earlier in the morning so you can eat breakfast with your child or leave the dishes in the sink and take a walk after dinner. Kids who aren`t getting the attention they want from their parents often act out or misbehave because they`re sure to be noticed that way.', '2022-08-08 02:10:42'),
(13, 'Sumi', '4', 'Make Communication a Priority', 'You can`t expect kids to do everything simply because you, as a parent, `say so`. They want and deserve explanations as much as adults do. If we don`t take time to explain, kids will begin to wonder about our values and motives and whether they have any basis. Parents who reason with their kids allow them to understand and learn in a nonjudgmental way.', '2022-08-08 02:18:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `verify_token` varchar(200) NOT NULL,
  `verify_status` tinyint(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `due_date` int(20) NOT NULL,
  `approval_status` tinyint(4) NOT NULL DEFAULT 1,
  `isAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `password`, `verify_token`, `verify_status`, `created_at`, `due_date`, `approval_status`, `isAdmin`) VALUES
(1, 'Amit', '01868406894', 'ashrafamit9227@gmail.com', '123456', 'efb8cef6daa102367bf889178e371425', 1, '2022-07-18 19:22:37', 1659304800, 1, 0),
(2, 'Tushar', '01868406894', 'ashrafamit70@gmail.com', '123456', '38c89498e19b03365bc62bf723385767', 1, '2022-07-23 19:31:50', 1659650400, 0, 0),
(4, 'Sumi', '01732100530', 'ashrafulalamamit@gmail.com', '123456', '04db57479e74ecd4d594c2861bf917c5', 1, '2022-08-05 05:45:58', 0, 1, 0),
(6, 'Tamim', '01868406894', 'soniasultanasoma@gmail.com', '123456', '2548b6f01f0031f2b6388045eacbd77a', 0, '2022-08-07 16:45:14', 0, 1, 0),
(7, 'Afsana', '01868406894', '1803070@student.ruet.ac.bd', '123456', '60bf768587d4ea647fa1e19524c904bc', 1, '2022-08-07 18:26:45', 1659304800, 1, 1),
(8, 'Soma', '01868406894', 's.sultanasoma@gmail.com', '123456', '9ff38acf3a6e4a777b8a207db7b6ba87', 1, '2022-08-07 18:40:17', 0, 1, 1),
(10, 'Fatema Akter', '01712999432', 'fatemaakteraleya@gmail.com', '123456', '23df0d6da889d579642653967cf4e810', 1, '2022-08-07 18:45:15', 1659477600, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `maternal_reminder`
--
ALTER TABLE `maternal_reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `maternal_reminder`
--
ALTER TABLE `maternal_reminder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
