SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+02:00";

CREATE DATABASE IF NOT EXISTS `rush00` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `rush00`;

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `commands`;
CREATE TABLE IF NOT EXISTS `commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `items` varchar(8000) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `category_id2` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(8000) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` int(5) NOT NULL,
  `city` varchar(255) NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `rush00`.`categories` (`id`, `name`) VALUES (NULL, 'Sativa'), (NULL, 'Indica'), (NULL, 'Wholesale'), (NULL, 'Magic Mushrooms'), (NULL, 'Combos');

INSERT INTO `rush00`.`users` (`id`, `login`, `password`, `lastname`, `firstname`, `address`, `zipcode`, `city`, `admin`) VALUES (NULL, 'root', '4925da7da7a56260baf1c37925a8fa24e46ad8b107dcd21f44e39e4751bae1304fc70de7acb847ffa96126bb372de005f5320f1ede6f9df07c7d53f9c160f022', 'root', 'root', 'root', 7500, 'root', 1) ;

INSERT INTO `rush00`.`items` (`id`, `category_id`, `category_id2`, `name`, `price`) VALUES 
(NULL, 1, 0, 'Green Crack (3g)', 150),
(NULL, 1, 0, 'Candy Jack (3g)', 150),
(NULL, 1, 0, 'Pineapple Express (4g)', 200),
(NULL, 1, 0, 'Power Plant (5g)', 200),
(NULL, 1, 0, 'Vortex (5g)', 200),
(NULL, 2, 0, 'Big Bud (3g)', 150),
(NULL, 2, 0, 'Vanilla Kush (5g)', 200),
(NULL, 2, 0, 'Blueberry (5g)', 200),
(NULL, 2, 0, 'JR (5g)', 200),
(NULL, 3, 1, 'Jack Herer (14g)', 470),
(NULL, 3, 1, 'Ghost Train Haze (20g)', 700),
(NULL, 3, 1, 'Quantum Kush (30g)', 1000),
(NULL, 3, 2, 'Gods Gift (12g)', 420),
(NULL, 3, 2, 'Blackwater (20g)', 670),
(NULL, 3, 2, 'True OG (30g)', 900),
(NULL, 4, 0, 'Texans (2g)', 180),
(NULL, 4, 0, 'Psilocyber Azure-Scenes (1g)', 140),
(NULL, 4, 0, 'Hawaain (2g)', 160),
(NULL, 4, 0, 'Golden Teachers (2g)', 150),
(NULL, 4, 0, 'Penis Envy (1g)', 130),
(NULL, 5, 0, 'Happy Meal (5g Any Strain + 1 Dose of Shrooms)', 250),
(NULL, 5, 0, 'Shroo Mix (1 Dose of Texans + 1 Dose of Hawaains', 300),
(NULL, 5, 0, 'Vanilla Gold (5g Vanilla Kush + 1 Dose of Golden Teachers)', 300),
(NULL, 5, 0, 'Murica (3g Candy Jack + 1 Dose of Texans)', 300),
(NULL, 5, 0, 'The Good, The Bad and The Ugly (4g Pineapple Express + 3g Ghost Train Haze + 2 Doses of Texans', 450),
