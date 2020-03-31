-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 31 2020 г., 11:19
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `webgrossbuh`
--

-- --------------------------------------------------------

--
-- Структура таблицы `account`
--

CREATE TABLE `account` (
  `ID` bigint(20) NOT NULL,
  `AUTHOR` varchar(255) DEFAULT NULL,
  `MONTH` varchar(255) DEFAULT NULL,
  `NUMBER` int(11) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `YEAR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `account`
--

INSERT INTO `account` (`ID`, `AUTHOR`, `MONTH`, `NUMBER`, `TITLE`, `TOTAL`, `YEAR`) VALUES
(21, 'FIE Perfect Pluss', '1', 1, 'горячая вода', 279, 2020),
(22, 'OU Ivanov', '1', 2, 'Расходы на транспорт', 500, 2020),
(23, 'Perfect pluss', '2', 3, 'Отопление', 500, 2020),
(24, 'Gerbert Uels', '1', 123456, 'Volvo', 300, 2020),
(25, 'Perfect pluss', '2', 432, 'хоз расходы', 120, 2020),
(26, 'Gerbert Uels', '1', 123456, 'Volvo', 279, 2020),
(27, 'Perfect pluss', '2', 456, 'Отопление', 120, 2020),
(28, 'Perfect pluss', '1', 34, 'Отопление', 279, 2018),
(29, 'Perfect pluss', '1', 34, 'Горячая вода', 500, 2018),
(30, 'Perfect pluss', '3', 45698, 'топливо', 300, 2020),
(31, 'Perfect pluss', '2', 23, 'Отопление, вода', 600, 2020);

-- --------------------------------------------------------

--
-- Структура таблицы `company`
--

CREATE TABLE `company` (
  `ID` bigint(20) NOT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `FORM` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `company`
--

INSERT INTO `company` (`ID`, `ADDRESS`, `EMAIL`, `FORM`, `NAME`) VALUES
(7, 'Kangelaste 50', 'admin@admin.ee', 'FIE', 'admin'),
(8, 'Sillamae', 'lora-tih@inbox.ru', 'FIE', 'Larissa'),
(51, 'Narva', 'on@mail.ru', 'OU', 'Ольга'),
(53, 'Kangelaste 45', 'vika@mail.ru', 'FIE', 'Vika'),
(54, 'Sillamae Kesk 39', 'ivanov@inbox.ru', 'OU', 'Ivanov'),
(60, 'Sillamae Kesk 53', 'pod@mail.ru', 'OU', 'PodalV'),
(61, 'Sillamae Kesk 39a', 'Nika@inbox.ru', 'FIE', 'NikolTih'),
(62, 'Sillamae Kesk 53-33', 'vova@mail.ru', 'FIE', 'Vladimir'),
(68, 'Narva Rahu18', 'fragment@mail.ru', 'OU', 'Fragment'),
(69, 'Narva , Rahu14', 'bro@inbox.ru', 'FIE', 'Bro');

-- --------------------------------------------------------

--
-- Структура таблицы `history`
--

CREATE TABLE `history` (
  `ID` bigint(20) NOT NULL,
  `PAYMENTDATE` datetime DEFAULT NULL,
  `TAKEON` datetime DEFAULT NULL,
  `ACCOUNT_ID` bigint(20) DEFAULT NULL,
  `COMPANY_ID` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `history`
--

INSERT INTO `history` (`ID`, `PAYMENTDATE`, `TAKEON`, `ACCOUNT_ID`, `COMPANY_ID`) VALUES
(44, '2020-03-30 13:44:36', '2020-03-30 13:41:00', 22, 8),
(45, '2020-03-30 13:42:30', '2020-03-30 13:42:24', 21, 7),
(46, '2020-03-30 13:50:01', '2020-03-30 13:49:53', 28, 8),
(47, '2020-03-30 14:15:41', '2020-03-30 14:15:36', 21, 8),
(49, '2020-03-30 15:11:35', '2020-03-30 15:11:11', 30, 69),
(61, '2020-03-30 22:55:52', '2020-03-30 22:55:42', 31, 69),
(62, '2020-03-31 09:39:22', '2020-03-31 09:39:10', 21, 7),
(63, NULL, '2020-03-31 09:46:46', 21, 7),
(64, '2020-03-31 09:48:29', '2020-03-31 09:48:23', 21, 62);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `ID` bigint(20) NOT NULL,
  `LOGIN` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `SALTS` varchar(255) DEFAULT NULL,
  `COMPANY_ID` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`ID`, `LOGIN`, `PASSWORD`, `SALTS`, `COMPANY_ID`) VALUES
(4, 'admin', '24245cad558561434e80373ea6f8225f82c5ad73edfe239032b959aa22f68da1', '533eb08498ae8e3b2a5e7bac2f72a02b', 7),
(5, 'Larissa', 'a7897116aa3e72a0f4b3faee94d191aa86ec488d968ca4b92999206e58c700e9', 'f0716ec2db82ef1c4cddb4a039fcbc13', 8),
(7, 'OlgaN', 'fbb9a00ec65c185a9a3afcac5d44c78ddb3bead625bf36f26556c4ddd1d62c68', 'da44f2f3aa2855e5fc12d0d1a7ab6b20', 51),
(8, 'VikaB', '6a39d4686628c4e2992a3184539c7634e76e91af90711cabc5b65d37fdd0b991', 'd15c32c2528f6a3d296fcba72c2c6b95', 53),
(9, 'Ivanov', 'b44eed0ac232c155cea887bdfcb64a5ce17d902515f5237ba5afdd13b07b5c12', '32fccaace91501ecc193f73e58e44dd9', 54),
(10, 'PodalV', '6c9ff220f1b07641ab8d34cf25239d84828e336b2ff68e976806c119b8ba48c6', '3d3b103340c8fdf9670be681da9da475', 60),
(11, 'NikolTih', '4e16361c20b4ef8162c6d1a4e4a32776add697bd09fa6056c83b6f87be743ecb', '148c88036743e0a09f433d2a613f1051', 61),
(12, 'Vladimir', 'ec2eab3c75e994e91b5b20cd97c0755107f7fd56d67068c8b5b4565bbda9fe07', 'a06da30a7e3bc58d99d27342d7c52949', 62),
(13, 'FragmentOU', '348154a3b9d6bf55322fb80fbc63b088afb06b3bb32cf96e6ab8d8e0bcb4c5a6', 'fc22131917c3519aa6277a292ee56a39', 68),
(14, 'Bro', '644793fc71faa81afac4414b6b69c52662da6affa7207f4bcb814db54859c317', 'f2925449a2b1e5d682c3a9013008deb2', 69);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ADDRESS` (`ADDRESS`);

--
-- Индексы таблицы `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_HISTORY_COMPANY_ID` (`COMPANY_ID`),
  ADD KEY `FK_HISTORY_ACCOUNT_ID` (`ACCOUNT_ID`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_USER_COMPANY_ID` (`COMPANY_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `account`
--
ALTER TABLE `account`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `company`
--
ALTER TABLE `company`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT для таблицы `history`
--
ALTER TABLE `history`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `FK_HISTORY_ACCOUNT_ID` FOREIGN KEY (`ACCOUNT_ID`) REFERENCES `account` (`ID`),
  ADD CONSTRAINT `FK_HISTORY_COMPANY_ID` FOREIGN KEY (`COMPANY_ID`) REFERENCES `company` (`ID`);

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_USER_COMPANY_ID` FOREIGN KEY (`COMPANY_ID`) REFERENCES `company` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
