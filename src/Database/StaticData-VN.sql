﻿DELETE FROM Core_StateOrProvince WHERE Id != 1
GO

SET IDENTITY_INSERT Core_StateOrProvince ON 
INSERT INTO Core_StateOrProvince ([Id], [CountryId], [Name], [Type]) VALUES
--(1, N'VN', N'Hồ Chí Minh', N'Thành Phố'),
(2, N'VN', N'Hà Giang', N'Tỉnh'),
(4, N'VN', N'Cao Bằng', N'Tỉnh'),
(6, N'VN', N'Bắc Kạn', N'Tỉnh'),
(8, N'VN', N'Tuyên Quang', N'Tỉnh'),
(10, N'VN', N'Lào Cai', N'Tỉnh'),
(11, N'VN', N'Điện Biên', N'Tỉnh'),
(12, N'VN', N'Lai Châu', N'Tỉnh'),
(14, N'VN', N'Sơn La', N'Tỉnh'),
(15, N'VN', N'Yên Bái', N'Tỉnh'),
(17, N'VN', N'Hòa Bình', N'Tỉnh'),
(19, N'VN', N'Thái Nguyên', N'Tỉnh'),
(20, N'VN', N'Lạng Sơn', N'Tỉnh'),
(22, N'VN', N'Quảng Ninh', N'Tỉnh'),
(24, N'VN', N'Bắc Giang', N'Tỉnh'),
(25, N'VN', N'Phú Thọ', N'Tỉnh'),
(26, N'VN', N'Vĩnh Phúc', N'Tỉnh'),
(27, N'VN', N'Bắc Ninh', N'Tỉnh'),
(30, N'VN', N'Hải Dương', N'Tỉnh'),
(31, N'VN', N'Hải Phòng', N'Thành Phố'),
(33, N'VN', N'Hưng Yên', N'Tỉnh'),
(34, N'VN', N'Thái Bình', N'Tỉnh'),
(35, N'VN', N'Hà Nam', N'Tỉnh'),
(36, N'VN', N'Nam Định', N'Tỉnh'),
(37, N'VN', N'Ninh Bình', N'Tỉnh'),
(38, N'VN', N'Thanh Hóa', N'Tỉnh'),
(40, N'VN', N'Nghệ An', N'Tỉnh'),
(42, N'VN', N'Hà Tĩnh', N'Tỉnh'),
(44, N'VN', N'Quảng Bình', N'Tỉnh'),
(45, N'VN', N'Quảng Trị', N'Tỉnh'),
(46, N'VN', N'Thừa Thiên Huế', N'Tỉnh'),
(48, N'VN', N'Đà Nẵng', N'Thành Phố'),
(49, N'VN', N'Quảng Nam', N'Tỉnh'),
(51, N'VN', N'Quảng Ngãi', N'Tỉnh'),
(52, N'VN', N'Bình Định', N'Tỉnh'),
(54, N'VN', N'Phú Yên', N'Tỉnh'),
(56, N'VN', N'Khánh Hòa', N'Tỉnh'),
(58, N'VN', N'Ninh Thuận', N'Tỉnh'),
(60, N'VN', N'Bình Thuận', N'Tỉnh'),
(62, N'VN', N'Kon Tum', N'Tỉnh'),
(64, N'VN', N'Gia Lai', N'Tỉnh'),
(66, N'VN', N'Đắk Lắk', N'Tỉnh'),
(67, N'VN', N'Đắk Nông', N'Tỉnh'),
(68, N'VN', N'Lâm Đồng', N'Tỉnh'),
(70, N'VN', N'Bình Phước', N'Tỉnh'),
(72, N'VN', N'Tây Ninh', N'Tỉnh'),
(74, N'VN', N'Bình Dương', N'Tỉnh'),
(75, N'VN', N'Đồng Nai', N'Tỉnh'),
(77, N'VN', N'Bà Rịa - Vũng Tàu', N'Tỉnh'),
(79, N'VN', N'Hà Nội', N'Thành Phố'),
(80, N'VN', N'Long An', N'Tỉnh'),
(82, N'VN', N'Tiền Giang', N'Tỉnh'),
(83, N'VN', N'Bến Tre', N'Tỉnh'),
(84, N'VN', N'Trà Vinh', N'Tỉnh'),
(86, N'VN', N'Vĩnh Long', N'Tỉnh'),
(87, N'VN', N'Đồng Tháp', N'Tỉnh'),
(89, N'VN', N'An Giang', N'Tỉnh'),
(91, N'VN', N'Kiên Giang', N'Tỉnh'),
(92, N'VN', N'Cần Thơ', N'Thành Phố'),
(93, N'VN', N'Hậu Giang', N'Tỉnh'),
(94, N'VN', N'Sóc Trăng', N'Tỉnh'),
(95, N'VN', N'Bạc Liêu', N'Tỉnh'),
(96, N'VN', N'Cà Mau', N'Tỉnh');
SET IDENTITY_INSERT Core_StateOrProvince OFF 
GO

