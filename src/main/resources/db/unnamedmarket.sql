-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Вер 14 2018 р., 13:42
-- Версія сервера: 5.7.21
-- Версія PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `unnamedmarket`
--

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `characteristics` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `image`, `characteristics`) VALUES
(1, 'Tesla Model S', '140000', 'Electric Cars', '/img/Tesla_Model_S.jpg,/img/Tesla_Model_S2.jpg', 'Weight: 2108 kg\r\nLength: 4976 mm\r\nWidth (including side mirrors): 1963 mm\r\nHeight: 1435 mm\r\nWheelbase: 2959 mm\r\nClearance: 154.9 mm\r\nCargo space capacity: 900 liters\r\nBattery type: Li-ion\r\nBattery capacity: 85/60 kWh *\r\nPower reserve until fully charged: 426/335 km *\r\nResource: 7 years or 160 thousand km\r\nDimensions of the battery: Length - 2.1 m, Width - 1.2 m, Height - 15 cm\r\nBattery weight: ~ 450 kg\r\nCharging time from the household AC 110V: 1 hour is replenished 8 km of the way\r\nCharging time from the household AC 220V: for 1 hour, 50 km of the path is filled\r\nFull charging time at Tesla Supercharger station: 30 minutes and free of charge\r\nMaximum speed: 209/201/193 km / h *\r\nPower: 416/362/302 liters. from.\r\nAcceleration from 0 to 100 km / h: 4.4 / 5.4 / 5.9 seconds *\r\nNumber of airbags: 8\r\nAdditional brake system: ABS\r\nOther security systems: Immobilizer, battery power failure system, safety belts, etc.'),
(2, 'Tesla Model X', '135000', 'Electric Cars', '/img/Tesla_Model_X.jpg,/img/Tesla_Model_X2.jpg', 'Engine: P100D\r\nEngine type: Electric\r\nPower hp: 773\r\nEV mode\r\nPower reserve at electric traction (km): 465\r\nAbility to charge from the network\r\nNumber of electric motors: 2\r\nMaximum speed, km / h: 250\r\nAcceleration time (0-100 km / h), sec: 3.1\r\nNumber of Seats: 7\r\nLength, mm: 5038\r\nWidth, mm: 2010\r\nWidth (without mirrors), mm: 2070\r\nWheelbase, mm: 3061\r\nTrack of front wheels, mm: 1661\r\nTrack of the rear wheels, mm: 1699\r\nThe equipped weight, kg: 2468\r\nGross weight, kg: 2830\r\nGearbox: Reducer\r\nAutomatic transmission\r\nDrive: Full\r\nFront suspension type: Double lever\r\nRear suspension type: Multi-link\r\nFront brakes: Disk ventilated\r\nRear brakes: Disk ventilated\r\nPower steering: Power assisted steering');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
