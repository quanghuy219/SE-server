-- phpMyAdmin SQL Dump
-- version 4.6.0-dev
-- http://www.phpmyadmin.net
--
-- Host: be9d0lk1d-mysql.services.clever-cloud.com:3306
-- Generation Time: Jun 15, 2018 at 10:09 AM
-- Server version: 5.5.28-0ubuntu0.12.04.3-log
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be9d0lk1d`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `ID` int(11) NOT NULL,
  `category` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID`, `category`) VALUES
(1, 'Art-Culture'),
(2, 'Education'),
(3, 'Entrepreneurs'),
(4, 'Environment'),
(5, 'Journalism'),
(6, 'Sports'),
(7, 'Travel'),
(8, 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `ID` int(11) NOT NULL,
  `postID` int(11) DEFAULT NULL,
  `authorID` int(11) DEFAULT NULL,
  `content` text,
  `createdAt` datetime DEFAULT NULL,
  `editedAt` date DEFAULT NULL,
  `deletedAt` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`ID`, `postID`, `authorID`, `content`, `createdAt`, `editedAt`, `deletedAt`, `status`) VALUES
(1, 33, 6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto temporibus iste nostrum dolorem natus recusandae incidunt voluptatum. Eligendi voluptatum ducimus architecto tempore, quaerat explicabo veniam fuga corporis totam reprehenderit quasi sapiente modi tempora at perspiciatis mollitia, dolores voluptate. Cumque, corrupti?', '2018-05-01 02:07:15', NULL, NULL, 1),
(2, 33, 6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto temporibus iste nostrum dolorem natus recusandae incidunt voluptatum. Eligendi voluptatum ducimus architecto tempore, quaerat explicabo veniam fuga corporis totam.', '2018-05-01 03:20:00', NULL, '2018-05-04', 0),
(7, 33, 6, 'hi', '2018-05-02 10:44:44', NULL, '2018-05-04', 0),
(8, 33, 6, 'Well done!!!', '2018-05-02 10:44:59', '2018-05-04', NULL, 1),
(9, 33, 6, 'Woo Hoo', '2018-05-04 13:14:55', NULL, '2018-05-04', 0),
(10, 33, 6, 'Heyyy yoo', '2018-05-04 13:15:06', '2018-05-05', NULL, 1),
(11, 9, 6, 'vai lau that\n', '2018-05-05 08:37:48', NULL, '2018-06-09', 0),
(12, 9, 16, 'Heyy yoo', '2018-05-06 09:23:56', NULL, NULL, 1),
(13, 36, 6, 'Hello', '2018-05-11 03:03:26', '2018-05-11', '2018-05-11', 0),
(14, 2, 6, 'c?ng khá là ?n ?ó ?', '2018-05-15 11:26:05', NULL, NULL, 1),
(15, 2, 6, 'good job!', '2018-05-15 11:26:21', NULL, NULL, 1),
(16, 39, 6, 'hi', '2018-05-24 18:49:33', NULL, '2018-06-08', 0),
(17, 39, 6, 'hi', '2018-05-24 18:52:52', NULL, '2018-05-24', 0),
(18, 39, 6, 'yo', '2018-05-24 19:01:01', NULL, '2018-06-02', 0),
(19, 39, 6, 'aaaa', '2018-05-24 19:07:52', NULL, '2018-06-02', 0),
(20, 39, 6, 'asdsad', '2018-05-24 19:10:29', NULL, '2018-06-02', 0),
(21, 39, 6, 'asdasd', '2018-05-24 19:12:22', NULL, '2018-06-02', 0),
(22, 39, 6, 'asddsd', '2018-05-24 19:14:06', NULL, '2018-05-24', 0),
(23, 39, 6, 'adadad', '2018-05-24 19:15:17', NULL, '2018-05-24', 0),
(24, 39, 6, 'a', '2018-05-24 19:16:19', NULL, '2018-06-02', 0),
(25, 39, 6, 'adsdd', '2018-05-24 19:18:21', NULL, '2018-06-02', 0),
(26, 21, 6, 'bài này tôi viêt ?ó\n', '2018-06-02 03:28:14', NULL, NULL, 1),
(27, 21, 6, 'quá là ghê ch?a?\n', '2018-06-02 03:28:29', NULL, '2018-06-09', 0),
(28, 36, 6, 'ghe that\n', '2018-06-08 10:10:28', NULL, '2018-06-08', 0),
(29, 36, 6, 'vai ca lua', '2018-06-08 10:13:17', NULL, '2018-06-08', 0),
(30, 36, 6, 'asdf\n', '2018-06-08 10:13:43', NULL, '2018-06-08', 0),
(31, 36, 6, 'fasdfasdf', '2018-06-08 10:15:03', NULL, '2018-06-08', 0),
(32, 43, 6, 'asfasdf', '2018-06-08 10:41:56', NULL, '2018-06-08', 0),
(33, 43, 6, 'gsdfg', '2018-06-08 10:53:47', NULL, '2018-06-08', 0),
(34, 39, 6, 'sdfg\n', '2018-06-08 10:58:12', NULL, '2018-06-08', 0),
(35, 39, 6, 'C?ng khá là ?n ??y nh?', '2018-06-08 13:22:42', NULL, '2018-06-08', 0),
(36, 39, 6, 'Ngon', '2018-06-08 13:22:47', NULL, '2018-06-08', 0),
(37, 39, 6, 'Vãi ?ái\n', '2018-06-08 13:40:23', NULL, '2018-06-08', 0),
(38, 36, 6, 'Xxc', '2018-06-09 00:01:05', NULL, '2018-06-09', 0),
(39, 39, 6, 'Lm', '2018-06-09 00:56:08', NULL, '2018-06-09', 0),
(40, 44, 6, 'Ngon th?t', '2018-06-09 02:54:44', NULL, '2018-06-09', 0),
(41, 46, 6, 'ghe luôn ??y\n', '2018-06-09 17:12:44', NULL, '2018-06-09', 0),
(42, 46, 6, 'ngon r?i\n', '2018-06-09 17:18:31', NULL, '2018-06-09', 0),
(43, 9, 26, 'Oh O...?', '2018-06-09 18:06:02', NULL, NULL, 1),
(44, 21, 26, 'Wow ', '2018-06-09 18:06:53', NULL, NULL, 1),
(45, 46, 26, '??', '2018-06-09 18:08:05', NULL, '2018-06-09', 0),
(46, 36, 26, '?', '2018-06-09 18:08:26', NULL, '2018-06-09', 0),
(47, 28, 26, ':) ', '2018-06-09 18:10:09', NULL, NULL, 1),
(48, 47, 6, 'beautiful', '2018-06-10 05:27:01', NULL, '2018-06-10', 0),
(49, 47, 6, 'asdf', '2018-06-10 05:27:46', NULL, '2018-06-10', 0),
(50, 47, 6, 'zxcv', '2018-06-10 05:29:32', NULL, '2018-06-10', 0),
(51, 47, 6, 'gsdfg', '2018-06-10 05:29:47', NULL, '2018-06-10', 0),
(52, 47, 6, 'fasd', '2018-06-10 05:30:22', NULL, '2018-06-10', 0),
(53, 47, 6, 'asdf', '2018-06-10 05:31:33', NULL, '2018-06-10', 0),
(54, 47, 6, 'fasd', '2018-06-10 05:32:36', NULL, '2018-06-10', 0),
(55, 47, 6, 'xcvb', '2018-06-10 05:37:57', NULL, '2018-06-10', 0),
(56, 47, 6, 'asdfasdf', '2018-06-10 05:57:08', NULL, '2018-06-10', 0),
(57, 47, 6, 'asdf', '2018-06-10 05:57:19', NULL, '2018-06-10', 0),
(58, 47, 6, 'sdfg', '2018-06-10 06:26:53', NULL, '2018-06-10', 0),
(59, 47, 6, 'Ghe', '2018-06-10 06:45:58', NULL, '2018-06-10', 0),
(60, 52, 6, 'Cool', '2018-06-10 07:50:18', NULL, '2018-06-10', 0),
(61, 47, 6, 'Cool', '2018-06-10 07:51:11', NULL, '2018-06-10', 0),
(62, 48, 6, 'Cool', '2018-06-10 07:51:44', NULL, NULL, 1),
(63, 39, 6, 'Vãi c? ??n\n', '2018-06-10 15:09:11', NULL, '2018-06-10', 0),
(64, 48, 28, 'hi', '2018-06-11 02:57:51', NULL, NULL, 1),
(65, 57, 6, 'hi', '2018-06-11 02:58:51', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `ID` int(10) NOT NULL,
  `authorID` int(10) NOT NULL,
  `title` text CHARACTER SET utf8,
  `subtitle` text CHARACTER SET utf8,
  `content` text CHARACTER SET utf8,
  `categoryID` int(5) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `editedAt` date DEFAULT NULL,
  `deletedAt` date DEFAULT NULL,
  `status` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`ID`, `authorID`, `title`, `subtitle`, `content`, `categoryID`, `createdAt`, `editedAt`, `deletedAt`, `status`) VALUES
(1, 6, 'Lorem Ipsum', 'Now any of your Google Home devices can connect to other Bluetooth speakers so you can control your entertainment experience simply using the sound of your voice. Turn up the beats in the living room, listen to a podcast while you cook or finish a few chapters of your audiobook before be', '<p>Now any of your Google Home devices can connect to other Bluetooth speakers so you can control your entertainment experience simply using the sound of your voice. Turn up the beats in the living room, listen to a podcast while you cook or finish a few chapters of your audiobook before be</p>', 1, '0000-00-00', '2018-04-07', '2018-05-06', 0),
(2, 6, 'Rolling Study Halls: turning bus time into learning time', 'What started as a fun pun—May the 4th—has now become an official holiday for Star Wars fans. On this day known around the globe as “Star Wars Day,” fans celebrate the lore of the galaxy far, far away. We’ve got a couple of ideas for how you can join in on the celebration!', '<p style="text-align: center;">What started as a fun pun—May the 4th—has now become an official holiday for Star Wars fans. On this day known around the globe as “Star Wars Day,” fans celebrate the lore of the galaxy far, far away. We’ve got a couple of ideas for how you can join in on the celebration!</p>\n<p style="text-align: center;">&nbsp;</p>\n<p style="text-align: center;">We worked with Fandango so you can buy tickets to the movies using your voice—just say “buy tickets” once you’ve decided which movie to see. Or if you already have a movie in mind, you can just say “Hey Google, get me tickets for...” &nbsp;and insert the name of the movie you want to see. You can even buy advance tickets for upcoming movies, like “Solo: A Star Wars Story” opening on May 25th. Here’s how it works on your phone:</p>\n<p>Before you go see “Solo: A Star Wars Story” later this month, enjoy the&nbsp;<a href="https://play.google.com/store/apps/editorial_collection/promotion_topic_3003212_maythe4th_tp" target="_blank" rel="noopener">best of Star Wars on Google Play</a>! We’ve got you covered with discounts and deals on Star Wars apps, games, movies, books and more from that galaxy far, far away.</p>\n<p>As a huge fan of Han Solo and Chewbacca, I’m excited to share some wookiee tricks from your Google Assistant … just say, “Hey Google, may the 4th be with you.”</p>\n<p style="text-align: center;">&nbsp;</p>', 1, '2018-04-02', '2018-06-02', '2018-06-05', 0),
(9, 6, 'Noodle on this: Machine learning that can identify ramen by shop\r\n', 'There are casual ramen fans and then there are ramen lovers. There are people who are all tonkotsu all the time, and others who swear by tsukemen. And then there', '<p>There are casual ramen fans and then there are ramen lovers. There are people who are all tonkotsu all the time, and others who swear by tsukemen. And then there&nbsp;</p>', 1, '2018-04-07', '2018-06-10', '2018-05-06', 1),
(13, 6, 'New ways to read more with audiobooks from Google Play', 'Two months ago we launched audiobooks from Google Play to help you fit more books into your life. Today we have a few updates to make it even easier to enjoy a great book, whether you like to listen on the go with your phone or at home with the Google Assistant on Google Home.', 'Two months ago we launched audiobooks from Google Play to help you fit more books into your life. Today we have a few updates to make it even easier to enjoy a great book, whether you like to listen on the go with your phone or at home with the Google Assistant on Google Home.\n\nNever lose your place with Smart Resume. Interruptions happen all the time, and sometimes you need to pause your audiobook in the middle of a sentence or word because your mom calls or maps tells you to turn in 200 feet. When the book picks back up, you have no idea what', 3, '2018-04-06', NULL, '2018-05-06', 1),
(21, 6, 'Behind the scenes with startup founders at Google Demo Day', 'Companies all over the world—not just in Silicon Valley—are thinking up their next big idea. Working on the Google for Entrepreneurs team, we see these passionate founders building innovative companies in their hometowns. Google for Entrepreneurs provides financial support and the best of Google''s resources to dozens of coworking spaces and community programs across 125 countries.', '<p style="text-align: center;">Companies all over the world—not just in Silicon Valley—are thinking up their next big idea. Working on the Google for Entrepreneurs team, we see these passionate founders building innovative companies in their hometowns. Google for Entrepreneurs provides financial support and the best of Google''s resources to dozens of coworking spaces and community programs across 125 countries. We also create Campuses—physical hubs where entrepreneurs can learn, connect, and build companies—and put on events like Google Demo Day. Demo Day, which just happened in San Francisco on&nbsp;March 28th, brought startups from across the Americas to&nbsp;</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" title="bo-hinh-nen-chat-luong-cao-11.jpg" src="https://res.cloudinary.com/huypq/image/upload/v1523087973/blog/ayvkmew0qytyzsyrj7a8.jpg" alt="" width="384" height="216"></p>', 3, '2018-04-07', '2018-04-07', '2018-05-05', 1),
(22, 6, 'huy ngao da', '', '<p><img style="display: block; margin-left: auto; margin-right: auto;" title="bo-hinh-nen-chat-luong-cao-11.jpg" src="https://res.cloudinary.com/huypq/image/upload/v1523087629/blog/ah44k8cp8sqfdtipuyd8.jpg" alt="" width="384" height="216"></p>', 1, '2018-04-07', NULL, '2018-05-06', 0),
(23, 6, 'asdf', '', '<p><img style="display: block; margin-left: auto; margin-right: auto;" title="bo-hinh-nen-chat-luong-cao-11.jpg" src="https://res.cloudinary.com/huypq/image/upload/v1523088259/blog/xzskdl3twl2e3fzo3fee.jpg" alt="" width="384" height="216"></p>\n<p style="text-align: center;">vai lua</p>', 1, '2018-04-07', '2018-04-07', '2018-05-06', 0),
(25, 6, 'asasdf', '', '<p style="text-align: center;"><img title="bo-hinh-nen-chat-luong-cao-11.jpg" src="https://res.cloudinary.com/huypq/image/upload/v1523123556/blog/vgi69wvhkrifosn3cgcx.jpg" alt="" width="384" height="216"></p>', 1, '2018-04-07', NULL, '2018-05-07', 0),
(26, 6, 'image', '', '<p>asdfasdf</p>', 1, '2018-04-07', NULL, '2018-05-06', 0),
(28, 6, 'Companies all over the world—not just in Silicon Valley', 'Companies all over the world—not just in Silicon Valley—are thinking up their next big idea. Working on the Google for Entrepreneurs team, we see these passionate founders building innovative companies in their hometowns. Google for Entrepreneurs provides financial support and the best of Google''s resources to dozens of coworking spaces and community programs across 125 countries.', '<p>Companies all over the world—not just in Silicon Valley—are thinking up their next big idea. Working on the Google for Entrepreneurs team, we see these passionate founders building innovative companies in their hometowns. Google for Entrepreneurs provides financial support and the best of Google''s resources to dozens of coworking spaces and community programs across 125 countries. We also create Campuses—physical hubs where entrepreneurs can learn, connect, and build companies—and put on events like Google Demo Day. Demo Day, which just happened in San Francisco on&nbsp;March 28th, brought startups from across the Americas to&nbsp;</p>\n<p style="text-align: center;"><img title="bo-hinh-nen-chat-luong-cao-11.jpg" src="https://res.cloudinary.com/huypq/image/upload/v1523087973/blog/ayvkmew0qytyzsyrj7a8.jpg" alt="" width="384" height="216"></p>', 1, '2018-04-07', NULL, '2018-05-06', 1),
(29, 6, 'Vãi', '', '<p><img style="display: block; margin-left: auto; margin-right: auto;" title="IMG_20180324_225531_172.jpg" src="https://res.cloudinary.com/huypq/image/upload/v1523126579/blog/n9hhi0n0wvgsllg8qjez.jpg" alt="" width="194" height="194"></p>\n<p>&nbsp;</p>', 1, '2018-04-07', NULL, '2018-05-06', 0),
(30, 6, 'Ghê ghê', '', '<ol>\n<li>Vãi đái thật&nbsp;&nbsp;</li>\n<li>Quá là cú mèo luôn</li>\n</ol>', 1, '2018-04-07', NULL, '2018-05-07', 0),
(31, 6, 'acd', '', '<p><img style="display: block; margin-left: auto; margin-right: auto;" title="bo-hinh-nen-chat-luong-cao-11.jpg" src="https://res.cloudinary.com/huypq/image/upload/v1523173108/blog/wbrinkwbhz5jnycyk1tg.jpg" alt="" width="384" height="216"></p>\n<p>&nbsp;</p>', 1, '2018-04-08', NULL, '2018-05-06', 0),
(32, 6, 'Mu vô địch', '', '<p><img style="display: block; margin-left: auto; margin-right: auto;" title="TMPDOODLE1523175653990.jpg" src="https://res.cloudinary.com/huypq/image/upload/v1523175700/blog/bk9xnwwmoeywutydkyvh.jpg" alt="" width="582" height="329"></p>\n<p>&nbsp;</p>', 1, '2018-04-08', '2018-04-08', '2018-05-06', 0),
(33, 6, '“A Good Night” with John Legend and Pixel 2', 'John Legend just premiered the music video for his new single “A Good Night”—and it was filmed entirely on Pixel 2. We spoke to John about the inspiration behind the video and what it’s like living and communicating in the digital age.', '<p>John Legend just premiered the music video for his new single “A Good Night”—and it was filmed entirely on Pixel 2. We spoke to John about the inspiration behind the video and what it’s like living and communicating in the digital age.</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" title="lights.jpg" src="https://res.cloudinary.com/huypq/image/upload/v1523258043/blog/pvwcecjqix4wmresudad.jpg" alt="" width="600" height="400"></p>\n<p><strong>Keyword: Tell us about the inspiration behind the music video for “A Good Night.”</strong></p>\n<p>John: The song and the video are about a magical night where you meet someone you immediately connect with and can envision a future together. You''re single, dating, probably using all the apps people use now (I haven''t dated since the advent of Tinder, etc., but it''s a fascinating era in romance), and not finding someone special. But one night—maybe caught up in the music or the drinks or whatever—you meet someone that changes everything. That''s a good night!&nbsp;</p>\n<p>&nbsp;</p>\n<p>The video is set in a club and visually represents the swiping left of the apps by literally swiping dating candidates away.&nbsp;But eventually our couple finds each other.&nbsp;And then, during the bridge, we see things transform into a fantasy future where our couple sees themselves getting married.&nbsp;It turns into a beautiful celebration of love and connection.&nbsp;All DJ''ed and hosted by yours truly!</p>', 3, '2018-04-09', '2018-06-10', '2018-05-06', 1),
(34, 14, 'tesst tesst', '', '<p style="text-align: justify;">asdf</p>', 1, '2018-05-01', NULL, '2018-05-01', 0),
(35, 10, 'fgsfdg', '', '<p style="text-align: center;">sdfg</p>', 1, '2018-05-01', NULL, '2018-05-01', 0),
(36, 16, 'Improving Autoplay in Chrome', 'For many, Chrome is more than a browser—it’s also a TV, phone, radio, and jukebox for the wide range of media experiences the web has to offer. And when you hit your favorite pump-up playlist, you want to get right to it instead of having to hit “play” every time.', '<p>For many, Chrome is more than a browser—it’s also a TV, phone, radio, and jukebox for the wide range of media experiences the web has to offer. And when you hit your favorite pump-up playlist, you want to get right to it instead of having to hit “play” every time.</p>\n<p>At the same time, you probably don’t like it when you click on a link, land on a website, and it automatically plays sound that you weren’t expecting. In fact, in Chrome a significant number of autoplays are paused, muted, or have their tab closed within six seconds by people who don’t want them. That’s why we’re announcing a new policy on Chrome desktop to block unwanted autoplays.</p>\n<p>Chrome does this by learning your preferences. If you don’t have browsing history, Chrome allows autoplay for over 1,000 sites where we see that the highest percentage of visitors play media with sound. As you browse the web, that list changes as Chrome learns and enables autoplay on sites where you play media with sound during most of your visits, and disables it on sites where you don’t. This way, Chrome gives you a personalized, predictable browsing experience.</p>\n<p>As you teach Chrome, you may find that you need to click “play” every now and then, but overall the new policy blocks about half of unwanted autoplays, so you will have fewer surprises and less unwanted noise when you first arrive at a website. The policy is enabled in the latest version of Chrome—update today and try it out.</p>', 3, '2018-05-07', NULL, NULL, 1),
(37, 16, 'Thanking teachers by helping them get the resources they need', 'When I taught history in a public school in the Bronx, many of my fellow teachers had great ideas for books their students could read, field trips they would organize for students, or projects they would do in class, if only there was funding to make those ideas happen. I had a sense that people would want to help teachers like us if they could see exactly where their money was going. So with help from my students, I sketched out a site where teachers could request the exact resources they needed for their classroom, and donors of all stripes could give to the projects that inspired them. Since our founding in 2000, 3 million donors have given $680 million to fund over 1 million classroom projects.', '<div class="module--text h-c-page">\n<div class="h-c-grid">\n<div class="uni-paragraph\n          h-c-grid__col h-c-grid__col--8 h-c-grid__col-m--6 h-c-grid__col-l--6\n          h-c-grid__col--offset-2 h-c-grid__col-m--offset-3 h-c-grid__col-l--offset-3">\n<div class="rich-text">\n<p>When I taught history in a public school in the Bronx, many of my fellow teachers had great ideas for books their students could read, field trips they would organize for students, or projects they would do in class, if only there was funding to make those ideas happen. I had a sense that people would want to help teachers like us if they could see exactly where their money was going. So with help from my students, I sketched out a site where teachers could request the exact resources they needed for their classroom, and donors of all stripes could give to the projects that inspired them. Since our founding in 2000, 3 million donors have given $680 million to fund over 1 million classroom projects.</p>\n<p>I never could have imagined reaching this scale back in my classroom days, and Google.org has been key to our growth. Google.org shares our belief that teachers understand their students—and the resources they need to teach those students—better than anyone else. Their financial support has empowered teachers across the country to bring their ideas to life.&nbsp;</p>\n<p>Since 2012, Google.org has supported 17,000 public school teachers who needed funding for their classrooms. This includes teachers like&nbsp;<a href="https://www.donorschoose.org/project/modeling-in-physics-technology-in-inqui/1127525/" target="_blank" rel="noopener">Mr. Narisetty</a>&nbsp;who needed lab equipment for a new AP Physics lab,&nbsp;<a href="https://www.donorschoose.org/donors/proposal.html?id=1151779" target="_blank" rel="noopener">Ms. Gibson</a>&nbsp;who needed funding for dolls and costumes for her kindergarteners, and&nbsp;<a href="https://www.donorschoose.org/project/stress-relief-my-way-is-ok/1736872/" target="_blank" rel="noopener">Mrs. Price</a>&nbsp;who requested sensory processing materials to help her students with special needs relax.</p>\n<p>Google.org’s continued support has enabled us to pilot new ways to serve students. Back in 2012, they pioneered “Classroom Rewards,” through which teachers who launched new AP STEM courses earned $100 in classroom funding for each student who received a passing score on their AP exam. This program launched more than 500 new AP STEM classes at high schools predominantly serving students from low income families. We recently launched&nbsp;<a href="https://www.kaggle.com/donorschoose/io" target="_blank" rel="noopener">an open source data science project</a>&nbsp;that enables developers to use machine learning to help us match donors with more relevant teacher projects.</p>\n</div>\n</div>\n</div>\n</div>\n<div class="uni-pull-quote h-c-page">\n<section class="h-c-grid">\n<div class="uni-pull-quote__wrapper h-c-grid__col h-c-grid__col--8 h-c-grid__col-m--6 h-c-grid__col-l--6\n      h-c-grid__col--offset-2 h-c-grid__col-m--offset-3 h-c-grid__col-l--offset-3">\n<p>This week, Google.org is helping us celebrate Teacher Appreciation Week by honoring what teachers want and need. Google.org is doubling donations to one category of classroom projects every day this week for a total of up to $500,000. These daily categories, like professional development or art, are based on the terms our teachers have searched for most on DonorsChoose.org.</p>\n<p>We’re kicking off the week by supporting Professional Development projects, so that teachers can bring even more skills to the classroom.</p>\n<p>Please join us by heading to&nbsp;<a href="https://www.donorschoose.org/donors/search.html?matchingId=1410" target="_blank" rel="noopener">DonorsChoose.org</a>&nbsp;to show teachers your appreciation in a way you know they’ll love.</p>\n</div>\n</section>\n</div>', 2, '2018-05-07', NULL, NULL, 1),
(38, 16, 'Introducing the first Daydream standalone VR headset and new ways to capture memories', 'Back in January, we announced the Lenovo Mirage Solo, the first standalone virtual reality headset that runs Daydream. Alongside it, we unveiled the Lenovo Mirage Camera, the first camera built for VR180. ', '<p>Back in January, we announced the Lenovo Mirage Solo, the first standalone virtual reality headset that runs Daydream. Alongside it, we unveiled the Lenovo Mirage Camera, the first camera built for VR180. Designed with VR capture and playback in mind, these devices work great separately and together, and both are&nbsp;<a href="https://www3.lenovo.com/us/en/daydreamvr/" target="_blank" rel="noopener">available for purchase</a>&nbsp;today.</p>\n<h2><strong>More immersive</strong></h2>\n<p>The Mirage Solo puts everything you need for mobile VR in a single device. You don''t need a smartphone, PC, or any external sensors—just pick it up, put it on, and you''re in VR in seconds.</p>\n<p>The headset was designed with comfort in mind, and it has a wide field of view and an advanced display that’s optimized for VR. It also features WorldSense, a powerful new technology that enables PC-quality positional tracking on a mobile device, without the need for any additional sensors. With it, you can duck, dodge and lean, step backward, forward or side-to-side. All of this makes for a more natural and immersive experience, so you really feel like you’re there.</p>\n<p>Alongside the Mirage Solo, we worked with Lenovo to develop the first VR180 consumer camera, the Lenovo Mirage Camera. VR180 lets anyone capture immersive VR content with point and shoot simplicity. Photos and videos taken with the camera transport you back to the moment of capture with a 180 degree field of view and crisp, three-dimensional imagery.</p>\n<p>&nbsp;</p>\n<p>There’s no better place to relive your VR180 memories than in the Lenovo Mirage Solo headset. And with support for VR180 built into Google Photos, you can easily share those moments with your friends and family—regardless of what device they have.</p>', 8, '2018-05-07', NULL, NULL, 1),
(39, 16, 'One simple way to get more out of Google', 'More and more, we rely on the internet for ways to safely store the things that matter—making life simpler and less cluttered. Over the years, we’ve provided people with easy, secure ways to create, store and share files online, including 15 GB of free space with every Google Account. Thanks to mobile phones, and new file formats like 4K video and high-res photography, people are storing more than ever before.', '<p>More and more, we rely on the internet for ways to safely store the things that matter—making life simpler and less cluttered. Over the years, we’ve provided people with easy, secure ways to create, store and share files online, including 15 GB of free space with every Google Account. Thanks to mobile phones, and new file formats like 4K video and high-res photography, people are storing more than ever before.</p>\n<p>That’s why we’re introducing Google One, a simple plan for expanded storage that includes extra benefits to help you get more out of Google. In the next few months, all paid consumer Google Drive storage plans will be upgraded to Google One. This change doesn’t affect G Suite business customers.</p>\n<h3>More space, smarter options</h3>\n<p>With Google One, we’ve upgraded our paid storage plans so you’ll have all the space you need for your Google Drive, Gmail, and original quality photos and videos in Google Photos. With lots of options, ranging from 100GB to 30TB, you can choose the plan that’s right for you.</p>\n<h3>Access to Google experts, plus extra benefits</h3>\n<p>People who use a lot of storage tend to use a lot of other Google products, too. So with Google One you get one-tap access to experts for help with our consumer products and services. Plus, you’ll gain access to extras from other Google products, like credits on Google Play or deals on select hotels found in Google Search. And we’ll be adding more benefits over time.</p>\n<h3>Easy to share with your family</h3>\n<p>One of the most common requests we’ve received is for storage plans to be sharable within a family. With Google One, you can add up to five family members to your plan and simplify storage under one bill. Everyone gets their own private storage space as well as the additional benefits of Google One.</p>\n<h3>Coming soon to paid Google Drive plans</h3>\n<p>If you have a paid Drive storage plan, you’ll be upgraded to Google One automatically over the coming months, starting in the U.S. and then expanding globally. Look out for an email confirming your upgrade to Google One, where you can manage your storage plan and benefits. The way you use Drive to store and share files doesn’t change.</p>\n<p>For everyone else, we’re working to bring Google One to you later this year. If you’d like to be notified when Google One becomes available in your country.</p>', 8, '2018-05-17', NULL, NULL, 1),
(40, 6, 'asdf', NULL, '<p></p><p></p><p><img src="https://res.cloudinary.com/huypq/image/upload/v1527907791/blog/ykdogtv8ibq6qjnxpypo.gif" data-filename="LoginLogo.gif" style="width: 218px;"></p><p>asdfasdf</p><p><img src="https://res.cloudinary.com/huypq/image/upload/v1527907791/blog/ld3lqts89nkewrfbcen8.png" data-filename="logout.png" style="width: 64px;"><br></p><p></p><p></p>', 4, '2018-06-02', NULL, '2018-06-02', 0),
(41, 6, 'trachpro', NULL, '<p>this is trach</p>', 3, '2018-06-05', NULL, '2018-06-05', 0),
(42, 6, 'tesst', NULL, '<p><img src="https://res.cloudinary.com/huypq/image/upload/v1528225127/blog/hcdgo3ujcw2dpuqets81.png" style="width: 1088.03px;" data-filename="image.png"><br></p>', 1, '2018-06-05', NULL, '2018-06-05', 0),
(43, 6, 'sdfg', NULL, '<p>sdfgsdfg</p>', 1, '2018-06-08', NULL, '2018-06-08', 0),
(44, 6, 'Trsd', NULL, '<p><img src="https://res.cloudinary.com/huypq/image/upload/v1528512854/blog/l1efdvuvhww1g1npol4e.jpg" data-filename="IMAG0022.jpg" style="width: 308px;"><br></p>', 1, '2018-06-09', NULL, '2018-06-09', 0),
(45, 6, 'Vaid', NULL, '<p>Bxms</p>', 1, '2018-06-09', NULL, '2018-06-09', 0),
(46, 6, 'ghê ghê', NULL, '<p style="text-align: center; "><img src="https://res.cloudinary.com/huypq/image/upload/v1528564066/blog/z1q6zhhpwfeqvlutrglc.jpg" style="width: 488.026px;" data-filename="20160810_094606.jpg"></p><p style="text-align: center; ">tuyệt cú mèo luôn rồi</p>', 1, '2018-06-09', '2018-06-10', '2018-06-10', 0),
(47, 26, 'Raining ', NULL, '<p><img src="https://res.cloudinary.com/huypq/image/upload/v1528567961/blog/kheomn6z6vd3ixyiiq7l.jpg" data-filename="IMG_20180609_115109.jpg" style="width: 308px;"></p><p>Rainy day in Hanoi :u</p>', 7, '2018-06-09', NULL, NULL, 1),
(48, 26, 'Beauty', NULL, '<p>What a beautiful night....​</p><p style="text-align: right;"><span style="background-color: rgb(255, 255, 0);">Lovely​</span></p><p><img src="https://res.cloudinary.com/huypq/image/upload/v1528568824/blog/spaaey1clto7hldgmyjg.jpg" data-filename="IMG_20180428_175739_748.jpg" style="width: 308px;"><br></p>', 7, '2018-06-09', NULL, NULL, 1),
(49, 6, 'Explore the high seas in VR and Google Earth on World Oceans Day', 'On&nbsp;<a href="http://www.worldoceansday.org/about" target="_blank" style="background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(123, 31, 162); text-decoration-line: none;">World Oceans Day</a>, we honor one of our most unique ecosystems and important resources. This year, we invite you to learn more about our vast and varied oceans, and some of the challenges facing them, by immersing yourself in virtual reality (VR) and diving into curated nautical adventures in Google Earth.', '<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: inherit; color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif;"><br></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: inherit; color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif;"><br></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: inherit; color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif;"><br></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: inherit; color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif;"><br></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: inherit; color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif;">On&nbsp;<a href="http://www.worldoceansday.org/about" target="_blank" style="background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(123, 31, 162); text-decoration-line: none;">World Oceans Day</a>, we honor one of our most unique ecosystems and important resources. This year, we invite you to learn more about our vast and varied oceans, and some of the challenges facing them, by immersing yourself in virtual reality (VR) and diving into curated nautical adventures in Google Earth.</p><p style="margin-top: 16px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: inherit; color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif;">&nbsp;</p><p><span style="color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">It’s estimated that around&nbsp;</span><a href="http://www.fao.org/save-food/resources/keyfindings/infographics/fish/en/" target="_blank" style="background: 0px 0px rgb(255, 255, 255); color: rgb(123, 31, 162); text-decoration-line: none; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">35 percent</a><span style="color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">&nbsp;of harvested fish and seafood is lost or wasted somewhere between when it’s caught and when it appears on your plate. As part of our&nbsp;</span><a href="https://vr.google.com/daydream/impact/" target="_blank" style="background: 0px 0px rgb(255, 255, 255); color: rgb(123, 31, 162); text-decoration-line: none; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">Daydream Impact</a><span style="color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">&nbsp;program, the World Wildlife Fund and Condition One brought this journey to life through a virtual reality documentary showing how fish get from&nbsp;</span><a href="https://www.youtube.com/watch?v=pkfgILiGbVk&amp;feature=youtu.be" target="_blank" style="background: 0px 0px rgb(255, 255, 255); color: rgb(123, 31, 162); text-decoration-line: none; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">Ocean to Plate</a><span style="color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">. Short of actually being on a fishing boat or in a processing plant, there’s no better way to understand the fishing industry supply chain and its impact on our oceans. Check out the video below, or by using a VR viewer like Cardboard or Daydream View. You can also experience this journey in&nbsp;</span><a href="https://g.co/earth/oceantoplate" target="_blank" style="background: 0px 0px rgb(255, 255, 255); color: rgb(123, 31, 162); text-decoration-line: none; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">Google Earth</a><span style="color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">.</span><br></p>', 1, '2018-06-09', NULL, NULL, 0),
(50, 6, 'Explore the high seas in VR and Google Earth on World Oceans Day', 'On &nbsp; World Oceans Day, we honor one of our most unique ecosystems and important resources. This year, we invite you to learn more about our vast and varied oceans, and some of the challenges facing them, by immersing yourself in virtual reality (VR) and diving into curated nautical adventures in Google Earth.', '<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: inherit; color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif;">On&nbsp;<a href="http://www.worldoceansday.org/about" target="_blank" style="background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(123, 31, 162); text-decoration-line: none;">World Oceans Day</a>, we honor one of our most unique ecosystems and important resources. This year, we invite you to learn more about our vast and varied oceans, and some of the challenges facing them, by immersing yourself in virtual reality (VR) and diving into curated nautical adventures in Google Earth.</p><p style="margin-top: 16px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: inherit; color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif;">&nbsp;</p><p><span style="color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">It’s estimated that around&nbsp;</span><a href="http://www.fao.org/save-food/resources/keyfindings/infographics/fish/en/" target="_blank" style="background: 0px 0px rgb(255, 255, 255); color: rgb(123, 31, 162); text-decoration-line: none; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">35 percent</a><span style="color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">&nbsp;of harvested fish and seafood is lost or wasted somewhere between when it’s caught and when it appears on your plate. As part of our&nbsp;</span><a href="https://vr.google.com/daydream/impact/" target="_blank" style="background: 0px 0px rgb(255, 255, 255); color: rgb(123, 31, 162); text-decoration-line: none; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">Daydream Impact</a><span style="color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">&nbsp;program, the World Wildlife Fund and Condition One brought this journey to life through a virtual reality documentary showing how fish get from&nbsp;</span><a href="https://www.youtube.com/watch?v=pkfgILiGbVk&amp;feature=youtu.be" target="_blank" style="background: 0px 0px rgb(255, 255, 255); color: rgb(123, 31, 162); text-decoration-line: none; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">Ocean to Plate</a><span style="color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">. Short of actually being on a fishing boat or in a processing plant, there’s no better way to understand the fishing industry supply chain and its impact on our oceans. Check out the video below, or by using a VR viewer like Cardboard or Daydream View. You can also experience this journey in&nbsp;</span><a href="https://g.co/earth/oceantoplate" target="_blank" style="background: 0px 0px rgb(255, 255, 255); color: rgb(123, 31, 162); text-decoration-line: none; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">Google Earth</a><span style="color: rgb(32, 33, 36); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 16px;">.</span><br></p>', 1, '2018-06-09', NULL, NULL, 1),
(51, 6, 'gsdfg', NULL, '<p>sdfg</p>', 1, '2018-06-10', NULL, '2018-06-10', 0),
(52, 27, 'Let''s swim?', NULL, '<ol><li>Swimming is one of the best exercise for our health.<img src="https://res.cloudinary.com/huypq/image/upload/v1528616857/blog/c7d2rc7h23mlnvzpkuim.jpg" data-filename="IMG_20180420_133231.jpg" style="width: 308px;"></li></ol>', 6, '2018-06-10', NULL, NULL, 1),
(53, 6, 'asdadasd', 'asdasdad', '<p>asdasdad</p>', 1, '2018-06-10', NULL, '2018-06-10', 0),
(54, 6, 'Ghs', NULL, '<p>Jsbd</p>', 2, '2018-06-10', NULL, '2018-06-10', 0),
(55, 6, '...', '&nbsp; &nbsp; hihihaha', '<p>&nbsp; &nbsp; hihihaha<br></p>', 2, '2018-06-11', NULL, '2018-06-11', 0),
(56, 28, 'some thing here', 'testing', '<p>testing</p>', 1, '2018-06-11', NULL, NULL, 1),
(57, 6, 'tesst post', NULL, '<p>nsjsn snsjsnss s sjsnsbsb</p>', 2, '2018-06-11', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `activationCode` varchar(40) DEFAULT NULL,
  `profilePicture` varchar(256) DEFAULT NULL,
  `forgottenPasswordCode` varchar(40) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `deletedAt` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `name`, `password`, `email`, `activationCode`, `profilePicture`, `forgottenPasswordCode`, `createdAt`, `deletedAt`, `status`) VALUES
(6, 'admin', 'Huy ', '$2b$10$ukVyGvrlo/0aQE1DPIm2DemseNzvarwv66jPOBBDkTqJ3/EROsfIG', 'p.q.huy97@gmail.com', NULL, 'https://res.cloudinary.com/huypq/image/upload/v1525745402/blog/rmagayrdre1rlhbrkvn8.jpg', NULL, '2018-04-01', NULL, 1),
(10, 'trachpro', 'trachdaik', 'UfZ96CZ', 'tu.phamminh.2207@gmail.com', NULL, 'https://res.cloudinary.com/huypq/image/upload/v1523251767/blog/ocwzdixifajodntctgwi.jpg', NULL, NULL, NULL, 1),
(14, 'trachpro1', 'trachpro', 'vailua', 'tu2.phamminh.2207@gmail.com', NULL, 'https://res.cloudinary.com/huypq/image/upload/v1525191318/blog/usbdlwxsvpszqd7pttmd.jpg', NULL, NULL, NULL, 1),
(16, 'huypq', 'Pham Huy', '123456', 'huypq1@gmail.com', NULL, 'https://res.cloudinary.com/huypq/image/upload/v1523162344/avatar.png', NULL, NULL, NULL, 1),
(18, '12345', 'asdf', '123456', 'asd@adsf.com', NULL, 'https://res.cloudinary.com/huypq/image/upload/v1523162344/avatar.png', NULL, NULL, NULL, 1),
(19, 'asdfas', 'asf', 'vailua', 'asdsdf@asdf.asf', NULL, 'https://res.cloudinary.com/huypq/image/upload/v1523162344/avatar.png', NULL, NULL, NULL, 1),
(22, 'tuong', 'tuong', 'tuongtuong', 'tuong@gna.com', NULL, 'https://res.cloudinary.com/huypq/image/upload/v1523162344/avatar.png', NULL, NULL, NULL, 1),
(23, 'trach1', 'trach', 'zJGr03N', 'trach@ad.df', NULL, 'https://res.cloudinary.com/huypq/image/upload/v1523469468/blog/vbs3vfirsi8rx6cmpszn.jpg', NULL, NULL, NULL, 1),
(24, 'testt', 'Test Account', '$2b$10$lgbpLzV8xns50ZJ9KWoQDO7zS1qloQzAAJRHhCio/j70D3NNWFgg2', 'test@abc.com', NULL, 'https://res.cloudinary.com/huypq/image/upload/v1523162344/avatar.png', NULL, NULL, NULL, 1),
(26, 'Ayeeee', 'AMT', '$2b$10$.BbSUpinFwIlre52XIWBs.rs9IvNYfaqmYjRUPHaDiUKm7..c6wqG', 'fangfangamt@gmail.com', NULL, 'https://res.cloudinary.com/huypq/image/upload/v1523162344/avatar.png', NULL, NULL, NULL, 1),
(27, 'Coral', 'Coral', '$2b$10$LxmDLZQ0ee5.bw14CtGD4uPclA4UbDQij5HP6Vmc1EhSt4snY0Sle', 'jamesmit@gmail.com', NULL, 'https://res.cloudinary.com/huypq/image/upload/v1523162344/avatar.png', NULL, '2018-06-10', NULL, 1),
(28, 'tupham', 'tu pham minh', '$2b$10$xHgnDcmtXly4Oo.KJAKYru8py.mvMvvzoyq.LJuqz1R0ryzQJ4X7e', 'tupham@gmal.com', NULL, 'https://res.cloudinary.com/huypq/image/upload/v1523162344/avatar.png', NULL, '2018-06-11', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_post_id` (`postID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_author_id` (`authorID`),
  ADD KEY `fk_category` (`categoryID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_post_id` FOREIGN KEY (`postID`) REFERENCES `posts` (`ID`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_author_id` FOREIGN KEY (`authorID`) REFERENCES `users` (`ID`),
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`categoryID`) REFERENCES `categories` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
