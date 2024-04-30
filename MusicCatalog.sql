-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 30, 2024 at 12:45 PM
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
-- Database: `MusicCatalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `Music`
--

CREATE TABLE `Music` (
  `music_id` int(11) NOT NULL,
  `music_title` varchar(255) NOT NULL,
  `music_artist` varchar(255) NOT NULL,
  `music_album` varchar(255) NOT NULL,
  `music_genre` varchar(255) NOT NULL,
  `music_ReleaseYear` year(4) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Music`
--

INSERT INTO `Music` (`music_id`, `music_title`, `music_artist`, `music_album`, `music_genre`, `music_ReleaseYear`, `user_id`) VALUES
(2, '|| MOST WANTED', 'Beyonce', 'Cowboy Carter', 'Country', '2024', 2),
(4, 'Why Don\'t We Fall In Love', 'Amerie', 'All I Have', 'R&B/Soul', '2002', 1),
(5, 'Need You Now', 'Lady A', 'Need You Now', 'Country', '2009', 2),
(6, 'Little Bit', 'Lykke Li', 'Youth Novels (Special Edition)', 'Alternative', '2007', 3),
(7, 'Alter Ego', 'Doechii', 'Alter Ego', 'Rap', '2024', 4),
(9, 'For You', 'Kenny Latimore', 'The Best of Kenny Latimore', 'R&B/Soul', '1996', 12),
(10, 'W.A.Y.S.', 'Jhené Aiko', 'Souled Out', 'R&B/Soul', '2014', 13),
(11, 'Make You Mine', 'Madison Beer', 'Make You Mine', 'Pop', '2024', 14),
(12, '11th Hour', 'Hailey Knox', '11th Hour', 'R&B/Soul', '2024', 15),
(13, 'Walk Like This', 'FLO', 'Walk Like This', 'R&B/Soul', '2024', 16),
(14, 'In Your Hands', 'Halle', 'In Your Hands', 'R&B/Soul', '2024', 17),
(15, 'the boy is mine', 'Ariana Grande', 'eternal sunshine', 'Pop', '2024', 18),
(16, 'Like a Tattoo', 'Sade', 'Love Deluxe', 'R&B/Soul', '1992', 19),
(17, 'Bittersweet Goodbyes', 'Joyce Wrice', 'Motive', 'R&B/Soul', '2022', 20),
(18, 'Get Close', 'Ari Lennox', 'Get Close', 'R&B/Soul', '2023', 21),
(19, 'Leave Me Alone', 'Kari Faux', 'Cry 4 Help', 'Alternative Rap', '2019', 22),
(20, 'Cognac Queen', 'Megan Thee Stallion', 'Tina Snow', 'Rap', '2018', 23),
(21, 'Steeeam', 'Shelly', 'Shelly', 'Alternative', '2020', 24),
(22, 'Sideways', 'JT', 'Sideays', 'Rap', '2024', 25),
(23, 'IT\'S ONLY YOU', 'DESTIN CONRAD', 'SUBMISSIVE2', 'R&B/Soul', '2024', 25),
(24, 'The Peacocks', 'The Bill Evans Trio', 'The Bill EVans Trio featuring Stan Getz', 'Jazz', '1974', 26),
(25, 'traitor', 'Olivia Rodrigo', 'SOUR', 'Pop', '2021', 26),
(26, 'Jonny', 'Faye Webster', 'Atlanta Millionaires Club', 'Alternative Folk', '2019', 27),
(27, 'Miss Romantic', 'Cleo Sol', 'Heaven', 'R&B/Soul', '2023', 28),
(28, 'Nothing\'s New', 'Rio Romeo', 'Good God!', 'Alternative', '2022', 29),
(29, 'Other Side of the Game', 'Erykah Badu', 'Baduizm', 'R&B/Soul', '1997', 30);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `user_id` int(11) NOT NULL,
  `user_username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`user_id`, `user_username`, `user_password`, `user_email`) VALUES
(1, 'john_doe', 'password123', 'john@example.com'),
(2, 'jane_smith', 'abc456', 'jane@example.com'),
(3, 'mike_jones', 'qwerty', 'mike@example.com'),
(4, 'sara_wilson', 'pass1234', 'sara@example.com'),
(12, 'emily_clark', 'securepass', 'emily.clark@example.com'),
(13, 'david_miller', 'letmein', 'david.miller@example.com'),
(14, 'amy_taylor', 'password1', 'amy.taylor@example.com'),
(15, 'ryan_white', '123456', 'ryan.white@example.com'),
(16, 'laura_baker', 'iloveyou', 'laura.baker@example.com'),
(17, 'mark_jones', 'password1234', 'mark.jones@example.com'),
(18, 'jennifer_davis', 'admin123', 'jennifer.davis@example.com'),
(19, 'kevin_thomas', 'welcome', 'kevin.thomas@example.com'),
(20, 'samantha_martin', 'test123', 'samantha.martin@example.com'),
(21, 'steven_hill', '123456789', 'steven.hill@example.com'),
(22, 'linda_clark', 'letmein123', 'linda.clark@example.com'),
(23, 'peter_wilson', 'password12345', 'peter.wilson@example.com'),
(24, 'nicole_anderson', 'password123456', 'nicole.anderson@example.com'),
(25, 'jacob_mitchell', '12345678', 'jacob.mitchell@example.com'),
(26, 'olivia_rodriguez', 'password1234567', 'olivia.rodriguez@example.com'),
(27, 'daniel_taylor', 'admin1234', 'daniel.taylor@example.com'),
(28, 'megan_thomas', 'password12345678', 'megan.thomas@example.com'),
(29, 'justin_lee', 'test1234', 'justin.lee@example.com'),
(30, 'sophia_white', 'password123456789', 'sophia.white@example.com'),
(31, 'nathan_hall', '1234567890', 'nathan.hall@example.com'),
(32, 'amanda_garcia', 'password1234567890', 'amanda.garcia@example.com'),
(33, 'brian_king', 'adminadmin', 'brian.king@example.com'),
(34, 'rachel_wood', 'password123!', 'rachel.wood@example.com'),
(35, 'patrick_robinson', 'testpassword', 'patrick.robinson@example.com'),
(36, 'hannah_scott', 'password123!!', 'hannah.scott@example.com'),
(37, 'brandon_green', 'iloveyou123', 'brandon.green@example.com'),
(38, 'julia_morris', 'password123!!!', 'julia.morris@example.com'),
(39, 'alexandra_hernandez', 'mypassword', 'alexandra.hernandez@example.com'),
(40, 'eric_young', 'password123!!!!', 'eric.young@example.com'),
(41, 'kelly_kelly', 'hello123', 'kelly.kelly@example.com'),
(42, 'marcus_evans', 'password123!!!!!', 'marcus.evans@example.com'),
(43, 'victoria_lee', '123password', 'victoria.lee@example.com'),
(44, 'stephen_turner', 'password123!!!!!!', 'stephen.turner@example.com'),
(45, 'rebecca_stewart', 'password123456', 'rebecca.stewart@example.com'),
(46, 'jason_rivera', 'pass123word', 'jason.rivera@example.com'),
(47, 'katherine_gonzalez', '123password!', 'katherine.gonzalez@example.com'),
(48, 'bryan_wood', 'mypassword123', 'bryan.wood@example.com'),
(49, 'diana_morris', 'pass!word123', 'diana.morris@example.com'),
(50, 'gabriel_lee', 'password123$$$!', 'gabriel.lee@example.com'),
(51, 'denise_harris', 'passw0rd', 'denise.harris@example.com'),
(52, 'terry_scott', 'password!123', 'terry.scott@example.com'),
(53, 'bethany_james', 'password123##', 'bethany.james@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Music`
--
ALTER TABLE `Music`
  ADD PRIMARY KEY (`music_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Music`
--
ALTER TABLE `Music`
  MODIFY `music_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Music`
--
ALTER TABLE `Music`
  ADD CONSTRAINT `music_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
