-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th10 04, 2021 lúc 08:24 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `student`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `infor`
--

CREATE TABLE `infor` (
  `ID` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Birth` date NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PhoneNumber` int(11) NOT NULL,
  `Province` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Wards` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `infor`
--

INSERT INTO `infor` (`ID`, `Name`, `Birth`, `Email`, `PhoneNumber`, `Province`, `Wards`) VALUES
('B1809645', 'Nguyễn Thị Thảo', '2021-10-08', 'thao4620@gmail.com', 395936192, 'Hậu Giang', 'Phụng Hiệp'),
('B1809702', 'Võ Thành Long', '2021-11-04', 'longvo@gmail.com', 972479590, 'Sóc Trăng ', 'Kế Sách'),
('B1809720', 'Nguyễn Nhĩ Thái', '2021-10-13', 'nguyennhithai4620@gmail.com', 395996992, 'Cần Thơ', 'Xuân Khánh'),
('B1809724', 'Trương Hoàng Thuận', '2021-10-29', 'thuanb1809724@student.ctu.edu.vn', 2147483647, 'Hậu Giang', 'Ngã 6'),
('B1809726', 'Bùi Quốc Trọng', '2021-10-17', 'trong@gmail.com', 395996998, 'Ninh Kieu', 'Xuân Khánh');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `infor`
--
ALTER TABLE `infor`
  ADD UNIQUE KEY `ID` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
