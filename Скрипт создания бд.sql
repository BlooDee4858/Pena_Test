-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 02 2022 г., 09:37
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `book`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Records`
--

CREATE TABLE `Records` (
  `id` int NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Homepage` varchar(100) DEFAULT NULL,
  `Text` varchar(300) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `IP` varchar(20) NOT NULL,
  `Browser` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `Records`
--

INSERT INTO `Records` (`id`, `Name`, `Email`, `Homepage`, `Text`, `Date`, `IP`, `Browser`) VALUES
(21, 'awdawd', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'awdawdawd', '2022-09-02 02:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(22, 'WDAd', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'awdawdawd', '2022-09-02 02:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(23, 'Артем', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'adadwdawd', '2022-09-02 04:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(24, 'Олег', 'griminov@gmail.com', '', 'фцвфцв', '2022-09-02 04:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(25, 'Олег', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'wdwd', '2022-09-02 07:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(26, 'Олег', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'awdawd', '2022-09-02 07:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(27, 'Артем', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'wadawd', '2022-09-02 07:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(28, 'Олег', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'awd', '2022-09-02 08:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(29, 'Артем', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'awdawd', '2022-09-02 08:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(30, 'Алёша', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'awdawd', '2022-09-02 09:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(31, 'Акакий', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'fsefesf', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(32, 'Иван', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Records`
--
ALTER TABLE `Records`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Records`
--
ALTER TABLE `Records`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
