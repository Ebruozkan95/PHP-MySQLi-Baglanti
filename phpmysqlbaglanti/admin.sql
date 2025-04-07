-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 07 Nis 2025, 14:38:20
-- Sunucu sürümü: 10.5.26-MariaDB
-- PHP Sürümü: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `admin`
--

-- --------------------------------------------------------

--

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `ayar_logo` varchar(250) DEFAULT NULL,
  `ayar_telefon` varchar(17) DEFAULT NULL,
  `ayar_facebook` varchar(150) DEFAULT NULL,
  `ayar_twitter` varchar(150) DEFAULT NULL,
  `ayar_linkedin` varchar(150) DEFAULT NULL,
  `ayar_youtube` varchar(150) DEFAULT NULL,
  `ayar_adres` varchar(250) DEFAULT NULL,
  `ayar_email` varchar(100) DEFAULT NULL,
  `ayar_instagram` varchar(150) DEFAULT NULL,
  `ayar_aciklama` varchar(200) DEFAULT NULL,
  `ayar_title` varchar(100) DEFAULT NULL
  
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `ayar_logo`, `ayar_telefon`, `ayar_facebook`, `ayar_twitter`, `ayar_linkedin`, `ayar_youtube`, `ayar_adres`, `ayar_email`,`ayar_instagram`, `ayar_aciklama`, `ayar_title`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '' );

-- --------------------------------------------------------


--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);


--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
