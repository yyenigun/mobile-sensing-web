-- phpMyAdmin SQL Dump
-- version 4.2.6
-- http://www.phpmyadmin.net
--
-- Anamakine: 
-- Üretim Zamanı: 23 Eki 2014, 13:14:48
-- Sunucu sürümü: 5.5.38-0ubuntu0.12.04.1
-- PHP Sürümü: 5.3.10-1ubuntu3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `ARService`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `PhoneActData_atay1108_02e4b5`
--

CREATE TABLE IF NOT EXISTS `PhoneActData_atay1108_02e4b5` (
  `Time` text,
  `Feature` text,
  `Field` text,
  `Extra` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `PhoneActData_atay1108_02e4b5`
--

INSERT INTO `PhoneActData_atay1108_02e4b5` (`Time`, `Feature`, `Field`, `Extra`) VALUES
('2014/08/11 10:15.22.605', 'Application', 'AR Service', 'x'),
('2014/08/11 10:15.22.711', 'Application', 'Running Applications', '58'),
('2014/08/11 10:15.22.873', 'Headset', 'state', '0'),
('2014/08/11 10:15.22.888', 'Headset', 'name', 'h2w'),
('2014/08/11 10:15.22.902', 'Headset', 'microphone', '1'),
('2014/08/11 10:15.22.913', 'Battery', 'Battery Level', '26%'),
('2014/08/11 10:16.21.558', 'Application', 'AR Service', 'x'),
('2014/08/11 10:16.21.588', 'Application', 'Running Applications', '58'),
('2014/08/11 10:16.21.657', 'Headset', 'state', '0'),
('2014/08/11 10:16.21.671', 'Headset', 'name', 'h2w'),
('2014/08/11 10:16.21.683', 'Headset', 'microphone', '1'),
('2014/08/11 10:16.21.696', 'Battery', 'Battery Level', '26%');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
