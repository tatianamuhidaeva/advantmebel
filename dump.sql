-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 21, 2019 at 05:37 PM
-- Server version: 5.7.23
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `doit_advantmebel`
--

-- --------------------------------------------------------

--
-- Table structure for table `seoparams`
--

CREATE TABLE `seoparams` (
  `id` int(11) NOT NULL,
  `url` text,
  `text` text,
  `title` text,
  `seoparam_id` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `multi_domain` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `page_url` text,
  `keywords` text,
  `description` text,
  `admin_options` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seoparams`
--

INSERT INTO `seoparams` (`id`, `url`, `text`, `title`, `seoparam_id`, `template`, `type`, `multi_domain`, `created_at`, `updated_at`, `sort`, `page_url`, `keywords`, `description`, `admin_options`) VALUES
(1, NULL, '<p>блабла</p>', 'О компании', NULL, NULL, NULL, NULL, '2019-03-21 12:41:03', '2019-03-21 12:41:03', 1, '/about', '', '', ''),
(2, NULL, '', 'Контакты', NULL, NULL, NULL, NULL, '2019-03-21 21:39:40', '2019-03-21 21:39:40', 2, '/contacts', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `seoparams`
--
ALTER TABLE `seoparams`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `seoparams`
--
ALTER TABLE `seoparams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
