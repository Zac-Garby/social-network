SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `date_created` datetime NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

CREATE TABLE `sessions` (
  `session_id` bigint(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` tinytext NOT NULL,
  `display_name` tinytext NOT NULL,
  `password_hash` text NOT NULL,
  `date_joined` date NOT NULL,
  `profile_picture` text NOT NULL,
  `github_username` tinytext NOT NULL,
  `homepage_url` tinytext NOT NULL,
  `link_1` tinytext NOT NULL,
  `link_2` tinytext NOT NULL,
  `link1_name` tinytext NOT NULL,
  `link2_name` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;


ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `AUTHOR` (`author`);

ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `USER_ID` (`user_id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);


ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;