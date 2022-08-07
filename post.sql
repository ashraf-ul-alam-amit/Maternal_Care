-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 10:19 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
