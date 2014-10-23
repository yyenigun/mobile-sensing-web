-- phpMyAdmin SQL Dump
-- version 4.2.6
-- http://www.phpmyadmin.net
--
-- Anamakine: 
-- Üretim Zamanı: 23 Eki 2014, 13:13:43
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
-- Tablo için tablo yapısı `AnnotationData_doruk_0174ba`
--

CREATE TABLE IF NOT EXISTS `AnnotationData_doruk_0174ba` (
  `Time` text,
  `PossibleAnnotations` text,
  `Annotation` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `AnnotationData_doruk_0174ba`
--

INSERT INTO `AnnotationData_doruk_0174ba` (`Time`, `PossibleAnnotations`, `Annotation`) VALUES
('01.09.2014 18:02:36', 'Stationary/Bicycle', 'neither'),
('01.09.2014 18:02:39', 'Stationary/Bicycle', 'chilling'),
('01.09.2014 18:07:10', 'Stationary/Walking', 'Walking'),
('01.09.2014 18:07:43', 'Stationary/Bicycle', 'Bicycle'),
('01.09.2014 18:23:03', 'Stationary/Walking', 'neither'),
('01.09.2014 18:23:07', 'Stationary/Walking', 'qwe'),
('01.09.2014 18:23:46', 'Stationary/Walking', 'Stationary'),
('01.09.2014 18:24:56', 'Stationary/Walking', 'Walking');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
