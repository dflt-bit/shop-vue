-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 26 2019 г., 07:44
-- Версия сервера: 10.4.6-MariaDB
-- Версия PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ignat_`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basket_items`
--

CREATE TABLE `basket_items` (
  `ID` int(11) NOT NULL,
  `VCODE` varchar(64) NOT NULL,
  `SIZE` int(11) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(256) NOT NULL,
  `IMG` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`ID`, `NAME`, `IMG`) VALUES
(1, 'Woman', ''),
(2, 'Men', ''),
(3, 'Kids', '');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `ID` int(11) NOT NULL,
  `FIO` varchar(256) NOT NULL,
  `PHONE` varchar(32) NOT NULL,
  `EMAIL` varchar(32) NOT NULL,
  `MESSAGE` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`ID`, `FIO`, `PHONE`, `EMAIL`, `MESSAGE`) VALUES
(4, 'ÐÐ»ÐµÐºÑÐ°Ð½Ð´Ñ€ ÐÐ¸ÐºÐ¾Ð»Ð°ÐµÐ²Ð¸Ñ‡ ÐŸÐµÑ‚Ñ€ÑƒÑ…Ð¸Ð½', '9270692170', 'sprf8611@gmail.com', 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾'),
(5, 'ÐÐ»ÐµÐºÑÐ°Ð½Ð´Ñ€ ÐÐ¸ÐºÐ¾Ð»Ð°ÐµÐ²Ð¸Ñ‡ ÐŸÐµÑ‚Ñ€ÑƒÑ…Ð¸Ð½', '9270692170', 'sprf8611@gmail.com1', 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾'),
(6, 'ÐÐ»ÐµÐºÑÐ°Ð½Ð´Ñ€ ÐÐ¸ÐºÐ¾Ð»Ð°ÐµÐ²Ð¸Ñ‡ ÐŸÐµÑ‚Ñ€ÑƒÑ…Ð¸Ð½', '9270692170', 'sprf8611@gmail.com', 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾'),
(7, 'ÐÐ»ÐµÐºÑÐ°Ð½Ð´Ñ€ ÐÐ¸ÐºÐ¾Ð»Ð°ÐµÐ²Ð¸Ñ‡ ÐŸÐµÑ‚Ñ€ÑƒÑ…Ð¸Ð½', '9270692170', 'sprf8611@gmail.com', 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾'),
(8, 'ÐÐ»ÐµÐºÑÐ°Ð½Ð´Ñ€ ÐÐ¸ÐºÐ¾Ð»Ð°ÐµÐ²Ð¸Ñ‡ ÐŸÐµÑ‚Ñ€ÑƒÑ…Ð¸Ð½', '9270692170', 'sprf8611@gmail.com', 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾'),
(9, 'ÐÐ»ÐµÐºÑÐ°Ð½Ð´Ñ€ ÐÐ¸ÐºÐ¾Ð»Ð°ÐµÐ²Ð¸Ñ‡ ÐŸÐµÑ‚Ñ€ÑƒÑ…Ð¸Ð½', '9270692170', 'sprf8611@gmail.com', 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾'),
(10, 'ÐÐ»ÐµÐºÑÐ°Ð½Ð´Ñ€ ÐÐ¸ÐºÐ¾Ð»Ð°ÐµÐ²Ð¸Ñ‡ ÐŸÐµÑ‚Ñ€ÑƒÑ…Ð¸Ð½', '9270692170', 'sprf8611@gmail.com', 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾'),
(11, 'ÐÐ»ÐµÐºÑÐ°Ð½Ð´Ñ€ ÐÐ¸ÐºÐ¾Ð»Ð°ÐµÐ²Ð¸Ñ‡ ÐŸÐµÑ‚Ñ€ÑƒÑ…Ð¸Ð½', '9270692170', 'sprf8611@gmail.com', 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾'),
(12, 'ÐÐ»ÐµÐºÑÐ°Ð½Ð´Ñ€ ÐÐ¸ÐºÐ¾Ð»Ð°ÐµÐ²Ð¸Ñ‡ ÐŸÐµÑ‚Ñ€ÑƒÑ…Ð¸Ð½', '9270692170', 'sprf8611@gmail.com', 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¡Ð¾'),
(13, 'Ð˜Ð²Ð°Ð½ Ð˜Ð²Ð°Ð½Ð¾Ð²', '327443284193213', 'mail@mail.ru', 'ÐšÐ°ÐºÐ¾Ðµ-Ñ‚Ð¾ Ð´Ð»Ð¸Ð½Ð½Ð¾Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐšÐ°ÐºÐ¾Ðµ-Ñ‚Ð¾ Ð´Ð»Ð¸Ð½Ð½Ð¾Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐšÐ°ÐºÐ¾Ðµ-Ñ‚Ð¾ Ð´Ð»Ð¸Ð½Ð½Ð¾Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐšÐ°ÐºÐ¾Ðµ-Ñ‚Ð¾ Ð´Ð»Ð¸Ð½Ð½Ð¾Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐšÐ°ÐºÐ¾Ðµ-Ñ‚Ð¾ Ð´Ð»Ð¸Ð½Ð½Ð¾Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐšÐ°ÐºÐ¾Ðµ-'),
(14, 'ÐŸÐµÑ‚Ñ€ ÐŸÐµÑ‚Ñ€Ð¾Ð²', '3243241238', 'mail@yandex.ru', 'ÐšÐ°ÐºÐ¾Ðµ-Ñ‚Ð¾ Ð´Ð»Ð¸Ð½Ð½Ð¾Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐšÐ°ÐºÐ¾Ðµ-Ñ‚Ð¾ Ð´Ð»Ð¸Ð½Ð½Ð¾Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐšÐ°ÐºÐ¾Ðµ-Ñ‚Ð¾ Ð´Ð»Ð¸Ð½Ð½Ð¾Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐšÐ°ÐºÐ¾Ðµ-Ñ‚Ð¾ Ð´Ð»Ð¸Ð½Ð½Ð¾Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐšÐ°ÐºÐ¾Ðµ-Ñ‚Ð¾ Ð´Ð»Ð¸Ð½Ð½Ð¾Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐšÐ°ÐºÐ¾Ðµ-');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(256) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `IMG` varchar(256) DEFAULT NULL,
  `SIZE` varchar(256) NOT NULL,
  `PRICE` varchar(256) NOT NULL,
  `COUNT` int(11) NOT NULL DEFAULT 0,
  `SUBCATEGORY` int(11) NOT NULL,
  `VENDORCODE` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`ID`, `NAME`, `DESCRIPTION`, `IMG`, `SIZE`, `PRICE`, `COUNT`, `SUBCATEGORY`, `VENDORCODE`) VALUES
(1, 'Crossfoot', 'desription32431239113', '/shop_dev/shop/src/images/catalog/7.jpg', '1', '3999', 10, 1, '56443d'),
(2, 'Crossfoot', 'desription32431239113', '/shop_dev/shop/src/images/catalog/7.jpg', '3', '3999', 7, 1, '56443d'),
(3, 'foot', 'foot', '', '1', '39999', 10, 1, 'sad34c');

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE `results` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CROSS_WIN` int(11) NOT NULL,
  `ZERO_WIN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `results`
--

INSERT INTO `results` (`ID`, `USER_ID`, `CROSS_WIN`, `ZERO_WIN`) VALUES
(1, 1, 3, 3),
(2, 4, 0, 0),
(3, 5, 0, 0),
(4, 6, 0, 0),
(5, 7, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `size`
--

CREATE TABLE `size` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(8) NOT NULL,
  `SUBCATEGORY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `size`
--

INSERT INTO `size` (`ID`, `NAME`, `SUBCATEGORY`) VALUES
(1, '37', 1),
(2, '38', 1),
(3, '39', 1),
(4, '40', 1),
(5, '41', 1),
(6, '42', 1),
(7, '43', 1),
(8, '44', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `subcategory`
--

CREATE TABLE `subcategory` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(256) NOT NULL,
  `CATEGORY` int(11) NOT NULL,
  `IMG` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `subcategory`
--

INSERT INTO `subcategory` (`ID`, `NAME`, `CATEGORY`, `IMG`) VALUES
(1, 'Footwear', 2, '/shop_dev/shop/src/images/3.jpg'),
(2, 'Jeans', 2, '/shop_dev/shop/src/images/2.jpg'),
(3, 'Jeans jackets', 1, '/shop_dev/shop/src/images/1.jpg'),
(4, 'Accessories', 1, '/shop_dev/shop/src/images/5.jpg'),
(5, 'Sport wear', 1, '/shop_dev/shop/src/images/6.jpg'),
(6, 'Childrens wear', 3, '/shop_dev/shop/src/images/4.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `subscribe`
--

CREATE TABLE `subscribe` (
  `ID` int(11) NOT NULL,
  `EMAIL` varchar(256) NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `subscribe`
--

INSERT INTO `subscribe` (`ID`, `EMAIL`, `ACTIVE`) VALUES
(1, 'mail@mail.ru', 1),
(2, 'mail@mail.ru', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `LOGIN` varchar(256) NOT NULL,
  `PASSWORD` varchar(256) NOT NULL,
  `NAME` varchar(256) NOT NULL,
  `LAST_NAME` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`ID`, `LOGIN`, `PASSWORD`, `NAME`, `LAST_NAME`) VALUES
(1, 'test', 'test', '', ''),
(2, 'test1', 'test1', 'test', ''),
(3, 'test2', 'test2', 'test', 'test'),
(4, 'test3', 'test3', 'test', 'test'),
(5, 'test4', 'test4', 'test', 'test'),
(6, 'test5', 'test5', 'test', 'test'),
(7, 'test6', 'test6', 'test', 'test'),
(8, 'user1', 'pwuser1', 'Ivan', 'Ivanov');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basket_items`
--
ALTER TABLE `basket_items`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `basket_items`
--
ALTER TABLE `basket_items`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `results`
--
ALTER TABLE `results`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `size`
--
ALTER TABLE `size`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
