-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-09-09 15:16:34
-- 服务器版本： 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mymovie`
--

-- --------------------------------------------------------

--
-- 表的结构 `films`
--

CREATE TABLE `films` (
  `did` int(11) NOT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `fname` varchar(64) DEFAULT NULL,
  `fdate` varchar(32) DEFAULT NULL,
  `cinema` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mymovie_carousel_item`
--

CREATE TABLE `mymovie_carousel_item` (
  `cid` int(11) NOT NULL,
  `title` varchar(32) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `seq_recommended` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mymovie_carousel_item`
--

INSERT INTO `mymovie_carousel_item` (`cid`, `title`, `pic`, `href`, `seq_recommended`) VALUES
(1, '战狼2', 'http://127.0.0.1:3000/img/banner/banner1.jpg', '/films.html?lid=1', 0),
(2, '摔跤吧爸爸', 'http://127.0.0.1:3000/img/banner/banner2.jpg', '/films.html?lid=2', 1),
(3, 'FAN', 'http://127.0.0.1:3000/img/banner/banner3.jpg', '/films.html?lid=3', 2),
(4, '神偷奶爸', 'http://127.0.0.1:3000/img/banner/banner4.jpg', '/films.html?lid=4', 3);

-- --------------------------------------------------------

--
-- 表的结构 `mymovie_navbar_item`
--

CREATE TABLE `mymovie_navbar_item` (
  `nid` int(11) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mymovie_navbar_item`
--

INSERT INTO `mymovie_navbar_item` (`nid`, `name`, `url`, `title`, `parent`) VALUES
(1, '首页', '/index.html', '跳转到网站首页', NULL),
(2, '影讯', '/films.html', '最新最热的电影资讯', 1),
(3, '院线', '/cinemas.html', '查看周围院线动态', 1),
(4, '订票', '/order.html', '在线订票', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `mymovie_site_info`
--

CREATE TABLE `mymovie_site_info` (
  `site_name` varchar(16) DEFAULT NULL,
  `logo` varchar(64) DEFAULT NULL,
  `admin_email` varchar(64) DEFAULT NULL,
  `icp` varchar(32) DEFAULT NULL,
  `copyright` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mymovie_site_info`
--

INSERT INTO `mymovie_site_info` (`site_name`, `logo`, `admin_email`, `icp`, `copyright`) VALUES
('我的电影网', 'img/logo.png', 'admin@myMovie.com', '京ICP证090856788号', '版权所有@2010-2018 我的电影网');

-- --------------------------------------------------------

--
-- 表的结构 `mymovie_slider_item`
--

CREATE TABLE `mymovie_slider_item` (
  `sid` int(11) NOT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `fname` varchar(64) DEFAULT NULL,
  `fdate` varchar(32) DEFAULT NULL,
  `cinema` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mymovie_slider_item`
--

INSERT INTO `mymovie_slider_item` (`sid`, `pic`, `href`, `fname`, `fdate`, `cinema`) VALUES
(1, 'http://127.0.0.1:3000/img/slider/slider-1.jpg', '/films.html?lid=6', '碟中谍6', '2018年8月18日', 'UME'),
(2, 'http://127.0.0.1:3000/img/slider/slider-2.jpg', '/films.html?lid=7', '一出好戏', '2018年9月18日', '保利万和'),
(3, 'http://127.0.0.1:3000/img/slider/slider-3.jpg', '/films.html?lid=8', '蚁人2', '2018年10月18日', '大地影院'),
(4, 'http://127.0.0.1:3000/img/slider/slider-4.jpg', '/films.html?lid=9', '快把我哥带走', '2018年11月18日', '华谊兄弟'),
(5, 'http://127.0.0.1:3000/img/slider/slider-5.jpg', '/films.html?lid=10', '爱情公寓', '2018年8月28日', '国泰影院'),
(6, 'http://127.0.0.1:3000/img/slider/slider-6.jpg', '/films.html?lid=11', '我不是神药', '2018年8月28日', '国泰影院');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `avatar` varchar(123) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `mymovie_carousel_item`
--
ALTER TABLE `mymovie_carousel_item`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `mymovie_navbar_item`
--
ALTER TABLE `mymovie_navbar_item`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `mymovie_slider_item`
--
ALTER TABLE `mymovie_slider_item`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `films`
--
ALTER TABLE `films`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `mymovie_carousel_item`
--
ALTER TABLE `mymovie_carousel_item`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `mymovie_navbar_item`
--
ALTER TABLE `mymovie_navbar_item`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `mymovie_slider_item`
--
ALTER TABLE `mymovie_slider_item`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
