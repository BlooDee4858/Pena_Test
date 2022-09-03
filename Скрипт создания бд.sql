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
  `id` int NOT NULL primary key identity(1, 1),
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Homepage` varchar(100) DEFAULT NULL,
  `Text` varchar(300) NOT NULL,
  `Date` datetime NOT NULL,
  `IP` varchar(20) NOT NULL,
  `Browser` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `Records`
--

INSERT INTO `Records` (`Name`, `Email`, `Homepage`, `Text`, `Date`, `IP`, `Browser`) VALUES
('Биба', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'awdawdawd', '2022-09-02 02:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Боба', 'email@yandex.ru', 'https://github.com/BlooDee4858?tab=repositories', 'awdawdawd', '2022-09-02 02:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Артем', 'email@yandex.ru', 'https://github.com/BlooDee4858?tab=repositories', 'adadwdawd', '2022-09-02 04:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Олег', 'email@yandex.ru', '', 'фцвфцв', '2022-09-02 04:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Олег', 'email@yandex.ru', 'https://github.com/BlooDee4858?tab=repositories', 'wdwd', '2022-09-02 07:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Олег', 'email@yandex.ru', 'https://github.com/BlooDee4858?tab=repositories', 'awdawd', '2022-09-02 07:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Артем', 'email@yandex.ru', 'https://github.com/BlooDee4858?tab=repositories', 'wadawd', '2022-09-02 07:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Олег', 'email@yandex.ru', 'https://github.com/BlooDee4858?tab=repositories', 'awd', '2022-09-02 08:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Артем', 'email@yandex.ru', 'https://github.com/BlooDee4858?tab=repositories', 'awdawd', '2022-09-02 08:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Алёша', 'email@yandex.ru', 'https://github.com/BlooDee4858?tab=repositories', 'awdawd', '2022-09-02 09:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Акакий', 'email@yandex.ru', 'https://github.com/BlooDee4858?tab=repositories', 'fsefesf', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Иван', 'email@yandex.ru', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Андрей', 'pochta@mail.ru', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Михаил', 'pochta@mail.ru', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Илья', 'pochta@mail.ru', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Даня', 'pochta@mail.ru', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Аня', 'pochta@mail.ru', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Катя', 'pochta@mail.ru', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Вова', 'pochta@mail.ru', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Настя', 'pochta@mail.ru', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Поля', 'pochta@mail.ru', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Ольга', 'pochta@mail.ru', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Костя', 'pochta@mail.ru', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Тёма', 'pochta@mail.ru', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Саша', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Александр', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Ваня', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Якоб', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
('Иван', 'griminov@gmail.com', 'https://github.com/BlooDee4858?tab=repositories', 'цфвфцв', '2022-09-02 09:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36');
