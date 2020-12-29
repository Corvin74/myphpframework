-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Дек 29 2020 г., 16:33
-- Версия сервера: 8.0.22-0ubuntu0.20.04.3
-- Версия PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `fortest`
--
CREATE DATABASE IF NOT EXISTS `fortest` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `fortest`;

-- --------------------------------------------------------

--
-- Структура таблицы `dic_users`
--

DROP TABLE IF EXISTS `dic_users`;
CREATE TABLE `dic_users` (
  `id` int UNSIGNED NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `dic_users`
--

INSERT INTO `dic_users` (`id`, `user_name`, `user_password`, `created_at`) VALUES
(3, 'admin', '25e4ee4e9229397b6b17776bfceaf8e7', '2020-12-28 09:41:42'),
(4, 'user1', '63e780c3f321d13109c71bf81805476e', '2020-12-28 09:41:42'),
(5, 'user2', '55b873945f78672333f33000075e7cde', '2020-12-28 09:44:50'),
(6, 'user3', 'cc17149e22e73f910c1f8d59a52228b7', '2020-12-28 09:44:52');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int UNSIGNED NOT NULL,
  `news_header` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `news_header`, `news_body`, `created_at`) VALUES
(1, 'Первая новость на сайте', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vulputate urna odio, vitae maximus lorem sodales non. Sed egestas placerat leo, eu egestas metus convallis sed. Ut ac est velit. Cras dui neque, tempus pharetra tempor a, mollis sed nisl. Phasellus congue, ligula vel placerat pharetra, urna nulla varius justo, quis sodales purus purus a odio. Proin non nunc velit. Mauris non turpis tempus, efficitur purus in, volutpat felis. Aliquam vitae tellus nec justo elementum scelerisque et quis lacus. Nam diam eros, cursus eget tincidunt commodo, rutrum non nibh. Sed at orci vel ipsum fermentum viverra. Vestibulum accumsan mi quis sagittis molestie. Donec ornare purus dignissim dui scelerisque, ut viverra ex cursus. Nullam sodales arcu lectus. Proin hendrerit, ligula id semper interdum, purus elit fringilla mauris, sit amet porttitor ex tellus ac massa. Sed at justo laoreet, dignissim lectus et, finibus dui. Maecenas in cursus urna.\r\n\r\nQuisque laoreet efficitur lacinia. Donec in ligula ac mi placerat condimentum. Suspendisse elementum scelerisque nulla, in rhoncus lectus ultricies ut. Aliquam erat volutpat. In lectus purus, egestas eget neque vel, mollis semper ligula. Phasellus sagittis eros dictum egestas ullamcorper. Nullam quis sapien nec ex ultrices dictum. Aliquam erat volutpat. Vivamus lobortis nunc erat, quis laoreet urna luctus sit amet. Sed eget purus in neque ornare blandit eget sit amet felis. Curabitur pulvinar risus quam, nec varius nisl rutrum sed. Ut porttitor risus nec rhoncus sagittis.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nulla eget bibendum lorem. Duis eu ante libero. Pellentesque iaculis sem pretium ligula ullamcorper sollicitudin. Cras non quam viverra, feugiat felis quis, varius metus. Quisque quis ligula vitae justo consectetur maximus scelerisque quis risus. Etiam accumsan, ligula vel rutrum fringilla, felis velit venenatis libero, at sodales purus nunc a mauris. Quisque dolor nisi, molestie facilisis ex a, mollis luctus tellus. Donec vestibulum, tortor sed blandit facilisis, magna lorem rhoncus ligula, quis viverra erat lacus non quam. Nam tellus ligula, iaculis semper est id, convallis cursus risus.\r\n\r\nMauris ut nisl id sem sagittis pretium nec et neque. Phasellus a lorem faucibus, dictum neque sit amet, gravida arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer condimentum sapien non arcu tempus tempor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque euismod nulla in eros rhoncus, sit amet malesuada massa convallis. Integer at posuere urna, sit amet aliquam ante. Morbi tincidunt nisi et nibh elementum vulputate. Maecenas eu tellus non est accumsan ultrices hendrerit eget mi. Praesent vel tellus est. Morbi vulputate vulputate vehicula. Phasellus pellentesque lacus at elit blandit, ac ultrices risus ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed a ex sodales, congue ex ac, fringilla ligula.\r\n\r\nProin varius ex ut ante pellentesque malesuada. Maecenas tristique dapibus fermentum. Nullam sollicitudin dictum nisl, nec tincidunt diam aliquam in. Donec faucibus arcu turpis, ut blandit justo gravida sed. In efficitur arcu ac pharetra tristique. Nam nisl diam, tristique ac massa id, elementum pulvinar risus. Morbi iaculis consectetur dui eget egestas. In vel mollis diam, a efficitur nisi. Donec hendrerit arcu at massa lacinia, eu sollicitudin erat convallis. Cras venenatis lacinia eros in eleifend. Aliquam velit nunc, bibendum eget porta in, posuere vel odio. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. ', '2020-12-29 12:03:17'),
(2, 'Вторая новость на сайте', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vulputate urna odio, vitae maximus lorem sodales non. Sed egestas placerat leo, eu egestas metus convallis sed. Ut ac est velit. Cras dui neque, tempus pharetra tempor a, mollis sed nisl. Phasellus congue, ligula vel placerat pharetra, urna nulla varius justo, quis sodales purus purus a odio. Proin non nunc velit. Mauris non turpis tempus, efficitur purus in, volutpat felis. Aliquam vitae tellus nec justo elementum scelerisque et quis lacus. Nam diam eros, cursus eget tincidunt commodo, rutrum non nibh. Sed at orci vel ipsum fermentum viverra. Vestibulum accumsan mi quis sagittis molestie. Donec ornare purus dignissim dui scelerisque, ut viverra ex cursus. Nullam sodales arcu lectus. Proin hendrerit, ligula id semper interdum, purus elit fringilla mauris, sit amet porttitor ex tellus ac massa. Sed at justo laoreet, dignissim lectus et, finibus dui. Maecenas in cursus urna.\r\n\r\nQuisque laoreet efficitur lacinia. Donec in ligula ac mi placerat condimentum. Suspendisse elementum scelerisque nulla, in rhoncus lectus ultricies ut. Aliquam erat volutpat. In lectus purus, egestas eget neque vel, mollis semper ligula. Phasellus sagittis eros dictum egestas ullamcorper. Nullam quis sapien nec ex ultrices dictum. Aliquam erat volutpat. Vivamus lobortis nunc erat, quis laoreet urna luctus sit amet. Sed eget purus in neque ornare blandit eget sit amet felis. Curabitur pulvinar risus quam, nec varius nisl rutrum sed. Ut porttitor risus nec rhoncus sagittis.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nulla eget bibendum lorem. Duis eu ante libero. Pellentesque iaculis sem pretium ligula ullamcorper sollicitudin. Cras non quam viverra, feugiat felis quis, varius metus. Quisque quis ligula vitae justo consectetur maximus scelerisque quis risus. Etiam accumsan, ligula vel rutrum fringilla, felis velit venenatis libero, at sodales purus nunc a mauris. Quisque dolor nisi, molestie facilisis ex a, mollis luctus tellus. Donec vestibulum, tortor sed blandit facilisis, magna lorem rhoncus ligula, quis viverra erat lacus non quam. Nam tellus ligula, iaculis semper est id, convallis cursus risus.\r\n\r\nMauris ut nisl id sem sagittis pretium nec et neque. Phasellus a lorem faucibus, dictum neque sit amet, gravida arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer condimentum sapien non arcu tempus tempor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque euismod nulla in eros rhoncus, sit amet malesuada massa convallis. Integer at posuere urna, sit amet aliquam ante. Morbi tincidunt nisi et nibh elementum vulputate. Maecenas eu tellus non est accumsan ultrices hendrerit eget mi. Praesent vel tellus est. Morbi vulputate vulputate vehicula. Phasellus pellentesque lacus at elit blandit, ac ultrices risus ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed a ex sodales, congue ex ac, fringilla ligula.\r\n\r\nProin varius ex ut ante pellentesque malesuada. Maecenas tristique dapibus fermentum. Nullam sollicitudin dictum nisl, nec tincidunt diam aliquam in. Donec faucibus arcu turpis, ut blandit justo gravida sed. In efficitur arcu ac pharetra tristique. Nam nisl diam, tristique ac massa id, elementum pulvinar risus. Morbi iaculis consectetur dui eget egestas. In vel mollis diam, a efficitur nisi. Donec hendrerit arcu at massa lacinia, eu sollicitudin erat convallis. Cras venenatis lacinia eros in eleifend. Aliquam velit nunc, bibendum eget porta in, posuere vel odio. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. ', '2020-12-29 12:03:45');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `dic_users`
--
ALTER TABLE `dic_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `dic_users`
--
ALTER TABLE `dic_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
