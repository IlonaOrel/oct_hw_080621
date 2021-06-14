-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 14 2021 г., 20:36
-- Версия сервера: 5.7.29-log
-- Версия PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `oct_educationnal_institution`
--

-- --------------------------------------------------------

--
-- Структура таблицы `appraisals`
--

CREATE TABLE `appraisals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appraisal` bigint(20) NOT NULL,
  `commentary` varchar(255) DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `appraisals`
--

INSERT INTO `appraisals` (`id`, `appraisal`, `commentary`, `student_id`, `group_id`) VALUES
(1, 5, '', 1, 1),
(2, 4, 'ok', 4, 1),
(3, 3, 'not well', 7, 1),
(4, 5, '', 2, 2),
(5, 4, '', 5, 2),
(6, 3, 'not well', 3, 3),
(7, 5, '', 4, 3),
(8, 4, '', 4, 4),
(9, 3, '', 1, 4),
(10, 5, '', 7, 5),
(11, 4, '', 2, 5),
(12, 3, '', 6, 6),
(13, 2, 'A student was absent from the exam', 7, 6),
(14, 5, '', 1, 6),
(15, 4, '', 4, 7),
(16, 3, '', 1, 7),
(17, 5, '', 1, 8),
(18, 5, '', 7, 8),
(19, 4, '', 2, 9),
(20, 4, '', 4, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `num_classroom` bigint(20) UNSIGNED NOT NULL,
  `date_final` date DEFAULT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `name`, `num_classroom`, `date_final`, `teacher_id`) VALUES
