-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 11, 2023 lúc 05:22 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cs`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `ID` int(11) NOT NULL,
  `Product` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Giày'),
(2, 'Áo khoát'),
(3, 'Nón'),
(4, 'Dép'),
(5, 'Kính'),
(6, 'Móc khóa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `item` text NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `dateOrdered` varchar(100) NOT NULL,
  `dateDelivered` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `name`, `contact`, `address`, `email`, `item`, `amount`, `status`, `dateOrdered`, `dateDelivered`) VALUES
(1, 'Jimmy Lomocso', '09465795229', '049, Maracas, Lahug, Cebu City', 'jimmy.lomocso@gmail.com', '(2) Product 101, (1) Product 101, ', '600', 'confirmed', '09/23/14', '10/04/14'),
(2, 'a a', '09465795229', '049, Maracas, Lahug, Cebu City', 'jimmy.lomocso@gmail.com', '(1) Product 202, ', '100', 'confirmed', '10/03/14', '10/04/14'),
(3, 'Jimmy Lomocso', '09465795229', '049, Maracas, Lahug, Cebu City', 'jimmy.lomocso@gmail.com', '(10) wer, (10) Product 101, ', '300', 'confirmed', '10/03/14', '10/04/14 08:04:28 AM'),
(4, 'John Doe', '09465795229', '049, Maracas, Lahug, Cebu City', 'rjcantos_16@yahoo.com', '(5) Product 202, ', '100', 'confirmed', '10/04/14 12:02:57 AM', '10/04/14 09:31:08 PM'),
(5, 'Peter Paul Segura', '256-2842 / 233-6066', '049, Maracas, Lahug, Cebu City', 'deewylperez_03@yahoo.com', '(3) Product 202, (1) Product 202, ', '200', 'confirmed', '10/04/14 08:05:35 AM', '10/04/14 08:15:25 AM'),
(6, 'sdf sdf', '33', 'sdfsdf', 'a@yahoo.com', '(1) Product 101, ', '300', 'confirmed', '10/04/14 09:23:34 PM', '10/04/14 09:31:04 PM'),
(7, 'sdf sdf', 'sd33', 'sdf', 'sdf@yahoo.com', '(1) Product 101, ', '0', 'confirmed', '10/06/14 11:15:59 AM', '06/14/15 09:52:56 AM'),
(8, 'sdf dsf', '33', 'dsfsdfsdf', 'a@yahoo.com', '(1) wer, ', '0', 'confirmed', '10/18/14 11:34:45 AM', '06/14/15 09:52:38 AM'),
(9, 'john hohn', '234', 'dsdfdg', 'a@yahoo.com', '(1) Product 202, ', '100', 'confirmed', '06/14/15 09:53:36 AM', '06/14/15 09:53:56 AM'),
(10, 'a a', 'e424', 'dsdfdg', 'a@yahoo.com', '(1) Product 202, (2) Product 101, ', '400.5', 'delivered', '06/14/15 10:02:11 AM', '06/14/15 10:02:52 AM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `imgUrl` text NOT NULL,
  `Product` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` text NOT NULL,
  `Price` double NOT NULL,
  `Category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ID`, `imgUrl`, `Product`, `Description`, `Price`, `Category`) VALUES
(83, 'Air-Jordan-1-Hi-Trophy-Room-Chicago.jpeg', 'Giày 1', 'giày hot', 200, 'Giày'),
(84, 'mwc (2).jpg', 'Giày 2', 'giày hot 2023', 300, 'Giày'),
(85, 'Air-Jordan-1-Hi-Trophy-Room-Chicago.jpeg', 'Giày 3', 'giày hot', 200, 'Giày'),
(86, 'mwc (2).jpg', 'Giày 4', 'giày hot 2023', 300, 'Giày'),
(87, 'Untitled-1-5455-1608374417.jpg', 'Áo khoát', 'Áo khoát hot', 500, 'Áo khoát'),
(88, 'side-326_4db4234d73704c42b1d73a86adaabd83_grande.webp', 'Kính', 'Kính hot', 100, 'Kính'),
(89, 'Untitled-1-5455-1608374417.jpg', 'Áo khoát', 'Áo khoát hot', 500, 'Áo khoát'),
(90, 'side-326_4db4234d73704c42b1d73a86adaabd83_grande.webp', 'Kính', 'Kính hot', 100, 'Kính'),
(91, 'mu-luoi-trai-den-tron-9.jpg', 'Mũ', 'hot', 150, 'Nón'),
(92, 'side-326_4db4234d73704c42b1d73a86adaabd83_grande.webp', 'Kính', 'Kính hot', 120, 'Kính');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'administrator', 'bobby'),
(2, 'admin', 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
