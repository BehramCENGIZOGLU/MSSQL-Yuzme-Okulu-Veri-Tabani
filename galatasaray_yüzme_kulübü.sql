-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 14 Ara 2020, 15:03:29
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `galatasaray_yüzme_kulübü`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `antrenor`
--

CREATE TABLE `antrenor` (
  `ID` int(11) NOT NULL,
  `Ad` text COLLATE utf8_turkish_ci NOT NULL,
  `Soyad` text COLLATE utf8_turkish_ci NOT NULL,
  `Dogum_tarihi` date NOT NULL,
  `Dogum_yeri` text COLLATE utf8_turkish_ci NOT NULL,
  `Cinsiyet` text COLLATE utf8_turkish_ci NOT NULL,
  `Boy` double NOT NULL,
  `Kilo` int(11) NOT NULL,
  `Yaş` int(11) NOT NULL,
  `TC_numarası` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `Telefon_numarası` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `Ev_adresi` text COLLATE utf8_turkish_ci NOT NULL,
  `Kan_grubu` text COLLATE utf8_turkish_ci NOT NULL,
  `E-mail` text COLLATE utf8_turkish_ci NOT NULL,
  `Okudugu_okul` text COLLATE utf8_turkish_ci NOT NULL,
  `Profesyonel_oldugu_alan` text COLLATE utf8_turkish_ci NOT NULL,
  `Yuzme_derecesi` text COLLATE utf8_turkish_ci NOT NULL,
  `Basarıları` text COLLATE utf8_turkish_ci NOT NULL,
  `Evli_Bekar` tinyint(1) NOT NULL,
  `Maas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteri`
--

CREATE TABLE `musteri` (
  `ID` int(11) NOT NULL,
  `Ad` text COLLATE utf8_turkish_ci NOT NULL,
  `Soyad` text COLLATE utf8_turkish_ci NOT NULL,
  `Dogum_tarihi` date NOT NULL,
  `Dogum_yeri` text COLLATE utf8_turkish_ci NOT NULL,
  `Boy` double NOT NULL,
  `Kilo` int(11) NOT NULL,
  `Yas` int(11) NOT NULL,
  `Cinsiyet` text COLLATE utf8_turkish_ci NOT NULL,
  `TC_numarası` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `Telefon_numarası` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `Ev_adresi` text COLLATE utf8_turkish_ci NOT NULL,
  `Kan_grubu` text COLLATE utf8_turkish_ci NOT NULL,
  `E-mail` text COLLATE utf8_turkish_ci NOT NULL,
  `Okuma_derecesi` text COLLATE utf8_turkish_ci NOT NULL,
  `Evli_Bekar` tinyint(1) NOT NULL,
  `Derse_katilim_saatleri` date NOT NULL,
  `Derecesi` text COLLATE utf8_turkish_ci NOT NULL,
  `İrtibat_kurulabilecek_kisinin_adi_soyadi` text COLLATE utf8_turkish_ci NOT NULL,
  `İrtibat_kurulabilecek_kisinin_telefon_numarasi` int(11) NOT NULL,
  `İrtibat_kurulabilecek_kisinin_yakinlik_derecesi` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personel`
--

CREATE TABLE `personel` (
  `ID` int(11) NOT NULL,
  `Ad` text COLLATE utf8_turkish_ci NOT NULL,
  `Soyad` text COLLATE utf8_turkish_ci NOT NULL,
  `Dogum_tarihi` date NOT NULL,
  `Dogum_yeri` text COLLATE utf8_turkish_ci NOT NULL,
  `Cinsiyet` text COLLATE utf8_turkish_ci NOT NULL,
  `Boy` double NOT NULL,
  `Kilo` int(11) NOT NULL,
  `Yas` int(11) NOT NULL,
  `TC_numarası` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `Telefon_numarası` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `Ev_adresi` text COLLATE utf8_turkish_ci NOT NULL,
  `Kan_grubu` text COLLATE utf8_turkish_ci NOT NULL,
  `E-mail` text COLLATE utf8_turkish_ci NOT NULL,
  `Okuma_derecesi` text COLLATE utf8_turkish_ci NOT NULL,
  `Evli_Bekar` tinyint(1) NOT NULL,
  `Maas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yuzme_kulubu`
--

CREATE TABLE `yuzme_kulubu` (
  `ID` int(11) NOT NULL,
  `Musteri` int(11) NOT NULL,
  `Antrenor` int(11) NOT NULL,
  `Personel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `antrenor`
--
ALTER TABLE `antrenor`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `musteri`
--
ALTER TABLE `musteri`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `yuzme_kulubu`
--
ALTER TABLE `yuzme_kulubu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Musteri` (`Musteri`),
  ADD KEY `Antrenor` (`Antrenor`),
  ADD KEY `Personel` (`Personel`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `antrenor`
--
ALTER TABLE `antrenor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `musteri`
--
ALTER TABLE `musteri`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `personel`
--
ALTER TABLE `personel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `yuzme_kulubu`
--
ALTER TABLE `yuzme_kulubu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `yuzme_kulubu`
--
ALTER TABLE `yuzme_kulubu`
  ADD CONSTRAINT `yuzme_kulubu_ibfk_1` FOREIGN KEY (`Personel`) REFERENCES `personel` (`ID`),
  ADD CONSTRAINT `yuzme_kulubu_ibfk_2` FOREIGN KEY (`Antrenor`) REFERENCES `antrenor` (`ID`),
  ADD CONSTRAINT `yuzme_kulubu_ibfk_3` FOREIGN KEY (`Musteri`) REFERENCES `musteri` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