DELETE FROM Core_District 
GO
SET IDENTITY_INSERT Core_District ON 
INSERT INTO Core_District (Id, Name, [Type], [Location], StateOrProvinceId) VALUES
(1, N'Ba Đình', N'Quận', N'21 02 08N, 105 49 38E', N'79'),
(2, N'Hoàn Kiếm', N'Quận', N'21 01 53N, 105 51 09E', N'79'),
(3, N'Tây Hồ', N'Quận', N'21 04 10N, 105 49 07E', N'79'),
(4, N'Long Biên', N'Quận', N'21 02 21N, 105 53 07E', N'79'),
(5, N'Cầu Giấy', N'Quận', N'21 01 52N, 105 47 20E', N'79'),
(6, N'Đống Đa', N'Quận', N'21 00 56N, 105 49 06E', N'79'),
(7, N'Hai Bà Trưng', N'Quận', N'21 00 27N, 105 51 35E', N'79'),
(8, N'Hoàng Mai', N'Quận', N'20 58 33N, 105 51 22E', N'79'),
(9, N'Thanh Xuân', N'Quận', N'20 59 44N, 105 48 56E', N'79'),
(16, N'Sóc Sơn', N'Huyện', N'21 16 55N, 105 49 46E', N'79'),
(17, N'Đông Anh', N'Huyện', N'21 08 16N, 105 49 38E', N'79'),
(18, N'Gia Lâm', N'Huyện', N'21 01 28N, 105 56 54E', N'79'),
(19, N'Từ Liêm', N'Huyện', N'21 02 39N, 105 45 32E', N'79'),
(20, N'Thanh Trì', N'Huyện', N'20 56 32N, 105 50 55E', N'79'),
(24, N'Hà Giang', N'Thị Xã', N'22 46 23N, 105 02 39E', N'02'),
(26, N'Đồng Văn', N'Huyện', N'23 14 34N, 105 15 48E', N'02'),
(27, N'Mèo Vạc', N'Huyện', N'23 09 10N, 105 26 38E', N'02'),
(28, N'Yên Minh', N'Huyện', N'23 04 20N, 105 10 13E', N'02'),
(29, N'Quản Bạ', N'Huyện', N'23 04 03N, 104 58 05E', N'02'),
(30, N'Vị Xuyên', N'Huyện', N'22 45 50N, 104 56 26E', N'02'),
(31, N'Bắc Mê', N'Huyện', N'22 45 48N, 105 16 26E', N'02'),
(32, N'Hoàng Su Phì', N'Huyện', N'22 41 37N, 104 40 06E', N'02'),
(33, N'Xín Mần', N'Huyện', N'22 38 05N, 104 28 35E', N'02'),
(34, N'Bắc Quang', N'Huyện', N'22 23 42N, 104 55 06E', N'02'),
(35, N'Quang Bình', N'Huyện', N'22 23 07N, 104 37 11E', N'02'),
(40, N'Cao Bằng', N'Thị Xã', N'22 39 20N, 106 15 20E', N'04'),
(42, N'Bảo Lâm', N'Huyện', N'22 52 37N, 105 27 28E', N'04'),
(43, N'Bảo Lạc', N'Huyện', N'22 52 31N, 105 42 41E', N'04'),
(44, N'Thông Nông', N'Huyện', N'22 49 09N, 105 57 05E', N'04'),
(45, N'Hà Quảng', N'Huyện', N'22 53 42N, 106 06 32E', N'04'),
(46, N'Trà Lĩnh', N'Huyện', N'22 48 14N, 106 19 47E', N'04'),
(47, N'Trùng Khánh', N'Huyện', N'22 49 31N, 106 33 58E', N'04'),
(48, N'Hạ Lang', N'Huyện', N'22 42 37N, 106 41 42E', N'04'),
(49, N'Quảng Uyên', N'Huyện', N'22 40 15N, 106 27 42E', N'04'),
(50, N'Phục Hoà', N'Huyện', N'22 33 52N, 106 30 02E', N'04'),
(51, N'Hoà An', N'Huyện', N'22 41 20N, 106 02 05E', N'04'),
(52, N'Nguyên Bình', N'Huyện', N'22 38 52N, 105 57 02E', N'04'),
(53, N'Thạch An', N'Huyện', N'22 28 51N, 106 19 51E', N'04'),
(58, N'Bắc Kạn', N'Thị Xã', N'22 08 00N, 105 51 10E', N'06'),
(60, N'Pác Nặm', N'Huyện', N'22 35 46N, 105 40 25E', N'06'),
(61, N'Ba Bể', N'Huyện', N'22 23 54N, 105 43 30E', N'06'),
(62, N'Ngân Sơn', N'Huyện', N'22 25 50N, 106 01 00E', N'06'),
(63, N'Bạch Thông', N'Huyện', N'22 12 04N, 105 51 01E', N'06'),
(64, N'Chợ Đồn', N'Huyện', N'22 11 18N, 105 34 43E', N'06'),
(65, N'Chợ Mới', N'Huyện', N'21 57 56N, 105 51 29E', N'06'),
(66, N'Na Rì', N'Huyện', N'22 09 48N, 106 05 09E', N'06'),
(70, N'Tuyên Quang', N'Thị Xã', N'21 49 40N, 105 13 12E', N'08'),
(72, N'Nà Hang', N'Huyện', N'22 28 34N, 105 21 03E', N'08'),
(73, N'Chiêm Hóa', N'Huyện', N'22 12 49N, 105 14 32E', N'08'),
(74, N'Hàm Yên', N'Huyện', N'22 05 46N, 105 00 13E', N'08'),
(75, N'Yên Sơn', N'Huyện', N'21 51 53N, 105 18 14E', N'08'),
(76, N'Sơn Dương', N'Huyện', N'21 40 22N, 105 22 57E', N'08'),
(80, N'Lào Cai', N'Thành Phố', N'22 25 07N, 103 58 43E', N'10'),
(82, N'Bát Xát', N'Huyện', N'22 35 50N, 103 44 49E', N'10'),
(83, N'Mường Khương', N'Huyện', N'22 41 05N, 104 08 26E', N'10'),
(84, N'Si Ma Cai', N'Huyện', N'22 39 46N, 104 16 05E', N'10'),
(85, N'Bắc Hà', N'Huyện', N'22 30 08N, 104 18 54E', N'10'),
(86, N'Bảo Thắng', N'Huyện', N'22 22 47N, 104 10 00E', N'10'),
(87, N'Bảo Yên', N'Huyện', N'22 17 38N, 104 25 02E', N'10'),
(88, N'Sa Pa', N'Huyện', N'22 18 54N, 103 54 18E', N'10'),
(89, N'Văn Bàn', N'Huyện', N'22 03 48N, 104 10 59E', N'10'),
(94, N'Điện Biên Phủ', N'Thành Phố', N'21 24 52N, 103 02 31E', N'11'),
(95, N'Mường Lay', N'Thị Xã', N'22 01 47N, 103 07 10E', N'11'),
(96, N'Mường Nhé', N'Huyện', N'22 06 11N, 102 30 54E', N'11'),
(97, N'Mường Chà', N'Huyện', N'21 50 31N, 103 03 15E', N'11'),
(98, N'Tủa Chùa', N'Huyện', N'21 58 19N, 103 23 01E', N'11'),
(99, N'Tuần Giáo', N'Huyện', N'21 38 03N, 103 21 06E', N'11'),
(100, N'Điện Biên', N'Huyện', N'21 15 19N, 103 03 19E', N'11'),
(101, N'Điện Biên Đông', N'Huyện', N'21 14 07N, 103 15 19E', N'11'),
(102, N'Mường Ảng', N'Huyện', N'', N'11'),
(104, N'Lai Châu', N'Thị Xã', N'22 23 15N, 103 24 22E', N'12'),
(106, N'Tam Đường', N'Huyện', N'22 20 16N, 103 32 53E', N'12'),
(107, N'Mường Tè', N'Huyện', N'22 24 16N, 102 43 11E', N'12'),
(108, N'Sìn Hồ', N'Huyện', N'22 17 21N, 103 18 12E', N'12'),
(109, N'Phong Thổ', N'Huyện', N'22 38 24N, 103 22 38E', N'12'),
(110, N'Than Uyên', N'Huyện', N'21 59 35N, 103 45 30E', N'12'),
(111, N'Tân Uyên', N'Huyện', N'', N'12'),
(116, N'Sơn La', N'Thành Phố', N'21 20 39N, 103 54 52E', N'14'),
(118, N'Quỳnh Nhai', N'Huyện', N'21 46 34N, 103 39 02E', N'14'),
(119, N'Thuận Châu', N'Huyện', N'21 24 54N, 103 39 46E', N'14'),
(120, N'Mường La', N'Huyện', N'21 31 38N, 104 02 48E', N'14'),
(121, N'Bắc Yên', N'Huyện', N'21 13 23N, 104 22 09E', N'14'),
(122, N'Phù Yên', N'Huyện', N'21 13 33N, 104 41 51E', N'14'),
(123, N'Mộc Châu', N'Huyện', N'20 49 21N, 104 43 10E', N'14'),
(124, N'Yên Châu', N'Huyện', N'20 59 33N, 104 19 51E', N'14'),
(125, N'Mai Sơn', N'Huyện', N'21 10 08N, 103 59 36E', N'14'),
(126, N'Sông Mã', N'Huyện', N'21 06 04N, 103 43 56E', N'14'),
(127, N'Sốp Cộp', N'Huyện', N'20 52 46N, 103 30 38E', N'14'),
(132, N'Yên Bái', N'Thành Phố', N'21 44 28N, 104 53 42E', N'15'),
(133, N'Nghĩa Lộ', N'Thị Xã', N'21 35 58N, 104 29 22E', N'15'),
(135, N'Lục Yên', N'Huyện', N'22 06 44N, 104 43 12E', N'15'),
(136, N'Văn Yên', N'Huyện', N'21 55 55N, 104 33 51E', N'15'),
(137, N'Mù Cang Chải', N'Huyện', N'21 48 22N, 104 09 01E', N'15'),
(138, N'Trấn Yên', N'Huyện', N'21 42 20N, 104 48 56E', N'15'),
(139, N'Trạm Tấu', N'Huyện', N'21 30 40N, 104 28 03E', N'15'),
(140, N'Văn Chấn', N'Huyện', N'21 34 15N, 104 35 19E', N'15'),
(141, N'Yên Bình', N'Huyện', N'21 52 24N, 104 55 16E', N'15'),
(148, N'Hòa Bình', N'Thành Phố', N'20 50 36N, 105 19 20E', N'17'),
(150, N'Đà Bắc', N'Huyện', N'20 55 58N, 105 04 52E', N'17'),
(151, N'Kỳ Sơn', N'Huyện', N'20 54 06N, 105 23 18E', N'17'),
(152, N'Lương Sơn', N'Huyện', N'20 53 16N, 105 30 55E', N'17'),
(153, N'Kim Bôi', N'Huyện', N'20 40 34N, 105 32 15E', N'17'),
(154, N'Cao Phong', N'Huyện', N'20 41 23N, 105 17 48E', N'17'),
(155, N'Tân Lạc', N'Huyện', N'20 36 44N, 105 15 03E', N'17'),
(156, N'Mai Châu', N'Huyện', N'20 40 56N, 104 59 46E', N'17'),
(157, N'Lạc Sơn', N'Huyện', N'20 29 59N, 105 24 57E', N'17'),
(158, N'Yên Thủy', N'Huyện', N'20 25 42N, 105 37 59E', N'17'),
(159, N'Lạc Thủy', N'Huyện', N'20 29 12N, 105 44 06E', N'17'),
(164, N'Thái Nguyên', N'Thành Phố', N'21 33 20N, 105 48 26E', N'19'),
(165, N'Sông Công', N'Thị Xã', N'21 29 14N, 105 48 47E', N'19'),
(167, N'Định Hóa', N'Huyện', N'21 53 50N, 105 38 01E', N'19'),
(168, N'Phú Lương', N'Huyện', N'21 45 57N, 105 43 22E', N'19'),
(169, N'Đồng Hỷ', N'Huyện', N'21 41 10N, 105 55 43E', N'19'),
(170, N'Võ Nhai', N'Huyện', N'21 47 14N, 106 02 29E', N'19'),
(171, N'Đại Từ', N'Huyện', N'21 36 17N, 105 37 28E', N'19'),
(172, N'Phổ Yên', N'Huyện', N'21 27 08N, 105 45 19E', N'19'),
(173, N'Phú Bình', N'Huyện', N'21 29 36N, 105 57 42E', N'19'),
(178, N'Lạng Sơn', N'Thành Phố', N'21 51 19N, 106 44 50E', N'20'),
(180, N'Tràng Định', N'Huyện', N'22 18 09N, 106 26 32E', N'20'),
(181, N'Bình Gia', N'Huyện', N'22 03 56N, 106 19 01E', N'20'),
(182, N'Văn Lãng', N'Huyện', N'22 01 59N, 106 34 17E', N'20'),
(183, N'Cao Lộc', N'Huyện', N'21 53 05N, 106 50 34E', N'20'),
(184, N'Văn Quan', N'Huyện', N'21 51 04N, 106 33 04E', N'20'),
(185, N'Bắc Sơn', N'Huyện', N'21 48 57N, 106 15 28E', N'20'),
(186, N'Hữu Lũng', N'Huyện', N'21 34 33N, 106 20 33E', N'20'),
(187, N'Chi Lăng', N'Huyện', N'21 40 05N, 106 37 24E', N'20'),
(188, N'Lộc Bình', N'Huyện', N'21 40 41N, 106 58 12E', N'20'),
(189, N'Đình Lập', N'Huyện', N'21 32 07N, 107 07 25E', N'20'),
(193, N'Hạ Long', N'Thành Phố', N'20 52 24N, 107 05 23E', N'22'),
(194, N'Móng Cái', N'Thành Phố', N'21 26 31N, 107 55 09E', N'22'),
(195, N'Cẩm Phả', N'Thị Xã', N'21 03 42N, 107 17 22E', N'22'),
(196, N'Uông Bí', N'Thị Xã', N'21 04 33N, 106 45 07E', N'22'),
(198, N'Bình Liêu', N'Huyện', N'21 33 07N, 107 26 24E', N'22'),
(199, N'Tiên Yên', N'Huyện', N'21 22 24N, 107 22 50E', N'22'),
(200, N'Đầm Hà', N'Huyện', N'21 21 23N, 107 34 32E', N'22'),
(201, N'Hải Hà', N'Huyện', N'21 25 50N, 107 41 26E', N'22'),
(202, N'Ba Chẽ', N'Huyện', N'21 15 40N, 107 09 52E', N'22'),
(203, N'Vân Đồn', N'Huyện', N'20 56 17N, 107 28 02E', N'22'),
(204, N'Hoành Bồ', N'Huyện', N'21 06 30N, 107 02 43E', N'22'),
(205, N'Đông Triều', N'Huyện', N'21 07 10N, 106 34 36E', N'22'),
(206, N'Yên Hưng', N'Huyện', N'20 55 40N, 106 51 05E', N'22'),
(207, N'Cô Tô', N'Huyện', N'21 05 01N, 107 49 10E', N'22'),
(213, N'Bắc Giang', N'Thành Phố', N'21 17 36N, 106 11 18E', N'24'),
(215, N'Yên Thế', N'Huyện', N'21 31 29N, 106 09 27E', N'24'),
(216, N'Tân Yên', N'Huyện', N'21 23 23N, 106 05 55E', N'24'),
(217, N'Lạng Giang', N'Huyện', N'21 21 58N, 106 15 21E', N'24'),
(218, N'Lục Nam', N'Huyện', N'21 18 16N, 106 29 24E', N'24'),
(219, N'Lục Ngạn', N'Huyện', N'21 26 15N, 106 39 09E', N'24'),
(220, N'Sơn Động', N'Huyện', N'21 19 42N, 106 51 09E', N'24'),
(221, N'Yên Dũng', N'Huyện', N'21 12 22N, 106 14 12E', N'24'),
(222, N'Việt Yên', N'Huyện', N'21 16 16N, 106 04 59E', N'24'),
(223, N'Hiệp Hòa', N'Huyện', N'21 15 51N, 105 57 30E', N'24'),
(227, N'Việt Trì', N'Thành Phố', N'21 19 01N, 105 23 35E', N'25'),
(228, N'Phú Thọ', N'Thị Xã', N'21 24 54N, 105 13 46E', N'25'),
(230, N'Đoan Hùng', N'Huyện', N'21 36 56N, 105 08 42E', N'25'),
(231, N'Hạ Hoà', N'Huyện', N'21 35 13N, 105 00 22E', N'25'),
(232, N'Thanh Ba', N'Huyện', N'21 27 04N, 105 09 10E', N'25'),
(233, N'Phù Ninh', N'Huyện', N'21 26 59N, 105 18 13E', N'25'),
(234, N'Yên Lập', N'Huyện', N'21 22 21N, 105 01 25E', N'25'),
(235, N'Cẩm Khê', N'Huyện', N'21 23 04N, 105 05 25E', N'25'),
(236, N'Tam Nông', N'Huyện', N'21 18 24N, 105 14 59E', N'25'),
(237, N'Lâm Thao', N'Huyện', N'21 19 37N, 105 18 09E', N'25'),
(238, N'Thanh Sơn', N'Huyện', N'21 08 32N, 105 04 40E', N'25'),
(239, N'Thanh Thuỷ', N'Huyện', N'21 07 26N, 105 17 18E', N'25'),
(240, N'Tân Sơn', N'Huyện', N'', N'25'),
(243, N'Vĩnh Yên', N'Thành Phố', N'21 18 26N, 105 35 33E', N'26'),
(244, N'Phúc Yên', N'Thị Xã', N'21 18 55N, 105 43 54E', N'26'),
(246, N'Lập Thạch', N'Huyện', N'21 24 45N, 105 25 39E', N'26'),
(247, N'Tam Dương', N'Huyện', N'21 21 40N, 105 33 36E', N'26'),
(248, N'Tam Đảo', N'Huyện', N'21 27 34N, 105 35 09E', N'26'),
(249, N'Bình Xuyên', N'Huyện', N'21 19 48N, 105 39 43E', N'26'),
(250, N'Mê Linh', N'Huyện', N'21 10 53N, 105 42 05E', N'79'),
(251, N'Yên Lạc', N'Huyện', N'21 13 17N, 105 34 44E', N'26'),
(252, N'Vĩnh Tường', N'Huyện', N'21 14 58N, 105 29 37E', N'26'),
(253, N'Sông Lô', N'Huyện', N'', N'26'),
(256, N'Bắc Ninh', N'Thành Phố', N'21 10 48N, 106 03 58E', N'27'),
(258, N'Yên Phong', N'Huyện', N'21 12 40N, 105 59 36E', N'27'),
(259, N'Quế Võ', N'Huyện', N'21 08 44N, 106 11 06E', N'27'),
(260, N'Tiên Du', N'Huyện', N'21 07 37N, 106 02 19E', N'27'),
(261, N'Từ Sơn', N'Thị Xã', N'21 07 12N, 105 57 26E', N'27'),
(262, N'Thuận Thành', N'Huyện', N'21 02 24N, 106 04 10E', N'27'),
(263, N'Gia Bình', N'Huyện', N'21 03 55N, 106 12 53E', N'27'),
(264, N'Lương Tài', N'Huyện', N'21 01 33N, 106 13 28E', N'27'),
(268, N'Hà Đông', N'Quận', N'20 57 25N, 105 45 21E', N'79'),
(269, N'Sơn Tây', N'Thị Xã', N'21 05 51N, 105 28 27E', N'79'),
(271, N'Ba Vì', N'Huyện', N'21 09 40N, 105 22 43E', N'79'),
(272, N'Phúc Thọ', N'Huyện', N'21 06 32N, 105 34 52E', N'79'),
(273, N'Đan Phượng', N'Huyện', N'21 07 13N, 105 40 49E', N'79'),
(274, N'Hoài Đức', N'Huyện', N'21 01 25N, 105 42 03E', N'79'),
(275, N'Quốc Oai', N'Huyện', N'20 58 45N, 105 36 43E', N'79'),
(276, N'Thạch Thất', N'Huyện', N'21 02 17N, 105 33 05E', N'79'),
(277, N'Chương Mỹ', N'Huyện', N'20 52 46N, 105 39 01E', N'79'),
(278, N'Thanh Oai', N'Huyện', N'20 51 44N, 105 46 18E', N'79'),
(279, N'Thường Tín', N'Huyện', N'20 49 59N, 105 22 19E', N'79'),
(280, N'Phú Xuyên', N'Huyện', N'20 43 37N, 105 53 43E', N'79'),
(281, N'Ứng Hòa', N'Huyện', N'20 42 41N, 105 47 58E', N'79'),
(282, N'Mỹ Đức', N'Huyện', N'20 41 53N, 105 43 31E', N'79'),
(288, N'Hải Dương', N'Thành Phố', N'20 56 14N, 106 18 21E', N'30'),
(290, N'Chí Linh', N'Huyện', N'21 07 47N, 106 23 46E', N'30'),
(291, N'Nam Sách', N'Huyện', N'21 00 15N, 106 20 26E', N'30'),
(292, N'Kinh Môn', N'Huyện', N'21 00 04N, 106 30 23E', N'30'),
(293, N'Kim Thành', N'Huyện', N'20 55 40N, 106 30 33E', N'30'),
(294, N'Thanh Hà', N'Huyện', N'20 53 19N, 106 25 43E', N'30'),
(295, N'Cẩm Giàng', N'Huyện', N'20 57 05N, 106 12 29E', N'30'),
(296, N'Bình Giang', N'Huyện', N'20 52 36N, 106 11 24E', N'30'),
(297, N'Gia Lộc', N'Huyện', N'20 51 01N, 106 17 34E', N'30'),
(298, N'Tứ Kỳ', N'Huyện', N'20 49 05N, 106 24 05E', N'30'),
(299, N'Ninh Giang', N'Huyện', N'20 45 13N, 106 20 09E', N'30'),
(300, N'Thanh Miện', N'Huyện', N'20 46 02N, 106 12 26E', N'30'),
(303, N'Hồng Bàng', N'Quận', N'20 52 37N, 106 38 32E', N'31'),
(304, N'Ngô Quyền', N'Quận', N'20 51 13N, 106 41 57E', N'31'),
(305, N'Lê Chân', N'Quận', N'20 50 12N, 106 40 30E', N'31'),
(306, N'Hải An', N'Quận', N'20 49 38N, 106 45 57E', N'31'),
(307, N'Kiến An', N'Quận', N'20 48 26N, 106 38 03E', N'31'),
(308, N'Đồ Sơn', N'Quận', N'20 42 41N, 106 44 54E', N'31'),
(309, N'Kinh Dương', N'Quận', N'', N'31'),
(311, N'Thuỷ Nguyên', N'Huyện', N'20 56 36N, 106 39 38E', N'31'),
(312, N'An Dương', N'Huyện', N'20 53 06N, 106 35 36E', N'31'),
(313, N'An Lão', N'Huyện', N'20 47 54N, 106 33 19E', N'31'),
(314, N'Kiến Thụy', N'Huyện', N'20 45 13N, 106 41 47E', N'31'),
(315, N'Tiên Lãng', N'Huyện', N'20 42 23N, 106 36 03E', N'31'),
(316, N'Vĩnh Bảo', N'Huyện', N'20 40 56N, 106 29 57E', N'31'),
(317, N'Cát Hải', N'Huyện', N'20 47 09N, 106 58 07E', N'31'),
(318, N'Bạch Long Vĩ', N'Huyện', N'20 08 41N, 107 42 51E', N'31'),
(323, N'Hưng Yên', N'Thành Phố', N'20 39 38N, 106 03 08E', N'33'),
(325, N'Văn Lâm', N'Huyện', N'20 58 31N, 106 02 51E', N'33'),
(326, N'Văn Giang', N'Huyện', N'20 55 51N, 105 57 14E', N'33'),
(327, N'Yên Mỹ', N'Huyện', N'20 53 45N, 106 01 21E', N'33'),
(328, N'Mỹ Hào', N'Huyện', N'20 55 35N, 106 05 34E', N'33'),
(329, N'Ân Thi', N'Huyện', N'20 48 49N, 106 05 30E', N'33'),
(330, N'Khoái Châu', N'Huyện', N'20 49 53N, 105 58 28E', N'33'),
(331, N'Kim Động', N'Huyện', N'20 44 47N, 106 01 47E', N'33'),
(332, N'Tiên Lữ', N'Huyện', N'20 40 05N, 106 07 59E', N'33'),
(333, N'Phù Cừ', N'Huyện', N'20 42 51N, 106 11 30E', N'33'),
(336, N'Thái Bình', N'Thành Phố', N'20 26 45N, 106 19 56E', N'34'),
(338, N'Quỳnh Phụ', N'Huyện', N'20 38 57N, 106 21 16E', N'34'),
(339, N'Hưng Hà', N'Huyện', N'20 35 38N, 106 12 42E', N'34'),
(340, N'Đông Hưng', N'Huyện', N'20 32 50N, 106 20 15E', N'34'),
(341, N'Thái Thụy', N'Huyện', N'20 32 33N, 106 32 32E', N'34'),
(342, N'Tiền Hải', N'Huyện', N'20 21 05N, 106 32 45E', N'34'),
(343, N'Kiến Xương', N'Huyện', N'20 23 52N, 106 25 22E', N'34'),
(344, N'Vũ Thư', N'Huyện', N'20 25 29N, 106 16 43E', N'34'),
(347, N'Phủ Lý', N'Thành Phố', N'20 32 19N, 105 54 55E', N'35'),
(349, N'Duy Tiên', N'Huyện', N'20 37 33N, 105 58 01E', N'35'),
(350, N'Kim Bảng', N'Huyện', N'20 34 19N, 105 50 41E', N'35'),
(351, N'Thanh Liêm', N'Huyện', N'20 27 31N, 105 55 09E', N'35'),
(352, N'Bình Lục', N'Huyện', N'20 29 23N, 106 02 52E', N'35'),
(353, N'Lý Nhân', N'Huyện', N'20 32 55N, 106 04 48E', N'35'),
(356, N'Nam Định', N'Thành Phố', N'20 25 07N, 106 09 54E', N'36'),
(358, N'Mỹ Lộc', N'Huyện', N'20 27 21N, 106 07 56E', N'36'),
(359, N'Vụ Bản', N'Huyện', N'20 22 57N, 106 05 35E', N'36'),
(360, N'Ý Yên', N'Huyện', N'20 19 48N, 106 01 55E', N'36'),
(361, N'Nghĩa Hưng', N'Huyện', N'20 05 37N, 106 08 59E', N'36'),
(362, N'Nam Trực', N'Huyện', N'20 20 08N, 106 12 54E', N'36'),
(363, N'Trực Ninh', N'Huyện', N'20 14 42N, 106 12 45E', N'36'),
(364, N'Xuân Trường', N'Huyện', N'20 17 53N, 106 21 43E', N'36'),
(365, N'Giao Thủy', N'Huyện', N'20 14 45N, 106 28 39E', N'36'),
(366, N'Hải Hậu', N'Huyện', N'20 06 26N, 106 16 29E', N'36'),
(369, N'Ninh Bình', N'Thành Phố', N'20 14 45N, 105 58 24E', N'37'),
(370, N'Tam Điệp', N'Thị Xã', N'20 09 42N, 103 52 43E', N'37'),
(372, N'Nho Quan', N'Huyện', N'20 18 46N, 105 42 48E', N'37'),
(373, N'Gia Viễn', N'Huyện', N'20 19 50N, 105 52 20E', N'37'),
(374, N'Hoa Lư', N'Huyện', N'20 15 04N, 105 55 52E', N'37'),
(375, N'Yên Khánh', N'Huyện', N'20 11 26N, 106 04 33E', N'37'),
(376, N'Kim Sơn', N'Huyện', N'20 02 07N, 106 05 27E', N'37'),
(377, N'Yên Mô', N'Huyện', N'20 07 45N, 105 59 45E', N'37'),
(380, N'Thanh Hóa', N'Thành Phố', N'19 48 26N, 105 47 37E', N'38'),
(381, N'Bỉm Sơn', N'Thị Xã', N'20 05 21N, 105 51 48E', N'38'),
(382, N'Sầm Sơn', N'Thị Xã', N'19 45 11N, 105 54 03E', N'38'),
(384, N'Mường Lát', N'Huyện', N'20 30 42N, 104 37 27E', N'38'),
(385, N'Quan Hóa', N'Huyện', N'20 29 15N, 104 56 35E', N'38'),
(386, N'Bá Thước', N'Huyện', N'20 22 48N, 105 14 50E', N'38'),
(387, N'Quan Sơn', N'Huyện', N'20 15 17N, 104 51 58E', N'38'),
(388, N'Lang Chánh', N'Huyện', N'20 08 58N, 105 07 40E', N'38'),
(389, N'Ngọc Lặc', N'Huyện', N'20 04 08N, 105 22 39E', N'38'),
(390, N'Cẩm Thủy', N'Huyện', N'20 12 20N, 105 27 22E', N'38'),
(391, N'Thạch Thành', N'Huyện', N'21 12 41N, 105 36 38E', N'38'),
(392, N'Hà Trung', N'Huyện', N'20 03 20N, 105 51 20E', N'38'),
(393, N'Vĩnh Lộc', N'Huyện', N'20 02 29N, 105 39 28E', N'38'),
(394, N'Yên Định', N'Huyện', N'20 00 31N, 105 37 44E', N'38'),
(395, N'Thọ Xuân', N'Huyện', N'19 55 39N, 105 29 14E', N'38'),
(396, N'Thường Xuân', N'Huyện', N'19 54 55N, 105 10 46E', N'38'),
(397, N'Triệu Sơn', N'Huyện', N'19 48 11N, 105 34 03E', N'38'),
(398, N'Thiệu Hoá', N'Huyện', N'19 53 56N, 105 40 57E', N'38'),
(399, N'Hoằng Hóa', N'Huyện', N'19 51 59N, 105 51 34E', N'38'),
(400, N'Hậu Lộc', N'Huyện', N'19 56 02N, 105 53 19E', N'38'),
(401, N'Nga Sơn', N'Huyện', N'20 00 16N, 105 59 26E', N'38'),
(402, N'Như Xuân', N'Huyện', N'19 5 55N, 105 20 22E', N'38'),
(403, N'Như Thanh', N'Huyện', N'19 35 19N, 105 33 09E', N'38'),
(404, N'Nông Cống', N'Huyện', N'19 36 58N, 105 40 54E', N'38'),
(405, N'Đông Sơn', N'Huyện', N'19 47 44N, 105 42 19E', N'38'),
(406, N'Quảng Xương', N'Huyện', N'19 40 53N, 105 48 01E', N'38'),
(407, N'Tĩnh Gia', N'Huyện', N'19 27 13N, 105 43 38E', N'38'),
(412, N'Vinh', N'Thành Phố', N'18 41 06N, 105 42 05E', N'40'),
(413, N'Cửa Lò', N'Thị Xã', N'18 47 26N, 105 43 31E', N'40'),
(414, N'Thái Hoà', N'Thị Xã', N'', N'40'),
(415, N'Quế Phong', N'Huyện', N'19 42 25N, 104 54 21E', N'40'),
(416, N'Quỳ Châu', N'Huyện', N'19 32 16N, 105 03 18E', N'40'),
(417, N'Kỳ Sơn', N'Huyện', N'19 24 36N, 104 09 45E', N'40'),
(418, N'Tương Dương', N'Huyện', N'19 19 15N, 104 35 41E', N'40'),
(419, N'Nghĩa Đàn', N'Huyện', N'19 21 19N, 105 26 33E', N'40'),
(420, N'Quỳ Hợp', N'Huyện', N'19 19 24N, 105 09 12E', N'40'),
(421, N'Quỳnh Lưu', N'Huyện', N'19 14 01N, 105 37 00E', N'40'),
(422, N'Con Cuông', N'Huyện', N'19 03 50N, 107 47 15E', N'40'),
(423, N'Tân Kỳ', N'Huyện', N'19 06 11N, 105 14 14E', N'40'),
(424, N'Anh Sơn', N'Huyện', N'18 58 04N, 105 04 30E', N'40'),
(425, N'Diễn Châu', N'Huyện', N'19 01 20N, 105 34 13E', N'40'),
(426, N'Yên Thành', N'Huyện', N'19 01 25N, 105 26 17E', N'40'),
(427, N'Đô Lương', N'Huyện', N'18 55 00N, 105 21 03E', N'40'),
(428, N'Thanh Chương', N'Huyện', N'18 44 11N, 105 12 59E', N'40'),
(429, N'Nghi Lộc', N'Huyện', N'18 47 41N, 105 31 30E', N'40'),
(430, N'Nam Đàn', N'Huyện', N'18 40 28N, 105 30 32E', N'40'),
(431, N'Hưng Nguyên', N'Huyện', N'18 41 13N, 105 37 41E', N'40'),
(436, N'Hà Tĩnh', N'Thành Phố', N'18 21 20N, 105 54 00E', N'42'),
(437, N'Hồng Lĩnh', N'Thị Xã', N'18 32 05N, 105 42 40E', N'42'),
(439, N'Hương Sơn', N'Huyện', N'18 26 47N, 105 19 36E', N'42'),
(440, N'Đức Thọ', N'Huyện', N'18 29 23N, 105 36 39E', N'42'),
(441, N'Vũ Quang', N'Huyện', N'18 19 30N, 105 26 38E', N'42'),
(442, N'Nghi Xuân', N'Huyện', N'18 38 46N, 105 46 17E', N'42'),
(443, N'Can Lộc', N'Huyện', N'18 26 39N, 105 46 13E', N'42'),
(444, N'Hương Khê', N'Huyện', N'18 11 36N, 105 41 24E', N'42'),
(445, N'Thạch Hà', N'Huyện', N'18 19 29N, 105 52 43E', N'42'),
(446, N'Cẩm Xuyên', N'Huyện', N'18 11 32N, 106 00 04E', N'42'),
(447, N'Kỳ Anh', N'Huyện', N'18 05 15N, 106 15 49E', N'42'),
(448, N'Lộc Hà', N'Huyện', N'', N'42'),
(450, N'Đồng Hới', N'Thành Phố', N'17 26 53N, 106 35 15E', N'44'),
(452, N'Minh Hóa', N'Huyện', N'17 44 03N, 105 51 45E', N'44'),
(453, N'Tuyên Hóa', N'Huyện', N'17 54 04N, 105 58 17E', N'44'),
(454, N'Quảng Trạch', N'Huyện', N'17 50 04N, 106 22 24E', N'44'),
(455, N'Bố Trạch', N'Huyện', N'17 29 13N, 106 06 54E', N'44'),
(456, N'Quảng Ninh', N'Huyện', N'17 15 15N, 106 32 31E', N'44'),
(457, N'Lệ Thủy', N'Huyện', N'17 07 35N, 106 41 47E', N'44'),
(461, N'Đông Hà', N'Thành Phố', N'16 48 12N, 107 05 12E', N'45'),
(462, N'Quảng Trị', N'Thị Xã', N'16 44 37N, 107 11 20E', N'45'),
(464, N'Vĩnh Linh', N'Huyện', N'17 01 35N, 106 53 49E', N'45'),
(465, N'Hướng Hóa', N'Huyện', N'16 42 19N, 106 40 14E', N'45'),
(466, N'Gio Linh', N'Huyện', N'16 54 49N, 106 56 16E', N'45'),
(467, N'Đa Krông', N'Huyện', N'16 33 58N, 106 55 49E', N'45'),
(468, N'Cam Lộ', N'Huyện', N'16 47 09N, 106 57 52E', N'45'),
(469, N'Triệu Phong', N'Huyện', N'16 46 32N, 107 09 12E', N'45'),
(470, N'Hải Lăng', N'Huyện', N'16 41 07N, 107 13 34E', N'45'),
(471, N'Cồn Cỏ', N'Huyện', N'19 09 39N, 107 19 58E', N'45'),
(474, N'Huế', N'Thành Phố', N'16 27 16N, 107 34 29E', N'46'),
(476, N'Phong Điền', N'Huyện', N'16 32 42N, 106 16 37E', N'46'),
(477, N'Quảng Điền', N'Huyện', N'16 35 21N, 107 29 31E', N'46'),
(478, N'Phú Vang', N'Huyện', N'16 27 20N, 107 42 28E', N'46'),
(479, N'Hương Thủy', N'Huyện', N'16 19 27N, 107 37 26E', N'46'),
(480, N'Hương Trà', N'Huyện', N'16 25 49N, 107 28 37E', N'46'),
(481, N'A Lưới', N'Huyện', N'16 13 59N, 107 16 12E', N'46'),
(482, N'Phú Lộc', N'Huyện', N'16 17 16N, 107 55 25E', N'46'),
(483, N'Nam Đông', N'Huyện', N'16 07 11N, 107 41 25E', N'46'),
(490, N'Liên Chiểu', N'Quận', N'16 07 26N, 108 07 04E', N'48'),
(491, N'Thanh Khê', N'Quận', N'16 03 28N, 108 11 00E', N'48'),
(492, N'Hải Châu', N'Quận', N'16 03 38N, 108 11 46E', N'48'),
(493, N'Sơn Trà', N'Quận', N'16 06 13N, 108 16 26E', N'48'),
(494, N'Ngũ Hành Sơn', N'Quận', N'16 00 30N, 108 15 09E', N'48'),
(495, N'Cẩm Lệ', N'Quận', N'', N'48'),
(497, N'Hoà Vang', N'Huyện', N'16 03 59N, 108 01 57E', N'48'),
(498, N'Hoàng Sa', N'Huyện', N'16 21 36N, 111 57 01E', N'48'),
(502, N'Tam Kỳ', N'Thành Phố', N'15 34 37N, 108 29 52E', N'49'),
(503, N'Hội An', N'Thành Phố', N'15 53 20N, 108 20 42E', N'49'),
(504, N'Tây Giang', N'Huyện', N'15 53 46N, 107 25 52E', N'49'),
(505, N'Đông Giang', N'Huyện', N'15 54 44N, 107 47 06E', N'49'),
(506, N'Đại Lộc', N'Huyện', N'15 50 10N, 107 58 27E', N'49'),
(507, N'Điện Bàn', N'Huyện', N'15 54 15N, 108 13 38E', N'49'),
(508, N'Duy Xuyên', N'Huyện', N'15 47 58N, 108 13 27E', N'49'),
(509, N'Quế Sơn', N'Huyện', N'15 41 03N, 108 05 34E', N'49'),
(510, N'Nam Giang', N'Huyện', N'15 36 37N, 107 33 52E', N'49'),
(511, N'Phước Sơn', N'Huyện', N'15 23 17N, 107 50 22E', N'49'),
(512, N'Hiệp Đức', N'Huyện', N'15 31 09N, 108 05 56E', N'49'),
(513, N'Thăng Bình', N'Huyện', N'15 42 29N, 108 22 04E', N'49'),
(514, N'Tiên Phước', N'Huyện', N'15 29 30N, 108 15 28E', N'49'),
(515, N'Bắc Trà My', N'Huyện', N'15 08 00N, 108 05 32E', N'49'),
(516, N'Nam Trà My', N'Huyện', N'15 16 40N, 108 12 15E', N'49'),
(517, N'Núi Thành', N'Huyện', N'15 26 53N, 108 34 49E', N'49'),
(518, N'Phú Ninh', N'Huyện', N'15 30 43N, 108 24 43E', N'49'),
(519, N'Nông Sơn', N'Huyện', N'', N'49'),
(522, N'Quảng Ngãi', N'Thành Phố', N'15 07 17N, 108 48 24E', N'51'),
(524, N'Bình Sơn', N'Huyện', N'15 18 45N, 108 45 35E', N'51'),
(525, N'Trà Bồng', N'Huyện', N'15 13 30N, 108 29 57E', N'51'),
(526, N'Tây Trà', N'Huyện', N'15 11 13N, 108 22 23E', N'51'),
(527, N'Sơn Tịnh', N'Huyện', N'15 11 49N, 108 45 03E', N'51'),
(528, N'Tư Nghĩa', N'Huyện', N'15 05 25N, 108 45 23E', N'51'),
(529, N'Sơn Hà', N'Huyện', N'14 58 35N, 108 29 09E', N'51'),
(530, N'Sơn Tây', N'Huyện', N'14 58 11N, 108 21 22E', N'51'),
(531, N'Minh Long', N'Huyện', N'14 56 49N, 108 40 19E', N'51'),
(532, N'Nghĩa Hành', N'Huyện', N'14 58 06N, 108 46 05E', N'51'),
(533, N'Mộ Đức', N'Huyện', N'11 59 13N, 108 52 21E', N'51'),
(534, N'Đức Phổ', N'Huyện', N'14 44 59N, 108 56 58E', N'51'),
(535, N'Ba Tơ', N'Huyện', N'14 42 52N, 108 43 44E', N'51'),
(536, N'Lý Sơn', N'Huyện', N'15 22 50N, 109 06 56E', N'51'),
(540, N'Qui Nhơn', N'Thành Phố', N'13 47 15N, 109 12 48E', N'52'),
(542, N'An Lão', N'Huyện', N'14 32 10N, 108 47 52E', N'52'),
(543, N'Hoài Nhơn', N'Huyện', N'14 30 56N, 109 01 56E', N'52'),
(544, N'Hoài Ân', N'Huyện', N'14 20 51N, 108 54 04E', N'52'),
(545, N'Phù Mỹ', N'Huyện', N'14 14 41N, 109 05 43E', N'52'),
(546, N'Vĩnh Thạnh', N'Huyện', N'14 14 26N, 108 44 08E', N'52'),
(547, N'Tây Sơn', N'Huyện', N'13 56 47N, 108 53 06E', N'52'),
(548, N'Phù Cát', N'Huyện', N'14 03 48N, 109 03 57E', N'52'),
(549, N'An Nhơn', N'Huyện', N'13 51 28N, 109 04 02E', N'52'),
(550, N'Tuy Phước', N'Huyện', N'13 46 30N, 109 05 38E', N'52'),
(551, N'Vân Canh', N'Huyện', N'13 40 35N, 108 57 52E', N'52'),
(555, N'Tuy Hòa', N'Thành Phố', N'13 05 42N, 109 15 50E', N'54'),
(557, N'Sông Cầu', N'Thị Xã', N'13 31 40N, 109 12 39E', N'54'),
(558, N'Đồng Xuân', N'Huyện', N'13 24 59N, 108 56 46E', N'54'),
(559, N'Tuy An', N'Huyện', N'13 15 19N, 109 12 21E', N'54'),
(560, N'Sơn Hòa', N'Huyện', N'13 12 16N, 108 57 17E', N'54'),
(561, N'Sông Hinh', N'Huyện', N'12 54 19N, 108 53 38E', N'54'),
(562, N'Tây Hoà', N'Huyện', N'', N'54'),
(563, N'Phú Hoà', N'Huyện', N'13 04 07N, 109 11 24E', N'54'),
(564, N'Đông Hoà', N'Huyện', N'', N'54'),
(568, N'Nha Trang', N'Thành Phố', N'12 15 40N, 109 10 40E', N'56'),
(569, N'Cam Ranh', N'Thị Xã', N'11 59 05N, 108 08 17E', N'56'),
(570, N'Cam Lâm', N'Huyện', N'', N'56'),
(571, N'Vạn Ninh', N'Huyện', N'12 43 10N, 109 11 18E', N'56'),
(572, N'Ninh Hòa', N'Huyện', N'12 32 54N, 109 06 11E', N'56'),
(573, N'Khánh Vĩnh', N'Huyện', N'12 17 50N, 108 51 56E', N'56'),
(574, N'Diên Khánh', N'Huyện', N'12 13 19N, 109 02 16E', N'56'),
(575, N'Khánh Sơn', N'Huyện', N'12 02 17N, 108 53 47E', N'56'),
(576, N'Trường Sa', N'Huyện', N'9 07 27N, 114 15 00E', N'56'),
(582, N'Phan Rang-Tháp Chàm', N'Thành Phố', N'11 36 11N, 108 58 34E', N'58'),
(584, N'Bác Ái', N'Huyện', N'11 54 45N, 108 51 29E', N'58'),
(585, N'Ninh Sơn', N'Huyện', N'11 42 36N, 108 44 55E', N'58'),
(586, N'Ninh Hải', N'Huyện', N'11 42 46N, 109 05 41E', N'58'),
(587, N'Ninh Phước', N'Huyện', N'11 28 56N, 108 50 34E', N'58'),
(588, N'Thuận Bắc', N'Huyện', N'', N'58'),
(589, N'Thuận Nam', N'Huyện', N'', N'58'),
(593, N'Phan Thiết', N'Thành Phố', N'10 54 16N, 108 03 44E', N'60'),
(594, N'La Gi', N'Thị Xã', N'', N'60'),
(595, N'Tuy Phong', N'Huyện', N'11 20 26N, 108 41 15E', N'60'),
(596, N'Bắc Bình', N'Huyện', N'11 15 52N, 108 21 33E', N'60'),
(597, N'Hàm Thuận Bắc', N'Huyện', N'11 09 18N, 108 03 07E', N'60'),
(598, N'Hàm Thuận Nam', N'Huyện', N'10 56 20N, 107 54 38E', N'60'),
(599, N'Tánh Linh', N'Huyện', N'11 08 26N, 107 41 22E', N'60'),
(600, N'Đức Linh', N'Huyện', N'11 11 43N, 107 31 34E', N'60'),
(601, N'Hàm Tân', N'Huyện', N'10 44 41N, 107 41 33E', N'60'),
(602, N'Phú Quí', N'Huyện', N'10 33 13N, 108 57 46E', N'60'),
(608, N'Kon Tum', N'Thành Phố', N'14 20 32N, 107 58 04E', N'62'),
(610, N'Đắk Glei', N'Huyện', N'15 08 13N, 107 44 03E', N'62'),
(611, N'Ngọc Hồi', N'Huyện', N'14 44 23N, 107 38 49E', N'62'),
(612, N'Đắk Tô', N'Huyện', N'14 46 49N, 107 55 36E', N'62'),
(613, N'Kon Plông', N'Huyện', N'14 48 13N, 108 20 05E', N'62'),
(614, N'Kon Rẫy', N'Huyện', N'14 32 56N, 108 13 09E', N'62'),
(615, N'Đắk Hà', N'Huyện', N'14 36 50N, 107 59 55E', N'62'),
(616, N'Sa Thầy', N'Huyện', N'14 16 02N, 107 36 30E', N'62'),
(617, N'Tu Mơ Rông', N'Huyện', N'', N'62'),
(622, N'Pleiku', N'Thành Phố', N'13 57 42N, 107 58 03E', N'64'),
(623, N'An Khê', N'Thị Xã', N'14 01 24N, 108 41 29E', N'64'),
(624, N'Ayun Pa', N'Thị Xã', N'', N'64'),
(625, N'Kbang', N'Huyện', N'14 18 08N, 108 29 17E', N'64'),
(626, N'Đăk Đoa', N'Huyện', N'14 07 02N, 108 09 36E', N'64'),
(627, N'Chư Păh', N'Huyện', N'14 13 30N, 107 56 33E', N'64'),
(628, N'Ia Grai', N'Huyện', N'13 59 25N, 107 43 16E', N'64'),
(629, N'Mang Yang', N'Huyện', N'13 57 26N, 108 18 37E', N'64'),
(630, N'Kông Chro', N'Huyện', N'13 45 47N, 108 36 04E', N'64'),
(631, N'Đức Cơ', N'Huyện', N'13 46 16N, 107 38 26E', N'64'),
(632, N'Chư Prông', N'Huyện', N'13 35 39N, 107 47 36E', N'64'),
(633, N'Chư Sê', N'Huyện', N'13 37 04N, 108 06 56E', N'64'),
(634, N'Đăk Pơ', N'Huyện', N'13 55 47N, 108 36 16E', N'64'),
(635, N'Ia Pa', N'Huyện', N'13 31 37N, 108 30 34E', N'64'),
(637, N'Krông Pa', N'Huyện', N'13 14 13N, 108 39 12E', N'64'),
(638, N'Phú Thiện', N'Huyện', N'', N'64'),
(639, N'Chư Pưh', N'Huyện', N'', N'64'),
(643, N'Buôn Ma Thuột', N'Thành Phố', N'12 39 43N, 108 10 40E', N'66'),
(644, N'Buôn Hồ', N'Thị Xã', N'', N'66'),
(645, N'Ea H''leo', N'Huyện', N'13 13 52N, 108 12 30E', N'66'),
(646, N'Ea Súp', N'Huyện', N'13 10 59N, 107 46 49E', N'66'),
(647, N'Buôn Đôn', N'Huyện', N'12 52 45N, 107 45 20E', N'66'),
(648, N'Cư M''gar', N'Huyện', N'12 53 47N, 108 04 16E', N'66'),
(649, N'Krông Búk', N'Huyện', N'12 56 27N, 108 13 54E', N'66'),
(650, N'Krông Năng', N'Huyện', N'12 59 41N, 108 23 42E', N'66'),
(651, N'Ea Kar', N'Huyện', N'12 48 17N, 108 32 42E', N'66'),
(652, N'M''đrắk', N'Huyện', N'12 42 14N, 108 47 09E', N'66'),
(653, N'Krông Bông', N'Huyện', N'12 27 08N, 108 27 01E', N'66'),
(654, N'Krông Pắc', N'Huyện', N'12 41 20N, 108 18 42E', N'66'),
(655, N'Krông A Na', N'Huyện', N'12 31 51N, 108 05 03E', N'66'),
(656, N'Lắk', N'Huyện', N'12 19 20N, 108 12 17E', N'66'),
(657, N'Cư Kuin', N'Huyện', N'', N'66'),
(660, N'Gia Nghĩa', N'Thị Xã', N'', N'67'),
(661, N'Đắk Glong', N'Huyện', N'12 01 53N, 107 50 37E', N'67'),
(662, N'Cư Jút', N'Huyện', N'12 40 56N, 107 44 44E', N'67'),
(663, N'Đắk Mil', N'Huyện', N'12 31 08N, 107 42 24E', N'67'),
(664, N'Krông Nô', N'Huyện', N'12 22 16N, 107 53 49E', N'67'),
(665, N'Đắk Song', N'Huyện', N'12 14 04N, 107 36 30E', N'67'),
(666, N'Đắk R''lấp', N'Huyện', N'12 02 30N, 107 25 59E', N'67'),
(667, N'Tuy Đức', N'Huyện', N'', N'67'),
(672, N'Đà Lạt', N'Thành Phố', N'11 54 33N, 108 27 08E', N'68'),
(673, N'Bảo Lộc', N'Thị Xã', N'11 32 48N, 107 47 37E', N'68'),
(674, N'Đam Rông', N'Huyện', N'12 02 35N, 108 10 26E', N'68'),
(675, N'Lạc Dương', N'Huyện', N'12 08 30N, 108 27 48E', N'68'),
(676, N'Lâm Hà', N'Huyện', N'11 55 26N, 108 11 31E', N'68'),
(677, N'Đơn Dương', N'Huyện', N'11 48 26N, 108 32 48E', N'68'),
(678, N'Đức Trọng', N'Huyện', N'11 41 50N, 108 18 58E', N'68'),
(679, N'Di Linh', N'Huyện', N'11 31 10N, 108 05 23E', N'68'),
(680, N'Bảo Lâm', N'Huyện', N'11 38 31N, 107 43 25E', N'68'),
(681, N'Đạ Huoai', N'Huyện', N'11 27 11N, 107 38 08E', N'68'),
(682, N'Đạ Tẻh', N'Huyện', N'11 33 46N, 107 32 00E', N'68'),
(683, N'Cát Tiên', N'Huyện', N'11 39 38N, 107 23 27E', N'68'),
(688, N'Phước Long', N'Thị Xã', N'', N'70'),
(689, N'Đồng Xoài', N'Thị Xã', N'11 31 01N, 106 50 21E', N'70'),
(690, N'Bình Long', N'Thị Xã', N'', N'70'),
(691, N'Bù Gia Mập', N'Huyện', N'11 56 57N, 106 59 21E', N'70'),
(692, N'Lộc Ninh', N'Huyện', N'11 49 28N, 106 35 11E', N'70'),
(693, N'Bù Đốp', N'Huyện', N'11 59 08N, 106 49 54E', N'70'),
(694, N'Hớn Quản', N'Huyện', N'11 37 37N, 106 36 02E', N'70'),
(695, N'Đồng Phù', N'Huyện', N'11 28 45N, 106 57 07E', N'70'),
(696, N'Bù Đăng', N'Huyện', N'11 46 09N, 107 14 14E', N'70'),
(697, N'Chơn Thành', N'Huyện', N'11 28 45N, 106 39 26E', N'70'),
(703, N'Tây Ninh', N'Thị Xã', N'11 21 59N, 106 07 47E', N'72'),
(705, N'Tân Biên', N'Huyện', N'11 35 14N, 105 57 53E', N'72'),
(706, N'Tân Châu', N'Huyện', N'11 34 49N, 106 17 48E', N'72'),
(707, N'Dương Minh Châu', N'Huyện', N'11 22 04N, 106 16 58E', N'72'),
(708, N'Châu Thành', N'Huyện', N'11 19 02N, 106 00 15E', N'72'),
(709, N'Hòa Thành', N'Huyện', N'11 15 31N, 106 08 44E', N'72'),
(710, N'Gò Dầu', N'Huyện', N'11 09 39N, 106 14 42E', N'72'),
(711, N'Bến Cầu', N'Huyện', N'11 07 50N, 106 08 25E', N'72'),
(712, N'Trảng Bàng', N'Huyện', N'11 06 18N, 106 23 12E', N'72'),
(718, N'Thủ Dầu Một', N'Thị Xã', N'11 00 01N, 106 38 56E', N'74'),
(720, N'Dầu Tiếng', N'Huyện', N'11 19 07N, 106 26 59E', N'74'),
(721, N'Bến Cát', N'Huyện', N'11 12 42N, 106 36 28E', N'74'),
(722, N'Phú Giáo', N'Huyện', N'11 20 21N, 106 47 48E', N'74'),
(723, N'Tân Uyên', N'Huyện', N'11 06 31N, 106 49 02E', N'74'),
(724, N'Dĩ An', N'Huyện', N'10 55 03N, 106 47 09E', N'74'),
(725, N'Thuận An', N'Huyện', N'10 55 58N, 106 41 59E', N'74'),
(731, N'Biên Hòa', N'Thành Phố', N'10 56 31N, 106 50 50E', N'75'),
(732, N'Long Khánh', N'Thị Xã', N'10 56 24N, 107 14 29E', N'75'),
(734, N'Tân Phú', N'Huyện', N'11 22 51N, 107 21 35E', N'75'),
(735, N'Vĩnh Cửu', N'Huyện', N'11 14 31N, 107 00 06E', N'75'),
(736, N'Định Quán', N'Huyện', N'11 12 41N, 107 17 03E', N'75'),
(737, N'Trảng Bom', N'Huyện', N'10 58 39N, 107 00 52E', N'75'),
(738, N'Thống Nhất', N'Huyện', N'10 58 29N, 107 09 26E', N'75'),
(739, N'Cẩm Mỹ', N'Huyện', N'10 47 05N, 107 14 36E', N'75'),
(740, N'Long Thành', N'Huyện', N'10 47 38N, 106 59 42E', N'75'),
(741, N'Xuân Lộc', N'Huyện', N'10 55 39N, 107 24 21E', N'75'),
(742, N'Nhơn Trạch', N'Huyện', N'10 39 18N, 106 53 18E', N'75'),
(747, N'Vũng Tầu', N'Thành Phố', N'10 24 08N, 107 07 05E', N'77'),
(748, N'Bà Rịa', N'Thị Xã', N'10 30 33N, 107 10 47E', N'77'),
(750, N'Châu Đức', N'Huyện', N'10 39 23N, 107 15 08E', N'77'),
(751, N'Xuyên Mộc', N'Huyện', N'10 37 46N, 107 29 39E', N'77'),
(752, N'Long Điền', N'Huyện', N'10 26 47N, 107 12 53E', N'77'),
(753, N'Đất Đỏ', N'Huyện', N'10 28 40N, 107 18 27E', N'77'),
(754, N'Tân Thành', N'Huyện', N'10 34 50N, 107 05 06E', N'77'),
(755, N'Côn Đảo', N'Huyện', N'8 42 25N, 106 36 05E', N'77'),
(760, N'Quận 1', N'Quận', N'10 46 34N, 106 41 45E', N'1'),
(761, N'Quận 12', N'Quận', N'10 51 43N, 106 39 32E', N'1'),
(762, N'Thủ Đức', N'Quận', N'10 51 20N, 106 45 05E', N'1'),
(763, N'Quận 9', N'Quận', N'10 49 49N, 106 49 03E', N'1'),
(764, N'Gò Vấp', N'Quận', N'10 50 12N, 106 39 52E', N'1'),
(765, N'Bình Thạnh', N'Quận', N'10 48 46N, 106 42 57E', N'1'),
(766, N'Tân Bình', N'Quận', N'10 48 13N, 106 39 03E', N'1'),
(767, N'Tân Phú', N'Quận', N'10 47 32N, 106 37 31E', N'1'),
(768, N'Phú Nhuận', N'Quận', N'10 48 06N, 106 40 39E', N'1'),
(769, N'Quận 2', N'Quận', N'10 46 51N, 106 45 25E', N'1'),
(770, N'Quận 3', N'Quận', N'10 46 48N, 106 40 46E', N'1'),
(771, N'Quận 10', N'Quận', N'10 46 25N, 106 40 02E', N'1'),
(772, N'Quận 11', N'Quận', N'10 46 01N, 106 38 44E', N'1'),
(773, N'Quận 4', N'Quận', N'10 45 42N, 106 42 09E', N'1'),
(774, N'Quận 5', N'Quận', N'10 45 24N, 106 40 00E', N'1'),
(775, N'Quận 6', N'Quận', N'10 44 46N, 106 38 10E', N'1'),
(776, N'Quận 8', N'Quận', N'10 43 24N, 106 37 40E', N'1'),
(777, N'Bình Tân', N'Quận', N'10 46 16N, 106 35 26E', N'1'),
(778, N'Quận 7', N'Quận', N'10 44 19N, 106 43 35E', N'1'),
(783, N'Củ Chi', N'Huyện', N'11 02 17N, 106 30 20E', N'1'),
(784, N'Hóc Môn', N'Huyện', N'10 52 42N, 106 35 33E', N'1'),
(785, N'Bình Chánh', N'Huyện', N'10 45 01N, 106 30 45E', N'1'),
(786, N'Nhà Bè', N'Huyện', N'10 39 06N, 106 43 35E', N'1'),
(787, N'Cần Giờ', N'Huyện', N'10 30 43N, 106 52 50E', N'1'),
(794, N'Tân An', N'Thành Phố', N'10 31 36N, 106 24 06E', N'80'),
(796, N'Tân Hưng', N'Huyện', N'10 49 05N, 105 39 26E', N'80'),
(797, N'Vĩnh Hưng', N'Huyện', N'10 52 54N, 105 45 58E', N'80'),
(798, N'Mộc Hóa', N'Huyện', N'10 47 09N, 105 57 56E', N'80'),
(799, N'Tân Thạnh', N'Huyện', N'10 37 44N, 105 57 07E', N'80'),
(800, N'Thạnh Hóa', N'Huyện', N'10 41 37N, 106 11 08E', N'80'),
(801, N'Đức Huệ', N'Huyện', N'10 51 57N, 106 15 48E', N'80'),
(802, N'Đức Hòa', N'Huyện', N'10 53 04N, 106 23 58E', N'80'),
(803, N'Bến Lức', N'Huyện', N'10 41 40N, 106 26 28E', N'80'),
(804, N'Thủ Thừa', N'Huyện', N'10 39 41N, 106 20 12E', N'80'),
(805, N'Tân Trụ', N'Huyện', N'10 31 47N, 106 30 06E', N'80'),
(806, N'Cần Đước', N'Huyện', N'10 32 21N, 106 36 33E', N'80'),
(807, N'Cần Giuộc', N'Huyện', N'10 34 43N, 106 38 35E', N'80'),
(808, N'Châu Thành', N'Huyện', N'10 27 52N, 106 30 00E', N'80'),
(815, N'Mỹ Tho', N'Thành Phố', N'10 22 14N, 106 21 52E', N'82'),
(816, N'Gò Công', N'Thị Xã', N'10 21 55N, 106 40 24E', N'82'),
(818, N'Tân Phước', N'Huyện', N'10 30 36N, 106 13 02E', N'82'),
(819, N'Cái Bè', N'Huyện', N'10 24 21N, 105 56 01E', N'82'),
(820, N'Cai Lậy', N'Huyện', N'10 24 20N, 106 06 05E', N'82'),
(821, N'Châu Thành', N'Huyện', N'20 25 21N, 106 16 57E', N'82'),
(822, N'Chợ Gạo', N'Huyện', N'10 23 45N, 106 26 53E', N'82'),
(823, N'Gò Công Tây', N'Huyện', N'10 19 55N, 106 35 02E', N'82'),
(824, N'Gò Công Đông', N'Huyện', N'10 20 42N, 106 42 54E', N'82'),
(825, N'Tân Phú Đông', N'Huyện', N'', N'82'),
(829, N'Bến Tre', N'Thành Phố', N'10 14 17N, 106 22 26E', N'83'),
(831, N'Châu Thành', N'Huyện', N'10 17 24N, 106 17 45E', N'83'),
(832, N'Chợ Lách', N'Huyện', N'10 13 26N, 106 09 08E', N'83'),
(833, N'Mỏ Cày Nam', N'Huyện', N'10 06 56N, 106 19 40E', N'83'),
(834, N'Giồng Trôm', N'Huyện', N'10 08 46N, 106 28 12E', N'83'),
(835, N'Bình Đại', N'Huyện', N'10 09 56N, 106 37 46E', N'83'),
(836, N'Ba Tri', N'Huyện', N'10 04 08N, 106 35 10E', N'83'),
(837, N'Thạnh Phú', N'Huyện', N'9 55 53N, 106 32 45E', N'83'),
(838, N'Mỏ Cày Bắc', N'Huyện', N'', N'83'),
(842, N'Trà Vinh', N'Thị Xã', N'9 57 09N, 106 20 39E', N'84'),
(844, N'Càng Long', N'Huyện', N'9 58 18N, 106 12 52E', N'84'),
(845, N'Cầu Kè', N'Huyện', N'9 51 23N, 106 03 33E', N'84'),
(846, N'Tiểu Cần', N'Huyện', N'9 48 37N, 106 12 06E', N'84'),
(847, N'Châu Thành', N'Huyện', N'9 52 57N, 106 24 12E', N'84'),
(848, N'Cầu Ngang', N'Huyện', N'9 47 14N, 106 29 19E', N'84'),
(849, N'Trà Cú', N'Huyện', N'9 42 06N, 106 16 24E', N'84'),
(850, N'Duyên Hải', N'Huyện', N'9 39 58N, 106 26 23E', N'84'),
(855, N'Vĩnh Long', N'Thành Phố', N'10 15 09N, 105 56 08E', N'86'),
(857, N'Long Hồ', N'Huyện', N'10 13 58N, 105 55 47E', N'86'),
(858, N'Mang Thít', N'Huyện', N'10 10 58N, 106 05 13E', N'86'),
(859, N'Vũng Liêm', N'Huyện', N'10 03 32N, 106 10 35E', N'86'),
(860, N'Tam Bình', N'Huyện', N'10 03 58N, 105 58 03E', N'86'),
(861, N'Bình Minh', N'Huyện', N'10 05 45N, 105 47 21E', N'86'),
(862, N'Trà Ôn', N'Huyện', N'9 59 20N, 105 57 56E', N'86'),
(863, N'Bình Tân', N'Huyện', N'', N'86'),
(866, N'Cao Lãnh', N'Thành Phố', N'10 27 38N, 105 37 21E', N'87'),
(867, N'Sa Đéc', N'Thị Xã', N'10 19 22N, 105 44 31E', N'87'),
(868, N'Hồng Ngự', N'Thị Xã', N'', N'87'),
(869, N'Tân Hồng', N'Huyện', N'10 52 48N, 105 29 21E', N'87'),
(870, N'Hồng Ngự', N'Huyện', N'10 48 13N, 105 19 00E', N'87'),
(871, N'Tam Nông', N'Huyện', N'10 44 06N, 105 30 58E', N'87'),
(872, N'Tháp Mười', N'Huyện', N'10 33 36N, 105 47 13E', N'87'),
(873, N'Cao Lãnh', N'Huyện', N'10 29 03N, 105 41 40E', N'87'),
(874, N'Thanh Bình', N'Huyện', N'10 36 38N, 105 28 51E', N'87'),
(875, N'Lấp Vò', N'Huyện', N'10 21 27N, 105 36 06E', N'87'),
(876, N'Lai Vung', N'Huyện', N'10 14 43N, 105 38 40E', N'87'),
(877, N'Châu Thành', N'Huyện', N'10 13 27N, 105 48 38E', N'87'),
(883, N'Long Xuyên', N'Thành Phố', N'10 22 22N, 105 25 33E', N'89'),
(884, N'Châu Đốc', N'Thị Xã', N'10 41 20N, 105 05 15E', N'89'),
(886, N'An Phú', N'Huyện', N'10 50 12N, 105 05 33E', N'89'),
(887, N'Tân Châu', N'Thị Xã', N'10 49 11N, 105 11 18E', N'89'),
(888, N'Phú Tân', N'Huyện', N'10 40 26N, 105 14 40E', N'89'),
(889, N'Châu Phú', N'Huyện', N'10 34 12N, 105 12 13E', N'89'),
(890, N'Tịnh Biên', N'Huyện', N'10 33 30N, 105 00 17E', N'89'),
(891, N'Tri Tôn', N'Huyện', N'10 24 41N, 104 56 58E', N'89'),
(892, N'Châu Thành', N'Huyện', N'10 25 39N, 105 15 31E', N'89'),
(893, N'Chợ Mới', N'Huyện', N'10 27 23N, 105 26 57E', N'89'),
(894, N'Thoại Sơn', N'Huyện', N'10 16 45N, 105 15 59E', N'89'),
(899, N'Rạch Giá', N'Thành Phố', N'10 01 35N, 105 06 20E', N'91'),
(900, N'Hà Tiên', N'Thị Xã', N'10 22 54N, 104 30 10E', N'91'),
(902, N'Kiên Lương', N'Huyện', N'10 20 21N, 104 39 46E', N'91'),
(903, N'Hòn Đất', N'Huyện', N'10 14 20N, 104 55 57E', N'91'),
(904, N'Tân Hiệp', N'Huyện', N'10 05 18N, 105 14 04E', N'91'),
(905, N'Châu Thành', N'Huyện', N'9 57 37N, 105 10 16E', N'91'),
(906, N'Giồng Giềng', N'Huyện', N'9 56 05N, 105 22 06E', N'91'),
(907, N'Gò Quao', N'Huyện', N'9 43 17N, 105 17 06E', N'91'),
(908, N'An Biên', N'Huyện', N'9 48 37N, 105 03 18E', N'91'),
(909, N'An Minh', N'Huyện', N'9 40 24N, 104 59 05E', N'91'),
(910, N'Vĩnh Thuận', N'Huyện', N'9 33 25N, 105 11 30E', N'91'),
(911, N'Phú Quốc', N'Huyện', N'10 13 44N, 103 57 25E', N'91'),
(912, N'Kiên Hải', N'Huyện', N'9 48 31N, 104 37 48E', N'91'),
(913, N'U Minh Thượng', N'Huyện', N'', N'91'),
(914, N'Giang Thành', N'Huyện', N'', N'91'),
(916, N'Ninh Kiều', N'Quận', N'10 01 58N, 105 45 34E', N'92'),
(917, N'Ô Môn', N'Quận', N'10 07 28N, 105 37 51E', N'92'),
(918, N'Bình Thuỷ', N'Quận', N'10 03 42N, 105 43 17E', N'92'),
(919, N'Cái Răng', N'Quận', N'9 59 57N, 105 46 56E', N'92'),
(923, N'Thốt Nốt', N'Quận', N'10 14 23N, 105 32 02E', N'92'),
(924, N'Vĩnh Thạnh', N'Huyện', N'10 11 35N, 105 22 45E', N'92'),
(925, N'Cờ Đỏ', N'Huyện', N'10 02 48N, 105 29 46E', N'92'),
(926, N'Phong Điền', N'Huyện', N'9 59 57N, 105 39 35E', N'92'),
(927, N'Thới Lai', N'Huyện', N'', N'92'),
(930, N'Vị Thanh', N'Thị Xã', N'9 45 15N, 105 24 50E', N'93'),
(931, N'Ngã Bảy', N'Thị Xã', N'', N'93'),
(932, N'Châu Thành A', N'Huyện', N'9 55 50N, 105 38 31E', N'93'),
(933, N'Châu Thành', N'Huyện', N'9 55 22N, 105 48 37E', N'93'),
(934, N'Phụng Hiệp', N'Huyện', N'9 47 20N, 105 43 29E', N'93'),
(935, N'Vị Thuỷ', N'Huyện', N'9 48 05N, 105 32 13E', N'93'),
(936, N'Long Mỹ', N'Huyện', N'9 40 47N, 105 30 53E', N'93'),
(941, N'Sóc Trăng', N'Thành Phố', N'9 36 39N, 105 59 00E', N'94'),
(942, N'Châu Thành', N'Huyện', N'', N'94'),
(943, N'Kế Sách', N'Huyện', N'9 49 30N, 105 57 25E', N'94'),
(944, N'Mỹ Tú', N'Huyện', N'9 38 21N, 105 49 52E', N'94'),
(945, N'Cù Lao Dung', N'Huyện', N'9 37 36N, 106 12 13E', N'94'),
(946, N'Long Phú', N'Huyện', N'9 34 38N, 106 06 07E', N'94'),
(947, N'Mỹ Xuyên', N'Huyện', N'9 28 16N, 105 55 51E', N'94'),
(948, N'Ngã Năm', N'Huyện', N'9 31 38N, 105 37 22E', N'94'),
(949, N'Thạnh Trị', N'Huyện', N'9 28 05N, 105 43 02E', N'94'),
(950, N'Vĩnh Châu', N'Huyện', N'9 20 50N, 105 59 58E', N'94'),
(951, N'Trần Đề', N'Huyện', N'', N'94'),
(954, N'Bạc Liêu', N'Thị Xã', N'9 16 05N, 105 45 08E', N'95'),
(956, N'Hồng Dân', N'Huyện', N'9 30 37N, 105 24 25E', N'95'),
(957, N'Phước Long', N'Huyện', N'9 23 13N, 105 24 41E', N'95'),
(958, N'Vĩnh Lợi', N'Huyện', N'9 16 51N, 105 40 54E', N'95'),
(959, N'Giá Rai', N'Huyện', N'9 15 51N, 105 23 18E', N'95'),
(960, N'Đông Hải', N'Huyện', N'9 08 11N, 105 24 42E', N'95'),
(961, N'Hoà Bình', N'Huyện', N'', N'95'),
(964, N'Cà Mau', N'Thành Phố', N'9 10 33N, 105 11 11E', N'96'),
(966, N'U Minh', N'Huyện', N'9 22 30N, 104 57 00E', N'96'),
(967, N'Thới Bình', N'Huyện', N'9 22 50N, 105 07 35E', N'96'),
(968, N'Trần Văn Thời', N'Huyện', N'9 07 36N, 104 57 27E', N'96'),
(969, N'Cái Nước', N'Huyện', N'9 00 31N, 105 03 23E', N'96'),
(970, N'Đầm Dơi', N'Huyện', N'8 57 48N, 105 13 56E', N'96'),
(971, N'Năm Căn', N'Huyện', N'8 46 59N, 104 58 20E', N'96'),
(972, N'Phú Tân', N'Huyện', N'8 52 47N, 104 53 35E', N'96'),
(973, N'Ngọc Hiển', N'Huyện', N'8 40 47N, 104 57 58E', N'96');
SET IDENTITY_INSERT Core_District OFF 
GO

