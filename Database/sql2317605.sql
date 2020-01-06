-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: sql2.freemysqlhosting.net
-- Thời gian đã tạo: Th1 06, 2020 lúc 12:12 AM
-- Phiên bản máy phục vụ: 5.5.54-0ubuntu0.12.04.1
-- Phiên bản PHP: 7.0.33-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sql2317605`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Account`
--

CREATE TABLE `Account` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Account`
--

INSERT INTO `Account` (`id`, `username`, `password`, `idUser`) VALUES
(1, 'admin', '123', 1),
(2, 'hoa', '123', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Author`
--

CREATE TABLE `Author` (
  `id` int(11) NOT NULL,
  `authorName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Author`
--

INSERT INTO `Author` (`id`, `authorName`) VALUES
(1, 'KHTN'),
(2, 'Robert Chen'),
(3, 'The Godfather');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Book`
--

CREATE TABLE `Book` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authorId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `publishCompanyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Book`
--

INSERT INTO `Book` (`id`, `name`, `authorId`, `categoryId`, `publishCompanyId`) VALUES
(1, 'Nh?ng ngôi sao xa', 1, 1, 1),
(2, 'B? Già', 3, 1, 1),
(3, 'doremon', 1, 1, 1),
(4, 'pikachuu', 1, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Category`
--

CREATE TABLE `Category` (
  `id` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Category`
--

INSERT INTO `Category` (`id`, `catName`) VALUES
(1, 'Sách giáo khoa'),
(2, 'Truyện thiếu nhi'),
(3, 'Sách tham khảo'),
(4, 'Tiểu thuyết');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ChiTietMuonSach`
--

CREATE TABLE `ChiTietMuonSach` (
  `id` int(11) NOT NULL,
  `idBook` int(11) NOT NULL,
  `idAccount` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `ngayMuon` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ChiTietMuonSach`
--

INSERT INTO `ChiTietMuonSach` (`id`, `idBook`, `idAccount`, `number`, `ngayMuon`) VALUES
(1, 1, 1, 2, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `publishCompany`
--

CREATE TABLE `publishCompany` (
  `id` int(11) NOT NULL,
  `pubName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `publishCompany`
--

INSERT INTO `publishCompany` (`id`, `pubName`) VALUES
(1, 'None'),
(2, 'Japan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateofbirth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `User`
--

INSERT INTO `User` (`id`, `name`, `dateofbirth`, `email`, `gioitinh`, `phone`, `address`) VALUES
(1, 'admin', '', 'admin@gmail.com', '', '123456789', ''),
(2, 'Hòa', '15/04/1998', 'nguyenhuuhoa1998@gmail.com', 'nam', '0353133147', 'none'),
(3, 'Hieu', '01/01/1998', 'hieu@gmail.com', 'nam', '09898898989', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `Account`
--
ALTER TABLE `Account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Author`
--
ALTER TABLE `Author`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Book`
--
ALTER TABLE `Book`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ChiTietMuonSach`
--
ALTER TABLE `ChiTietMuonSach`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `publishCompany`
--
ALTER TABLE `publishCompany`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `Account`
--
ALTER TABLE `Account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `Author`
--
ALTER TABLE `Author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `Book`
--
ALTER TABLE `Book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `ChiTietMuonSach`
--
ALTER TABLE `ChiTietMuonSach`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `publishCompany`
--
ALTER TABLE `publishCompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
