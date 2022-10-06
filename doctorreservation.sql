-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 06 Eki 2022, 11:03:42
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `doctorreservation`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `doctors`
--

CREATE TABLE `doctors` (
  `doctorID` int(11) NOT NULL,
  `doctorName` varchar(45) NOT NULL,
  `doctorBranch` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `doctors`
--

INSERT INTO `doctors` (`doctorID`, `doctorName`, `doctorBranch`) VALUES
(1, 'Atılay Başaran', 'A'),
(2, 'Ecenaz Başaran', 'E'),
(3, 'Nevzat Başaran', 'N');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reservations`
--

CREATE TABLE `reservations` (
  `reservationID` int(11) NOT NULL,
  `treatmentName` varchar(45) NOT NULL,
  `treatmentFee` varchar(45) NOT NULL,
  `dID` int(11) NOT NULL,
  `doctorName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `reservations`
--

INSERT INTO `reservations` (`reservationID`, `treatmentName`, `treatmentFee`, `dID`, `doctorName`) VALUES
(1, 'deneme1', '100', 1, 'Atılay Başaran'),
(2, 'deneme2', '200', 1, 'Atılay Başaran'),
(3, 'deneme3', '300', 3, 'Nevzat Başaran'),
(4, 'deneme4', '400', 2, 'Ecenaz Başaran'),
(5, 'deneme5', '500', 3, 'Nevzat Başaran');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctorID`);

--
-- Tablo için indeksler `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservationID`),
  ADD KEY `dID` (`dID`);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`dID`) REFERENCES `doctors` (`doctorID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