SET IDENTITY_INSERT [dbo].[ShippingTableRate_PriceAndDestination] ON 
INSERT [dbo].[ShippingTableRate_PriceAndDestination] ([Id], [CountryId], [MinOrderSubtotal], [ShippingPrice], [StateOrProvinceId]) VALUES (1, 'VN', CAST(0.00 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), 92)
INSERT [dbo].[ShippingTableRate_PriceAndDestination] ([Id], [CountryId], [MinOrderSubtotal], [ShippingPrice], [StateOrProvinceId]) VALUES (2, 'VN', CAST(100.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 92)
SET IDENTITY_INSERT [dbo].[ShippingTableRate_PriceAndDestination] OFF
GO

INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES ('vi-VN', N'Tiếng Việt')
GO

INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Register', N'Đăng ký')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Hello {0}!', N'Chào {0}!')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Log in', N'Đăng nhập')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Log off', N'Đăng xuất')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'The Email field is required.', N'Địa chỉ email cần phải có ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Email', N'Địa chỉ email')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'User List', N'Danh sách người dùng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Remember me?', N'Ghi nhớ?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Password', N'Mật khẩu')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Use a local account to log in.', N'Sử dụng tài khoản của bạn để đăng nhập')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Register as a new user?', N'Đăng ký người dùng mới')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Forgot your password?', N'Quên mật khẩu')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Use another service to log in.', N'Đăng nhập bằng các tài khoản khác')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Full name', N'Họ và tên')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Confirm password', N'Xác nhận mật khẩu')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Create a new account.', N'Tạo tài khoản mới.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'All', N'Tất cả')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Home', N'Trang chủ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Add to cart', N'Thêm vào giỏ hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Product detail', N'Mô tả sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Product specification', N'Thông số kỹ thuật')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Rate this product', N'Đánh giá sản phẩm này')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Review comment', N'Mô tả đánh giá')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Review title', N'Tiêu đề đánh giá')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Posted by', N'Đánh giá bởi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Submit review', N'Gửi đánh giá')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'You have', N'Bạn có')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'products in your cart', N'sản phẩm trong giỏ hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Continue shopping', N'Tiếp tục mua sắm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'View cart', N'Xem giỏ hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'The product has been added to your cart', N'Sản phẩm đã được thêm vào giỏ hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Cart subtotal', N'Thành tiền')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Shopping Cart', N'Giỏ hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Product', N'Sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Price', N'Giá')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Quantity', N'Số lượng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'There are no items in this cart.', N'Chưa có sản phẩm nào trong giỏ hàng của bạn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Go to shopping', N'Đi mua sắm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Order summary', N'Tóm lược đơn hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Subtotal', N'Thành tiền')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Process to Checkout', N'Tiến hành thanh toán')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Shipping address', N'Địa chỉ giao hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Add another address', N'Thêm địa chỉ mới')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Contact name', N'Tên người liên hệ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Address', N'Địa chỉ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'State or Province', N'Thành phố / Tỉnh')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'District', N'Quận / Huyện')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Phone', N'Số điện thoại')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Order', N'Đặt hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'products', N'sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'reviews', N'nhận xét')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Add Review', N'Viết nhận xét')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Customer reviews', N'Nhận xét của khách hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Your review will be shown within the next 24h.', N'Nhận xét của bạn sẽ được hiển thị trong vòng 24 tiếng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Thank you {0} for your review', N'Cảm ơn {0} đã gửi nhận xét')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Rating average', N'Đánh giá trung bình')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'stars', N'sao')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Filter by', N'Tìm theo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Category', N'Danh mục')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Brand', N'Nhãn hiệu')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Sort by:', N'Sắp xếp theo:')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'results', N'kết quả')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'View options', N'Xem các tùy chọn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Associate your {0} account.', N'Liên kết với tài khoản {0} của bạn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Users', N'Người dùng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Vendors', N'Người bán')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Reviews', N'Đánh giá')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Products', N'Sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Categories', N'Danh mục')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Brands', N'Nhãn hiệu')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Product Options', N'Tùy chọn sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Product Attribute', N'Thuộc tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Product Attribute Groups', N'Nhóm thuộc tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Product Templates', N'Mẫu sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Sales', N'Bán hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Orders', N'Đơn hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Content Management', N'Quán lý nội dung')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Pages', N'Trang')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Widgets', N'Widgets')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'System', N'Hệ thống')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Configuration', N'Cấu hình')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Translations', N'Translations')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Dashboard', N'Dashboard')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Incomplete orders', N'Đơn hàng chưa xong')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Pending reviews', N'Đánh giá đang chờ duyệt')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Most searched keywords', N'Từ khóa được tìm kiếm nhiều nhất')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Most viewed products', N'Sản phẩm được xem nhiều nhất')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'OrderId', N'Số đơn hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Order Status', N'Trạng thái đơn hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Customer', N'Khách hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Created On', N'Ngày tạo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'SubTotal', N'Tổng tiền')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Actions', N'Hành động')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Site', N'Site')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Catalog', N'Quản lý sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Title', N'Tiêu đề')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Comment', N'Bình luận')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Status', N'Trạng thái')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Rating', N'Xếp hạng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Keyword', N'Từ khóa')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Count', N'Số lần')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Create User', N'Tạo người dùng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'FullName', N'Họ và tên')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Roles', N'Roles')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Edit User', N'Chỉnh sửa user')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Manager of Vendor', N'Manager of Vendor')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Save', N'Lưu lại')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Cancel', N'Hủy')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Phone Number', N'Số điện thoại')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Create Vendor', N'Tạo người bán')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Is Active', N'Đang hoạt động')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Edit Vendor', N'Chỉnh sửa người bán')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Managers', N'Quản lý')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Description', N'Mô tả')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Pending', N'Đang chờ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Approved', N'Đã duyệt')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Not Approved', N'Không duyệt')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Approve', N'Duyệt')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Create Product', N'Tạo sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Has Options', N'Tùy chọn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Is Visible Individually', N'Hiển thị riêng lẻ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Is Featured', N'Nổi bậc')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Is Allowed To Order', N'Cho phép đặt hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Is Called For Pricing', N'Gọi để biết giá')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Stock Quantity', N'Số lượng trong kho')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Is Published', N'Công bố')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Yes', N'Có')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'No', N'Không')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Edit Product', N'Chỉnh sửa sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Product Name', N'Tên sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Short Description', N'Mô tả ngắn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Specification', N'Thông số kỹ thuật')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Old Price', N'Giá cũ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Special Price', N'Giá đặc biệt')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Special Price Start', N'Bắt đầu giá đặc biệt')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Special Price End', N'Kết thúc giá đặc biệt')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Thumbnail', N'Hình đại diện')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Product Images', N'Hình sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Product Documents', N'Tài liệu kỹ thuật')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Out Of Stock', N'Hết hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Available Options', N'Tùy chọn khả dụng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Add Option', N'Thêm tùy chọn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Option Values', N'Giá trị của tùy chọn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Delete Option', N'Xóa tùy chọn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Generate Combinations', N'Tự động tạo tùy chọn sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Product Variations', N'Những tùy chọn sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Option Combinations', N'Sự kết hợp của những tùy chọn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Images', N'Hình ảnh')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Apply', N'Áp dụng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Available Attributes', N'Đặt tính khả dụng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Add Attribute', N'Thêm đặc tính')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Product Attributes', N'Đặc tính của sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Attribute Name', N'Tên đặc tính')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Value', N'Giá trị')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'General Information', N'Thông tin chung')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Category Mapping', N'Danh mục')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Related Products', N'Sản phẩm tương tự')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Manage Related Products', N'Quản lý sản phẩm tương tự')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Create Category', N'Tạo danh mục')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Edit Category', N'Chỉnh sửa danh mục')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Create Brand', N'Tạo nhãn hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Edit Brand', N'Chỉnh sửa nhãn hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Name', N'Tên')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Parent Category', N'Danh mục cha')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Group', N'Nhóm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Create Product Attribute', N'Tạo đặt tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Edit Product Attribute', N'Chỉnh sửa đặt tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Create Product Attribute Group', N'Tạo nhóm đặt tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Edit Product Attribute Group', N'Chỉnh sửa nhóm đặt tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Create Product Option', N'Tạo tùy chọn sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Edit Product Option', N'Chỉnh sửa tùy chọn sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Create Product Display Widget', N'Create Product Display Widget')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Edit Product Display Widget', N'Edit Product Display Widget')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Widget Name', N'Widget Name')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Widget Zone', N'Widget Zone')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Publish Start', N'Thời gian bắt đầu công bố')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Publish End', N'Thời gian kết thúc')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Number of Products', N'Số lượng sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Order By', N'Sắp xếp theo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Create Product Template', N'Tạo mẫu sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Edit Product Template', N'Chỉnh sửa mẫu sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Added Attributes', N'Những đặt tính đã thêm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Back', N'Quay về')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Order Detail', N'Chi tiết đơn hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Order Information', N'Thông tin đơn hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Change', N'Thay đổi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Product Information', N'Thông tin sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Shipping Information', N'Thông tin giao hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Application Settings', N'Application Settings')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Create Page', N'Tạo trang')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Edit Page', N'Chỉnh sửa trang')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Body', N'Nội dung chính')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Account Dashboard', N'Quản lý tài khoản')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Account Information', N'Thông tin tài khoản')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Edit', N'Chỉnh sửa')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Security', N'Bảo mật')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Create', N'Tạo mới')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'External Logins', N'Đăng nhập từ mạng xã hội')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Manage', N'Quản lý')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Default shipping address', N'Địa chỉ nhận hàng mặc định')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Manage address', N'Quản lý địa chỉ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'You don''t have any default address', N'Bạn chưa có địa chỉ mặc định nào')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Order History', N'Lịch sử mua hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Address Book', N'Sổ địa chỉ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Add Address', N'Thêm địa chỉ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Delete', N'Xóa')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Set as default shipping address', N'Chọn làm địa chỉ mặc định khi nhận hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Edit Address', N'Chỉnh sửa địa chỉ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Create Address', N'Tạo địa chỉ mới')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Your account', N'Tài khoản của bạn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Date', N'Ngày')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Customer Groups', N'Nhóm khách hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Add to Compare', N'Thêm vào để so sánh')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Not available', N'Không có sẵn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'You save', N'Bạn tiết kiệm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Submit', N'Gửi đi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'All Categories', N'Tất cả danh mục')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Search here...', N'Tìm kiếm ở đây...')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'The {0} field is required.', N'Trường {0} là bắt buộc.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'The value {0} is not valid for {1}.', N'Giá trị {0} thì không hợp lệ cho {1}.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'The value {0} is invalid.', N'Giá trị {0} thì không hợp lệ.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'The supplied value is invalid for {0}.', N'Giá trị đã cung cấp không hợp lệ cho {0}.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'Null value is invalid.', N'Giá trị trống thì không hợp lệ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'A value is required.', N'Một giá trị là bắt buộc')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES ('vi-VN', N'A value for the {0} property was not provided.', N'Giá trị cho {0} đã không được cung cấp.')
GO
