-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 23, 2023 lúc 04:43 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `warehouse`
--
CREATE DATABASE IF NOT EXISTS `warehouse` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `warehouse`;
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donnhaphang`
--

CREATE TABLE `donnhaphang` (
  `madonnhap` int(11) NOT NULL,
  `ngaynhap` datetime DEFAULT NULL,
  `trangthai` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tongtien` int(11) DEFAULT NULL,
  `manv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donnhaphang`
--

INSERT INTO `donnhaphang` (`madonnhap`, `ngaynhap`, `trangthai`, `tongtien`, `manv`) VALUES
(9, '2023-11-22 14:29:00', 'Hoàn thành', 41000000, 1),
(10, '2023-11-22 14:29:00', 'Hủy', 11500000, 1),
(11, '2023-11-22 15:25:00', 'Hoàn thành', 46900000, 1),
(12, '2023-11-23 16:43:00', 'Hoàn thành', 23000000, 4),
(13, '2023-11-23 22:40:00', 'Hoàn thành', 14000000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donxuathang`
--

CREATE TABLE `donxuathang` (
  `madonxuat` int(11) NOT NULL,
  `ngayxuat` datetime DEFAULT NULL,
  `diachi` varchar(100) NOT NULL,
  `trangthai` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tongtien` int(11) DEFAULT NULL,
  `manv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donxuathang`
--

INSERT INTO `donxuathang` (`madonxuat`, `ngayxuat`, `diachi`, `trangthai`, `tongtien`, `manv`) VALUES
(1, '2023-11-22 14:38:00', '339, Nguyễn Thị Thập, Quận 7', 'Hủy', 8700000, 1),
(2, '2023-11-22 15:01:00', '19 Nguyễn Hữu Thọ, Q7', 'Hoàn thành', 30600000, 1),
(3, '2023-11-22 15:26:00', 'TP HCM', 'Hoàn thành', 4100000, 1),
(4, '2023-11-22 23:25:00', '19 Nguyễn Hữu Thọ, Quận 7', 'Chưa hoàn thành', 10000000, 1),
(5, '2023-11-23 16:44:00', '19 Nguyễn Hữu Thọ, Q7', 'Hoàn thành', 34500000, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kho`
--

CREATE TABLE `kho` (
  `makho` int(11) NOT NULL,
  `tenkho` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `diachi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `kho`
--

INSERT INTO `kho` (`makho`, `tenkho`, `diachi`) VALUES
(1, 'Kho Nguyễn Thị Thập', '339, Nguyễn Thị Thập, Quận 7'),
(3, 'Kho Nguyễn Hữu Thọ', '19 Nguyễn Hữu Thọ, Quận 7');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `mancc` int(11) NOT NULL,
  `tenncc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `diachi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sdt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`mancc`, `tenncc`, `diachi`, `sdt`) VALUES
(1, 'Biti\'s', 'TP HCMm', '190046582'),
(2, 'Nike', 'Hà Nội', '190056723'),
(3, 'Adidas', 'TP HCM', '09364564');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvienkho`
--

CREATE TABLE `nhanvienkho` (
  `manv` int(11) NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ngaysinh` varchar(10) DEFAULT NULL,
  `gioitinh` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sdt` varchar(10) DEFAULT NULL,
  `diachi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `vitrilam` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `luong` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `makho` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvienkho`
--

INSERT INTO `nhanvienkho` (`manv`, `hoten`, `ngaysinh`, `gioitinh`, `sdt`, `diachi`, `vitrilam`, `luong`, `email`, `makho`) VALUES
(1, 'Nguyễn Trung Nghĩa', '2022-02-20', 'Nữ', '0976578261', 'Cà Mau', 'NV Nhập kho', 20000000, 'nghia@gmail.com', 1),
(4, 'Phúc Trần', '2002-11-23', 'Nam', '32133', '339, Nguyễn Thị Thập, Quận 7', 'Xuất kho', 123333, 'phuc@gmail.com', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanlykho`
--

CREATE TABLE `quanlykho` (
  `manv` int(11) NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ngaysinh` varchar(10) DEFAULT NULL,
  `gioitinh` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sdt` varchar(10) DEFAULT NULL,
  `diachi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `luong` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quanlykho`
--

INSERT INTO `quanlykho` (`manv`, `hoten`, `ngaysinh`, `gioitinh`, `sdt`, `diachi`, `luong`, `email`) VALUES
(1, 'Trần Đình Phúc', '23/11/2002', 'Nam', '0972106231', 'Bình Thuận', 10000000, 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(11) NOT NULL,
  `tensp` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hinhanh` varchar(255) DEFAULT NULL,
  `mau` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `ngaysx` varchar(10) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `mancc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `hinhanh`, `mau`, `size`, `soluong`, `ngaysx`, `gia`, `mancc`) VALUES
(1, 'Biti\'s Hunter X Wavy', 'img1.jpeg', 'Xám Trắng', 42, 13, '23/11/2022', 1800000, 1),
(3, 'Biti\'s Hunter Running', 'img2.jpeg', 'Xanh', 40, 23, '23/11/2022', 2300000, 1),
(10, 'Adidas Pod 1', 'img3.jpeg', 'Đen', 45, 20, '21/12/2023', 1400000, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_kho`
--

CREATE TABLE `sanpham_kho` (
  `masp` int(11) NOT NULL,
  `makho` int(11) NOT NULL,
  `soluong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham_kho`
--

INSERT INTO `sanpham_kho` (`masp`, `makho`, `soluong`) VALUES
(1, 1, 13),
(3, 1, 18),
(3, 3, 5),
(10, 1, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_nhaphang`
--

CREATE TABLE `sanpham_nhaphang` (
  `madonnhap` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham_nhaphang`
--

INSERT INTO `sanpham_nhaphang` (`madonnhap`, `masp`, `soluong`, `gia`) VALUES
(9, 1, 10, 1800000),
(9, 3, 10, 2300000),
(10, 3, 5, 2300000),
(11, 1, 12, 1800000),
(11, 3, 11, 2300000),
(12, 3, 10, 2300000),
(13, 10, 10, 1400000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_xuathang`
--

CREATE TABLE `sanpham_xuathang` (
  `madonxuat` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham_xuathang`
--

INSERT INTO `sanpham_xuathang` (`madonxuat`, `masp`, `soluong`, `gia`) VALUES
(1, 1, 1, 1800000),
(1, 3, 3, 2300000),
(2, 1, 5, 1800000),
(3, 1, 1, 1800000),
(3, 3, 1, 2300000),
(4, 1, 3, 1800000),
(4, 3, 2, 2300000),
(5, 3, 5, 2300000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `email` varchar(50) NOT NULL,
  `matkhau` varchar(100) DEFAULT NULL,
  `role` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`email`, `matkhau`, `role`) VALUES
('admin@gmail.com', '$2a$10$cAG.R6JxncADdYqzRWfGxex/95mj3q.6pOE2kTGxLNRL4UKb197QC', 'ROLE_ADMIN'),
('nghia@gmail.com', '$2a$10$L88feF3xwRpSM5CL3Ds/YeTPHGn8X5UQQYOCA8gi3aPcmYgfiPpsS', 'ROLE_NV'),
('phuc@gmail.com', '$2a$10$s7N0N9YOBLGQbc1q7cfbBOnvVDZj9mGgAmLOUoY1AM9aK7Jpq7eb.', 'ROLE_NV');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `donnhaphang`
--
ALTER TABLE `donnhaphang`
  ADD PRIMARY KEY (`madonnhap`),
  ADD KEY `manv` (`manv`);

--
-- Chỉ mục cho bảng `donxuathang`
--
ALTER TABLE `donxuathang`
  ADD PRIMARY KEY (`madonxuat`),
  ADD KEY `manv` (`manv`);

--
-- Chỉ mục cho bảng `kho`
--
ALTER TABLE `kho`
  ADD PRIMARY KEY (`makho`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`mancc`);

--
-- Chỉ mục cho bảng `nhanvienkho`
--
ALTER TABLE `nhanvienkho`
  ADD PRIMARY KEY (`manv`),
  ADD KEY `email` (`email`),
  ADD KEY `nhanvienkho_ibfk_2` (`makho`);

--
-- Chỉ mục cho bảng `quanlykho`
--
ALTER TABLE `quanlykho`
  ADD PRIMARY KEY (`manv`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `mancc` (`mancc`);

--
-- Chỉ mục cho bảng `sanpham_kho`
--
ALTER TABLE `sanpham_kho`
  ADD PRIMARY KEY (`masp`,`makho`),
  ADD KEY `makho` (`makho`);

--
-- Chỉ mục cho bảng `sanpham_nhaphang`
--
ALTER TABLE `sanpham_nhaphang`
  ADD PRIMARY KEY (`madonnhap`,`masp`),
  ADD KEY `masp` (`masp`);

--
-- Chỉ mục cho bảng `sanpham_xuathang`
--
ALTER TABLE `sanpham_xuathang`
  ADD PRIMARY KEY (`madonxuat`,`masp`),
  ADD KEY `masp` (`masp`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donnhaphang`
--
ALTER TABLE `donnhaphang`
  MODIFY `madonnhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `donxuathang`
--
ALTER TABLE `donxuathang`
  MODIFY `madonxuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `kho`
--
ALTER TABLE `kho`
  MODIFY `makho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `mancc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nhanvienkho`
--
ALTER TABLE `nhanvienkho`
  MODIFY `manv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `quanlykho`
--
ALTER TABLE `quanlykho`
  MODIFY `manv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `sanpham_nhaphang`
--
ALTER TABLE `sanpham_nhaphang`
  MODIFY `madonnhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `donnhaphang`
--
ALTER TABLE `donnhaphang`
  ADD CONSTRAINT `donnhaphang_ibfk_1` FOREIGN KEY (`manv`) REFERENCES `nhanvienkho` (`manv`);

--
-- Các ràng buộc cho bảng `donxuathang`
--
ALTER TABLE `donxuathang`
  ADD CONSTRAINT `donxuathang_ibfk_1` FOREIGN KEY (`manv`) REFERENCES `nhanvienkho` (`manv`);

--
-- Các ràng buộc cho bảng `nhanvienkho`
--
ALTER TABLE `nhanvienkho`
  ADD CONSTRAINT `nhanvienkho_ibfk_1` FOREIGN KEY (`email`) REFERENCES `taikhoan` (`email`),
  ADD CONSTRAINT `nhanvienkho_ibfk_2` FOREIGN KEY (`makho`) REFERENCES `kho` (`makho`);

--
-- Các ràng buộc cho bảng `quanlykho`
--
ALTER TABLE `quanlykho`
  ADD CONSTRAINT `quanlykho_ibfk_1` FOREIGN KEY (`email`) REFERENCES `taikhoan` (`email`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`mancc`) REFERENCES `nhacungcap` (`mancc`);

--
-- Các ràng buộc cho bảng `sanpham_kho`
--
ALTER TABLE `sanpham_kho`
  ADD CONSTRAINT `sanpham_kho_ibfk_1` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`),
  ADD CONSTRAINT `sanpham_kho_ibfk_2` FOREIGN KEY (`makho`) REFERENCES `kho` (`makho`);

--
-- Các ràng buộc cho bảng `sanpham_nhaphang`
--
ALTER TABLE `sanpham_nhaphang`
  ADD CONSTRAINT `sanpham_nhaphang_ibfk_1` FOREIGN KEY (`madonnhap`) REFERENCES `donnhaphang` (`madonnhap`),
  ADD CONSTRAINT `sanpham_nhaphang_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Các ràng buộc cho bảng `sanpham_xuathang`
--
ALTER TABLE `sanpham_xuathang`
  ADD CONSTRAINT `sanpham_xuathang_ibfk_1` FOREIGN KEY (`madonxuat`) REFERENCES `donxuathang` (`madonxuat`),
  ADD CONSTRAINT `sanpham_xuathang_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
