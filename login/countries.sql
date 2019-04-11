20190304VCSWEBVAK
Stream
Classwork
People
20190304VCSWEBVAK
Upcoming
Woohoo, no work due soon!
View all

Share something with your class…
PHP 06 - Paskaitos medþiaga
Posted 6:30 PM
http://youtu.be/zc7x7aT1wAA

PHP 06.pdf

backend-search.php

countries.sql

index.php

search.php

style.css
PHP 15
Posted Apr 1
Assigned
Savo projekte sukurkite kontaktinæ formà. Jos duomenys turëtø bûti siunèiami el. paðtu ir ákeliami á duomenø bazæ.

Andrius Markevicius7:13 AM
Neprivaloma. Jei bus likæ dar laiko ir noro, studentai galës.
PHP 05 - Paskaitos medþiaga
Posted Apr 1

PHP 05.pdf

index.php

popup-logo.png

style.css

Andrius MarkeviciusApr 1
http://youtu.be/YF9ehI27l0s
PHP 14
Posted Mar 29
Turned in
- Sukurkite savo funkcijà, kuri narðyklëje rodytø dabartinius metus: © 2018, jei tinklalapis buvo sukurtas ankstesniais metais, turëtø rodyti tokiu formatu: ?© 2015-2018
- Pasvarstykite, kaip rasite dabartinius metus ir ar jûsø funkcija turës parametrø.
- Naudokitës: http://php.net/manual/en/function.date.php
PHP 13
Posted Mar 29
Turned in
- Uz?ras?yk klase?, kuri talpintu? z?mogaus varda?, pavarde? ir metoda? pasisveikinimui.
- Sukurk du z?mones su skirtingais duomenimis.
- Is?vesk s?iuos duomenis nars?ykle?je.
PHP 04 - Paskaitos medþiaga
Posted Mar 29
http://youtu.be/pqGoLeU378A

PHP 04.pdf
PHP 10
Posted Mar 28
Turned in
- Sukurkite funkcija? su dviem parametrais a ir b, kurie yra stac?iakampio kraðtiniu? ilgiai. Funkcija apskaic?iuos stac?iakampio plota?.
- Rezultata? iðveskite i? narðykle?.
PHP 11
Posted Mar 28
Assigned
- Sukurkite forma?, kuri leis vartotojui i?vesti stac?iakampio ilgi? ir ploti?. I?vestus duomenis panaudokite stac?iakampio ploto apskaic?iavimui. Rezultata? iðveskite i? narðykle?.
PHP 12
Posted Mar 28
Assigned
- Sukurkite forma?, kuri leis vartotojui i?vesti savo varda? ir pavarde?. Paspaudus mygtuka?, ðie duomenys ture?tu? bu?ti iðspausdinti narðykle?je.
PHP 03 - Paskaitos medþiaga
Posted Mar 28
http://youtu.be/kCkKha3SCmo

PHP 03.pdf

-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2017 at 09:14 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=130 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'Angola'),
(5, 'Argentina'),
(6, 'Armenia'),
(7, 'Australia'),
(8, 'Austria'),
(9, 'Bahrain'),
(10, 'Bangladesh'),
(11, 'Belarus'),
(12, 'Belgium'),
(13, 'Bhutan'),
(14, 'Bolivia'),
(15, 'Bosnia & Herzegovina'),
(16, 'Botswana'),
(17, 'Brazil'),
(18, 'Bulgaria'),
(19, 'Cambodia'),
(20, 'Cameroon'),
(21, 'Canada'),
(22, 'Chile'),
(23, 'China'),
(24, 'Colombia'),
(25, 'Costa Rica'),
(26, 'Croatia'),
(27, 'Cuba'),
(28, 'Cyprus'),
(29, 'Czech Republic'),
(30, 'Denmark'),
(31, 'Ecuador'),
(32, 'Egypt'),
(33, 'Estonia'),
(34, 'Ethiopia'),
(35, 'Fiji'),
(36, 'Finland'),
(37, 'France'),
(38, 'Germany'),
(39, 'Ghana'),
(40, 'Greece'),
(41, 'Greenland'),
(42, 'Guinea'),
(43, 'Guyana'),
(44, 'Haiti'),
(45, 'Honduras'),
(46, 'Hong Kong'),
(47, 'Hungary'),
(48, 'Iceland'),
(49, 'India'),
(50, 'Indonesia'),
(51, 'Iran'),
(52, 'Iraq'),
(53, 'Ireland'),
(54, 'Israel'),
(55, 'Italy'),
(56, 'Japan'),
(57, 'Jersey'),
(58, 'Jordan'),
(59, 'Kazakhstan'),
(60, 'Kenya'),
(61, 'Kuwait'),
(62, 'Kyrgyzstan'),
(63, 'Lebanon'),
(64, 'Liberia'),
(65, 'Libya'),
(66, 'Lithuania'),
(67, 'Luxembourg'),
(68, 'Macedonia'),
(69, 'Madagascar'),
(70, 'Malaysia'),
(71, 'Maldives'),
(72, 'Mali'),
(73, 'Mauritius'),
(74, 'Mexico'),
(75, 'Monaco'),
(76, 'Mongolia'),
(77, 'Morocco'),
(78, 'Namibia'),
(79, 'Nepal'),
(80, 'Netherlands'),
(81, 'New Zealand'),
(82, 'Nigeria'),
(83, 'North Korea'),
(84, 'Norway'),
(85, 'Oman'),
(86, 'Pakistan'),
(87, 'Panama'),
(88, 'Papua New Guinea'),
(89, 'Paraguay'),
(90, 'Peru'),
(91, 'Philippines'),
(92, 'Poland'),
(93, 'Portugal'),
(94, 'Qatar'),
(95, 'Romania'),
(96, 'Russia'),
(97, 'Rwanda'),
(98, 'Saudi Arabia'),
(99, 'Serbia'),
(100, 'Singapore'),
(101, 'Slovakia'),
(102, 'Slovenia'),
(103, 'South Africa'),
(104, 'South Korea'),
(105, 'Spain'),
(106, 'Sri Lanka'),
(107, 'Sudan'),
(108, 'Sweden'),
(109, 'Switzerland'),
(110, 'Syria'),
(111, 'Taiwan'),
(112, 'Tajikistan'),
(113, 'Tanzania'),
(114, 'Thailand'),
(115, 'Tunisia'),
(116, 'Turkey'),
(117, 'Turkmenistan'),
(118, 'Uganda'),
(119, 'Ukraine'),
(120, 'United Arab Emirates'),
(121, 'United Kingdom'),
(122, 'United States'),
(123, 'Uruguay'),
(124, 'Uzbekistan'),
(125, 'Venezuela'),
(126, 'Vietnam'),
(127, 'Yemen'),
(128, 'Zambia'),
(129, 'Zimbabwe');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
countries.sql
Displaying countries.sql.