(1, 'php-2-20', 338, NULL, 1),
(2, 'php-1-21', 315, NULL, 2),
(3, 'php-1-19', 338, '2020-11-26', 1),
(4, 'java-1-21', 321, NULL, 3),
(5, 'java-1-20', 302, '2021-04-30', 4),
(6, 'QA-1-20', 315, '2020-05-17', 5),
(7, 'QA-1-21', 315, NULL, 5),
(8, 'python-2-18', 306, '2019-09-30', 1),
(9, 'python-2-20', 306, NULL, 1),
(10, 'python-1-21', 314, NULL, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `phones`
--

CREATE TABLE `phones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(150) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `phones`
--

INSERT INTO `phones` (`id`, `phone`, `student_id`) VALUES
(13, '753-56-41', 1),
(14, '(097)124-25-34', 1),
(15, '(066)453-26-58', 1),
(16, '483-69-78', 2),
(17, '(066)255-87-63', 2),
(18, '951-56-32', 3),
(19, '(097)147-78-88', 3),
(20, '763-55-87', 4),
(21, '(093)857-14-23', 4),
(22, '166-11-02', 5),
(23, '(099)569-47-15', 5),
(24, '478-36-55', 6),
(25, '(067)632-55-47', 6),
(26, '(093)741-36-89', 6),
(27, '459-36-98', 7),
(28, '(067)789-15-22', 7),
(29, '(050)465-14-25', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `second_name` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `first_name`, `second_name`, `email`, `password`) VALUES
(1, 'Иван', 'Пупко', 'pypkoI@gmail.com', 'b4311cee5c7dc9a192ba28833dc43577'),
(2, 'Василий', 'Глущенко', 'gluschenko@gmail.com', '513106c051f94528f1d386926aa65e1a'),
(3, 'Владимир', 'Мурзак', 'murzak@gmail.com', '7ac60358d4f56501575fa9def6cc3bc3'),
(4, 'Егор', 'Головко', 'egorGol@gmail.com', 'bab5b3016c5da2d138812ecfed4a50ca'),
(5, 'Анна', 'Симонова', 'sima@gmail.com', 'dfccf083f38fa6dc50ce1acec5ddb817'),
(6, 'Оксана', 'Варченко', 'varchenko@gmail.com', 'de5aa431e5c9024d033e3cbc04530be5'),
(7, 'Светлана', 'Сова', 'sova@gmail.com', '95390ccc00b26f6cda8f5a77697c9c22');

-- --------------------------------------------------------

--
-- Структура таблицы `students_groups`
--

CREATE TABLE `students_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `students_groups`
--

INSERT INTO `students_groups` (`id`, `student_id`, `group_id`) VALUES
(1, 1, 1),
(2, 4, 1),
(3, 7, 1),
(4, 2, 2),
(5, 5, 2),
(6, 3, 3),
(7, 6, 3),
(8, 4, 4),
(9, 1, 4),
(10, 5, 4),
(11, 7, 5),
(12, 2, 5),
(13, 6, 6),
(14, 7, 6),
(15, 1, 6),
(16, 4, 7),
(17, 1, 7),
(18, 1, 8),
(19, 7, 8),
(20, 2, 9),
(21, 3, 10),
(22, 4, 9),
(23, 5, 10),
(24, 6, 10),
(25, 7, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `subjects`
--

INSERT INTO `subjects` (`id`, `name`) VALUES
(13, 'QA-General concepts and terms in testing'),
(14, 'QA-Testing and quality'),
(15, 'Java Environment'),
(16, 'Java 8'),
(17, 'SQL'),
(18, 'Layout basics'),
(19, 'Python - Basic'),
(20, 'Python - OOP'),
(21, 'Hypertext Markup Language HTML and CSS'),
(22, 'PHP: Basic Syntax'),
(23, 'Язык JavaScript и библиотека jQuery'),
(24, 'AJAX'),
(25, 'Object Oriented Programming'),
(26, 'Database theory and SQL query language');

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `second_name` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`id`, `first_name`, `second_name`, `email`, `password`) VALUES
(1, 'Сергей', 'Петровский', 'petrovskuj@gmail.com', '93afd658b523f4bb2f2698a56a237a11'),
(2, 'Павел', 'Васильев', 'vasilev@gmail.com', '11077d316e77574e820feff1415d3a73'),
(3, 'Евгения', 'Романько', 'romanko@gmail.com', '53568dcf0113d864bd0e61b8b96f4cbf'),
(4, 'Инга', 'Семёнова', 'semenova@gmail.com', 'eba5f2b45120d5ed29daf3b1d00031ba'),
(5, 'Виктория', 'Хохмач', 'hohmach@gmail.com', 'cbe2d5104324ccdff29d1dbc229dae2f');

-- --------------------------------------------------------

--
-- Структура таблицы `teachers_subjects`
--

CREATE TABLE `teachers_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `teachers_subjects`
--

INSERT INTO `teachers_subjects` (`id`, `teacher_id`, `subject_id`) VALUES
(1, 1, 13),
(2, 2, 15),
(3, 3, 13),
(4, 4, 14),
(5, 5, 16),
(6, 1, 17),
(7, 3, 17),
(8, 2, 19),
(9, 4, 23),
(10, 1, 18),
(11, 4, 24),
(12, 5, 22),
(13, 1, 26),
(14, 2, 25);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `appraisals`
--
ALTER TABLE `appraisals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Индексы таблицы `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students_groups`
--
ALTER TABLE `students_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Индексы таблицы `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teachers_subjects`
--
ALTER TABLE `teachers_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `appraisals`
--
ALTER TABLE `appraisals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `students_groups`
--
ALTER TABLE `students_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `teachers_subjects`
--
ALTER TABLE `teachers_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `appraisals`
--
ALTER TABLE `appraisals`
  ADD CONSTRAINT `appraisals_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `appraisals_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Ограничения внешнего ключа таблицы `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- Ограничения внешнего ключа таблицы `phones`
--
ALTER TABLE `phones`
  ADD CONSTRAINT `phones_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Ограничения внешнего ключа таблицы `students_groups`
--
ALTER TABLE `students_groups`
  ADD CONSTRAINT `students_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `students_groups_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Ограничения внешнего ключа таблицы `teachers_subjects`
--
ALTER TABLE `teachers_subjects`
  ADD CONSTRAINT `teachers_subjects_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `teachers_subjects_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
