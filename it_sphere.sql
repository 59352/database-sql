-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 14 2019 г., 04:23
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `it sphere`
--

-- --------------------------------------------------------

--
-- Структура таблицы `companies`
--

CREATE TABLE `companies` (
  `Company_id` int(5) NOT NULL,
  `name` varchar(15) NOT NULL,
  `rating` int(3) NOT NULL,
  `Country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `companies`
--

INSERT INTO `companies` (`Company_id`, `name`, `rating`, `Country_id`) VALUES
(1, 'ITMonsters', 1, 0),
(2, 'StrongIT', 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `companycountry`
--

CREATE TABLE `companycountry` (
  `Country_id` int(5) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `companycountry`
--

INSERT INTO `companycountry` (`Country_id`, `name`) VALUES
(1, 'USA'),
(2, 'INDIA');

-- --------------------------------------------------------

--
-- Структура таблицы `workers`
--

CREATE TABLE `workers` (
  `worker_id` int(5) NOT NULL,
  `name` varchar(15) NOT NULL,
  `salary` int(11) NOT NULL,
  `qualification` varchar(10) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `workers`
--

INSERT INTO `workers` (`worker_id`, `name`, `salary`, `qualification`, `company_id`) VALUES
(1, 'Alyosha', 1500, 'middle', 0),
(2, 'Anton', 800, 'junior', 0),
(3, 'Igor', 2700, 'senior', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `workers`
--
ALTER TABLE `workers`
  ADD KEY `company_id` (`company_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
