-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2019 at 04:59 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Classical\r\n', 2, 4, 'assets/images/artwork/Classical.jpg'),
(2, 'Rap', 5, 10, 'assets/images/artwork/rap.jpg'),
(3, 'EDM', 3, 1, 'assets/images/artwork/EDM.jpg'),
(4, 'Rock Music', 2, 9, 'assets/images/artwork/rock_music.jpg'),
(5, 'Disco', 1, 3, 'assets/images/artwork/Discofever1.jpg'),
(6, 'Jazz', 3, 6, 'assets/images/artwork/jazz.jpg'),
(7, 'Romance', 4, 7, 'assets/images/artwork/romance.png');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `artworkPath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `artworkPath`) VALUES
(1, 'Arijit Singh', 'assets/images/artwork/arijit.jpg'),
(2, 'Atif Aslam', 'assets/images/artwork/atif.jpg'),
(3, 'Honey Singh', 'assets/images/artwork/yoyo.jpg'),
(4, 'Asha Bhosale', 'assets/images/artwork/asha.jpg'),
(5, 'Lata Mangeshkar', 'assets/images/artwork/lata.jpg'),
(6, 'Kishore Kumar', 'assets/images/artwork/kishore.jpg'),
(7, 'Anup Ghoshal', 'assets/images/artwork/anup.jpg'),
(8, 'Adnan Sami', 'assets/images/artwork/adnan.jpg'),
(9, 'Mohit Chauhan', 'assets/images/artwork/mohit.jpg'),
(10, 'A R Rahman', 'assets/images/artwork/ar.jpg'),
(11, 'Sunidhi Chauhan', 'assets/images/artwork/sunidhi.jpg'),
(12, 'Neha Kakkar', 'assets/images/artwork/neha.jpg'),
(13, 'Vishal Dadlani', 'assets/images/artwork/vishal.jpg'),
(14, 'Jonita Gandhi', 'assets/images/artwork/joni.jpg'),
(15, 'Badshah', 'assets/images/artwork/badsha.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(1, 'Suchit', 'suchit3', '2019-01-10 00:00:00'),
(3, 'mymusic', 'priyanka3', '2019-01-16 00:00:00'),
(4, 'Swaraj', 'swaraj123', '2019-01-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(1, 7, 1, 0),
(2, 52, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(34, 'Abhi na jao ', 4, 1, '04:32', 'assets/music/Abhi Na Jao Chhod Kar compressed.mp3', 1, 14),
(35, 'Do lafzon ki', 4, 1, '04:40', 'assets/music/do lafzon ki compressed.mp3', 1, 18),
(36, 'Lag ja gale', 5, 1, '04:18', 'assets/music/Lag Jaa Gale compressed.mp3', 1, 8),
(37, 'Ek Ajnabee Haseena Se ', 6, 1, '04:07', 'assets/music/Ek Ajnabee Haseena Se compressed.mp3', 1, 7),
(38, 'Ajeeb Dastan  Hai Yeh ', 5, 1, '04:25', 'assets/music/Song - Ajeeb Dastan  Hai Yeh compressed.mp3', 1, 5),
(39, 'Tujhse Naraaz Nahin Zindagi', 7, 1, '06:07', 'assets/music/Tujhse Naraaz Nahin Zindagi compressed.mp3', 1, 5),
(40, ' Aise Na Dekho ', 10, 6, '04:14', 'assets/music/A.R. Rahman - Aise Na Dekho compressed.mp3', 1, 7),
(41, 'Aye Udi Udi Udi', 8, 6, '04:14', 'assets/music/Aye Udi Udi Udi compressed.mp3', 1, 7),
(42, 'DILBAR ', 12, 6, '02:56', 'assets/music/DILBAR conpressed.mp3', 1, 7),
(43, 'Kaisi Paheli Zindagani', 11, 6, '4:38', 'assets/music/Kaisi Paheli Zindagani compressed.mp3', 1, 4),
(44, 'Masakali ', 9, 6, '03:57', 'assets/music/Masakali compressed.mp3', 1, 4),
(45, 'Manali Trance', 12, 3, '03:39', 'assets/music/Manali Trance _ Yo Yo Honey Singh &amp_ Neha Kakkar _ The Shaukeens _ Lisa Haydon _ Akshay Kumar.mp3', 1, 2),
(46, 'Nashe Si Chadh Gayi ', 1, 3, '03:47', 'assets/music/Nashe Si Chadh Gayi - Full Song _ Befikre _ Ranveer Singh _ Vaani Kapoor _ Arijit Singh (1).mp3', 1, 0),
(48, 'Kala Chashma ', 15, 5, '02:53', 'assets/music/Kala Chashma _ Baar Baar Dekho _ Sidharth M Katrina K _ Prem &amp_ Hardeep ft Badshah Neha K Indeep (1).mp3', 1, 2),
(49, 'Kar Gayi Chul', 12, 5, '02:22', 'assets/music/Kar Gayi Chull - Kapoor &amp_ Sons _ Sidharth Malhotra _ Alia Bhatt _ Badshah _ Amaal Mallik _Fazilpuria (1) (1).mp3', 1, 3),
(51, 'The Breakup Song', 14, 5, '03:26', 'assets/music/The Breakup Song - Ae Dil Hai Mushkil _  Latest Official Song 2016 _ Pritam _ Arijit I Badshah (1).mp3', 1, 0),
(52, 'Blue eyes', 3, 2, '04:02', 'assets/music/Blue Eyes Mp3 Download Filmysongs.co (1).mp3', 1, 0),
(53, 'Chaar Bottle Vodka', 3, 2, '03:49', 'assets/music/Chaar Botal Vodka Full Song Feat. Yo Yo Honey Singh, Sunny Leone _ Ragini MMS 2 (1).mp3', 1, 0),
(54, 'Chote Chote Peg', 3, 2, '02:49', 'assets/music/Chhote Chhote Peg Sonu Ke Titu Ki Sweety 320 Kbps (1).mp3', 1, 0),
(55, 'Dil Chori', 3, 2, '03:55', 'assets/music/Dil Chori Sonu Ke Titu Ki Sweety 320 Kbps (1).mp3', 1, 0),
(56, 'Tareefan', 15, 2, '03:04', 'assets/music/Tareefan _ Veere Di Wedding _ QARAN  Ft. Badshah _ Kareena Kapoor Khan, Sonam Kapoor, Swara &amp_ Shikha.mp3', 1, 0),
(57, 'Wakhra Swag', 15, 2, '03:34', 'assets/music/Wakhra Swag _ Official Video _ Navv Inder feat. Badshah _ New Video Song (1).mp3', 1, 0),
(58, 'Chahun mai ya na', 1, 7, '04:00', 'assets/music/Chahun Main Ya Naa Full Video Song Aashiqui 2 _ Aditya Roy Kapur, Shraddha Kapoor (1).mp3', 1, 4),
(59, 'Channa Mereya', 1, 7, '03:02', 'assets/music/Channa Mereya Mp3 Song Arijit Singh filmysongs.co (1).mp3', 1, 8),
(60, 'Chalte Chalte', 2, 7, '02:13', 'assets/music/Chalte Chalte _ Mitron _ Atif Aslam _ Jackky Bhagnani _ Kritika Kamra _ Tanishk Bagchi (1).mp3', 1, 1),
(61, 'Dil Diyan Galla', 2, 7, '03:05', 'assets/music/Dil Diyan Gallan Mp3 Song Atif Aslam filmysongs.co (1).mp3', 1, 0),
(62, 'Mere Rashke Qamar', 1, 7, '03:23', 'assets/music/Mere Rashke Qamar   Arijit Singh (1).mp3', 1, 1),
(63, 'Tere Liye', 2, 7, '03:01', 'assets/music/Tere Liye - Namaste England _ Arjun Kapoor _ Parineeti Chopra _ Atif Aslam _ Akanksha Bhandari (1).mp3', 1, 0),
(64, 'Dekhte Dekhte ', 2, 4, '02:37', 'assets/music/dekhte dekhte c.mp3', 1, 8),
(65, ' Phir Wahi', 1, 4, '04:32', 'assets/music/Jagga Jasoos - Phir Wahi Video Song With Lyrics _ Ranbir, Katrina _ Pritam, Arijit _ Amitabh B (1).mp3', 1, 3),
(66, 'Mai Tera Boyfriend', 2, 4, '03:08', 'assets/music/Main Tera Boyfriend Song _ Raabta _ Arijit S _ Neha K Meet Bros _ Sushant Singh Rajput Kriti Sanon (1).mp3', 1, 1),
(67, 'Second Hand Jawani', 12, 4, '03:26', 'assets/music/Second Hand Jawaani  (Song Promo) _ Cocktail _ Saif Ai Khan, Deepika Padukone &amp_ Diana Penty.mp3', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'reece-kenney', 'Reece', 'Kenney', 'Reece@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-06-28 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'donkey-kong', 'Donkey', 'Kong', 'Dk@yahoo.com', '7c6a180b36896a0a8c02787eeafb0e4c', '2017-06-28 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(3, 'suchit3', 'Suchit', 'Jadhav', 'Suchit@gmail.com', '9e87774fb9e3804f1dcc9735a8b186be', '2019-01-10 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(4, 'priyanka3', 'Priyanka', 'Deshmukh', 'priyankadeshmukh186@gmail.com', 'd671da11ebf818530f84a36134a1cd1e', '2019-01-10 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(5, 'swaraj123', 'Swaraj', 'Deshmukh', 'Swaraj1698@gmail.com', '9fbb19288e74c6d2364f00607dcc51ce', '2019-01-23 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
