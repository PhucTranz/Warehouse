-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 14, 2023 lúc 12:07 PM
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
-- Cơ sở dữ liệu: `lab6n7`
--
CREATE DATABASE IF NOT EXISTS `lab6n7` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lab6n7`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`name`, `email`, `password`) VALUES
('Trần Đình Phúc', 'admin@gmail.com', '$2b$10$C8U/FYwTgqMWJpDDYR5tj.enFSssr3SfaRMiC.l9mo7K81H0.gNu6'),
('Trần Đình Phúc', 'dsaddds@fskj.com', '$2b$10$S8Kw7s.BH/rQP9IRLywE9OPm.VqPOrzOrz8WsnJAOPjH8kwkgZoWm'),
('Trần Đình Phúc23', 'dsads@fskj.com', '$2b$10$/gqhLCfOvBw6HY6mveiv8OmnrizRKmYhnmDwtYJRTOSGX6VaigC36'),
('Trần Đình Phúc', 'nhocphuc12321@gmail.com', '$2b$10$Obb8HHUyqhxgaHmkXXHz8uD7cTEmGoMXFlczwjB52o2GgUqdM4jdy'),
('Trần Đình Phúc', 'nhocphuc12321@gmail.coma', '$2b$10$84kkHaCbnuhcYEDXUh6UyOshWeRm4UlSrUuysTHh1h469ACYvwFOu');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`email`);
--
-- Cơ sở dữ liệu: `nodejsbasic`
--
CREATE DATABASE IF NOT EXISTS `nodejsbasic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nodejsbasic`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `address`) VALUES
(4, 'Tran Dinh', 'Phuc', 'nhocphuc12321@gmail.com', 'BT'),
(5, 'Tran', 'Vu', 'phuc@gmail.com', 'd');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Cơ sở dữ liệu: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Đang đổ dữ liệu cho bảng `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"warehouse\",\"table\":\"sanpham_kho\"},{\"db\":\"warehouse\",\"table\":\"nhanvienkho\"},{\"db\":\"warehouse\",\"table\":\"taikhoan\"},{\"db\":\"warehouse\",\"table\":\"nhacungcap\"},{\"db\":\"warehouse\",\"table\":\"quanlykho\"},{\"db\":\"warehouse\",\"table\":\"kho\"},{\"db\":\"warehouse\",\"table\":\"sanpham\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-11-09 12:52:13', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"vi\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Cơ sở dữ liệu: `qlk`
--
CREATE DATABASE IF NOT EXISTS `qlk` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `qlk`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donnhaphang`
--

CREATE TABLE `donnhaphang` (
  `madonnhap` int(11) NOT NULL,
  `ngaynhap` varchar(10) DEFAULT NULL,
  `trangthai` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tongtien` int(11) DEFAULT NULL,
  `manv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donxuathang`
--

CREATE TABLE `donxuathang` (
  `madonxuat` int(11) NOT NULL,
  `ngayxuat` varchar(10) DEFAULT NULL,
  `trangthai` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tongtien` int(11) DEFAULT NULL,
  `manv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kho`
--

CREATE TABLE `kho` (
  `makho` int(11) NOT NULL,
  `tenkho` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `diachi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvienkho`
--

INSERT INTO `nhanvienkho` (`manv`, `hoten`, `ngaysinh`, `gioitinh`, `sdt`, `diachi`, `vitrilam`, `luong`, `email`) VALUES
(1, 'Nguyễn Trung Nghĩa', '28/05/2002', 'Nam', '0976578261', 'Cà Mau', 'NV Nhập kho', 20000000, 'phuc@gmail.com');

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
  `tensp` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hinhanh` varchar(50) DEFAULT NULL,
  `mau` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `ngaysx` varchar(10) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `mancc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_kho`
--

CREATE TABLE `sanpham_kho` (
  `masp` int(11) NOT NULL,
  `makho` int(11) NOT NULL,
  `soluong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
('admin@gmail.com', '$2a$10$NkmqvwcZG25yZbDkD5c5B.kV3xSGbqdXC1AzS57toNqsPdJ.LAxpm', 'ROLE_ADMIN'),
('phuc@gmail.com', '$2a$10$NkmqvwcZG25yZbDkD5c5B.kV3xSGbqdXC1AzS57toNqsPdJ.LAxpm', 'ROLE_NV');

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
  ADD KEY `email` (`email`);

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
  ADD CONSTRAINT `nhanvienkho_ibfk_1` FOREIGN KEY (`email`) REFERENCES `taikhoan` (`email`);

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
--
-- Cơ sở dữ liệu: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
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
  `ngaynhap` varchar(10) DEFAULT NULL,
  `trangthai` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tongtien` int(11) DEFAULT NULL,
  `manv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donxuathang`
--

CREATE TABLE `donxuathang` (
  `madonxuat` int(11) NOT NULL,
  `ngayxuat` varchar(10) DEFAULT NULL,
  `trangthai` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tongtien` int(11) DEFAULT NULL,
  `manv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'Kho Nguyễn Thị Thập', '339, Nguyễn Thị Thập, Q7');

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
(2, 'Nike', 'Hà Nội', '190056723');

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
(1, 'Nguyễn Trung Nghĩa', '28/05/2002', 'Nam', '0976578261', 'Cà Mau', 'NV Nhập kho', 20000000, 'phuc@gmail.com', 1);

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
(1, 'Biti\'s Hunter X Wavy', 'img1.jpeg', 'Xám Trắng', 42, 12, '23/11/2022', 1800000, 1),
(3, 'Biti\'s Hunter Running', 'img3.jpeg', 'Xanh', 40, 7, '23/11/2022', 2300000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_kho`
--

CREATE TABLE `sanpham_kho` (
  `masp` int(11) NOT NULL,
  `makho` int(11) NOT NULL,
  `soluong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
('admin@gmail.com', '$2a$10$NkmqvwcZG25yZbDkD5c5B.kV3xSGbqdXC1AzS57toNqsPdJ.LAxpm', 'ROLE_ADMIN'),
('phuc@gmail.com', '$2a$10$NkmqvwcZG25yZbDkD5c5B.kV3xSGbqdXC1AzS57toNqsPdJ.LAxpm', 'ROLE_NV');

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
  MODIFY `madonnhap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `donxuathang`
--
ALTER TABLE `donxuathang`
  MODIFY `madonxuat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `kho`
--
ALTER TABLE `kho`
  MODIFY `makho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `mancc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nhanvienkho`
--
ALTER TABLE `nhanvienkho`
  MODIFY `manv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `quanlykho`
--
ALTER TABLE `quanlykho`
  MODIFY `manv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sanpham_nhaphang`
--
ALTER TABLE `sanpham_nhaphang`
  MODIFY `madonnhap` int(11) NOT NULL AUTO_INCREMENT;

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
