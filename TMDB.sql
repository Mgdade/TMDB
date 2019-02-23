-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2019 at 11:50 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TMDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorties`
--

CREATE TABLE `favorties` (
  `Fav_ID` int(11) NOT NULL,
  `Movie_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorties`
--

INSERT INTO `favorties` (`Fav_ID`, `Movie_ID`) VALUES
(2, 4258),
(3, 11397),
(4, 87818),
(5, 4247),
(6, 11397);

-- --------------------------------------------------------

--
-- Table structure for table `latest_movies`
--

CREATE TABLE `latest_movies` (
  `Movie_ID` int(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Poster` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latest_movies`
--

INSERT INTO `latest_movies` (`Movie_ID`, `Name`, `Poster`) VALUES
(35, 'The Simpsons Movie', 0x2f654379746e45726956757233725434374e57666b675058443971732e6a7067),
(4247, 'Scary Movie', 0x2f6276566d56464256514c79744b314834544a5446646e68766634542e6a7067),
(4248, 'Scary Movie 2', 0x2f7453475768535265735632436e717172393154474b795a7a6637392e6a7067),
(4258, 'Scary Movie 5', 0x2f7a597074514c526e65506c7635725967326b594f435a33433331512e6a7067),
(5559, 'Bee Movie', 0x2f5168624f7a705966424f77725269755475396f74506b393139522e6a7067),
(9760, 'Epic Movie', 0x2f6234694f4f497a523139546e717455456574584246784a353459562e6a7067),
(10073, 'Date Movie', 0x2f72683442484d61565a4549543842747437377644426438783270392e6a7067),
(10970, 'Silent Movie', 0x2f77616a4e6c7256446b72795647547a447a39765a4536584b5a6e432e6a7067),
(11397, 'Not Another Teen Movie', 0x2f6c55557955383064576c6c617961315768736b445a4b57367548712e6a7067),
(11836, 'The SpongeBob SquarePants Movie', 0x2f394e736a4677354e454270704962374b55445161343031306a4b542e6a7067),
(11918, 'Superhero Movie', 0x2f3742317536645872484d38554f586b536d77655a76434d576d6c562e6a7067),
(13805, 'Disaster Movie', 0x2f367842724f736638527448656d3364695844474673694b6c74597a2e6a7067),
(87818, 'Movie 43', 0x2f6476327251346d6246596b50546f706d694f6476363044744868742e6a7067),
(137106, 'The Lego Movie', 0x2f6c4d486261644e6d7a6e4b7335766742416b48784b4748756c4f612e6a7067),
(153518, 'The Angry Birds Movie', 0x2f74326d5a7a51586a7051786d71744a4f5070653844723259704d6c2e6a7067),
(216527, 'Avatar: The Tulkun Rider', 0x2f37546f64435848536f615832746534704731314c7a6756346b6d452e6a7067),
(274862, 'The LEGO Ninjago Movie', 0x2f76556f30704e58476870326666544a7869537457743666484c37462e6a7067),
(280217, 'The Lego Movie 2: The Second Part', 0x2f51544553417342565a776a74474a4e445037757469475633377a2e6a7067),
(324849, 'The Lego Batman Movie', 0x2f3170484f71706443594e6d7452564a733670474b514b747472506d2e6a7067),
(378236, 'The Emoji Movie', 0x2f66357046344f597a683477623164594c324152514e64715573455a2e6a7067),
(381344, 'Uru in Blue', 0x2f69584a4f5566363434675834324b32504e75464a6e6c54684336552e6a7067),
(393209, 'Avatar: The Quest for Eywa', 0x2f37546f64435848536f615832746534704731314c7a6756346b6d452e6a7067),
(422641, 'Fantastic Beasts 4', ''),
(422642, 'Fantastic Beasts 5', ''),
(447365, 'Guardians of the Galaxy Vol. 3', 0x2f6c646f593466545a6b4749534d69644e77363047486f4e646750382e6a7067),
(465558, 'The Zero Century: Harlock', 0x2f65594d6d344c59675567487164417a564a51353572654f45476c552e6a7067),
(465559, 'The Zero Century: Maetel', 0x2f6f466272506666674d39347073716b647869584d546c43764374552e6a7067),
(508946, 'Untitled Disney Live Action Project (1)', ''),
(508947, 'Untitled Pixar Animation Project (2)', ''),
(508948, 'Untitled Disney Live Action Project (2)', ''),
(508950, 'Untitled Marvel Project (3)', ''),
(508951, 'Untitled Disney Live Action Project (3)', ''),
(508953, 'Untitled Disney Live Action Project (4)', ''),
(508954, 'Untitled Disney Live Action Project (5)', ''),
(508957, 'Untitled Disney Live Action Project', ''),
(519258, 'Black Blood', 0x2f616446526a4d6959595872656b694c653058416f5a4b6d684439642e6a7067),
(531229, 'Son GÃ¶ktÃ¼rk', 0x2f69756b38744b6e6d6532716a4642307748546143714a62477568662e6a7067),
(553839, 'Saga of Tanya the Evil Movie', 0x2f315665786b76424150306e7a6f69735952677134575065643436682e6a7067),
(575265, 'Mission: Impossible 8', ''),
(579101, 'Untitled Batman Beyond Film', '');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `Movie_ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Poster` blob NOT NULL,
  `Movie_Description` text NOT NULL,
  `Geners` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`Movie_ID`, `Name`, `Poster`, `Movie_Description`, `Geners`) VALUES
(4258, 'Scary Movie 5', 0x2f7a597074514c526e65506c7635725967326b594f435a33433331512e6a7067, 'Home with their newly-formed family, happy parents Dan and Jody are haunted by sinister, paranormal activities. Determined to expel the insidious force, they install security cameras and discover their family is being stalked by an evil dead demon.', ''),
(10073, 'Date Movie', 0x2f72683442484d61565a4549543842747437377644426438783270392e6a7067, 'Spoof of romantic comedies which focuses on a man (Campbell), his crush (Hannigan), his parents (Coolidge, Willard), and her father (Griffin).', ''),
(11397, 'Not Another Teen Movie', 0x2f6c55557955383064576c6c617961315768736b445a4b57367548712e6a7067, 'On a bet, a gridiron hero at John Hughes High School sets out to turn a bespectacled plain Jane into a beautiful and popular prom queen in this outrageous send-up of the teen movie genre.', ''),
(11918, 'Superhero Movie', 0x2f3742317536645872484d38554f586b536d77655a76434d576d6c562e6a7067, 'The team behind Scary Movie takes on the comic book genre in this tale of Rick Riker, a nerdy teen imbued with superpowers by a radioactive dragonfly. And because every hero needs a nemesis, enter Lou Landers, aka the villainously goofy Hourglass.', ''),
(13805, 'Disaster Movie', 0x2f367842724f736638527448656d3364695844474673694b6c74597a2e6a7067, 'In DISASTER MOVIE, the filmmaking team behind the hits \"Scary Movie,\" \"Date Movie,\" \"Epic Movie\" and \"Meet The Spartans\" this time puts its unique, inimitable stamp on one of the biggest and most bloated movie genres of all time -- the disaster film.', ''),
(87818, 'Movie 43', 0x2f6476327251346d6246596b50546f706d694f6476363044744868742e6a7067, 'The film is composed of multiple comedy shorts presented through an overarching segment titled \"The Pitch\", in which Charlie Wessler, a mad screenwriter, is attempting to pitch a script to film executive Griffin Schraeder. After revealing several of the stories in his script, Wessler becomes agitated when Schraeder dismisses his outrageous ideas, and he pulls a gun on him and forces him to listen to multiple other stories before making Schraeder consult his manager, Bob Mone, to purchase the film.', ''),
(137106, 'The Lego Movie', 0x2f6c4d486261644e6d7a6e4b7335766742416b48784b4748756c4f612e6a7067, 'An ordinary Lego mini-figure, mistakenly thought to be the extraordinary MasterBuilder, is recruited to join a quest to stop an evil Lego tyrant from gluing the universe together.', ''),
(153518, 'The Angry Birds Movie', 0x2f74326d5a7a51586a7051786d71744a4f5070653844723259704d6c2e6a7067, 'An island populated entirely by happy, flightless birds or almost entirely. In this paradise, Red, a bird with a temper problem, speedy Chuck, and the volatile Bomb have always been outsiders. But when the island is visited by mysterious green piggies, itâ€™s up to these unlikely outcasts to figure out what the pigs are up to.', ''),
(274862, 'The LEGO Ninjago Movie', 0x2f76556f30704e58476870326666544a7869537457743666484c37462e6a7067, 'Six young ninjas are tasked with defending their island home of Ninjago. By night, theyâ€™re gifted warriors using their skill and awesome fleet of vehicles to fight villains and monsters. By day, theyâ€™re ordinary teens struggling against their greatest enemy....high school.', ''),
(324849, 'The Lego Batman Movie', 0x2f3170484f71706443594e6d7452564a733670474b514b747472506d2e6a7067, 'In the irreverent spirit of fun that made â€œThe Lego Movieâ€ a worldwide phenomenon, the self-described leading man of that ensembleâ€”Lego Batmanâ€”stars in his own big-screen adventure. But there are big changes brewing in Gotham, and if he wants to save the city from The Jokerâ€™s hostile takeover, Batman may have to drop the lone vigilante thing, try to work with others and maybe, just maybe, learn to lighten up.', ''),
(378236, 'The Emoji Movie', 0x2f66357046344f597a683477623164594c324152514e64715573455a2e6a7067, 'Gene, a multi-expressional emoji, sets out on a journey to become a normal emoji.', ''),
(553839, 'Saga of Tanya the Evil Movie', 0x2f315665786b76424150306e7a6f69735952677134575065643436682e6a7067, 'No overview found.', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favorties`
--
ALTER TABLE `favorties`
  ADD PRIMARY KEY (`Fav_ID`);

--
-- Indexes for table `latest_movies`
--
ALTER TABLE `latest_movies`
  ADD PRIMARY KEY (`Movie_ID`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`Movie_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favorties`
--
ALTER TABLE `favorties`
  MODIFY `Fav_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `Movie_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=579102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
