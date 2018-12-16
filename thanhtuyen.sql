-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 18 Mars 2018 à 04:12
-- Version du serveur :  10.1.8-MariaDB
-- Version de PHP :  5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `thanhtuyen`
--

-- --------------------------------------------------------

--
-- Structure de la table `anh`
--

CREATE TABLE `anh` (
  `id` int(10) NOT NULL,
  `tenmau` int(10) NOT NULL,
  `duongdan` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gia` int(50) NOT NULL,
  `sanpham` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `anh`
--

INSERT INTO `anh` (`id`, `tenmau`, `duongdan`, `thumb`, `gia`, `sanpham`) VALUES
(10, 4, 'iphone hồng', 'upload/14605995641_thumb.jpg', 9350000, 19),
(11, 6, 'iphone trắng', 'upload/14605995861_thumb.jpg', 8850000, 19),
(12, 5, 'iphone đen', 'upload/14605995991_thumb.jpg', 8350000, 19);

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE `tag` (
  `id` int(10) NOT NULL,
  `tag` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tag`
--

INSERT INTO `tag` (`id`, `tag`) VALUES
(18, ''),
(19, '0'),
(20, 'chả mực'),
(21, 'cha muc'),
(22, 'Cơm ngon Hải phòng'),
(23, 'com ngon hai phong'),
(24, 'cơm văn phòng'),
(25, 'com van phong'),
(26, 'cơm suat'),
(27, 'com suat'),
(28, 'cơm hộp'),
(29, 'ẩm thực hải phòng'),
(30, 'quán cơm ngon'),
(31, 'đặt cơm suất'),
(32, 'đặt cơm hộp'),
(33, 'cơm hộp giá rẻ'),
(34, 'cơm ngon giá rẻ'),
(35, 'cơm văn phòng giá rẻ'),
(36, 'pin sac');

-- --------------------------------------------------------

--
-- Structure de la table `tag_new`
--

CREATE TABLE `tag_new` (
  `id` int(10) NOT NULL,
  `idtag` int(10) NOT NULL,
  `idnew` int(10) NOT NULL,
  `categories` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tag_new`
--

INSERT INTO `tag_new` (`id`, `idtag`, `idnew`, `categories`) VALUES
(1, 19, 0, '0'),
(759, 18, 33, '1'),
(760, 18, 34, '1'),
(761, 18, 35, '1'),
(774, 18, 46, '1'),
(775, 18, 47, '1'),
(776, 18, 48, '1'),
(777, 18, 49, '1'),
(778, 18, 50, '1'),
(779, 18, 51, '1'),
(780, 18, 52, '1'),
(781, 18, 53, '1'),
(782, 18, 54, '1'),
(784, 18, 55, '1'),
(785, 18, 56, '1'),
(786, 18, 57, '1'),
(787, 18, 58, '1'),
(788, 18, 59, '1'),
(789, 18, 60, '1'),
(790, 18, 61, '1'),
(791, 18, 62, '1'),
(792, 18, 63, '1'),
(793, 18, 64, '1'),
(794, 18, 65, '1'),
(795, 18, 66, '1'),
(796, 18, 67, '1'),
(797, 18, 68, '1'),
(798, 18, 69, '1'),
(799, 18, 70, '1'),
(800, 18, 71, '1'),
(802, 18, 72, '1'),
(803, 18, 73, '1'),
(804, 18, 74, '1'),
(805, 18, 75, '1'),
(806, 18, 76, '1'),
(807, 18, 77, '1'),
(808, 18, 78, '1'),
(809, 18, 79, '1'),
(810, 18, 80, '1'),
(811, 18, 81, '1'),
(812, 18, 82, '1'),
(813, 18, 83, '1'),
(814, 18, 84, '1'),
(815, 18, 85, '1'),
(816, 18, 86, '1'),
(817, 18, 87, '1'),
(818, 18, 88, '1'),
(819, 18, 89, '1'),
(820, 18, 90, '1'),
(821, 18, 91, '1'),
(822, 18, 92, '1'),
(823, 18, 93, '1'),
(824, 18, 94, '1'),
(825, 18, 95, '1'),
(826, 18, 96, '1'),
(827, 18, 97, '1'),
(828, 18, 98, '1'),
(829, 18, 99, '1'),
(830, 18, 100, '1'),
(831, 18, 101, '1'),
(832, 18, 102, '1'),
(833, 18, 103, '1'),
(834, 18, 104, '1'),
(835, 18, 105, '1'),
(836, 18, 106, '1'),
(837, 18, 107, '1'),
(838, 18, 108, '1'),
(839, 18, 109, '1'),
(840, 18, 110, '1'),
(841, 18, 111, '1'),
(842, 18, 112, '1'),
(843, 18, 113, '1'),
(844, 18, 114, '1'),
(845, 18, 115, '1'),
(846, 19, 52, '0'),
(847, 19, 53, '0'),
(854, 19, 54, '0'),
(855, 18, 8, '2'),
(856, 18, 9, '2'),
(857, 18, 10, '2'),
(859, 19, 1, '0'),
(860, 19, 2, '0'),
(861, 18, 1, '0'),
(876, 19, 55, '0'),
(877, 18, 11, '2'),
(878, 18, 12, '2'),
(879, 18, 13, '2'),
(883, 18, 2, '0'),
(884, 18, 3, '0'),
(885, 18, 4, '0'),
(886, 18, 5, '0'),
(887, 18, 6, '0'),
(888, 18, 7, '0'),
(889, 19, 187, '0'),
(890, 19, 188, '0'),
(891, 19, 189, '0'),
(892, 19, 1, '0'),
(1120, 19, 56, '0'),
(1121, 19, 57, '0'),
(1122, 19, 58, '0'),
(1123, 19, 59, '0'),
(1124, 19, 60, '0'),
(1125, 19, 61, '0'),
(1126, 19, 62, '0'),
(1127, 19, 1, '0'),
(1128, 19, 2, '0'),
(1129, 19, 3, '0'),
(1130, 19, 4, '0'),
(1131, 19, 5, '0'),
(1132, 19, 6, '0'),
(1133, 19, 7, '0'),
(1134, 19, 8, '0'),
(1135, 19, 9, '0'),
(1136, 19, 10, '0'),
(1137, 19, 11, '0'),
(1138, 19, 12, '0'),
(1139, 19, 13, '0'),
(1140, 19, 14, '0'),
(1141, 19, 15, '0'),
(1142, 19, 16, '0'),
(1143, 19, 17, '0'),
(1144, 19, 18, '0'),
(1145, 19, 19, '0'),
(1146, 19, 20, '0'),
(1147, 19, 21, '0'),
(1148, 19, 22, '0'),
(1149, 19, 23, '0'),
(1150, 19, 24, '0'),
(1151, 19, 25, '0'),
(1152, 19, 26, '0'),
(1153, 19, 27, '0'),
(1154, 19, 28, '0'),
(1155, 19, 29, '0'),
(1156, 19, 30, '0'),
(1157, 19, 31, '0'),
(1158, 19, 32, '0'),
(1159, 19, 33, '0'),
(1160, 19, 34, '0'),
(1161, 19, 35, '0'),
(1162, 19, 36, '0'),
(1163, 19, 37, '0'),
(1164, 19, 38, '0'),
(1165, 19, 39, '0'),
(1166, 19, 40, '0'),
(1167, 19, 41, '0'),
(1168, 19, 42, '0'),
(1169, 19, 43, '0'),
(1170, 19, 44, '0'),
(1171, 19, 45, '0'),
(1172, 19, 46, '0'),
(1173, 19, 47, '0'),
(1174, 19, 48, '0'),
(1175, 19, 49, '0'),
(1176, 19, 50, '0'),
(1177, 19, 51, '0'),
(1178, 19, 52, '0'),
(1179, 19, 53, '0'),
(1180, 19, 54, '0'),
(1181, 19, 55, '0'),
(1182, 19, 56, '0'),
(1183, 19, 57, '0'),
(1184, 19, 58, '0'),
(1185, 19, 59, '0'),
(1186, 19, 60, '0'),
(1187, 19, 61, '0'),
(1188, 19, 62, '0'),
(1189, 19, 63, '0'),
(1190, 19, 64, '0'),
(1191, 19, 65, '0'),
(1192, 19, 66, '0'),
(1193, 19, 67, '0'),
(1194, 19, 68, '0'),
(1195, 19, 69, '0'),
(1196, 19, 70, '0'),
(1197, 19, 71, '0'),
(1198, 18, 15, '2'),
(1199, 18, 16, '2'),
(1200, 18, 17, '2'),
(1201, 18, 18, '2'),
(1202, 18, 19, '2'),
(1203, 18, 20, '2'),
(1204, 18, 21, '2'),
(1205, 18, 22, '2'),
(1206, 18, 23, '2'),
(1207, 18, 24, '2'),
(1208, 19, 4, '0'),
(1209, 18, 8, '0'),
(1210, 18, 9, '0'),
(1211, 18, 10, '0'),
(1212, 18, 11, '0'),
(1213, 18, 12, '0'),
(1214, 18, 13, '0'),
(1215, 18, 14, '0'),
(1216, 18, 15, '0'),
(1217, 18, 16, '0'),
(1218, 18, 17, '0'),
(1219, 18, 18, '0'),
(1220, 18, 19, '0'),
(1221, 18, 20, '0'),
(1222, 18, 21, '0'),
(1223, 18, 22, '0'),
(1224, 18, 23, '0'),
(1225, 18, 24, '0'),
(1226, 18, 25, '0'),
(1227, 18, 26, '0'),
(1228, 18, 27, '0'),
(1229, 18, 28, '0'),
(1230, 18, 29, '0'),
(1231, 18, 30, '0'),
(1232, 18, 31, '0'),
(1233, 18, 32, '0'),
(1234, 18, 33, '0'),
(1235, 18, 34, '0'),
(1236, 18, 35, '0'),
(1237, 18, 36, '0'),
(1238, 18, 37, '0'),
(1239, 18, 38, '0'),
(1240, 18, 39, '0'),
(1241, 18, 40, '0'),
(1242, 18, 41, '0'),
(1243, 18, 42, '0'),
(1244, 18, 43, '0'),
(1245, 18, 44, '0'),
(1246, 18, 45, '0'),
(1247, 18, 46, '0'),
(1248, 18, 47, '0'),
(1249, 18, 48, '0'),
(1250, 18, 49, '0'),
(1251, 18, 50, '0'),
(1252, 18, 51, '0'),
(1253, 18, 52, '0'),
(1254, 18, 53, '0'),
(1255, 18, 54, '0'),
(1256, 18, 55, '0'),
(1257, 18, 56, '0'),
(1258, 18, 57, '0'),
(1259, 18, 58, '0'),
(1260, 18, 59, '0'),
(1261, 18, 60, '0'),
(1262, 18, 61, '0'),
(1263, 18, 62, '0'),
(1264, 18, 63, '0'),
(1265, 19, 190, '0'),
(1266, 19, 191, '0'),
(1267, 19, 192, '0'),
(1268, 19, 193, '0'),
(1269, 19, 194, '0'),
(1270, 19, 195, '0'),
(1271, 19, 196, '0'),
(1308, 18, 33, '1'),
(1309, 18, 34, '1'),
(1310, 18, 35, '1'),
(1331, 18, 45, '1'),
(1332, 18, 44, '1'),
(1333, 18, 43, '1'),
(1334, 18, 42, '1'),
(1335, 18, 41, '1'),
(1336, 18, 40, '1'),
(1337, 18, 39, '1'),
(1338, 18, 38, '1'),
(1339, 18, 37, '1'),
(1340, 18, 36, '1'),
(1341, 19, 1, '0'),
(1342, 19, 2, '0'),
(1343, 19, 3, '0'),
(1344, 19, 4, '0'),
(1345, 19, 5, '0'),
(1346, 19, 6, '0'),
(1347, 19, 7, '0'),
(1348, 19, 8, '0'),
(1349, 19, 9, '0'),
(1350, 19, 10, '0'),
(1351, 19, 11, '0'),
(1352, 19, 12, '0'),
(1353, 19, 13, '0'),
(1354, 19, 14, '0'),
(1355, 19, 15, '0'),
(1356, 19, 16, '0'),
(1357, 19, 17, '0'),
(1358, 19, 18, '0'),
(1359, 19, 19, '0'),
(1360, 19, 20, '0'),
(1361, 19, 21, '0'),
(1362, 19, 19, '0'),
(1363, 19, 20, '0'),
(1364, 19, 21, '0'),
(1365, 19, 22, '0'),
(1366, 19, 23, '0'),
(1367, 19, 24, '0'),
(1368, 19, 1, '0'),
(1369, 19, 2, '0'),
(1370, 19, 3, '0'),
(1371, 19, 62, '0'),
(1378, 19, 63, '0'),
(1379, 19, 3, '0'),
(1380, 19, 4, '0'),
(1381, 18, 64, '0'),
(1382, 18, 65, '0'),
(1383, 18, 66, '0'),
(1384, 18, 67, '0'),
(1442, 19, 63, '0'),
(1443, 19, 1, '0'),
(1444, 19, 2, '0'),
(1445, 19, 22, '0'),
(1446, 19, 3, '0'),
(1448, 18, 7, '2'),
(1449, 18, 8, '2'),
(1450, 18, 9, '2'),
(1451, 18, 10, '2'),
(1452, 18, 11, '2'),
(1453, 18, 12, '2'),
(1454, 18, 13, '2'),
(1455, 18, 14, '2'),
(1456, 18, 6, '2'),
(1457, 18, 1, '2'),
(1458, 18, 2, '2'),
(1459, 18, 3, '2'),
(1460, 18, 4, '2'),
(1461, 18, 5, '2'),
(1469, 19, 1, '0'),
(1470, 19, 2, '0'),
(1471, 19, 3, '0'),
(1472, 19, 4, '0'),
(1473, 19, 1, '0'),
(1474, 19, 2, '0'),
(1475, 19, 3, '0'),
(1476, 19, 4, '0'),
(1477, 19, 5, '0'),
(1478, 19, 6, '0'),
(1479, 19, 7, '0'),
(1480, 19, 8, '0'),
(1481, 19, 9, '0'),
(1482, 19, 10, '0'),
(1483, 19, 11, '0'),
(1484, 19, 12, '0'),
(1485, 19, 13, '0'),
(1486, 19, 14, '0'),
(1487, 19, 15, '0'),
(1488, 19, 16, '0'),
(1489, 19, 17, '0'),
(1490, 19, 18, '0'),
(1491, 19, 19, '0'),
(1492, 19, 20, '0'),
(1493, 19, 21, '0'),
(1494, 18, 1, '0'),
(1495, 18, 2, '0'),
(1498, 36, 2, '3'),
(1499, 19, 1, '0'),
(1500, 19, 2, '0'),
(1501, 19, 3, '0'),
(1502, 19, 4, '0'),
(1503, 19, 5, '0'),
(1504, 19, 6, '0'),
(1505, 19, 7, '0'),
(1506, 19, 8, '0'),
(1507, 19, 9, '0'),
(1508, 19, 10, '0'),
(1509, 19, 11, '0'),
(1510, 19, 12, '0'),
(1511, 19, 13, '0'),
(1512, 19, 14, '0'),
(1513, 19, 15, '0'),
(1514, 19, 16, '0'),
(1515, 19, 17, '0'),
(1516, 19, 18, '0'),
(1517, 19, 19, '0'),
(1518, 19, 20, '0'),
(1519, 19, 21, '0'),
(1520, 19, 22, '0'),
(1521, 19, 23, '0'),
(1522, 19, 24, '0'),
(1523, 19, 25, '0'),
(1524, 19, 26, '0'),
(1525, 19, 27, '0'),
(1526, 19, 28, '0'),
(1527, 19, 29, '0'),
(1528, 19, 30, '0'),
(1529, 19, 31, '0'),
(1530, 19, 32, '0'),
(1531, 19, 33, '0'),
(1532, 19, 34, '0'),
(1533, 19, 35, '0'),
(1534, 19, 36, '0'),
(1537, 18, 18, '1'),
(1538, 18, 17, '1'),
(1539, 18, 16, '1'),
(1540, 18, 15, '1'),
(1541, 18, 14, '1'),
(1542, 18, 13, '1'),
(1543, 18, 12, '1'),
(1544, 18, 11, '1'),
(1545, 18, 10, '1'),
(1546, 18, 9, '1'),
(1547, 18, 8, '1'),
(1548, 18, 7, '1'),
(1549, 18, 6, '1'),
(1550, 18, 5, '1'),
(1551, 18, 4, '1'),
(1552, 18, 3, '1'),
(1553, 18, 2, '1'),
(1554, 18, 1, '1'),
(1555, 19, 0, '0'),
(1556, 19, 2, '0'),
(1557, 19, 3, '0'),
(1558, 19, 4, '0'),
(1559, 19, 5, '0'),
(1560, 19, 6, '0'),
(1561, 19, 7, '0'),
(1562, 19, 1, '0'),
(1563, 19, 2, '0'),
(1564, 19, 3, '0'),
(1565, 19, 4, '0'),
(1566, 19, 5, '0'),
(1567, 19, 6, '0'),
(1568, 19, 7, '0'),
(1569, 19, 8, '0'),
(1570, 19, 9, '0'),
(1571, 19, 10, '0'),
(1572, 19, 1, '0'),
(1573, 19, 2, '0'),
(1574, 19, 3, '0'),
(1575, 19, 4, '0'),
(1576, 19, 5, '0'),
(1577, 19, 6, '0'),
(1578, 19, 7, '0'),
(1579, 19, 8, '0'),
(1581, 19, 1, '0'),
(1582, 19, 2, '0'),
(1583, 19, 3, '0'),
(1584, 19, 4, '0'),
(1585, 18, 20, '1'),
(1586, 19, 1, '0'),
(1587, 19, 2, '0'),
(1588, 19, 3, '0'),
(1589, 19, 4, '0'),
(1590, 19, 5, '0'),
(1591, 19, 6, '0'),
(1592, 19, 7, '0'),
(1593, 19, 8, '0'),
(1594, 19, 9, '0'),
(1605, 18, 15, '2'),
(1606, 18, 16, '2'),
(1607, 18, 17, '2'),
(1608, 18, 18, '2'),
(1609, 18, 19, '2'),
(1610, 18, 20, '2'),
(1627, 18, 19, '1'),
(1628, 19, 4, '0'),
(1629, 19, 5, '0');

-- --------------------------------------------------------

--
-- Structure de la table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `role` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `username`, `password`, `email`, `phone`, `address`, `role`, `status`) VALUES
(1, 'admin', 'a8ee4e022344282a8d9baf5b2090469c', 'tungvu90@gmail.com', '166429502', 'HP', ',tblorder.Thông tin đặt hàng,tbluser.Thành viên,tbldanhmucsanpham.Danh mục sản phẩm,tblhang.Hãng sản xuất,tblsanpham.Sản phẩm,tblkhoanggia.Khoảng giá,tblmausac.Màu sắc,tblphongcach.Phong cách,tblkieudang.Kiểu dáng,tblchucnang.Chức năng,tbldanhmucphukien.Danh mục phụ kiện cấp 1,tbldanhmucphukien2.Danh mục phụ kiện cấp 2,tblphukien.Phụ kiện,tbldanhmucbaiviet.Danh mục bài viết cấp 1,tbldanhmucbaiviet2.Danh mục bài viết cấp 2,tbldanhmucbaiviet3.Danh mục bài viết cấp 3,tbltintuc.Bài viết,tblslider.Ảnh Slider,tblquangcao.Quảng cáo,tbladmin.Administrators,tblthongtincongty.Thông tin công ty,tblmeta.Thông tin Seo,tbllienhe.Thông tin liên hệ', 1),
(2, 'tungvu90', 'e10adc3949ba59abbe56e057f20f883e', 'tungvu90@gmail.com', '166429502', 'Hải Phòng', ',tbldanhmucsanpham.Danh mục sản phẩm cấp 1,tbldanhmucsanpham2.Danh mục sản phẩm cấp 2,tblsanpham.Sản phẩm,tbldanhmucbaiviet.Danh mục bài viết cấp 1,tbldanhmucbaiviet2.Danh mục bài viết cấp 2,tbltintuc.Bài viết', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblchucnang`
--

CREATE TABLE `tblchucnang` (
  `id` int(10) NOT NULL,
  `chucnang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tblchucnang`
--

INSERT INTO `tblchucnang` (`id`, `chucnang`, `ordernum`, `status`) VALUES
(1, 'Nghe nhạc', 0, 0),
(2, 'Wifi hotspot', 0, 0),
(3, 'Chụp panorama', 0, 0),
(4, 'Wifi', 0, 0),
(5, 'Nghe FM', 0, 0),
(6, 'Ghi âm cuộc gọi', 0, 0),
(7, 'Cảm ứng điện dung', 0, 0),
(8, 'Blutooth', 0, 0),
(9, '2 sim 2 sóng', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tbldanhmucbaiviet`
--

CREATE TABLE `tbldanhmucbaiviet` (
  `id` int(10) NOT NULL,
  `danhmucbaiviet` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `top` int(1) NOT NULL,
  `phai` int(1) NOT NULL,
  `theh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_des` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tbldanhmucbaiviet`
--

INSERT INTO `tbldanhmucbaiviet` (`id`, `danhmucbaiviet`, `top`, `phai`, `theh`, `meta_title`, `meta_des`, `keyword`, `ordernum`, `status`) VALUES
(56, 'Tuyển dụng', 1, 1, '', '', '', '', 0, 0),
(57, 'Góc kỹ thuật', 1, 1, '', '', '', '', 0, 0),
(58, 'Tin tức', 1, 1, '', '', '', '', 0, 0),
(59, 'Khuyễn mại', 1, 1, '', '', '', '', 0, 0),
(61, 'Giới thiệu', 1, 0, '', '', '', '', 2, 0),
(62, 'Tin công ty', 0, 0, '', '', '', '', 0, 0),
(63, 'Dịch vụ', 1, 0, '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tbldanhmucbaiviet2`
--

CREATE TABLE `tbldanhmucbaiviet2` (
  `id` int(10) NOT NULL,
  `danhmucbaiviet` int(10) NOT NULL,
  `danhmucbaivietcap2` varchar(200) CHARACTER SET utf8 NOT NULL,
  `home` int(1) NOT NULL,
  `theh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(500) CHARACTER SET utf8 NOT NULL,
  `meta_des` varchar(500) CHARACTER SET utf8 NOT NULL,
  `keyword` varchar(500) CHARACTER SET utf8 NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tbldanhmucbaiviet2`
--

INSERT INTO `tbldanhmucbaiviet2` (`id`, `danhmucbaiviet`, `danhmucbaivietcap2`, `home`, `theh`, `meta_title`, `meta_des`, `keyword`, `ordernum`, `status`) VALUES
(1, 63, 'Dịch vụ phần mềm', 0, '', '', '', '', 0, 0),
(2, 63, 'Dịch vụ phần cứng', 1, '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tbldanhmucbaiviet3`
--

CREATE TABLE `tbldanhmucbaiviet3` (
  `id` int(10) NOT NULL,
  `danhmucbaiviet` int(10) NOT NULL,
  `danhmucbaivietcap2` int(10) NOT NULL,
  `danhmucbaivietcap3` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `theh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_des` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tbldanhmucbaiviet3`
--

INSERT INTO `tbldanhmucbaiviet3` (`id`, `danhmucbaiviet`, `danhmucbaivietcap2`, `danhmucbaivietcap3`, `theh`, `meta_title`, `meta_des`, `keyword`, `ordernum`, `status`) VALUES
(3, 63, 1, 'Unlock, mở mạng điện thoại', '', '', '', '', 0, 0),
(4, 63, 1, 'Unbrick, unlock HTC', '', '', '', '', 0, 0),
(5, 63, 1, 'Unbrick, unlock Sony', '', '', '', '', 0, 0),
(6, 63, 1, 'Unbrick, unlock LG', '', '', '', '', 0, 0),
(7, 63, 1, 'Unbrick, unlock Samsung', '', '', '', '', 0, 0),
(8, 63, 1, 'Unbrick, unlock SKY', '', '', '', '', 0, 0),
(9, 63, 1, 'Phần mềm Apple', '', '', '', '', 0, 0),
(10, 63, 2, 'Sửa điện thoại LG', '', '', '', '', 0, 0),
(11, 63, 2, 'Sửa điện thoại SKY', '', '', '', '', 0, 0),
(12, 63, 2, 'Sửa điện thoại  SAMSUNG', '', '', '', '', 0, 0),
(13, 63, 2, 'Sửa điện thoại iPhone', '', '', '', '', 0, 0),
(14, 63, 2, 'Sửa điện thoại HTC', '', '', '', '', 0, 0),
(15, 63, 2, 'Sửa điện thoại Asus', '', '', '', '', 0, 0),
(16, 63, 2, 'Sửa điện thoại SONY', '', '', '', '', 0, 0),
(17, 63, 2, 'Sửa điện thoại NOKIA', '', '', '', '', 0, 0),
(18, 63, 2, 'Sửa điện thoại Oppo', '', '', '', '', 0, 0),
(19, 63, 2, 'Sửa điện thoại Xiaomi', '', '', '', '', 0, 0),
(20, 63, 2, 'Sửa điện thoại Lenovo', '', '', '', '', 0, 0),
(21, 63, 2, 'Sửa điện thoại Massgo', '', '', '', '', 0, 0),
(22, 63, 2, 'Sửa điện thoại LG', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tbldanhmucphukien`
--

CREATE TABLE `tbldanhmucphukien` (
  `id` int(10) NOT NULL,
  `danhmucphukien` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `theh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_des` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tbldanhmucphukien`
--

INSERT INTO `tbldanhmucphukien` (`id`, `danhmucphukien`, `theh`, `meta_title`, `meta_des`, `keyword`, `ordernum`, `status`) VALUES
(1, 'Pin, sạc dự phòng', '', '', '', '', 0, 0),
(2, 'Ốp lưng', '', '', '', '', 0, 0),
(3, 'Dán cường lực', '', '', '', '', 0, 0),
(4, 'Thẻ nhớ - USB Fash', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tbldanhmucphukien2`
--

CREATE TABLE `tbldanhmucphukien2` (
  `id` int(10) NOT NULL,
  `danhmucphukien` int(10) NOT NULL,
  `danhmucphukiencap2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `theh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_des` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tbldanhmucphukien2`
--

INSERT INTO `tbldanhmucphukien2` (`id`, `danhmucphukien`, `danhmucphukiencap2`, `theh`, `meta_title`, `meta_des`, `keyword`, `ordernum`, `status`) VALUES
(1, 1, 'Pin dự phòng Xiaomi', '', '', '', '', 0, 0),
(2, 1, 'Pin Dự Phòng UoniPow', '', '', '', '', 0, 0),
(3, 1, 'Pin Dự Phòng Remax', '', '', '', '', 0, 0),
(4, 1, 'Pin Dự Phòng Yoobao', '', '', '', '', 0, 0),
(5, 2, 'Ốp lưng ZTE ', '', '', '', '', 0, 0),
(6, 2, 'Ốp lưng Asus ', '', '', '', '', 0, 0),
(7, 2, 'Ốp lưng Letv ', '', '', '', '', 0, 0),
(8, 2, 'Ốp lưng Infinix', '', '', '', '', 0, 0),
(9, 2, 'Ốp lưng Pantech', '', '', '', '', 0, 0),
(10, 2, 'Ốp lưng Pantech', '', '', '', '', 0, 0),
(11, 2, 'Ốp lưng Motorola ', '', '', '', '', 0, 0),
(12, 2, 'Ốp lưng Wiko', '', '', '', '', 0, 0),
(13, 2, 'Ốp lưng Samsung ', '', '', '', '', 0, 0),
(14, 2, 'Ốp lưng iPhone', '', '', '', '', 0, 0),
(15, 2, 'Ốp lưng HTC', '', '', '', '', 0, 0),
(16, 2, 'Ốp lưng Arbutus', '', '', '', '', 0, 0),
(17, 2, 'Ốp lưng OnePlus', '', '', '', '', 0, 0),
(18, 3, 'Dán cường lực Infinix ', '', '', '', '', 0, 0),
(19, 3, 'Dán cường lực Pantech ', '', '', '', '', 0, 0),
(20, 3, 'Dán cường lực Wiki', '', '', '', '', 0, 0),
(21, 3, 'Dán cường lực Arbutus ', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tbldanhmucsanpham`
--

CREATE TABLE `tbldanhmucsanpham` (
  `id` int(10) NOT NULL,
  `danhmucsanpham` varchar(200) CHARACTER SET utf8 NOT NULL,
  `trai` int(1) NOT NULL,
  `theh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `meta_title` varchar(500) CHARACTER SET utf8 NOT NULL,
  `meta_des` varchar(500) CHARACTER SET utf8 NOT NULL,
  `keyword` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tbldanhmucsanpham`
--

INSERT INTO `tbldanhmucsanpham` (`id`, `danhmucsanpham`, `trai`, `theh`, `ordernum`, `status`, `meta_title`, `meta_des`, `keyword`) VALUES
(67, 'Điện thoại', 1, '', 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `tbldanhmucsanpham2`
--

CREATE TABLE `tbldanhmucsanpham2` (
  `id` int(10) NOT NULL,
  `danhmucsanpham` int(10) NOT NULL,
  `danhmucsanphamcap2` varchar(200) CHARACTER SET utf8 NOT NULL,
  `theh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(500) CHARACTER SET utf8 NOT NULL,
  `meta_des` varchar(500) CHARACTER SET utf8 NOT NULL,
  `keyword` varchar(500) CHARACTER SET utf8 NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tbldanhmucsanpham2`
--

INSERT INTO `tbldanhmucsanpham2` (`id`, `danhmucsanpham`, `danhmucsanphamcap2`, `theh`, `meta_title`, `meta_des`, `keyword`, `ordernum`, `status`) VALUES
(190, 63, 'Phụ tùng máy gặt lúa', '', '', '', '', 0, 0),
(191, 63, 'Máy gặt lúa tay', '', '', '', '', 0, 0),
(192, 63, 'Máy gặt lúa đã qua sử dụng', '', '', '', '', 0, 0),
(193, 63, 'Máy gặt lúa mini', '', '', '', '', 0, 0),
(194, 63, 'Máy gặt Yanma', '', '', '', '', 0, 0),
(195, 63, 'Máy gặt ISEKI', '', '', '', '', 0, 0),
(196, 62, 'Máy gặt Kubota', '', '', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblhang`
--

CREATE TABLE `tblhang` (
  `id` int(10) NOT NULL,
  `hang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home` int(1) NOT NULL,
  `theh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_des` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tblhang`
--

INSERT INTO `tblhang` (`id`, `hang`, `home`, `theh`, `meta_title`, `meta_des`, `keyword`, `ordernum`, `status`) VALUES
(1, 'ZTE', 0, '', '', '', '', 0, 0),
(2, 'Xiaomi', 0, '', '', '', '', 0, 0),
(3, 'Wiko', 0, '', '', '', '', 0, 0),
(4, 'Vivo', 0, '', '', '', '', 0, 0),
(5, 'Vertu', 0, '', '', '', '', 0, 0),
(6, 'Sony', 0, '', '', '', '', 0, 0),
(7, 'Sky', 0, '', '', '', '', 0, 0),
(8, 'Samsung Galaxy Tab', 0, '', '', '', '', 0, 0),
(9, 'Samsung', 0, '', '', '', '', 0, 0),
(10, 'Philips', 0, '', '', '', '', 0, 0),
(11, 'Pantech', 0, '', '', '', '', 0, 0),
(12, 'OPPO', 0, '', '', '', '', 0, 0),
(13, 'OnePlus', 0, '', '', '', '', 0, 0),
(14, 'Obi Worlphone', 0, '', '', '', '', 0, 0),
(15, 'Nomi', 0, '', '', '', '', 0, 0),
(16, 'Nokia', 0, '', '', '', '', 0, 0),
(17, 'Motorola', 0, '', '', '', '', 0, 0),
(18, 'Meizu', 0, '', '', '', '', 0, 0),
(19, 'Massgo', 0, '', '', '', '', 0, 0),
(20, 'Luna', 0, '', '', '', '', 0, 0),
(21, 'LG', 0, '', '', '', '', 0, 0),
(22, 'LeTV', 0, '', '', '', '', 0, 0),
(23, 'Lenovo', 0, '', '', '', '', 0, 0),
(24, 'Ipad', 0, '', '', '', '', 0, 0),
(25, 'InWatch', 0, '', '', '', '', 0, 0),
(26, 'iNfocus', 0, '', '', '', '', 0, 0),
(27, 'Infinix', 1, '', '', '', '', 0, 0),
(28, 'Huawei', 1, '', '', '', '', 0, 0),
(29, 'HTC', 1, '', '', '', '', 0, 0),
(30, 'Google', 1, '', '', '', '', 0, 0),
(31, 'Gionee', 1, '', '', '', '', 0, 0),
(32, 'BlackBerry', 1, '', '', '', '', 0, 0),
(33, 'BKAV', 1, '', '', '', '', 0, 0),
(34, 'Asus', 1, '', '', '', '', 0, 0),
(35, 'Arbutus', 1, '', '', '', '', 0, 0),
(36, 'Apple', 1, '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tblkhoanggia`
--

CREATE TABLE `tblkhoanggia` (
  `id` int(10) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `giatu` int(10) NOT NULL,
  `giaden` int(10) NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tblkhoanggia`
--

INSERT INTO `tblkhoanggia` (`id`, `title`, `giatu`, `giaden`, `ordernum`, `status`) VALUES
(1, 'Trên 20 triêu', 21000000, 100000000, 0, 0),
(2, '13 triệu - 20 triệu', 13000000, 20000000, 0, 0),
(3, '8 triệu - 13 triệu', 8000000, 13000000, 0, 0),
(4, '5 triệu - 8 triệu', 5000000, 8000000, 0, 0),
(5, '3 triệu - 5 triệu', 3000000, 5000000, 0, 0),
(6, '1 triệu - 3 triệu', 1000000, 3000000, 0, 0),
(7, 'Dưới 1 triệu', 200000, 1000000, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tblkieudang`
--

CREATE TABLE `tblkieudang` (
  `id` int(10) NOT NULL,
  `kieudang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tblkieudang`
--

INSERT INTO `tblkieudang` (`id`, `kieudang`, `ordernum`, `status`) VALUES
(1, 'Kiểu thanh thằng', 0, 0),
(2, 'Kiểu nắp trượt', 0, 0),
(3, 'Kiểu lắp gấp', 0, 0),
(4, 'Kiểu cảm ứng', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tbllienhe`
--

CREATE TABLE `tbllienhe` (
  `id` int(10) NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8 NOT NULL,
  `diachi` varchar(200) CHARACTER SET utf8 NOT NULL,
  `dienthoai` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `noidung` varchar(500) CHARACTER SET utf8 NOT NULL,
  `ngaylienhe` date NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tbllienhe`
--

INSERT INTO `tbllienhe` (`id`, `hoten`, `diachi`, `dienthoai`, `email`, `noidung`, `ngaylienhe`, `status`) VALUES
(1, 'Mrs Hiền', 'Quán Cơm Ta - 86 Nguyễn Trãi ( Gần ngã 5 )', '0936999440', '', '', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblmausac`
--

CREATE TABLE `tblmausac` (
  `id` int(10) NOT NULL,
  `tenmau` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mau` varchar(20) NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tblmausac`
--

INSERT INTO `tblmausac` (`id`, `tenmau`, `mau`, `ordernum`, `status`) VALUES
(1, 'Xanh lam', '0000FF', 0, 0),
(2, 'Tím', 'bf00bf', 0, 0),
(3, 'Nâu', '964b00', 0, 0),
(4, 'Hồng', 'ffc0cb', 0, 0),
(5, 'Đen', '000000', 0, 0),
(6, 'Trắng', 'ffffff', 0, 0),
(7, 'Vàng', 'ffff00', 0, 0),
(8, 'Xám', '808080', 0, 0),
(9, 'Đỏ', 'ff0000', 0, 0),
(10, 'Xanh', '0080ff', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tblmeta`
--

CREATE TABLE `tblmeta` (
  `id` int(10) NOT NULL,
  `title` varchar(500) CHARACTER SET utf8 NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 NOT NULL,
  `keywords` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tblmeta`
--

INSERT INTO `tblmeta` (`id`, `title`, `description`, `keywords`) VALUES
(1, 'Thanh Tuyển Mobile điện thoại xách tay iPhone, Sony, LG, HTC, SamSung', 'Điện thoại xách tay giá rẻ nhất Hà Nội, chuyên hàng xách tay và chính hãng iPhone, Sony, LG, HTC, SamSung, Lenovo, Oppo, Xiaomi, Asus, Sky... bảo hành 12 tháng', 'Mobilecity, điện thoại xách, điện thoại giá rẻ, điện thoại');

-- --------------------------------------------------------

--
-- Structure de la table `tblorder`
--

CREATE TABLE `tblorder` (
  `id` int(10) NOT NULL,
  `baohanhvang` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma` varchar(20) NOT NULL,
  `nguoidang` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) NOT NULL,
  `sanpham` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tongtien` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaydang` date NOT NULL,
  `ghichu` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(50) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tblorder`
--

INSERT INTO `tblorder` (`id`, `baohanhvang`, `ma`, `nguoidang`, `hoten`, `email`, `sanpham`, `diachi`, `tongtien`, `ngaydang`, `ghichu`, `dienthoai`, `status`) VALUES
(29, 'Bảo hành vàng', 'XDkUoWYUW7', '', 'thhh', 'tungvu90@gmail.com', '<table border="0" cellpadding="4" cellspacing="4" width="90%">\r\n                        <tbody>\r\n                            <tr>\r\n                                <td>\r\n                                    <strong>Xin chào thhh!</strong></td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td>\r\n                                    <p>\r\n                                        Chúc mừng Bạn đã đặt hàng thành công từ website\r\nmaynongnghiep. Dưới đây là chi tiết đơn hàng:</p>\r\n                                </td>\r\n                            </tr>\r\n                        </tbody>\r\n                    </table><h3 style="text-align:center"><b>Chi tiết đơn hàng</b></h3>\r\n    <table style="width:100%;border:1px solid #ccc;padding:5px;;border-collapse: collapse;font-size:12px;text-align:center">\r\n                            <tr id="title_table">\r\n                              <td style="border:1px solid #ccc;padding:5px;"><b>STT</b></td>\r\n                              <td style="border:1px solid #ccc;padding:5px;"><b>Tên sản phẩm</b></td>\r\n                              <td style="border:1px solid #ccc;padding:5px;"><b>Ảnh</b></td>\r\n                              <td style="border:1px solid #ccc;padding:5px;"><b>Giá</b></td>\r\n                              <td style="border:1px solid #ccc;padding:5px;"><b>Số lượng</b></td>\r\n                              <td style="border:1px solid #ccc;padding:5px;"><b>Thành tiền</b></td>\r\n                            </tr><tr class="item_or" >\r\n                                  <td style="font-size:13px;border:1px solid #ccc;padding:5px;">1</td>\r\n                                  <td style="text-align:left;font-size:13px;border:1px solid #ccc;padding:5px;"><b>iPhone 6 Cũ Xách tay (Q.tế)</b></td>\r\n                                  <td class="lightbox" style="border:1px solid #ccc;padding:5px;"><img src="http://localhost:8080/thanhtuyen/upload/zju1433924144_thumb.jpg" width="200"/></td>\r\n                                  <td style="text-align:right;border:1px solid #ccc;padding:5px;">8.350.000đ</td>\r\n                                  <td class="lightbox" style="border:1px solid #ccc;padding:5px;">1</td><td class="lightbox" style="border:1px solid #ccc;padding:5px;">8.350.000</td></tr></table><h3>Tổng chi phí phải thanh toán: <span style="color:red">8.350.000 đ + 200000 bảo hành vàng = 8.550.000đ</span></h3>\r\n                <p><h3><b>Thông tin người đặt hàng</b></h3></p>\r\n                <p>Mã: XDkUoWYUW7</p>\r\n                <p>Họ tên: thhh</p>\r\n                <p>Điện thoại: 01664295022</p>\r\n                <p>Email: tungvu90@gmail.com</p>                \r\n                <p>Ghi chú: ggggg</p>\r\n                <p><h3><b>Địa chỉ giao hàng</b></h3>: fggg</p>                \r\n                ', 'fggg', '8.550.000 đ', '2016-04-15', 'ggggg', '01664295022', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblphongcach`
--

CREATE TABLE `tblphongcach` (
  `id` int(10) NOT NULL,
  `phongcach` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tblphongcach`
--

INSERT INTO `tblphongcach` (`id`, `phongcach`, `ordernum`, `status`) VALUES
(1, 'Hiện đại', 0, 0),
(2, 'Trẻ trung', 0, 0),
(3, 'Nữ tính', 0, 0),
(4, 'Nam tính', 0, 0),
(5, 'Doanh nhân', 0, 0),
(6, 'Thời trang', 0, 0),
(7, 'Cổ điển', 0, 0),
(8, 'Cá tính', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tblphukien`
--

CREATE TABLE `tblphukien` (
  `id` int(10) NOT NULL,
  `danhmucphukien` int(10) NOT NULL,
  `danhmucphukiencap2` int(10) NOT NULL,
  `ten` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(200) DEFAULT NULL,
  `anh_thumb` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `thongtin1` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thongtin2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thongtin3` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thongtin4` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thongtin5` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `baohanh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(10) NOT NULL,
  `donvitinh` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaydang` date NOT NULL,
  `giodang` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_des` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tblphukien`
--

INSERT INTO `tblphukien` (`id`, `danhmucphukien`, `danhmucphukiencap2`, `ten`, `anh`, `anh_thumb`, `thongtin1`, `thongtin2`, `thongtin3`, `thongtin4`, `thongtin5`, `baohanh`, `noidung`, `gia`, `donvitinh`, `ngaydang`, `giodang`, `meta_title`, `meta_des`, `keyword`, `ordernum`, `status`) VALUES
(1, 1, 2, 'Pin sạc dự phòng Tuno 2200 mAh', 'upload/oie1414572705.jpg', 'upload/oie1414572705_thumb.jpg', 'Dung lượng: 2200 mAh', 'Input: DC 5V/1A', 'Output: 5V-1A, 5V-2.1A', '', '', '6 tháng', '', 150000, 'đ', '2016-04-13', '12:24 AM', '', '', '', 0, 0),
(2, 1, 1, 'Ổ cắm Xiaomi Power Strip', 'upload/vwf1451795278.jpg', 'upload/vwf1451795278_thumb.jpg', 'ổ cắm 2 chấu, và 3 chấu, 3 cổng USB', 'khả năng chịu nhiệt cao', 'Tích hợp chíp bảo vệ tối ưu', 'Tương thích: Iphone , ipad, Samsung, HTC..', '', '0 tháng', '<p>\n	<strong>Ổ cắm th&ocirc;ng minh Xiaomi</strong> Power Strip&nbsp;ch&iacute;nh h&atilde;ng gi&aacute; rẻ nhất H&agrave; Nội. Ổ&nbsp;cắm Xiaomi Power Strip c&oacute; thiết kế nhỏ gọn &nbsp;được trang bị&nbsp;3 ổ cắm 3 chấu c&ugrave;ng 3 khe cắm USB cho ph&eacute;p người d&ugrave;ng sạc pin smartphone như Apple, Samsung, Sony &nbsp;m&agrave; kh&ocirc;ng cần tới củ sạc. Hơn nữa sản phẩm n&agrave;y c&ograve;n được được t&iacute;ch hợp chip tự điều chỉnh gi&uacute;p bảo vệ thiết nị cũng như độ an to&agrave;n cao cho c&aacute;c sản phẩm kh&aacute;c tăng tuổi thọ của sản phẩm l&ecirc;n Max nhất. V&igrave; vậy ổ&nbsp;cắm Xiaomi Power Strip&nbsp;chắc chắn sẽ tạo n&ecirc;n cớn sốt t&igrave;m mua mạnh mẽ từ ph&iacute;a người d&ugrave;ng.&nbsp;</p>\n', 220000, 'đ', '2016-04-13', '9:44 AM', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tblquangcao`
--

CREATE TABLE `tblquangcao` (
  `id` int(10) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `anh_thumb` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bannertrai` int(1) NOT NULL,
  `bannerphai` int(1) NOT NULL,
  `tren` int(1) NOT NULL,
  `phai` int(1) NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tblquangcao`
--

INSERT INTO `tblquangcao` (`id`, `title`, `anh`, `anh_thumb`, `link`, `bannertrai`, `bannerphai`, `tren`, `phai`, `ordernum`, `status`) VALUES
(1, 'Quảng cáo top', 'upload/quangcaotop.png', 'upload/quangcaotop_thumb.png', '', 0, 0, 1, 0, 0, 0),
(2, 'Quảng cáo 2', 'upload/qc2.png', 'upload/qc2_thumb.png', '', 0, 0, 0, 1, 0, 0),
(3, 'Quảng cáo 3', 'upload/qc1.png', 'upload/qc1_thumb.png', '', 0, 0, 0, 1, 0, 0),
(4, 'banner trái', 'upload/bannertrai.jpg', 'upload/bannertrai_thumb.jpg', '', 1, 0, 0, 0, 0, 0),
(5, 'banner phải', 'upload/bannerphai.jpg', 'upload/bannerphai_thumb.jpg', '', 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tblrole`
--

CREATE TABLE `tblrole` (
  `id` int(10) NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tblrole`
--

INSERT INTO `tblrole` (`id`, `role`) VALUES
(1, 'Administrators'),
(2, 'Biên tập viên');

-- --------------------------------------------------------

--
-- Structure de la table `tblsanpham`
--

CREATE TABLE `tblsanpham` (
  `id` int(10) NOT NULL,
  `danhmucsanpham` int(10) NOT NULL,
  `danhmucsanphamcap2` int(10) NOT NULL,
  `hang` int(10) NOT NULL,
  `phongcach` int(10) NOT NULL,
  `kieudang` int(10) NOT NULL,
  `chucnang` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(200) CHARACTER SET utf8 NOT NULL,
  `baohanh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `khuyenmai1` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `khuyenmai2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `khuyenmai3` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `khuyenmai4` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `khuyenmai5` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `chip` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ram` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hedieuhanh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `manhinh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pin` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `camera` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text CHARACTER SET utf8 NOT NULL,
  `thongsokythuat` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `linkvideo` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `anh_thumb` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `anhnho` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(50) NOT NULL,
  `donvitinh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tinlienquan` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noibat` int(1) NOT NULL,
  `khuyenmai` int(1) NOT NULL,
  `phothong` int(1) NOT NULL,
  `caocap` int(1) NOT NULL,
  `tinhtrang` int(1) NOT NULL,
  `ngaydang` date NOT NULL,
  `giodang` varchar(50) CHARACTER SET utf8 NOT NULL,
  `nguoidang` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `view` int(10) NOT NULL,
  `meta_title` varchar(500) CHARACTER SET utf8 NOT NULL,
  `meta_des` varchar(500) CHARACTER SET utf8 NOT NULL,
  `keyword` varchar(500) CHARACTER SET utf8 NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `tag` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tblsanpham`
--

INSERT INTO `tblsanpham` (`id`, `danhmucsanpham`, `danhmucsanphamcap2`, `hang`, `phongcach`, `kieudang`, `chucnang`, `ten`, `baohanh`, `khuyenmai1`, `khuyenmai2`, `khuyenmai3`, `khuyenmai4`, `khuyenmai5`, `chip`, `ram`, `hedieuhanh`, `manhinh`, `pin`, `camera`, `noidung`, `thongsokythuat`, `linkvideo`, `anh`, `anh_thumb`, `anhnho`, `gia`, `donvitinh`, `tinlienquan`, `noibat`, `khuyenmai`, `phothong`, `caocap`, `tinhtrang`, `ngaydang`, `giodang`, `nguoidang`, `view`, `meta_title`, `meta_des`, `keyword`, `ordernum`, `status`, `tag`) VALUES
(1, 67, 0, 21, 0, 0, '', 'LGG5', '12 tháng', 'Tặng tấm dán màn hình', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm', 'Chip: Quad-core 1.3 GHz', 'Ram: 1.5 GB ROM:8 GB', 'HĐH: Android v5.1 (Lollipop)', 'Màn hình: 5 inches', 'Pin: 2600 mAh', 'Camera: 8 MP', '', '', '', 'upload/LG65.jpg', 'upload/LG65_thumb.jpg', 'null', 16500000, 'đ', '', 0, 1, 0, 0, 0, '2016-04-12', '12:37 PM', 'admin', 6, '', '', '', 0, 0, ''),
(2, 67, 0, 2, 0, 0, '', 'Xiaomi MiPad', '12 tháng', 'Tặng bút cảm ứng', 'Tặng tấm dán màn hình', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Miễn phí cài đặt phần mềm', 'Chip: 4 nhân, 2.2 GHz', 'CPU: 2 GB', 'HĐH: Android 4.4.4', 'Màn hình: HD, 5.0', 'Pin: 3000mAh', 'Camera: 20.7 Mpx', '', '', '', 'upload/xiaomi.jpg', 'upload/xiaomi_thumb.jpg', 'null', 3950000, 'đ', '', 0, 1, 0, 0, 0, '2016-04-12', '12:37 PM', 'admin', 8, '', '', '', 0, 0, ''),
(3, 67, 0, 2, 0, 0, '', 'Xiaomi Mi 4', '6 tháng', 'Tặng tấm dán màn hình trọn đời máy', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm , Nhạc', 'Chip: S801, 2.5GHz', 'Ram: 2GB, ROM : 16/ 64Gb', 'HĐH: Android 4.4', 'Màn hình: 5 inches', 'Pin: 3000mAh', 'Camera: 13MP', '', '', '', 'upload/xiaomi4.jpg', 'upload/xiaomi4_thumb.jpg', 'null', 2850000, 'đ', '', 0, 1, 0, 0, 0, '2016-04-12', '12:37 PM', 'admin', 11, '', '', '', 0, 0, ''),
(4, 67, 0, 21, 0, 0, '', 'LG G4 Cũ', '12 tháng', 'Tặng tấm dán màn hình', 'Giảm giá 35% khi mua aphụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm', 'Chip: Snapdragon 808 dual-core 1.82', 'Ram: 3 GB ROM, 32 GB', 'HĐH: Android OS, v5.0', 'Màn hình: 5.5 inches', 'Pin: Li-Ion 3000 mAh', 'Camera: 16 MP', '', '', '', 'upload/lgg4cu.jpg', 'upload/lgg4cu_thumb.jpg', 'null', 4650000, 'đ', '', 0, 1, 0, 0, 0, '2016-04-12', '12:37 PM', 'admin', 4, '', '', '', 0, 0, ''),
(5, 67, 0, 2, 0, 0, '', 'Xiaomi Redmi Note 3 Pro', '12 tháng', 'Tặng tấm dán màn hình', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm', 'Chip: Snapdragon 650 1.8 GHz', 'Ram: 2/ 3 GB', 'HĐH: Android v5.0 (Lollipop)', 'Màn hình: 5.5 inches', 'Pin: 4000mAh', 'Camera: 16 MPx', '', '', '', 'upload/xiaomiradmi.jpg', 'upload/xiaomiradmi_thumb.jpg', 'null', 3850000, 'đ', '', 0, 0, 1, 0, 0, '2016-04-12', '12:37 PM', 'admin', 0, '', '', '', 0, 0, ''),
(6, 67, 0, 35, 0, 0, '', 'Arbutus AR6 Plus', '12 tháng', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm , Nhạc', '', 'CPU: Quad-core 1.3 GHz', 'Ram: 1GB, ROM : 8GB', 'HĐH: Android 5.1 Lollipop', 'Màn hình: 5 inches', 'Pin: 2.300 mAh', 'Camera: 5 MP', '', '', '', 'upload/arbu.jpg', 'upload/arbu_thumb.jpg', 'null', 2050000, 'đ', '', 0, 0, 1, 0, 0, '2016-04-12', '12:37 PM', 'admin', 1, '', '', '', 0, 0, ''),
(7, 67, 0, 6, 0, 0, '', 'Sony Xperia Z3 Cũ', '6 tháng', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm , Nhạc', '', 'Màn hình: Full HD, 5.2', 'CPU: S801, 4 nhân, 2.5 GHz', 'RAM: 3 GB', 'Hệ điều hành: Android', 'Camera chính: 20.7 MP, Camera phụ: 2.1 MP', 'Bộ nhớ trong: 16 GB', '', '', '', 'upload/sony.jpg', 'upload/sony_thumb.jpg', 'null', 5250000, 'đ', '', 0, 0, 1, 0, 0, '2016-04-12', '12:36 PM', 'admin', 1, '', '', '', 0, 0, ''),
(8, 67, 0, 18, 0, 0, '', 'Meizu Metal', '12 tháng', 'Tặng tấm dán màn hình', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm', 'Chip : Snapdragon 801 2.5 GHz', 'RAM : 3 GB', 'PIN : Li-Ion 3200 mAh', 'HĐH : Android OS, v4.4.4', 'Màn hình : 5.2 inches', 'Camera: 20.7 MPx', '<p>\n	&nbsp;</p>\n', '', '', 'upload/mei.jpg', 'upload/mei_thumb.jpg', 'null', 3550000, 'đ', '', 0, 0, 1, 0, 0, '2016-04-12', '12:36 PM', 'admin', 0, '', '', '', 0, 0, ''),
(9, 67, 0, 6, 0, 0, '', 'Sony Xperia Z3V', '6 tháng', 'Tặng tấm dán màn hình', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm', 'Chip : Snapdragon 801, 2.3GHz', 'RAM : 2GB, ROM : 16Gb', 'PIN : 2600mAh', 'HĐH : Adroid 4.4', 'Màn hình : 5 inches', 'Camera : 4 UltraPixel', '', '', '', 'upload/sony3.jpg', 'upload/sony3_thumb.jpg', 'null', 3550000, 'đ', '', 0, 0, 1, 0, 0, '2016-04-12', '12:36 PM', 'admin', 0, '', '', '', 0, 0, ''),
(10, 67, 0, 6, 0, 0, '', 'Sony Xperia Z1s', '6 tháng', 'Tặng tấm dán màn hình', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm', 'Chip : Snapdragon 810 2.0 GHz', 'RAM : 3 GB ROM, 32 GB', 'PIN : Li-Po 2700 mAh', 'HĐH : Android OS, v5.0', 'Màn hình : 5.2 inches', 'Camera : 20.3 MP', '', '', '', 'upload/medium_vjl1450788590.jpg', 'upload/medium_vjl1450788590_thumb.jpg', 'null', 2550000, 'đ', '', 0, 0, 1, 0, 0, '2016-04-12', '12:36 PM', 'admin', 4, '', '', '', 0, 0, ''),
(11, 67, 0, 36, 0, 0, '', 'iPhone 5 Lock - Nhật Bản', '6 tháng', 'Tặng tấm dán màn hình trọn đời máy', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm , Nhạc , Game', 'Chip : Dual-core 1.3 GHz', 'RAM : 1GB, ROM : 16/32/64Gb', 'PIN : 1440 mAh', 'HĐH : iOs 7.1', 'Màn hình : 4 inches', 'Camera : 8MP', '', '', '', 'upload/iphone5jp.jpg', 'upload/iphone5jp_thumb.jpg', 'null', 1990000, 'đ', '', 0, 0, 1, 0, 0, '2016-04-12', '12:36 PM', 'admin', 4, '', '', '', 0, 0, ''),
(12, 67, 0, 2, 0, 0, '', 'Xiaomi Redmi Note 3', '12 tháng', 'Tặng tấm dán màn hình', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm', 'Chip : Helio X10 2.0 GHz', 'RAM : 2 GB', 'PIN : 4000mAh', 'HĐH : Android v5.0 (Lollipop)', 'Màn hình : 5.5 inches', 'Camera: 13 MPx', '', '', '', 'upload/pfs1456542572.jpg', 'upload/pfs1456542572_thumb.jpg', 'null', 3450000, 'đ', '', 0, 0, 1, 0, 0, '2016-04-12', '12:35 PM', 'admin', 0, '', '', '', 0, 0, ''),
(13, 67, 0, 21, 0, 0, '', 'LG V10 Cũ', '6 tháng', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm , Nhạc', '', 'Màn hình: Full HD, 5.0 inches', 'CPU: Snapdragon 808', 'RAM: 3 GB ROM 64GB', 'Hệ điều hành: Android', 'Camera chính: 13 MP', 'PIN: 3260 mAh', '', '', '', 'upload/snm1452248462.jpg', 'upload/snm1452248462_thumb.jpg', 'null', 8850000, 'đ', '', 0, 0, 0, 1, 0, '2016-04-12', '12:35 PM', 'admin', 2, '', '', '', 0, 0, ''),
(14, 67, 0, 8, 0, 0, '', 'Samsung Galaxy Note 5 cũ', '6 tháng', 'Tặng tấm dán màn hình', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm', 'Chip : Exynos 7420 Octa-core', 'RAM : 4 GB', 'PIN : 3000 mAh', 'HĐH : Android OS, 5.0.1', 'Màn hình : 5.66 inches', 'Camera: 16 MPx', '', '', '', 'upload/zmi1441870703.jpg', 'upload/zmi1441870703_thumb.jpg', 'null', 8850000, 'đ', '', 1, 0, 0, 1, 0, '2016-04-12', '12:35 PM', 'admin', 0, '', '', '', 0, 0, ''),
(15, 67, 0, 8, 0, 0, '', 'Samsung Galaxy Note 5 2 SIM', '12 tháng', 'Tặng tấm dán màn hình', 'Giảm giá 35% khi mua aphụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm', 'Chip : Quad-core 2.1 GHz Cortex-A57', 'RAM : 4 GB ROM : 32 GB', 'HĐH : Android OS, v5.1.1', 'PIN : Li-Ion 3000 mAh', 'Camera: 16 MPx', 'Màn hình : 5.7 inches', '', '', '', 'upload/mon1441024590.JPG', 'upload/mon1441024590_thumb.JPG', 'null', 13950000, 'đ', '', 1, 0, 0, 1, 0, '2016-04-12', '12:35 PM', 'admin', 0, '', '', '', 0, 0, ''),
(16, 67, 0, 2, 0, 0, '', 'Xiaomi Mi5', '12 tháng', 'Tặng bút cảm ứng, tặng tấm dán màn hình', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm', 'Miễn phí cài đặt phần mềm', 'RAM : 4GB, ROM : 32/ 64Gb', 'PIN : Li-Po 3000 mAh', 'HĐH : Android OS, v6.0', 'Màn hình : 5.15 inches', 'Camera : 16 MP', '', '', '', 'upload/byw1451290496.jpg', 'upload/byw1451290496_thumb.jpg', 'null', 7550000, 'đ', '', 1, 0, 0, 1, 0, '2016-04-12', '12:35 PM', 'admin', 4, '', '', '', 0, 0, ''),
(17, 67, 0, 2, 0, 0, '', 'Xiaomi Mi Note Pro', '12 tháng', 'Tặng bút cảm ứng', 'Tặng tấm dán màn hình', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000, Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm', 'Chip : Apple A8, 64-bit', 'RAM : 1GB, ROM : 16/64/128 GB', 'PIN : 2950 mAh', 'HĐH : iOs 8', 'Màn hình : 5.5 inches', 'Camera : 8 MP', '', '', '', 'upload/vlv1433410854.jpg', 'upload/vlv1433410854_thumb.jpg', 'null', 6750000, 'đ', '', 1, 0, 0, 1, 0, '2016-04-12', '12:35 PM', 'admin', 1, '', '', '', 0, 0, ''),
(18, 67, 0, 9, 0, 0, '', 'Samsung Galaxy S6 Cũ', '6 tháng', 'Tặng tấm dán màn hình trọn đời máy', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm , Nhạc', 'CPU: Exynos 1.5 Ghz, 2.1 Ghz', 'Màn hình: 5.1', 'RAM: 3 GB', 'Camera: 16 Mpx', 'Hệ điều hành: Android 5.0.1', 'Pin: 2550 mAh', '', '', '', 'upload/tus1441872543.png', 'upload/tus1441872543_thumb.png', 'null', 6150000, 'đ', '', 1, 0, 0, 1, 0, '2016-04-12', '12:34 PM', 'admin', 2, '', '', '', 0, 0, '');
INSERT INTO `tblsanpham` (`id`, `danhmucsanpham`, `danhmucsanphamcap2`, `hang`, `phongcach`, `kieudang`, `chucnang`, `ten`, `baohanh`, `khuyenmai1`, `khuyenmai2`, `khuyenmai3`, `khuyenmai4`, `khuyenmai5`, `chip`, `ram`, `hedieuhanh`, `manhinh`, `pin`, `camera`, `noidung`, `thongsokythuat`, `linkvideo`, `anh`, `anh_thumb`, `anhnho`, `gia`, `donvitinh`, `tinlienquan`, `noibat`, `khuyenmai`, `phothong`, `caocap`, `tinhtrang`, `ngaydang`, `giodang`, `nguoidang`, `view`, `meta_title`, `meta_des`, `keyword`, `ordernum`, `status`, `tag`) VALUES
(19, 67, 0, 36, 0, 0, ',1,2,3,4,5,6,7,8,9', 'iPhone 6 Cũ Xách tay (Q.tế)', '6 tháng', 'Tặng bút cảm ứng, tặng tấm dán màn hình', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Voucher giảm giá mua máy 50.000', 'Miễn phí cài đặt phần mềm', 'Chip : Apple A8, 64-bit', 'RAM : 1GB, ROM : 16/64/128 GB', 'PIN : 1560mAh', 'HĐH : iOs 8', 'Màn hình : 4.7 inches', 'Camera : 8 MP', '<p>\n	<strong>iPhone 6 cũ</strong>&nbsp;x&aacute;ch tay quốc tế, gi&aacute; rẻ nhất chỉ c&oacute; tại MobileCity 120 Th&aacute;i H&agrave;, Đống Đa, H&agrave; Nội, ✓Nguy&ecirc;n bản 100%.✓Bảo h&agrave;nh 6 th&aacute;ng.✓Tặng voucher 100k.✓Tặng 1 năm d&aacute;n m&agrave;n h&igrave;nh khi mua iPhone 6 cũ x&aacute;ch tay. C&aacute;c sản phẩm b&aacute;n ra đều được kiểm tra chọn lọc kỹ lưỡng trước khi đến tay người ti&ecirc;u d&ugrave;ng c&aacute;c sản phẩm đều c&oacute; h&igrave;nh thức đẹp v&agrave; lu&ocirc;n hoạt động ổn định, Lựa chọn bảo h&agrave;nh l&ecirc;n đến 6 th&aacute;ng bao gồm cả nguồn v&agrave; m&agrave;n h&igrave;nh tại MobileCity. Mua ngay sản phẩm iPhone 6 cũ gi&aacute; tốt nhất tại MobileCity.</p>\n<p>\n	L&agrave; đơn vị chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm x&aacute;ch tay ch&iacute;nh h&atilde;ng của Apple, MobileCity lu&ocirc;n tự h&agrave;o l&agrave; địa chỉ mua iPhone 6 cũ uy t&iacute;n nhất tại H&agrave; Nội&nbsp;ch&uacute;ng t&ocirc;i ch&uacute; trọng đến chất lượng sản phẩm, quy tr&igrave;nh b&aacute;n h&agrave;ng v&agrave; sau b&aacute;n h&agrave;ng c&ugrave;ng chế độ bảo h&agrave;nh tốt nhất.</p>\n<p style="text-align: center;">\n	<a href="http://mobilecity.vn/tin-tuc/huong-dan-mua-hang-tra-gop-tai-mobilecity-120-thai-ha-129.html"><img alt="" height="300" src="https://lh3.googleusercontent.com/-UOLkqhr8SpA/Vr6e9Ixg9xI/AAAAAAAAOa0/4hEPgu4BdDI/w1132-h354-no/Tra-gop-MobileCity-120-Thai-Ha.jpg" width="960" /></a></p>\n<h2>\n	TOP 5 l&yacute; do bạn n&ecirc;n mua iPhone 6 cũ tại MobileCity</h2>\n<ul>\n	<li>\n		Sản phẩm iPhone 6 đ&atilde; qua sử dụng được kiểm tra kỹ lưỡng về cả h&igrave;nh thức v&agrave; hiệu năng rất cẩn thận.</li>\n	<li>\n		Ch&uacute;ng t&ocirc;i c&oacute; chế độ đổi mới miễn ph&iacute; cho kh&aacute;ch h&agrave;ng mua iPhone 6 cũ x&aacute;ch tay trong 15 ng&agrave;y đầu ti&ecirc;n nếu c&oacute; lỗi.</li>\n	<li>\n		Bạn sẽ nhận được chất lượng dịch vụ tốt nhất hiện nay. Với đội ngủ nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng, kỹ thuật chuy&ecirc;n nghiệp v&agrave; nhiệt t&igrave;nh.</li>\n	<li>\n		Được bảo h&agrave;nh nguồn v&agrave; m&agrave;n h&igrave;nh 12 th&aacute;ng chỉ với 300.000 đồng</li>\n	<li>\n		Nhận ngay vocher giảm gi&aacute; + qu&agrave; tặng trị gi&aacute; 300.000 đồng</li>\n</ul>\n<h3>\n	Update Bảng gi&aacute; iPhone 6 cũ x&aacute;ch tay phi&ecirc;n bản quốc tế tại MobileCity</h3>\n<div>\n	<table border="0" cellpadding="0" cellspacing="0" style="height: 156px; width: 691px;">\n		<tbody>\n			<tr>\n				<td class="xl70" height="20" style="text-align: center;" width="64">\n					STT</td>\n				<td class="xl70" width="230">\n					Nội dung</td>\n				<td class="xl70" width="230">\n					Kiểu</td>\n				<td class="xl69" width="64">\n					Gi&aacute;</td>\n				<td class="xl70" width="64">\n					Bảo h&agrave;nh</td>\n			</tr>\n			<tr>\n				<td class="xl65" height="20">\n					1</td>\n				<td>\n					iPhone 6 cũ 16GB&nbsp;(Đen)</td>\n				<td>\n					Tặng d&aacute;n m&agrave;n h&igrave;nh, Voucher 100K</td>\n				<td class="xl66">\n					8.350.000</td>\n				<td class="xl65">\n					6 th&aacute;ng</td>\n			</tr>\n			<tr>\n				<td class="xl65" height="20">\n					2</td>\n				<td>\n					iPhone 6 cũ 16GB&nbsp;(Trắng)</td>\n				<td>\n					Tặng d&aacute;n m&agrave;n h&igrave;nh, Voucher 100K</td>\n				<td class="xl66">\n					8.850.000</td>\n				<td class="xl65">\n					6 th&aacute;ng</td>\n			</tr>\n			<tr>\n				<td class="xl70" height="20">\n					3</td>\n				<td class="xl67">\n					iPhone 6 cũ 16GB&nbsp;(V&agrave;ng)&nbsp;</td>\n				<td class="xl67">\n					Tặng d&aacute;n m&agrave;n h&igrave;nh, Voucher 100K</td>\n				<td class="xl68">\n					9.350.000</td>\n				<td class="xl70">\n					6 th&aacute;ng</td>\n			</tr>\n			<tr>\n				<td class="xl70" height="20">\n					4</td>\n				<td class="xl67">\n					iPhone 6 mới 16GB&nbsp;(Đen)&nbsp;</td>\n				<td class="xl67">\n					M&aacute;y mới, fullbox, đầy đủ phụ kiện</td>\n				<td class="xl68">\n					9,350,000</td>\n				<td class="xl70">\n					12 th&aacute;ng</td>\n			</tr>\n			<tr>\n				<td class="xl65" height="20">\n					5</td>\n				<td>\n					iPhone 6 mới 16GB&nbsp;(Trắng)</td>\n				<td>\n					M&aacute;y mới, fullbox, đầy đủ phụ kiện</td>\n				<td class="xl66">\n					9.850.000</td>\n				<td class="xl65">\n					12 th&aacute;ng</td>\n			</tr>\n			<tr>\n				<td class="xl65" height="20">\n					6</td>\n				<td>\n					iPhone 6 mới 16GB&nbsp;(V&agrave;ng)</td>\n				<td>\n					M&aacute;y mới, fullbox, đầy đủ phụ kiện</td>\n				<td class="xl66">\n					10,350,000</td>\n				<td class="xl65">\n					12 th&aacute;ng<br />\n					&nbsp;</td>\n			</tr>\n		</tbody>\n	</table>\n	<p>\n		<span style="text-decoration: underline;"><strong>Ghi ch&uacute;:</strong></span>&nbsp;Phi&ecirc;n bản 64GB = Phi&ecirc;n bản (16GB) + 1.000.000đ. Phi&ecirc;n bản 128GB qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ v&agrave;o Hotline:&nbsp;<span style="color: #ff0000;"><strong><img class="skype_c2c_logo_img" height="0" src="resource://skype_ff_extension-at-jetpack/skype_ff_extension/data/call_skype_logo.png" width="0" /><span class="skype_c2c_text_span">0969.120.120</span></strong></span></p>\n	<p>\n		<a href="http://mobilecity.vn/tin-khuyen-mai/hot-mobilecity-khuyen-mai-lon-tai-chi-nhanh-ho-chi-minh-1067.html"><img alt="" height="150" src="http://media.mobilecity.vn/media/Banner-Bai-Viet-MobileCity-Sai-Gon.jpg" style="display: block; margin-left: auto; margin-right: auto;" width="930" /></a></p>\n	<h3>\n		<strong>Địa chỉ chọn mua iPhone 6 cũ x&aacute;ch tay gi&aacute; rẻ</strong></h3>\n	<p>\n		<strong>Khu vực TP. H&agrave; Nội:&nbsp;</strong>Số 120 Th&aacute;i H&agrave;, Đống Đa, H&agrave; Nội.&nbsp;<span style="color: #ff0000;"><strong>Hotline:&nbsp;<span class="skype_c2c_container notranslate" data-isfreecall="false" data-ismobile="false" data-isrtl="false" data-numbertocall="+84969120120" data-numbertype="paid" dir="ltr" id="skype_c2c_container" tabindex="-1"><span class="skype_c2c_highlighting_inactive_common" dir="ltr" skypeaction="skype_dropdown"><span class="skype_c2c_textarea_span" id="non_free_num_ui"><img class="skype_c2c_logo_img" height="0" src="resource://skype_ff_extension-at-jetpack/skype_ff_extension/data/call_skype_logo.png" width="0" /><span class="skype_c2c_text_span">0969.120.120</span></span></span></span></strong></span><br />\n		<strong>Khu vực TP. Hồ Ch&iacute; Minh:&nbsp;</strong>123 Trần Quang Khải, P. T&acirc;n Định, Q.1, HCM.&nbsp;<span style="color: #ff0000;"><strong>Hotline: <span class="skype_c2c_container notranslate" data-isfreecall="false" data-ismobile="false" data-isrtl="false" data-numbertocall="+84965123123" data-numbertype="paid" dir="ltr" id="skype_c2c_container" tabindex="-1"><span class="skype_c2c_highlighting_inactive_common" dir="ltr" skypeaction="skype_dropdown"><span class="skype_c2c_textarea_span" id="non_free_num_ui"><img class="skype_c2c_logo_img" height="0" src="resource://skype_ff_extension-at-jetpack/skype_ff_extension/data/call_skype_logo.png" width="0" /><span class="skype_c2c_text_span">0965.123.123</span></span></span></span></strong></span></p>\n	<p>\n		Gi&aacute; sản phẩm &amp; c&aacute;c chương tr&igrave;nh khuyến m&atilde;i tại chi nh&aacute;nh Hồ Ch&iacute; Minh c&oacute; thể thay đổi so với chi nh&aacute;nh H&agrave; Nội. Qu&yacute; kh&aacute;ch tại TPHCM vui l&ograve;ng li&ecirc;n hệ&nbsp;<span style="color: #ff0000;"><strong>Hotline <span class="skype_c2c_container notranslate" data-isfreecall="false" data-ismobile="false" data-isrtl="false" data-numbertocall="+84965123123" data-numbertype="paid" dir="ltr" id="skype_c2c_container" tabindex="-1"><span class="skype_c2c_highlighting_inactive_common" dir="ltr" skypeaction="skype_dropdown"><span class="skype_c2c_textarea_span" id="non_free_num_ui"><img class="skype_c2c_logo_img" height="0" src="resource://skype_ff_extension-at-jetpack/skype_ff_extension/data/call_skype_logo.png" width="0" /><span class="skype_c2c_text_span">0965 123 123</span></span></span></span></strong></span>&nbsp;để được tư vấn &amp; phục vụ.</p>\n</div>\n<h3>\n	Nguồn gốc sản phẩm iPhone 6 cũ tại MobileCity</h3>\n<div>\n	iPhone 6 cũ x&aacute;ch tay với đầy đủ c&aacute;c phi&ecirc;n bản 16Gb/64Gb/128Gb được x&aacute;ch tay trực tiếp từ c&aacute;c thị trường lớn như&nbsp;Mỹ, Canada, Ch&acirc;u &Acirc;u.Trước khi đưa sản phẩm đến tay người ti&ecirc;u d&ugrave;ng đ&atilde; trải qua qu&aacute; tr&igrave;nh kiểm tra, đ&aacute;nh gi&aacute; với quy tr&igrave;nh khắt khe v&agrave; được thực hiện bởi đội ngũ chuy&ecirc;n kỹ thuật tay nghề cao.&nbsp;</div>\n<div>\n	<strong><img alt="MobileCity 120 Thái Hà- Đống Đa – Hà Nội địa chỉ tin cậy chất lượng cao." height="400" src="https://lh5.googleusercontent.com/-tv2ubcYPJKM/VjiX4rpC8gI/AAAAAAAABWg/uwBSXUCp2x4/w757-h509-no/MobileCity-01.png" style="display: block; margin-left: auto; margin-right: auto;" title="MobileCity 120 Thái Hà- Đống Đa – Hà Nội địa chỉ tin cậy chất lượng cao." width="595" /></strong></div>\n<div>\n	<h2>\n		iPhone 6 cũ x&aacute;ch tay c&oacute; mức gi&aacute; rẻ nhất tại MobileCity</h2>\n	<div>\n		Với mong muốn mang lại cho kh&aacute;ch h&agrave;ng sản phẩm chất lượng nhất với mức gi&aacute; ph&ugrave; hợp nhất, MobileCity lu&ocirc;n ch&uacute; trọng đến gi&aacute; cả của sản phẩm tối ưu mọi chi ph&iacute; giảm gi&aacute; th&agrave;nh sản phẩm ph&ugrave; hợp với t&uacute;i tiền người ti&ecirc;u d&ugrave;ng để kh&aacute;ch h&agrave;ng dễ d&agrave;ng tiếp cận với c&ocirc;ng nghệ mới nhất.</div>\n	<div>\n		Mua <a href="http://mobilecity.vn/apple/iphone-6-cu-xach-tay-q-te-prd693.html" title="iphone 6 cũ xách tay"><strong>iPhone 6 cũ</strong></a> với mức gi&aacute; rẻ nhất H&agrave; Nội tại MobileCity với mức gi&aacute; hơn 9 triệu đồng c&ugrave;ng c&aacute;c phần qu&agrave; v&agrave; khuyến mại đi k&egrave;m c&ugrave;ng chế độ chăm s&oacute;c v&agrave; bảo h&agrave;nh tốt nhất hiện nay.</div>\n</div>\n<div>\n	<h3>\n		Ch&iacute;nh s&aacute;ch bảo h&agrave;nh khi mua iPhone 6 h&agrave;ng cũ tại MobileCity</h3>\n</div>\n<div>\n	Khi mua sản phẩm c&ocirc;ng nghệ th&igrave; bảo h&agrave;nh l&agrave; điều m&agrave; kh&aacute;ch h&agrave;ng lu&ocirc;n quan t&acirc;m nhất, đặc biệt với c&aacute;c sản phẩm đ&atilde; qua sử dụng như iPhone 6 cũ x&aacute;ch tay th&igrave; chế độ bảo h&agrave;nh l&agrave; kh&ocirc;ng thể bỏ qua. Tại MobileCity ch&uacute;ng t&ocirc;i lu&ocirc;n ch&uacute; trọng đến chế độ bảo h&agrave;nh c&aacute;c sản phẩm nhằm đảm bảo lợi &iacute;ch tốt nhất cho kh&aacute;ch h&agrave;ng của m&igrave;nh.&nbsp;</div>\n<div>\n	- C&aacute;c sản phẩm iPhone 6 cũ đều được bảo h&agrave;nh 12 th&aacute;ng phần cứng (chưa bao gồm nguồn v&agrave; m&agrave;n h&igrave;nh), đổi mới trong 15 ng&agrave;y kể từ ng&agrave;y mua h&agrave;ng nếu lỗi do nh&agrave; sản xuất.<br />\n	- Với những m&aacute;y&nbsp;đ&atilde; mua g&oacute;i bảo h&agrave;nh v&agrave;ng của Mobile City c&aacute;c bạn được thay mới nguồn v&agrave; m&agrave;n h&igrave;nh trong trường hợp lỗi do nh&agrave; sản xuất trong suốt 6 th&aacute;ng.</div>\n<div>\n	- Được hỗ trợ phần mềm miễn ph&iacute; trọn đời m&aacute;y, c&agrave;i game, ứng dụng , c&agrave;i những phi&ecirc;n bản phần mềm mới nhất, tốt nhất.</div>\n<div>\n	<span style="text-decoration: underline;">Ch&uacute; &yacute;:</span>&nbsp;C&aacute;c sản phẩm chỉ được bảo h&agrave;nh khi do lỗi của nh&agrave; sản xuất v&agrave; phải c&ograve;n nguy&ecirc;n tem bảo h&agrave;nh. Với g&oacute;i bảo h&agrave;nh v&agrave;ng kh&aacute;ch h&agrave;ng sẽ được trợ gi&aacute; với c&aacute;c lỗi kh&ocirc;ng do nh&agrave; sản xuất.</div>\n<div>\n	&nbsp;</div>\n<div>\n	<strong>Bảo h&agrave;nh v&agrave;ng l&agrave; g&igrave;? Lợi &iacute;ch g&igrave; từ g&oacute;i Bảo h&agrave;nh v&agrave;ng 200.000 đồng với iPhone 6 cũ</strong></div>\n<div>\n	&nbsp;</div>\n<div>\n	Bảo h&agrave;nh v&agrave;ng l&agrave; một trong những g&oacute;i bảo h&agrave;nh cao nhất m&agrave; MobileCity cung cấp cho kh&aacute;ch h&agrave;ng. Qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; thể t&ugrave;y &yacute; lựa chọn mua hoặc kh&ocirc;ng mua g&oacute;i bảo h&agrave;nh v&agrave;ng n&agrave;y.&nbsp;Đối với c&aacute;c m&aacute;y đ&atilde; qua sử dụng gi&aacute; g&oacute;i bảo h&agrave;nh v&agrave;ng l&agrave; 200K, đối với m&aacute;y mới l&agrave; 300K l&agrave; mức qu&aacute; qu&aacute; rẻ cho việc đảm bảo sức khỏe cho thiết bi iPhone 6 cũ x&aacute;ch tay của bạn.</div>\n<div>\n	&nbsp;✓ Bảo h&agrave;nh nguồn v&agrave; m&agrave;n h&igrave;nh trong v&ograve;ng 6 th&aacute;ng</div>\n<div>\n	&nbsp;✓ 1 đổi 1 trong v&ograve;ng 15 ng&agrave;y</div>\n<div>\n	&nbsp;✓ Được trợ gi&aacute; khi sửa chữa hoặc thay thế với c&aacute;c lỗi kh&ocirc;ng do nh&agrave; sản xuất</div>\n<div>\n	&nbsp;✓ Bảo h&agrave;nh miễn ph&iacute; với c&aacute;c lỗi cơ bản tr&ecirc;n thiết bị iPhone 6 h&agrave;ng cũ</div>\n<h3>\n	Quy tr&igrave;nh kiểm tra iPhone 6 cũ v&agrave; chuyển h&agrave;ng đi xa tại MobileCity</h3>\n<p>\n	Nhằm đảm bảo lợi &iacute;ch v&agrave; quyền lợi tốt nhất cho kh&aacute;ch h&agrave;ng đặt h&agrave;ng từ xa, MobileCity x&acirc;y dựng quy tr&igrave;nh kiểm tra v&agrave; gửi h&agrave;ng đi xa một c&aacute;c chặt chẽ v&agrave; đảm bảo mọi lợi &iacute;ch của kh&aacute;ch h&agrave;ng.&nbsp;</p>\n<ul>\n	<li>\n		Bước 1: Tiếp nhận đơn h&agrave;ng từ xa của kh&aacute;ch h&agrave;ng, xin th&ocirc;ng tin về nh&agrave; mạng kh&aacute;ch h&agrave;ng đang sử dụng để tiện Fix lỗi</li>\n	<li>\n		Bước 2: Lựa chọn một chiếc iPhone 6 cũ x&aacute;ch tay tốt nhất, chụp ảnh c&aacute;c g&oacute;c cạnh v&agrave; gửi mail cho kh&aacute;ch h&agrave;ng</li>\n	<li>\n		Bước 3: Tiến h&agrave;nh test về c&aacute;c chức năng, phần mềm của m&aacute;y</li>\n	<li>\n		Bước 4: Chuyển m&aacute;y cho bộ phận kỹ thuật tiến h&agrave;nh test lỗi tr&ecirc;n iPhone 6 cũ v&agrave; c&agrave;i đặt phần mềm theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</li>\n	<li>\n		Bước 5: Gửi tặng kh&aacute;ch c&aacute;c khuyến m&atilde;i đi k&egrave;m nếu c&oacute;</li>\n	<li>\n		Bước 6: Đ&oacute;ng g&oacute;i sản phẩm v&agrave; chuyển đến bưu cục của ViettelPost</li>\n	<li>\n		Bước 7: Th&ocirc;ng b&aacute;o tới kh&aacute;ch h&agrave;ng đ&atilde; chuyển h&agrave;ng v&agrave; gửi kh&aacute;ch m&atilde; vận đơn, Kiểm tra h&agrave;nh tr&igrave;nh đường thư của g&oacute;i h&agrave;ng</li>\n	<li>\n		Bước 8: X&aacute;c nhận lại th&ocirc;ng tin g&oacute;i h&agrave;ng khi kh&aacute;ch h&agrave;ng đ&atilde; nhận được sản phẩm</li>\n	<li>\n		Bước 9: Chăm s&oacute;c kh&aacute;ch h&agrave;ng về chất lượng của sản phẩm v&agrave; dịch vụ của MobileCity!</li>\n</ul>\n<h3>\n	<strong>Video hướng dẫn test v&agrave; kiểm tra iPhone 6 cũ trước khi lựa chọn mua</strong></h3>\n<p style="text-align: center;">\n	<iframe frameborder="0" height="315" src="https://www.youtube.com/embed/0rp-lzzB3AM" style="display: block; margin-left: auto; margin-right: auto;" width="560"></iframe><em>Hướng dẫn kiểm tra/ test Apple iPhone 6 cũ trước khi mua</em></p>\n<p>\n	Với m&ocirc;̣t mức gi&aacute; m&ecirc;̀m bạn đ&atilde; c&oacute; th&ecirc;̉ sở hữu cho m&igrave;nh chi&ecirc;́c&nbsp;<strong>iPhone 6 cũ</strong>&nbsp;với thi&ecirc;́t k&ecirc;́ đẹp, c&acirc;́u h&igrave;nh &ocirc;̉n định v&agrave; hi&ecirc;̣u năng mạnh mẽ c&ugrave;ng với thời lượng PIN t&ocirc;́t vừa đủ d&ugrave;ng cho bạn m&ocirc;̣t ng&agrave;y b&igrave;nh thường v&agrave; &ocirc;̉n định.</p>\n<p style="text-align: center;">\n	<img alt="iphone 6 cu xach tay gia tot" height="337" src="https://lh3.googleusercontent.com/-glkiOUGtI6k/VgyWeeIt_tI/AAAAAAAAIY8/1Abg0jT8prw/w600-h337-no/iPhone-6-cu-Quoc-Te-MobileCity-1.jpg" title="iPhone 6 cũ một lựa chọn cực tốt cho người dùng không dư giả" width="600" /></p>\n<p style="text-align: center;">\n	<em>iPhone 6 h&agrave;ng cũ một lựa chọn cực tốt cho người d&ugrave;ng kh&ocirc;ng dư giả</em></p>\n<p>\n	<strong>iPhone 6 cũ x&aacute;ch tay v&agrave; những lợi thế d&agrave;nh cho người d&ugrave;ng c&oacute; kinh tế eo hẹp</strong></p>\n<p>\n	L&agrave; m&ocirc;̣t sản ph&acirc;̉m cao c&acirc;́p đ&ecirc;́n từ Apple, iPhone 6 đang c&oacute; gi&aacute; r&acirc;́t cao so với thu nh&acirc;̣p trung b&igrave;nh của lao đ&ocirc;̣ng Vi&ecirc;̣t Nam, Tuy nhi&ecirc;n lựa chọn m&ocirc;̣t chi&ecirc;́c iPhone 6 cũ x&aacute;ch tay x&aacute;ch tay th&igrave; sẽ l&agrave; m&ocirc;̣t lựa chọn hợp l&yacute; cho người ti&ecirc;u d&ugrave;ng. Đi&ecirc;̀u n&agrave;y gi&uacute;p bạn ti&ecirc;́t ki&ecirc;̣m được m&ocirc;̣t khoản ti&ecirc;̀n c&oacute; th&ecirc;̉ sử dụng v&agrave;o c&ocirc;ng vi&ecirc;̣c quan trọng hơn hay n&acirc;ng c&acirc;́p c&aacute;c sản ph&acirc;̉m c&ocirc;ng ngh&ecirc;̣ kh&aacute;c của bạn.&nbsp;Tại MobileCity chỉ với khoảng 10 triệu đồng l&agrave; bạn đ&atilde; c&oacute; thể sở hữu một chiếc điện thoại iPhone 6 phi&ecirc;n bản Quốc tế l&agrave; m&ocirc;̣t mức gi&aacute; đ&aacute;ng đ&ecirc;̉ trải nghi&ecirc;̣m những c&ocirc;ng ngh&ecirc;̣ mới đ&ecirc;́n từ Apple n&agrave;y r&ocirc;̀i, ngo&agrave;i ra bạn c&ograve;n nhận được v&ocirc; số qu&agrave; tặng khi mua iPhone 6 cũ x&aacute;ch tay tại MobileCity.</p>\n<p style="text-align: center;">\n	<img alt="iphone 6 cu xach tay gia tot" height="337" src="https://lh3.googleusercontent.com/-lxSiDGS8mNs/VgyWeTZz1OI/AAAAAAAAIZM/rZbyko22HQM/w600-h337-no/iPhone-6-cu-Quoc-Te-MobileCity-3.jpg" title="iPhone 6 cũ Quốc tế và những lợi thế dành cho người dùng có kinh tế eo hẹp" width="600" /></p>\n<p style="text-align: center;">\n	<em>iPhone 6 cũ v&agrave; những lợi thế d&agrave;nh cho người d&ugrave;ng c&oacute; kinh tế eo hẹp</em></p>\n<p>\n	<strong>Trải nghiệm c&ocirc;ng nghệ mới tr&ecirc;n iPhone 6 <strong>cũ&nbsp;</strong>x&aacute;ch tay bản Quốc tế</strong></p>\n<p>\n	Người d&ugrave;ng vẫn c&oacute; thể trải nghiệm tốt sản phẩm n&agrave;y tr&ecirc;n chiếc iPhone 6 cũ x&aacute;ch tay bản Quốc tế m&agrave; kh&ocirc;ng gặp bất cứ kh&oacute; khăn g&igrave;. Sản phẩm iphone 6 h&agrave;ng cũ c&oacute; c&ocirc;ng nghệ TouchID, dung lượng PIN cao 1810 mAh, k&iacute;ch thước m&agrave;n h&igrave;nh rộng 4.7 inches thiết kế đẹp v&agrave; hiệu năng cao qu&aacute; đ&aacute;nh gi&aacute; Antutu bechmark iPhone 6 cho điểm tới 45000 điểm đ&acirc;y l&agrave; một con số qu&aacute; ấn tượng cho một chiếc điện thoại c&oacute; RAM 1GB v&agrave; vi xử l&yacute; với xung nhịp 1.3 GHz. Việc n&acirc;ng cấp dung lượng PIN v&agrave; m&agrave;n h&igrave;nh của IP6 đ&atilde; nhận được rất nhiều lời ca ngợi từ người d&ugrave;ng, đ&acirc;y cũng l&agrave; một t&iacute;n hiệu cho biết Apple lu&ocirc;n lắng nghe người d&ugrave;ng chứ kh&ocirc;ng hẳn qu&aacute; độc đo&aacute;n giống như những g&igrave; người kh&aacute;c n&oacute;i về m&igrave;nh.</p>\n<p style="text-align: center;">\n	<img alt="iphone 6 cu xach tay gia tot" height="337" src="https://lh3.googleusercontent.com/-eVyHlCG2AfM/VgyWeoGoB_I/AAAAAAAAIZI/ZoyGGAhCTDk/w600-h337-no/iPhone-6-cu-Quoc-Te-MobileCity-2.jpg" title="Vẫn trải nghiệm được mọi công nghệ mới trên iPhone 6 cũ phiên bản Quốc tế" width="600" /></p>\n<p style="text-align: center;">\n	<em>Vẫn trải nghiệm được mọi c&ocirc;ng nghệ mới tr&ecirc;n iPhone 6 cũ x&aacute;ch tay bản Quốc tế</em></p>\n<p>\n	V&iacute; dụ nếu bạn l&agrave; một người y&ecirc;u c&ocirc;ng nghệ v&agrave; hay c&oacute; những thay đổi trong điện thoại th&igrave; việc lựa chọn iPhone 6 cũ x&aacute;ch tay cực kỳ ch&iacute;nh x&aacute;c đơn giản bởi 2 l&yacute; do như sau. iPhone l&agrave; d&ograve;ng điện thoại c&oacute; gi&aacute; th&agrave;nh &iacute;t biến động nhiều nhất c&oacute; thể n&oacute;i đến b&acirc;y giờ như c&aacute;c sản phẩm iPhone 4, 4s hay gần hơn l&agrave; iPhone 5, 5s cũ đều c&oacute; những mức gi&aacute; &iacute;t biến động kh&aacute;c hẳn với d&ograve;ng Android v&igrave; thế iphone 6 cũ l&agrave; lựa chọn ph&ugrave; hợp cho những ai c&oacute; &yacute; định sử dụng m&aacute;y l&acirc;u d&agrave;i v&agrave; ổn định. Vấn đề n&agrave;y đồng nghĩa với việc nếu bạn c&oacute; nhu cầu b&aacute;n ra cũng sẽ lỗ rất &iacute;t. V&agrave; hơn h&ecirc;́t với iPhone 6 cũ x&aacute;ch tay phi&ecirc;n bản qu&ocirc;́c t&ecirc;́ sẽ gi&uacute;p bạn g&acirc;̀n hơn với vi&ecirc;̣c ti&ecirc;́p c&acirc;̣n c&ocirc;ng ngh&ecirc;̣ mới nh&acirc;́t hi&ecirc;̣n nay.&nbsp;</p>\n<p style="text-align: center;">\n	<img alt="iphone 6 cu xach tay gia tot" height="450" src="https://lh3.googleusercontent.com/--W5i4rR8G3g/VgyWfEdcsBI/AAAAAAAAIZU/xRBu4VJqzx0/w600-h450-no/iPhone-6-cu-Quoc-Te-MobileCity-5.jpg" title="Vẫn trải nghiệm được mọi công nghệ mới trên iPhone 6 cũ phiên bản Quốc tế" width="600" /></p>\n<p style="text-align: center;">\n	<em>Vẫn trải nghiệm được mọi c&ocirc;ng nghệ mới tr&ecirc;n iPhone 6 cũ phi&ecirc;n bản Quốc tế</em></p>\n<p>\n	<strong>Thiết kế của iPhone 6 <strong>cũ </strong> x&aacute;ch tay bản Quốc tế</strong></p>\n<p>\n	Nhiều người cho rằng những cải thiện về thiết kế của&nbsp;iPhone 6 cũ&nbsp;phi&ecirc;n bản Quốc tế&nbsp;thật sự kh&ocirc;ng ph&ugrave; hợp với c&aacute;c d&ograve;ng sản phẩm bậy giờ tuy nhi&ecirc;n nếu qa trải nghiệm bạn sẽ thấy nhiều sự kh&aacute;c biệt về c&aacute;c cạnh viền được bo tr&ograve;n giảm thiếu tối đa việc m&oacute;c hay xứt viền như iPhone 5 trước đ&acirc;y. Ngo&agrave;i ra việc n&acirc;ng cấp k&iacute;ch thước m&agrave;n h&igrave;nh cũng l&agrave; điểm l&agrave; iPhone 6 được người d&ugrave;ng đ&aacute;nh gi&aacute; cao về sản phẩm n&agrave;y.</p>\n<p>\n	<img alt="iphone 6 cu xach tay gia tot" height="337" src="https://lh3.googleusercontent.com/-HCV8mVQDyu8/VgyWe8EFVOI/AAAAAAAAIZQ/ktd8lFgCnaw/w600-h337-no/iPhone-6-cu-Quoc-Te-MobileCity-4.jpg" style="display: block; margin-left: auto; margin-right: auto;" title="Thiết kế của iPhone 6 cũ xách tay Quốc tế" width="600" /></p>\n<p style="text-align: center;">\n	<em>D&ugrave; l&agrave; h&agrave;ng mới hay cũ th&igrave; thiết kế của iPhone 6 mang lại sự thanh lịch v&agrave; đẹp mắt.</em></p>\n<p>\n	M&ocirc;̃i sản ph&acirc;̉m iphone 6 cũ x&aacute;ch tay ch&uacute;ng t&ocirc;i b&aacute;n cho kh&aacute;ch h&agrave;ng đ&ecirc;̀u được bảo h&agrave;nh v&agrave; k&egrave;m qu&agrave; tặng h&acirc;́p d&acirc;̃n c&ugrave;ng quy định đ&ocirc;̉i trả sản ph&acirc;̉m n&ecirc;́u ph&aacute;t sinh l&ocirc;̃i do nh&agrave; sản xu&acirc;́t trong qu&aacute; tr&igrave;nh sử dụng. L&agrave; m&ocirc;̣t người d&ugrave;ng th&ocirc;ng minh bạn sẽ lựa chọn phương &aacute;n n&agrave;o cho m&igrave;nh l&agrave; m&ocirc;̣t sản ph&acirc;̉m mới với mức gi&aacute; cao ng&acirc;́t, hay ch&acirc;́p nh&acirc;̣n với m&ocirc;̣t mức gi&aacute; t&ocirc;́t hơn đ&ecirc;̉ trải nghi&ecirc;̣m m&ocirc;̣t d&ograve;ng m&aacute;y đang g&acirc;y s&ocirc;́t hi&ecirc;̣n nay.</p>\n<p>\n	Th&ocirc;ng tin đ&ecirc;́n kh&aacute;ch h&agrave;ng, MobileCity l&agrave; đơn vị uy t&iacute;n với nhi&ecirc;̀u năm kinh nghi&ecirc;̣m trong lựa chọn v&agrave; ph&acirc;n ph&ocirc;́i c&aacute;c sản ph&acirc;̉m của Apple, lu&ocirc;n đảm bảo được ngu&ocirc;̀n h&agrave;ng &ocirc;̉n định v&agrave; ch&acirc;́t lượng c&ugrave;ng với đ&ocirc;̣i ngũ chuy&ecirc;n vi&ecirc;n kỹ thu&acirc;̣t lu&ocirc;n sẵn s&agrave;ng h&ocirc;̃ trợ 24/24 c&aacute;c v&acirc;́n đ&ecirc;̀ li&ecirc;n quan đ&ecirc;́n c&aacute;c sản ph&acirc;̉m của Mobilecity ph&acirc;n ph&ocirc;́i.&nbsp;Tưng bừng đ&oacute;n Tết &nbsp;B&iacute;nh Th&acirc;n 2016 Rinh iPhone 6 cũ x&aacute;ch tay với nhiều chương tr&igrave;nh tặng qu&agrave; c&ugrave;ng nhiều phần qu&agrave; hấp dẫn tại MobileCity, Theo d&otilde;i v&agrave; cập nhật c&aacute;c th&ocirc;ng tin mới nhất về chương tr&igrave;nh khuyến m&atilde;i v&agrave; qu&agrave; tặng tại fanpage ch&iacute;nh thức của MobilCity.&nbsp;Với đi&ecirc;̣n thoại <strong>iPhone 6 cũ</strong> x&aacute;ch tay qu&ocirc;́c t&ecirc;́ ch&uacute;ng t&ocirc;i lu&ocirc;n đi đ&acirc;̀u v&ecirc;̀ ch&acirc;́t lượng cũng như uy t&iacute;n h&agrave;ng đ&acirc;̀u được sự t&iacute;n nhi&ecirc;̣m v&agrave; đ&aacute;nh gi&aacute; cao từ người d&ugrave;ng hi&ecirc;̣n nay.</p>\n', '<div class="product_detail_group" id="thong-so-ky-thuat" style="margin: 5px 0px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; width: 950px; height: auto; color: rgb(26, 26, 26); font-family: arial, tahoma, ''Times New Roman'', helvetica, sans-serif; font-size: 14px; line-height: 21px; word-spacing: 2px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\n	<div class="product_detail_group_main product_detail_tech masonry" id="product_detail_tech" style="margin: 0px; padding: 5px 0px; border: 0px; outline: 0px; vertical-align: baseline; overflow: hidden; position: relative; height: 722px; background: transparent;">\n		<div class="product_detail_tech_item masonry-brick" style="margin: 0px; padding: 10px 12px 0px 15px; border: 0px; outline: 0px; vertical-align: baseline; width: 448px; position: absolute; top: 5px; left: 0px; background: transparent;">\n			<p class="hboxtitle" style="margin: 0px 0px 10px; padding: 10px 0px 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(53, 59, 151); line-height: 3em; font-weight: bold; background: transparent;">\n				Tổng quan</p>\n			<table style="margin: 0px; padding: 0px; border-collapse: collapse; border-spacing: 0px; width: 447px; border: 0px; font-size: 11pt;">\n				<tbody style="margin: 0px; padding: 0px;">\n					<tr style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); background: rgb(247, 247, 247) !important;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							Mạng 2G</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							GSM 850 / 900 / 1800 / 1900</td>\n					</tr>\n					<tr style="margin: 0px; padding: 0px; background-attachment: scroll; background-color: rgb(233, 234, 238); background-clip: border-box;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							Mạng 3G</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							HSPA 42.2/5.76 Mbps LTE Cat4 150/50 Mbps</td>\n					</tr>\n					<tr style="margin: 0px; padding: 0px; background: rgb(247, 247, 247) !important;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							Ng&ocirc;n ngữ</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							Đa ng&ocirc;n ngữ, hỗ trợ tiếng Việt</td>\n					</tr>\n				</tbody>\n			</table>\n		</div>\n		<div class="product_detail_tech_item masonry-brick" style="margin: 0px; padding: 10px 12px 0px 15px; border: 0px; outline: 0px; vertical-align: baseline; width: 448px; position: absolute; top: 5px; left: 475px; background: transparent;">\n			<p class="hboxtitle" style="margin: 0px 0px 10px; padding: 10px 0px 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(53, 59, 151); line-height: 3em; font-weight: bold; background: transparent;">\n				Bộ nhớ</p>\n			<table style="margin: 0px; padding: 0px; border-collapse: collapse; border-spacing: 0px; width: 447px; border: 0px; font-size: 11pt;">\n				<tbody style="margin: 0px; padding: 0px;">\n					<tr style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); background: rgb(247, 247, 247) !important;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							Bộ nhớ trong</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							16/ 64/ 128</td>\n					</tr>\n					<tr style="margin: 0px; padding: 0px; background-attachment: scroll; background-color: rgb(233, 234, 238); background-clip: border-box;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							Bộ nhớ RAM</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							1GB</td>\n					</tr>\n				</tbody>\n			</table>\n		</div>\n		<div class="product_detail_tech_item masonry-brick" style="margin: 0px; padding: 10px 12px 0px 15px; border: 0px; outline: 0px; vertical-align: baseline; width: 448px; position: absolute; top: 139px; left: 475px; background: transparent;">\n			<p class="hboxtitle" style="margin: 0px 0px 10px; padding: 10px 0px 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(53, 59, 151); line-height: 3em; font-weight: bold; background: transparent;">\n				Camera</p>\n			<table style="margin: 0px; padding: 0px; border-collapse: collapse; border-spacing: 0px; width: 447px; border: 0px; font-size: 11pt;">\n				<tbody style="margin: 0px; padding: 0px;">\n					<tr style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); background: rgb(247, 247, 247) !important;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							Camera sau</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							8 MP</td>\n					</tr>\n					<tr style="margin: 0px; padding: 0px; background-attachment: scroll; background-color: rgb(233, 234, 238); background-clip: border-box;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							Camera trước</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							1.2 MP</td>\n					</tr>\n					<tr style="margin: 0px; padding: 0px; background: rgb(247, 247, 247) !important;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							T&iacute;nh năng</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							Gắn định vị ảnh, chạm để lấy n&eacute;t, nhận diện khu&ocirc;n mặt. Chụp ảnh HDR</td>\n					</tr>\n					<tr style="margin: 0px; padding: 0px; background-attachment: scroll; background-color: rgb(233, 234, 238); background-clip: border-box;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							Quay video</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							1080p full HD 30fps</td>\n					</tr>\n				</tbody>\n			</table>\n		</div>\n		<div class="product_detail_tech_item masonry-brick" style="margin: 0px; padding: 10px 12px 0px 15px; border: 0px; outline: 0px; vertical-align: baseline; width: 448px; position: absolute; top: 191px; left: 0px; background: transparent;">\n			<p class="hboxtitle" style="margin: 0px 0px 10px; padding: 10px 0px 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(53, 59, 151); line-height: 3em; font-weight: bold; background: transparent;">\n				K&iacute;ch thước</p>\n			<table style="margin: 0px; padding: 0px; border-collapse: collapse; border-spacing: 0px; width: 447px; border: 0px; font-size: 11pt;">\n				<tbody style="margin: 0px; padding: 0px;">\n					<tr style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); background: rgb(247, 247, 247) !important;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							K&iacute;ch thước</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							13,81 x 6,70 x 0,69 cm</td>\n					</tr>\n					<tr style="margin: 0px; padding: 0px; background-attachment: scroll; background-color: rgb(233, 234, 238); background-clip: border-box;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							Trọng lượng</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							129 grams</td>\n					</tr>\n				</tbody>\n			</table>\n		</div>\n		<div class="product_detail_tech_item masonry-brick" style="margin: 0px; padding: 10px 12px 0px 15px; border: 0px; outline: 0px; vertical-align: baseline; width: 448px; position: absolute; top: 325px; left: 0px; background: transparent;">\n			<p class="hboxtitle" style="margin: 0px 0px 10px; padding: 10px 0px 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(53, 59, 151); line-height: 3em; font-weight: bold; background: transparent;">\n				Hiển thị</p>\n			<table style="margin: 0px; padding: 0px; border-collapse: collapse; border-spacing: 0px; width: 447px; border: 0px; font-size: 11pt;">\n				<tbody style="margin: 0px; padding: 0px;">\n					<tr style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); background: rgb(247, 247, 247) !important;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							M&agrave;n h&igrave;nh</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							LED-backlit IPS LCD</td>\n					</tr>\n					<tr style="margin: 0px; padding: 0px; background-attachment: scroll; background-color: rgb(233, 234, 238); background-clip: border-box;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							K&iacute;ch thước</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							4.7 inches</td>\n					</tr>\n					<tr style="margin: 0px; padding: 0px; background: rgb(247, 247, 247) !important;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							Độ ph&acirc;n giải</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							1334x750 pixel, 326 ppi</td>\n					</tr>\n				</tbody>\n			</table>\n		</div>\n		<div class="product_detail_tech_item masonry-brick" style="margin: 0px; padding: 10px 12px 0px 15px; border: 0px; outline: 0px; vertical-align: baseline; width: 448px; position: absolute; top: 377px; left: 475px; background: transparent;">\n			<p class="hboxtitle" style="margin: 0px 0px 10px; padding: 10px 0px 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(53, 59, 151); line-height: 3em; font-weight: bold; background: transparent;">\n				Truyền tải dữ liệu</p>\n			<table style="margin: 0px; padding: 0px; border-collapse: collapse; border-spacing: 0px; width: 447px; border: 0px; font-size: 11pt;">\n				<tbody style="margin: 0px; padding: 0px;">\n					<tr style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); background: rgb(247, 247, 247) !important;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							WLAN</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							Wi-Fi 802.11 b/g/n, Wi-Fi Direct, DLNA, Wi-Fi hotspot</td>\n					</tr>\n					<tr style="margin: 0px; padding: 0px; background-attachment: scroll; background-color: rgb(233, 234, 238); background-clip: border-box;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							Bluetooth</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							C&oacute;, v4.0 with A2DP</td>\n					</tr>\n				</tbody>\n			</table>\n		</div>\n		<div class="product_detail_tech_item masonry-brick" style="margin: 0px; padding: 10px 12px 0px 15px; border: 0px; outline: 0px; vertical-align: baseline; width: 448px; position: absolute; top: 489px; left: 0px; background: transparent;">\n			<p class="hboxtitle" style="margin: 0px 0px 10px; padding: 10px 0px 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(53, 59, 151); line-height: 3em; font-weight: bold; background: transparent;">\n				Xử l&yacute;</p>\n			<table style="margin: 0px; padding: 0px; border-collapse: collapse; border-spacing: 0px; width: 447px; border: 0px; font-size: 11pt;">\n				<tbody style="margin: 0px; padding: 0px;">\n					<tr style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); background: rgb(247, 247, 247) !important;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							Hệ điều h&agrave;nh</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							IOS 8,9</td>\n					</tr>\n					<tr style="margin: 0px; padding: 0px; background-attachment: scroll; background-color: rgb(233, 234, 238); background-clip: border-box;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							CPU</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							Apple A8, 64-bit X2 1.4 Ghz</td>\n					</tr>\n					<tr style="margin: 0px; padding: 0px; background: rgb(247, 247, 247) !important;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							Cảm biến</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							Gia tốc, con quay hồi chuyển, tiệm cận, la b&agrave;n số</td>\n					</tr>\n					<tr style="margin: 0px; padding: 0px; background-attachment: scroll; background-color: rgb(233, 234, 238); background-clip: border-box;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							Định vị GPS</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							C&oacute;, hỗ trợ với A-GPS v&agrave; GLONASS</td>\n					</tr>\n				</tbody>\n			</table>\n		</div>\n		<div class="product_detail_tech_item masonry-brick" style="margin: 0px; padding: 10px 12px 0px 15px; border: 0px; outline: 0px; vertical-align: baseline; width: 448px; position: absolute; top: 533px; left: 475px; background: transparent;">\n			<p class="hboxtitle" style="margin: 0px 0px 10px; padding: 10px 0px 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(53, 59, 151); line-height: 3em; font-weight: bold; background: transparent;">\n				Pin</p>\n			<table style="margin: 0px; padding: 0px; border-collapse: collapse; border-spacing: 0px; width: 447px; border: 0px; font-size: 11pt;">\n				<tbody style="margin: 0px; padding: 0px;">\n					<tr style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); background: rgb(247, 247, 247) !important;">\n						<td style="margin: 0px; padding-left: 5px; vertical-align: sub; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 4px !important; padding-right: 10px !important; padding-bottom: 4px !important; border-right-style: solid !important; border-right-color: rgb(223, 223, 223) !important; width: 223px !important; text-align: right !important; color: rgb(51, 51, 51) !important;">\n							Dung lượng pin</td>\n						<td style="margin: 0px; padding-right: 5px; vertical-align: sub; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; padding-top: 4px !important; padding-bottom: 4px !important; padding-left: 10px !important; border-left-style: solid !important; border-left-color: rgb(223, 223, 223) !important; width: 223px !important; color: rgb(51, 51, 51) !important;">\n							1810 mAh</td>\n					</tr>\n				</tbody>\n			</table>\n		</div>\n	</div>\n</div>\n', 'https://www.youtube.com/watch?v=8kfPMT2QxAM,https://www.youtube.com/watch?v=o_VYUavsnhw', 'upload/zju1433924144.jpg', 'upload/zju1433924144_thumb.jpg', '["9b7c5db603de8269c99907313e0aa6e7.jpg","70b6aabf9d4b72b6cbc0a4908346a4fe.jpg"]', 8350000, 'đ', '15,16,17,18,19,20', 1, 0, 0, 1, 0, '2016-04-12', '12:42 PM', 'admin', 365, '', '', '', 0, 0, '');
INSERT INTO `tblsanpham` (`id`, `danhmucsanpham`, `danhmucsanphamcap2`, `hang`, `phongcach`, `kieudang`, `chucnang`, `ten`, `baohanh`, `khuyenmai1`, `khuyenmai2`, `khuyenmai3`, `khuyenmai4`, `khuyenmai5`, `chip`, `ram`, `hedieuhanh`, `manhinh`, `pin`, `camera`, `noidung`, `thongsokythuat`, `linkvideo`, `anh`, `anh_thumb`, `anhnho`, `gia`, `donvitinh`, `tinlienquan`, `noibat`, `khuyenmai`, `phothong`, `caocap`, `tinhtrang`, `ngaydang`, `giodang`, `nguoidang`, `view`, `meta_title`, `meta_des`, `keyword`, `ordernum`, `status`, `tag`) VALUES
(20, 67, 0, 36, 8, 4, '', 'iPhone 6 Lock Nhật Bản', '6 tháng', 'Máy mới Fullbox: + 500K', 'Tặng tấm dán màn hình', 'Giảm giá 35% khi mua phụ kiện', 'Voucher giảm giá sửa chữa 50.000', 'Miễn phí cài đặt phần mềm', 'Chip : Apple A8, 64-bit', 'RAM : 1GB, ROM : 16/64/128 GB', 'PIN : 1810mAh', 'HĐH : iOs 8', 'Màn hình : 4.7 inches', 'Camera : 8MP', '', '', '', 'upload/syw1450700695.jpg', 'upload/syw1450700695_thumb.jpg', 'null', 6950000, 'đ', '', 1, 0, 0, 1, 0, '2016-04-12', '2:11 PM', 'admin', 11, '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `tblslider`
--

CREATE TABLE `tblslider` (
  `id` int(10) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `anh` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `anh_thumb` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `trai` int(1) NOT NULL,
  `phai` int(1) NOT NULL,
  `link` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tblslider`
--

INSERT INTO `tblslider` (`id`, `title`, `anh`, `anh_thumb`, `trai`, `phai`, `link`, `ordernum`, `status`) VALUES
(18, 'slider', 'upload/slider1.png', 'upload/slider1_thumb.png', 1, 0, '', 0, 0),
(19, 'slider 2', 'upload/slier2.png', 'upload/slier2_thumb.png', 1, 0, '', 0, 0),
(20, 'slider 3', 'upload/slider3.png', 'upload/slider3_thumb.png', 1, 0, '', 0, 0),
(21, 'slider 4', 'upload/slidernao.png', 'upload/slidernao_thumb.png', 1, 0, '', 0, 0),
(22, 'slider phải', 'upload/nwe1459927437.jpg', 'upload/nwe1459927437_thumb.jpg', 0, 1, '', 0, 0),
(23, 'Slider phải 2', 'upload/qme1460195338.jpg', 'upload/qme1460195338_thumb.jpg', 0, 1, '', 0, 0),
(24, 'Slider phải 3', 'upload/wqx1459352862.jpg', 'upload/wqx1459352862_thumb.jpg', 0, 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tblsupport`
--

CREATE TABLE `tblsupport` (
  `id` int(10) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dienthoaisp` varchar(50) NOT NULL,
  `zalo` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `zalo2` varchar(50) NOT NULL,
  `ten1` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `yahoo1` varchar(50) NOT NULL,
  `skype1` varchar(50) NOT NULL,
  `email1` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai1` varchar(50) NOT NULL,
  `ten2` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `yahoo2` varchar(50) NOT NULL,
  `skype2` varchar(100) NOT NULL,
  `email2` varchar(50) NOT NULL,
  `dienthoai2` varchar(50) NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tblsupport`
--

INSERT INTO `tblsupport` (`id`, `title`, `dienthoaisp`, `zalo`, `zalo2`, `ten1`, `yahoo1`, `skype1`, `email1`, `dienthoai1`, `ten2`, `yahoo2`, `skype2`, `email2`, `dienthoai2`, `ordernum`, `status`) VALUES
(3, 'Tư vấn tại TPHCM', '08.36060005/36060006', '0937819999', '0906066620', 'Nguyễn Thủy', 'vinacomm81', 'thuynv1020', 'tungvu90@gmail.com', '0902226359', 'Phan Huynh', 'vinacomm83', 'thuynv1020', 'info@sieuthimaynongnghiep.vn', '0988397733', 0, 0),
(4, 'Tư vấn tại Hà Nội', '04.35561696/35561697', '0937819999', '0906066620', 'Mạnh Hà', 'vinacomm81', 'thuynv1020', 'hanv@vinacomm.vn', '0906066620', 'Khôi Nguyên', 'vinacomm81', 'thuynv1020', 'hanv@vinacomm.vn', '0937819999', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tblthongtincongty`
--

CREATE TABLE `tblthongtincongty` (
  `id` int(10) NOT NULL,
  `tencongty` varchar(100) CHARACTER SET utf8 NOT NULL,
  `diachi` varchar(200) CHARACTER SET utf8 NOT NULL,
  `dienthoai` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai2` varchar(50) NOT NULL,
  `dienthoai3` varchar(50) NOT NULL,
  `dienthoai4` varchar(50) NOT NULL,
  `dienthoai5` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `yahoo` varchar(50) NOT NULL,
  `hotline` varchar(50) NOT NULL,
  `fb` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gcong` varchar(200) NOT NULL,
  `youtube` varchar(100) NOT NULL,
  `logo` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `anh_thumb` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleantic` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `theh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tblthongtincongty`
--

INSERT INTO `tblthongtincongty` (`id`, `tencongty`, `diachi`, `dienthoai`, `dienthoai2`, `dienthoai3`, `dienthoai4`, `dienthoai5`, `yahoo`, `hotline`, `fb`, `gcong`, `youtube`, `logo`, `anh_thumb`, `googleantic`, `theh`) VALUES
(1, 'Điện thoại di động', 'Cầu Giấy,Hà Nội, Việt Nam', '0984533891', ' 0966403892', '0969632209', '0985923896', 'Mr Hằng: 0978948999', '', ' 0978367735', 'http://www.facebook.com/hpsoft2012', '', '', 'upload/logo1.png', 'upload/logo1_thumb.png', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `tbltintuc`
--

CREATE TABLE `tbltintuc` (
  `id` int(10) NOT NULL,
  `danhmucbaiviet` int(10) NOT NULL,
  `danhmucbaivietcap2` int(10) NOT NULL,
  `danhmucbaivietcap3` int(10) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tomtat` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(200) DEFAULT NULL,
  `anh_thumb` varchar(200) NOT NULL,
  `gia` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `donvitinh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text CHARACTER SET utf8 NOT NULL,
  `foo` int(10) NOT NULL,
  `ct` int(1) NOT NULL,
  `ngaydang` date NOT NULL,
  `giodang` varchar(200) NOT NULL,
  `nguoidang` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `view` int(10) NOT NULL,
  `meta_title` varchar(500) CHARACTER SET utf8 NOT NULL,
  `meta_des` varchar(500) CHARACTER SET utf8 NOT NULL,
  `keyword` varchar(500) CHARACTER SET utf8 NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(2) NOT NULL,
  `tag` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tbltintuc`
--

INSERT INTO `tbltintuc` (`id`, `danhmucbaiviet`, `danhmucbaivietcap2`, `danhmucbaivietcap3`, `title`, `tomtat`, `anh`, `anh_thumb`, `gia`, `donvitinh`, `noidung`, `foo`, `ct`, `ngaydang`, `giodang`, `nguoidang`, `view`, `meta_title`, `meta_des`, `keyword`, `ordernum`, `status`, `tag`) VALUES
(1, 62, 0, 0, 'Hướng dẫn mua hàng từ xa', '', '', '0', '', '', '', 1, 0, '2016-04-12', '11:01 PM', 'admin', 0, '', '', '', 0, 0, ''),
(2, 62, 0, 0, 'Hướng dẫn mua hàng trả góp', '', '', '0', '', '', '', 1, 0, '2016-04-12', '11:01 PM', 'admin', 0, '', '', '', 0, 0, ''),
(3, 62, 0, 0, 'Câu hỏi thường gặp', '', '', '0', '', '', '', 1, 0, '2016-04-12', '11:01 PM', 'admin', 0, '', '', '', 0, 0, ''),
(4, 62, 0, 0, 'Chính sách vận chuyển', '', '', '0', '', '', '', 1, 0, '2016-04-12', '11:02 PM', 'admin', 1, '', '', '', 0, 0, ''),
(5, 62, 0, 0, 'Chính sách bảo hành', '', '', '0', '', '', '', 1, 0, '2016-04-12', '11:02 PM', 'admin', 2, '', '', '', 0, 0, ''),
(6, 61, 0, 0, 'Về chúng tôi', '', '', '0', '', '', '', 1, 0, '2016-04-12', '11:00 PM', 'admin', 3, '', '', '', 0, 0, ''),
(7, 63, 2, 0, 'Thay mặt kính cảm ứng Asus Zenfone 5 A500 A501', 'Thay màn hình ZenFone 5 là một trong những dịch vụ nhận được sự quan tâm tìm kiếm nhất hiện nay của người dùng. Rất nhiều khách hàng lo lnawgs khi điện thoại Zenfone của mình bị hỏng nên tìm đến trung', 'upload/jrk1430109991.jpg', 'upload/jrk1430109991_thumb.jpg', '200000', 'đ', '<p>\n	<strong style="margin: 0px; padding: 0px; color: rgb(26, 26, 26); font-family: arial, tahoma, ''Times New Roman'', helvetica, sans-serif; font-size: 14px; line-height: 21px; word-spacing: 2px;">Thay m&agrave;n h&igrave;nh ZenFone 5</strong><span style="color: rgb(26, 26, 26); font-family: arial, tahoma, ''Times New Roman'', helvetica, sans-serif; font-size: 14px; line-height: 21px; word-spacing: 2px;">&nbsp;l&agrave; một trong những dịch vụ nhận được sự quan t&acirc;m t&igrave;m kiếm nhất hiện nay của người d&ugrave;ng. Rất nhiều kh&aacute;ch h&agrave;ng lo lnawgs khi điện thoại Zenfone của m&igrave;nh bị hỏng n&ecirc;n t&igrave;m đến trung t&acirc;m n&agrave;o uy t&iacute;n để sửa chữa. Với chất lượng m&agrave;n h&igrave;nh đạt ti&ecirc;u chuẩn do ch&iacute;nh nh&agrave; sản xuất cung cấp c&ugrave;ng với chế độ bảo h&agrave;nh dịch vụ ho&agrave;n hảo MobileCity đ&atilde; trở th&agrave;nh điểm đến của nhiều người d&ugrave;ng Zenfone nhất tại H&agrave; Nội. Hiện tại trung t&acirc;m lu&ocirc;n sẵn c&oacute; đầy đủ linh kiện&nbsp;để thay thế cho qu&yacute; kh&aacute;ch. Do đ&oacute; nếu chiếc điện thoại của bạn gặp sự cố n&agrave;o từ m&agrave;n h&igrave;nh mặt k&iacute;nh đến cảm ứng h&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i để được hỗ trợ tốt nhất.</span></p>\n', 0, 0, '2016-04-12', '10:35 PM', 'admin', 3, '', '', '', 0, 0, ''),
(8, 63, 2, 0, 'Thay pin iPhone 4,4S, iPhone 5,5S', '', 'upload/hnb1452134679.jpg', 'upload/hnb1452134679_thumb.jpg', '200000', 'đ', '', 0, 0, '2016-04-12', '10:48 PM', 'admin', 1, '', '', '', 0, 0, ''),
(9, 63, 2, 0, 'Thay mặt kính iPhone 6, 6 Plus', 'Thay màn hình iPhone 6, thay mặt kính iPhone 6 và tất cả các dòng iPhone khác như iPhone 6 Plus, iPhone 6S, iPhone 6S Plus chuyên nghiệp, uy tín tại Hà Nội và TP. Hồ Chí Minh. ✓ Thời gian thay mặt kín', 'upload/qtn1457949831.jpg', 'upload/qtn1457949831_thumb.jpg', '200000', 'đ', '<p>\n	<span style="color: rgb(26, 26, 26); font-family: arial, tahoma, ''Times New Roman'', helvetica, sans-serif; font-size: 14px; line-height: 21px; text-align: justify; word-spacing: 2px;">Thay m&agrave;n h&igrave;nh iPhone 6,</span><strong style="margin: 0px; padding: 0px; color: rgb(26, 26, 26); font-family: arial, tahoma, ''Times New Roman'', helvetica, sans-serif; font-size: 14px; line-height: 21px; text-align: justify; word-spacing: 2px;">&nbsp;thay mặt k&iacute;nh iPhone 6</strong><span style="color: rgb(26, 26, 26); font-family: arial, tahoma, ''Times New Roman'', helvetica, sans-serif; font-size: 14px; line-height: 21px; text-align: justify; word-spacing: 2px;">&nbsp;v&agrave; tất cả c&aacute;c d&ograve;ng iPhone kh&aacute;c như iPhone 6 Plus, iPhone 6S, iPhone 6S Plus chuy&ecirc;n nghiệp, uy t&iacute;n tại H&agrave; Nội v&agrave; TP. Hồ Ch&iacute; Minh. ✓ Thời gian thay mặt k&iacute;nh v&agrave; thay m&agrave;n h&igrave;nh iPhone 6, 6 Plus, 6s, 6s Plus nhanh ch&oacute;ng, Qu&yacute; kh&aacute;ch c&oacute; thể lấy ngay. ✓ Vệ sinh m&aacute;y &amp; d&aacute;n m&agrave;n h&igrave;nh chống xước miễn ph&iacute;</span></p>\n', 0, 0, '2016-04-12', '10:50 PM', 'admin', 0, '', '', '', 0, 0, ''),
(10, 63, 2, 0, 'Thay mặt kính iPad Mini 1', 'Thay mặt kính iPad Mini, 2, 3, 4, iPad 3, iPad 4, iPad Air, iPad Air 2, iPad Pro chính hãng tại MobileCity để nhận được chất lượng tốt nhất và giá thành rẻ nhất. ', 'upload/htw1427447157.png', 'upload/htw1427447157_thumb.png', '300000', 'đ', '<p>\n	<strong style="margin: 0px; padding: 0px; color: rgb(26, 26, 26); font-family: arial, tahoma, ''Times New Roman'', helvetica, sans-serif; font-size: 14px; line-height: 21px; word-spacing: 2px;">Thay mặt k&iacute;nh iPad Mini</strong><span style="color: rgb(26, 26, 26); font-family: arial, tahoma, ''Times New Roman'', helvetica, sans-serif; font-size: 14px; line-height: 21px; word-spacing: 2px;">, 2, 3, 4, iPad 3, iPad 4, iPad Air, iPad Air 2, iPad Pro ch&iacute;nh h&atilde;ng tại MobileCity để nhận được chất lượng tốt nhất v&agrave; gi&aacute; th&agrave;nh rẻ nhất.&nbsp;</span></p>\n', 0, 0, '2016-04-12', '10:52 PM', 'admin', 0, '', '', '', 0, 0, ''),
(11, 63, 2, 0, 'Thay mặt kính iPhone 5S, iPhone 5', '', 'upload/slx1433125920.jpg', 'upload/slx1433125920_thumb.jpg', '150000', 'đ', '', 0, 0, '2016-04-12', '10:54 PM', 'admin', 0, '', '', '', 0, 0, ''),
(12, 63, 2, 0, 'Thay màn hình iPhone 5', '', 'upload/vbw1458556065.jpg', 'upload/vbw1458556065_thumb.jpg', '1450000', 'đ', '', 0, 0, '2016-04-12', '10:56 PM', 'admin', 0, '', '', '', 0, 0, ''),
(13, 63, 2, 0, 'Thay mặt kính cảm ứng Nomi 3S', '', 'upload/rxr1452055292.jpg', 'upload/rxr1452055292_thumb.jpg', '350000', 'đ', '', 0, 0, '2016-04-12', '10:57 PM', 'admin', 0, '', '', '', 0, 0, ''),
(14, 63, 2, 0, 'Thay pin iPhone 6', '', 'upload/fva1458370332.jpg', 'upload/fva1458370332_thumb.jpg', '', '', '', 0, 0, '2016-04-12', '10:58 PM', 'admin', 0, '', '', '', 0, 0, ''),
(15, 57, 0, 0, 'Sử dụng iPhone 6 cũ đúng cách để máy hoạt động mượt mà', 'Là một siêu phẩm đắt tiền của ông lớn Apple, iPhone 6 cũ được nhiều người chọn mua. Tuy nhiên, sau một thời gian sử dụng, máy thường xảy ra những lỗi vặt không đáng có. Điều này một phần do bạ ', 'upload/suf1450316093.jpg', 'upload/suf1450316093_thumb.jpg', '', '', '<div class="news_box_summary">\n	&nbsp;L&agrave; một si&ecirc;u phẩm đắt tiền của &ocirc;ng lớn Apple, iPhone 6 cũ được nhiều người chọn mua. Tuy nhi&ecirc;n, sau một thời gian sử dụng, m&aacute;y thường xảy ra những lỗi vặt kh&ocirc;ng đ&aacute;ng c&oacute;. Điều n&agrave;y một phần do bạ</div>\n<div class="news_box_body">\n	<p>\n		<em>L&agrave; một si&ecirc;u phẩm đắt tiền của &ocirc;ng lớn Apple, iPhone 6 cũ được nhiều người chọn mua. Tuy nhi&ecirc;n, sau một thời gian sử dụng, m&aacute;y thường xảy ra những lỗi vặt kh&ocirc;ng đ&aacute;ng c&oacute;. Điều n&agrave;y một phần do bạn đ&atilde; sử dụng chiếc iPhone của m&igrave;nh kh&ocirc;ng đ&uacute;ng c&aacute;ch. B&agrave;i viết dưới đ&acirc;y sẽ chia sẻ cho c&aacute;c bạn c&aacute;ch sử dụng iPhone 6 cũ đ&uacute;ng c&aacute;ch để m&aacute;y hoạt động mượt m&agrave; tr&aacute;nh những lỗi vặt kh&ocirc;ng đ&aacute;ng c&oacute;. </em></p>\n	<h3>\n		<strong>Tr&aacute;nh trầy xước bạn n&ecirc;n d&aacute;n m&agrave;n h&igrave;nh cho iPhone 6</strong></h3>\n	<p>\n		Đối với <em><strong>iPhone 6 cũ</strong></em> n&oacute;i ri&ecirc;ng v&agrave; c&aacute;c d&ograve;ng smartphone n&oacute;i chung, m&agrave;n h&igrave;nh cảm ứng l&agrave; th&agrave;nh phần rất quan trọng, nếu m&agrave;n h&igrave;nh hỏng th&igrave; chiếc m&aacute;y đ&oacute; cũng chả c&oacute; t&aacute;c dụng g&igrave;. Ch&iacute;nh v&igrave; vậy, bạn n&ecirc;n d&aacute;n k&iacute;nh cường lực cho chiếc iPhone 6 cũ của m&igrave;nh tr&aacute;nh trường hợp trầy xước hay v&ocirc; t&igrave;nh l&agrave;m rơi rớt.</p>\n	<h3>\n		<strong>Sử dụng Pin iPhone 6 cũ đ&uacute;ng c&aacute;ch để k&eacute;o d&agrave;i tuổi thọ Pin</strong></h3>\n	<p>\n		&nbsp;</p>\n	<p>\n		Hầu hết c&aacute;c d&ograve;ng điện thoại hiện nay n&oacute;i chung v&agrave; iPhone 6 cũ n&oacute;i ri&ecirc;ng đều được trang bị Pin Li- Lon kh&aacute; bền. Tuy nhi&ecirc;n, nếu bạn kh&ocirc;ng biết c&aacute;ch sử dụng th&igrave; sau một thời gian tuổi thọ Pin cũng sẽ bị giảm đi đ&aacute;ng kể. Ch&iacute;nh v&igrave; vậy, khi mới mua m&aacute;y về bạn n&ecirc;n sạc đầy 8 tiếng cho thiết bị trong 3 lần đầu ti&ecirc;n. Đồng thời, bạn cũng n&ecirc;n sử dụng sạc c&aacute;p ch&iacute;nh h&agrave;ng của d&ograve;ng sản phẩm n&agrave;y, tr&aacute;nh trường hợp n&oacute;ng m&aacute;y, g&acirc;y ch&aacute;y nổ.</p>\n	<h3>\n		<strong>Tiến h&agrave;nh vệ sinh m&aacute;y</strong></h3>\n	<p>\n		Sau một thời gian sử dụng, chiếc iPhone 6 cũ của bạn sẽ bị b&aacute;m bụi bẩn, g&acirc;y n&ecirc;n t&igrave;nh trạng n&oacute;ng m&aacute;y. Cho n&ecirc;n thường xuy&ecirc;n vệ sinh chiếc smartphone của m&igrave;nh bằng c&aacute;ch sử dụng b&ocirc;ng mềm v&agrave; cồn để m&aacute;y được th&ocirc;ng tho&aacute;ng.</p>\n	<h3>\n		<strong>Khi cần thiết n&ecirc;n cập nhật c&aacute;c phi&ecirc;n bản điều h&agrave;nh mới cho iPhone 6</strong></h3>\n	<p>\n		Hệ điều h&agrave;nh mới thường khắc phục được những lỗi của hệ điều h&agrave;nh cũ. Với c&aacute;c hệ điều h&agrave;nh iOS của Apple người d&ugrave;ng c&oacute; thể cập nhật tự động hệ điều h&agrave;nh, đồng thời tiến h&agrave;nh đồng bộ h&oacute;a dữ liệu bằng iCloud. Ch&iacute;nh v&igrave; thế, khi cần thiết bạn h&atilde;y cập nhật iOS mới cho iPhone 6 cũ để bảo vệ thiết bị tr&aacute;nh kh&ocirc;ng để xuất hiện những lỗi vặt.</p>\n</div>\n', 0, 0, '2016-04-13', '10:50 PM', 'admin', 1, '', '', '', 0, 0, ''),
(16, 57, 0, 0, 'Những điều cần biết khi chọn mua iPhone 6 cũ', 'Nhằm theo xu hướng phát triển của thị trường, iPhone liên tục trình làng những sản phẩm khác nhau. Tuy nhiên, không vì thế mà những người tiền nhiệm của ông lớn Apple bị lãng quên. Đặc biệt, sức h ', 'upload/suf14503160931.jpg', 'upload/suf14503160931_thumb.jpg', '', '', '<div class="news_box_summary">\n	&nbsp;Nhằm theo xu hướng ph&aacute;t triển của thị trường, iPhone li&ecirc;n tục tr&igrave;nh l&agrave;ng những sản phẩm kh&aacute;c nhau. Tuy nhi&ecirc;n, kh&ocirc;ng v&igrave; thế m&agrave; những người tiền nhiệm của &ocirc;ng lớn Apple bị l&atilde;ng qu&ecirc;n. Đặc biệt, sức h</div>\n<div class="news_box_body">\n	<p>\n		<em>Nhằm theo xu hướng ph&aacute;t triển của thị trường, iPhone li&ecirc;n tục tr&igrave;nh l&agrave;ng những sản phẩm kh&aacute;c nhau. Tuy nhi&ecirc;n, kh&ocirc;ng v&igrave; thế m&agrave; những người tiền nhiệm của &ocirc;ng lớn Apple bị l&atilde;ng qu&ecirc;n. Đặc biệt, sức h&uacute;t của iPhone 6 cũ vẫn c&ograve;n rất n&oacute;ng. B&agrave;i viết dưới đ&acirc;y sẽ giới thiệu cho bạn biết những điều cần lưu &yacute; khi chọn mua cho m&igrave;nh những chiếc iPhone 6 cũ</em>.</p>\n	<h3>\n		<strong>Ch&uacute; &yacute; ngoại h&igrave;nh của chiếc iPhone 6 cũ</strong></h3>\n	<p>\n		Ch&uacute;ng ta phải cần xem x&eacute;t xem ngoại h&igrave;nh của chiếc iPhone 6 cũ xem c&oacute; bị m&oacute;p m&eacute;o g&igrave; kh&ocirc;ng. Bạn ch&uacute; &yacute; quan s&aacute;t kỹ viền m&agrave;n h&igrave;nh của m&aacute;y xem c&oacute; dấu hiệu đ&atilde; thay hoặc th&aacute;o ra kh&ocirc;ng? Nếu c&oacute; dấu hiệu th&aacute;o gỡ th&igrave; bạn n&ecirc;n check m&atilde; imei để đảm bảo m&aacute;y chưa bị thay đổi g&igrave;?</p>\n	<h3>\n		<strong>Tets qua độ nhạy c&aacute;c ph&iacute;m vật l&yacute; của iPhone 6 cũ</strong></h3>\n	<p>\n		Trải qua qu&aacute; tr&igrave;nh sử dụng, chắc hẳn chiếc iPhone 6 cũ của bạn sẽ bị b&aacute;m bụi bẩn, do vậy c&aacute;c ph&iacute;m chức năng c&oacute; thể kh&ocirc;ng được nhạy. Ch&iacute;nh v&igrave; vậy, trước khi&nbsp; mua m&aacute;y bạn n&ecirc;n kiểm tra qua n&uacute;t nguồn v&agrave; c&aacute;c ph&iacute;m tăng giảm &acirc;m lượng xem ch&uacute;ng hoạt động tốt kh&ocirc;ng?</p>\n	<h3>\n		<strong>Kiểm tra m&agrave;n h&igrave;nh </strong></h3>\n	<p>\n		Kiểm tra m&agrave;n h&igrave;nh <strong><em>iPhone 6 cũ</em></strong> thường c&oacute; hai ch&uacute; &yacute; l&agrave; điềm chết v&agrave; cảm ứng.</p>\n	<p>\n		&nbsp;</p>\n	<p>\n		Về điểm chết, bạn chỉ cần l&ecirc;n youtobe g&otilde; c&aacute;ch kiểm tra điểm chết m&agrave;n h&igrave;nh. Sau đ&oacute;, để m&agrave;n h&igrave;nh một m&agrave;u đen hay xanh, nếu m&agrave;n h&igrave;nh c&oacute; điểm chết, ch&uacute;ng sẽ lộ ra ngay v&igrave; c&oacute; một m&agrave;u kh&aacute;c biệt.</p>\n	<p>\n		Về cảm ứng m&agrave;n h&igrave;nh, c&aacute;c bạn giữ tay v&agrave;o một icon bất kỳ v&agrave; di chuyển ch&uacute;ng khắp nơi tr&ecirc;n m&agrave;n h&igrave;nh. Nếu trong qu&aacute; tr&igrave;nh di chuyển icon đ&oacute; v&ocirc; t&igrave;nh dừng lại, tức m&agrave;n h&igrave;nh cảm ứng c&oacute; vấn đề, bạn n&ecirc;n lựa chọn một chiếc điện thoại kh&aacute;c.</p>\n	<h3>\n		<strong>Ch&uacute; &yacute; cảm biến &aacute;nh s&aacute;ng, loa để chắc chắn ch&uacute;ng đều ổn</strong></h3>\n	<p>\n		Khi mua iPhone 6 cũ bạn h&atilde;y kiểm tra cảm biến &aacute;nh s&aacute;ng bằng c&aacute;ch thực hiện cuộc gọi cho 1 người n&agrave;o đ&oacute;. Nếu khi&nbsp; bạn đưa tay l&ecirc;n v&ugrave;ng cảm biến &aacute;nh s&aacute;ng, m&agrave;n h&igrave;nh tắt th&igrave; chứng tỏ cảm biến &aacute;nh s&aacute;ng vẫn c&ograve;n tốt.</p>\n	<h3>\n		<strong>Kiểm tra xuất xứ chiếc iPhone 6 th&ocirc;ng qua m&atilde; iemi</strong></h3>\n	<p>\n		Để kiểm ra được serial number&nbsp; của chiếc iPhone 6, bạn truy cập v&agrave;o trang iphoneimei.info v&agrave; nhập d&atilde;y k&iacute; tự imei gồm 15 số. Nếu kết quả b&aacute;o lại l&agrave; một d&ograve;ng chữ đỏ, chứng tỏ đ&oacute; l&agrave; iPhone giả. C&ograve;n n&oacute; hiện ra đầy đủ th&ocirc;ng tin th&igrave; bạn h&atilde;y đối chiếu th&ocirc;ng tin n&agrave;y với th&ocirc;ng tin thực tế của chiếc iPhone m&agrave; bạn đang kiểm tra.</p>\n	<h3>\n		<strong>Kiểm tra iCloud của iPhone 6 cũ</strong></h3>\n	<p>\n		Khi mua m&aacute;y iphone 6 cũ ngo&agrave;i những điểm lưu &yacute; tr&ecirc;n bạn cần kiểm tra Icloud của m&aacute;y. Đ&acirc;y l&agrave; một phần kiểm tra quan trọng, kh&ocirc;ng thể bỏ qua.</p>\n	<p>\n		Một chiếc iphone 6 cũ bạn cần lưu &yacute; xem n&oacute; c&oacute; thể bị d&iacute;nh &ldquo;Icloud ẩn&rdquo; hay kh&ocirc;ng. Với một chiếc iphone nếu như bạn kh&ocirc;ng đăng nhập được v&agrave;o t&agrave;i khoản ICloud th&igrave; chiếc m&aacute;y mấy chục triệu cũng chỉ như cục gạch.</p>\n	<h3>\n		<strong>Thời lượng pin của chiếc iPhone 6 cũ c&ograve;n bao l&acirc;u?</strong></h3>\n	<p>\n		Thời lượng ban đầu của một chiếc iPhone 6 khoảng 5 tiếng hoạt đồng li&ecirc;n tục với m&agrave;n h&igrave;nh mở s&aacute;ng v&agrave; kết nối Wifi. Bạn h&atilde;y bấm thời gian từ l&uacute;c bắt đầu thao t&aacute;c kiểm tra m&aacute;y v&agrave; sử dụng m&aacute;y trong khoảng 15 đến 20 ph&uacute;t. Sau đ&oacute;, chia tổng thời lượng pin để đ&aacute;nh gi&aacute;, xem phần trăm pin tụt giảm bao nhi&ecirc;u. Nếu con số ấy lớn nghĩa l&agrave; pin của m&aacute;y đ&atilde; bị hao m&ograve;n nhiều.</p>\n</div>\n', 0, 0, '2016-04-13', '10:53 PM', 'admin', 0, '', '', '', 0, 0, ''),
(17, 57, 0, 0, 'iPhone 6 cũ và tầm quan trọng của ứng dụng iCloud', 'Nếu những ai đã và đang dùng iPhone nói chung và iPhone 6 cũ nói riêng thì chắc hẳn đều biết đến ứng dụng iCloud của nhà mạng này. Tuy nhiên, với những người dùng mới thì khái niệm iCloud còn khá mới ', 'upload/cxw1450262302.jpg', 'upload/cxw1450262302_thumb.jpg', '', '', '<div class="news_box_summary">\n	&nbsp;Nếu những ai đ&atilde; v&agrave; đang d&ugrave;ng iPhone n&oacute;i chung v&agrave; iPhone 6 cũ n&oacute;i ri&ecirc;ng th&igrave; chắc hẳn đều biết đến ứng dụng iCloud của nh&agrave; mạng n&agrave;y. Tuy nhi&ecirc;n, với những người d&ugrave;ng mới th&igrave; kh&aacute;i niệm iCloud c&ograve;n kh&aacute; mới</div>\n<div class="news_box_body">\n	<p>\n		<em>Nếu những ai đ&atilde; v&agrave; đang d&ugrave;ng iPhone n&oacute;i chung v&agrave; iPhone 6 cũ n&oacute;i ri&ecirc;ng th&igrave; chắc hẳn đều biết đến ứng dụng iCloud của nh&agrave; mạng n&agrave;y. Tuy nhi&ecirc;n, với những người d&ugrave;ng mới th&igrave; kh&aacute;i niệm iCloud c&ograve;n kh&aacute; mới mẻ. B&agrave;i viết dưới đ&acirc;y ch&uacute;ng t&ocirc;i xin n&oacute;i ri&ecirc;ng về ứng dụng iCloud tr&ecirc;n chiếc điện thoại iPhone 6 cũ hi vọng c&aacute;c bạn sẽ c&oacute; những kiếm thức bổ &iacute;ch.</em></p>\n	<p>\n		<strong>iCloud l&agrave; gi?</strong></p>\n	<p>\n		Kh&aacute;i niệm iCloud ch&uacute;ng ta c&oacute; thể hiểu l&agrave; một dịch vụ đ&aacute;m m&acirc;y miễn ph&iacute; của nh&agrave; mạng Apple, nhằm mục đ&iacute;ch đồng bộ h&oacute;a dữ liệu giữa c&aacute;c thiết bị sử dụng iOS với m&aacute;y t&iacute;nh hoặc giữa c&aacute;c thiết bị sử dụng iOS với nhau.</p>\n	<p>\n		&nbsp;</p>\n	<p>\n		Ngo&agrave;i ra, với ứng dụng n&agrave;y sẽ cho người d&ugrave;ng bảo mật dữ liệu cũng như hỗ trợ t&igrave;m lại điện thoại khi bị mất.</p>\n	<p>\n		<strong>Tầm quan trọng của iCloud tr&ecirc;n chiếc iPhone 6 cũ</strong></p>\n	<p>\n		Cũng như tr&ecirc;n bất cứ d&ograve;ng iPhone n&agrave;o của &ocirc;ng lớn Apple, iCloud tr&ecirc;n <strong><em>iPhone 6 cũ</em></strong> v&ocirc; c&ugrave;ng quan trọng. Nếu bạn kh&ocirc;ng thể đăng nhập được v&agrave;o t&agrave;i khoản iCloud th&igrave; chiếc iPhone 6 cũ cả chục triệu của bạn cũng chỉ như c&aacute;i cục gạch m&agrave; th&ocirc;i. Một điều nữa, chủ t&agrave;i khoản iCloud c&oacute; thể x&oacute;a c&aacute;c dữ liệu v&agrave; kh&oacute;a m&aacute;y từ xa, như vậy bạn sẽ kh&ocirc;ng kh&ocirc;i phục lại được điện thoại của m&igrave;nh. Ch&iacute;nh v&igrave; vậy, khi đăng nhập iCoud v&agrave;o m&aacute;y, bạn cần ghi nhớ t&agrave;i khoản của m&igrave;nh.</p>\n	<p>\n		Cho n&ecirc;n khi chọn mua cho m&igrave;nh một chiếc iPhone 6 cũ, sau khi đ&atilde; kiểm tra m&aacute;y, bạn cần y&ecirc;u cầu người b&aacute;n tho&aacute;t iCloud ra.</p>\n	<p>\n		Với ứng dụng iCloud tr&ecirc;n iPhone 6 cũ sẽ gi&uacute;p bạn đồng bộ dữ liệu th&ocirc;ng qua dịch vụ lưu trữ đ&aacute;m m&acirc;y với 5GB miễn ph&iacute;; Hỗ trợ t&igrave;m lại điện thoại bị mất với t&iacute;nh năng Find My iPhone v&agrave; x&oacute;a dữ liệu ( nhất l&agrave; những điện thoại c&oacute; chứa những dữ liệu quan trọng, nhay cảm,&hellip;), kh&oacute;a m&aacute;y từ xa nếu kh&ocirc;ng t&igrave;m thấy điện thoại.</p>\n	<p>\n		Với kinh nghiệm nhiều năm kinh doanh trong lĩnh vực điện thoại, Mobiecity ở địa chỉ 120 Th&aacute;i H&agrave; l&agrave; sự lựa chọn ph&ugrave; hợp nếu bạn đang c&oacute; &yacute; định chọn mua cho m&igrave;nh một chiếc iPhone 6 cũ.</p>\n</div>\n', 0, 0, '2016-04-13', '10:55 PM', 'admin', 1, '', '', '', 0, 0, ''),
(18, 57, 0, 0, 'Có nên mua iPhone cũ ở thời điểm hiện tại?', 'Ông lớn Apple tiếp tục làm mưa, làm gió trên thị trường smartphone với sự ra đời liên tục của 2 bộ đội iPhone 6, 6 Plus và iPhone 6S, 6S Plus. Tuy nhiên, với giá thành cao, nên iPhone 6 cũ vẫn là sản ', 'upload/cxw14502623021.jpg', 'upload/cxw14502623021_thumb.jpg', '', '', '<div class="news_box_summary">\n	&nbsp;&Ocirc;ng lớn Apple tiếp tục l&agrave;m mưa, l&agrave;m gi&oacute; tr&ecirc;n thị trường smartphone với sự ra đời li&ecirc;n tục của 2 bộ đội iPhone 6, 6 Plus v&agrave; iPhone 6S, 6S Plus. Tuy nhi&ecirc;n, với gi&aacute; th&agrave;nh cao, n&ecirc;n iPhone 6 cũ vẫn l&agrave; sản phẩm</div>\n<div class="news_box_body">\n	<p>\n		<em>&Ocirc;ng lớn Apple tiếp tục l&agrave;m mưa, l&agrave;m gi&oacute; tr&ecirc;n thị trường smartphone với sự ra đời li&ecirc;n tục của 2 bộ đội&nbsp; iPhone 6, 6 Plus v&agrave; iPhone 6S, 6S Plus. Tuy nhi&ecirc;n, với gi&aacute; th&agrave;nh cao, n&ecirc;n iPhone 6 cũ vẫn l&agrave; sản phẩm được nhiều người lựa chọn. Song nhiều người tỏ ra băn khoăn liệu c&oacute; n&ecirc;n mua iPhone 6 cũ khi m&agrave; 6S đ&atilde; c&oacute; mặt tr&ecirc;n thị trường?</em></p>\n	<h2>\n		<strong>Nguồn gốc iPhone 6 cũ</strong></h2>\n	<p>\n		Hiện nay, <em>iPhone 6 cũ</em> thường l&agrave; h&agrave;ng x&aacute;ch tay ở c&aacute;c thị trường Mỹ, Canada, Ch&acirc;u &Acirc;u v&agrave; c&oacute; gi&aacute; tốt hơn rất nhiều so với h&agrave;ng mới. Vấn đề chất lượng h&agrave;ng của iPhone 6 cũ hiện tại vẫn chưa phải l&agrave; vấn đề đ&aacute;ng lo ngại. Tuy nhi&ecirc;n, l&agrave;m thế n&agrave;o để chọn mua được một chiếc iPhone 6 cũ chuẩn? Bạn n&ecirc;n t&igrave;m kiếm cửa h&agrave;ng uy t&iacute;n như MobileCity l&agrave; một v&iacute; dụ. Với kinh nghiệm nhiều năm kinh doanh trong lĩnh vực n&agrave;y, đến với MobileCity đảm bảo bạn sẽ h&agrave;i l&ograve;ng về th&aacute;i độ phục vụ cũng như chất lượng sản phẩm. Ngo&agrave;i ra, t&igrave;m hiểu những c&aacute;ch test m&aacute;y cơ bản để lựa chọn được chiếc iPhone 6 cũ ưng &yacute; cũng l&agrave; việc bạn n&ecirc;n l&agrave;m.</p>\n	<p>\n		&nbsp;</p>\n	<h2>\n		<strong>C&oacute; n&ecirc;n mua iPhone 6 cũ ở thời điểm hiện tại kh&ocirc;ng?</strong></h2>\n	<p>\n		&nbsp;</p>\n	<p>\n		Ở thời điểm hiện tại bạn chỉ cần bỏ ra chưa đến 10 triệu đồng để c&oacute; thể sở hữu một chiếc iPhone 6 cũ ( bản quốc tế), rẻ hơn rất nhiều so với một chiếc iPhone 6 mới.</p>\n	<p>\n		hư vậy, với một chiếc iPhone 6 cũ bạn đ&atilde; tiết kiệm được một khoản tương đối cho quỹ chi ti&ecirc;u của m&igrave;nh. Bạn kh&ocirc;ng cần phải chạy vạy vay mượn hay d&egrave; xen chi ti&ecirc;u v&igrave; đ&atilde; lỡ dồn hết số tiền m&igrave;nh c&oacute; được để sở hữu chiếc smartphone n&agrave;y.</p>\n	<p>\n		iPhone 6 cũ quốc tế x&aacute;ch tay tại MobileCity đều đảm bảo ngoại h&igrave;nh 98-99% cũng như đ&atilde; được Fix hết c&aacute;c lỗi. N&ecirc;n bạn cũng kh&ocirc;ng cần phải lo lắng v&igrave; chất lượng sản phẩm khi mua h&agrave;ng tại đ&acirc;y.</p>\n	<p>\n		Nếu sau một thời gian sử dụng, bạn c&oacute; điều kiện v&agrave; muốn đổi một chiếc m&aacute;y mới, bạn đem b&aacute;n chiếc iPhone 6 cũ m&igrave;nh đang sở hữu như vậy bạn cũng sẽ mất &iacute;t gi&aacute; hơn sau khi sử dụng.</p>\n</div>\n', 0, 0, '2016-04-13', '10:57 PM', 'admin', 0, '', '', '', 0, 0, ''),
(19, 57, 0, 0, 'Cách nhận biết đâu là iPhone 6 cũ bản quốc tế', 'Để tiết kiệm chi phí, bạn chọn mua một chiếc iPhone cũ. Tuy nhiên, bạn băn khoăn không biết đâu là bản lock đâu là bản quốc tế. Để các bạn trở thành người dùng thông minh có thể tự mình chọn mua ', 'upload/tbd1450262627.jpg', 'upload/tbd1450262627_thumb.jpg', '', '', '<div class="news_box_summary">\n	&nbsp;Để tiết kiệm chi ph&iacute;, bạn chọn mua một chiếc iPhone cũ. Tuy nhi&ecirc;n, bạn băn khoăn kh&ocirc;ng biết đ&acirc;u l&agrave; bản lock đ&acirc;u l&agrave; bản quốc tế. Để c&aacute;c bạn trở th&agrave;nh người d&ugrave;ng th&ocirc;ng minh c&oacute; thể tự m&igrave;nh chọn mua</div>\n<div class="news_box_body">\n	<p>\n		<em>Để tiết kiệm chi ph&iacute;, bạn chọn mua một chiếc iPhone cũ. Tuy nhi&ecirc;n, bạn băn khoăn kh&ocirc;ng biết đ&acirc;u l&agrave; bản lock đ&acirc;u l&agrave; bản quốc tế. Để c&aacute;c bạn trở th&agrave;nh người d&ugrave;ng th&ocirc;ng minh c&oacute; thể tự m&igrave;nh chọn mua được chiếc iPhone 6 cũ bản quốc tế b&agrave;i viết dưới đ&acirc;y sẽ chỉ cho bạn một số c&aacute;ch đơn giản để nhận biết điều đ&oacute;</em>.</p>\n	<h2>\n		<strong>iPhone 6 cũ bản quốc tế v&agrave; bản lock kh&aacute;c nhau như thế n&agrave;o?</strong></h2>\n	<p>\n		Về cấu h&igrave;nh cũng như ngoại h&igrave;nh <em><strong>iPhone 6 cũ quốc tế</strong></em> v&agrave; bản lock đểu ho&agrave;n to&agrave;n giống nhau. Hai sản phẩm n&agrave;y chỉ c&oacute; một điểm kh&aacute;c nhau duy nhất l&agrave; iPhone bản lock bạn muốn d&ugrave;ng sim mạng kh&aacute;c sẽ phải Unlock. C&ograve;n đối với iPhone 6 cũ bản quốc tế, đ&acirc;y l&agrave; phi&ecirc;n bản kh&ocirc;ng gặp bất cứ trở ngại g&igrave; khi sử dụng, v&igrave; thế bạn c&oacute; thể d&ugrave;ng bất cứ sim n&agrave;o ở bất cứ nh&agrave; mạng n&agrave;o. Ch&iacute;nh v&igrave; thế so với bản quốc tế, iPhone 6 cũ lock c&oacute; gi&aacute; rẻ hơn kh&aacute; nhiều.</p>\n	<p>\n		&nbsp;</p>\n	<h2>\n		<strong>Nh&igrave;n bề ngoại để ph&acirc;n biệt iPhone 6 cũ lock v&agrave; quốc tế</strong></h2>\n	<p>\n		Như đ&atilde; n&oacute;i, ngoại h&igrave;nh iPhone 6 cũ quốc tế v&agrave; iPhone 6 cũ lock kh&ocirc;ng c&oacute; điểm g&igrave; kh&aacute;c nhau. Ch&uacute;ng ta chỉ c&oacute; thể dựa v&agrave;o khay sim để ph&acirc;n biệt được hai phi&ecirc;n bản n&agrave;y. iPhone 6 cũ bản lock c&oacute; thể unlock bằng sim g&eacute;p. Mục đ&iacute;ch l&agrave; để đ&aacute;nh lừa con ch&iacute;p iPhone rằng sim n&agrave;y l&agrave; sim được chấp nhận v&agrave; bạn sẽ sử dụng b&igrave;nh thường như m&aacute;y quốc tế. Ch&iacute;nh v&igrave; v&acirc;y, bạn chỉ cần th&aacute;o khay sim ra v&agrave; quan s&aacute;t nếu thấy th&ecirc;m c&oacute; 1 bản mạch gh&eacute;p c&ugrave;ng sim l&agrave; biết đ&acirc;y l&agrave; m&aacute;y lock.</p>\n	<p>\n		&nbsp;</p>\n	<h2>\n		<strong>Kiểm tra m&atilde; Imei để biết đ&acirc;u l&agrave; iPhone 6 cũ bản quốc tế</strong></h2>\n	<p>\n		Với một chiếc Iphone 6 cũ bất kỳ đều c&oacute; một m&atilde; imei nhất định. Bạn truy cập v&agrave;o trang <a href="http://iunlocker.net/check_inei.php">http://iunlocker.net/check_inei.php</a>, sau đ&oacute; nhập m&atilde; Imei gồm 15 chữ số rồi ấn Enter. Sau đ&oacute; ch&uacute; &yacute; xem kết quả phần cuối SIM lock hiện ra nếu n&oacute; l&agrave; unlocked th&igrave; đ&acirc;y l&agrave; phi&ecirc;n bản quốc tế, c&ograve;n unknow th&igrave; đ&acirc;y l&agrave; phi&ecirc;n bản iPhone lock.</p>\n	<p>\n		&nbsp;</p>\n	<p>\n		Hi vọng, với c&aacute;ch kiểm tra n&agrave;y, bạn c&oacute; thể tự m&igrave;nh ph&acirc;n biệt được đ&acirc;u l&agrave; iPhone 6 cũ bản quốc tế.</p>\n</div>\n', 0, 0, '2016-04-13', '10:58 PM', 'admin', 0, '', '', '', 0, 0, ''),
(20, 57, 0, 0, 'Kiểm tra số lần sạc pin của iPhone chỉ với 4 bước đơn giản, nhanh chóng', 'Đối với những chiếc iPhone, bạn có thể áp dụng thủ thuật đơn giản chỉ vài bước dưới đây để có thể kiểm tra xem pin trong thiết bị đã được sạc bao nhiêu lần để xem thiết bị đó đã bị ch', 'upload/ubq1432433714.jpg', 'upload/ubq1432433714_thumb.jpg', '', '', '<div class="news_box_summary">\n	&nbsp;Đối với những chiếc iPhone, bạn c&oacute; thể &aacute;p dụng thủ thuật đơn giản chỉ v&agrave;i bước dưới đ&acirc;y để c&oacute; thể kiểm tra xem pin trong thiết bị đ&atilde; được sạc bao nhi&ecirc;u lần để xem thiết bị đ&oacute; đ&atilde; bị ch</div>\n<div class="news_box_body">\n	<h2 class="sapo">\n		Chỉ với một v&agrave;i bước bạn đ&atilde; c&oacute; thể biết chiếc iPhone của m&igrave;nh đ&atilde; trải qua bao nhi&ecirc;u chu tr&igrave;nh sạc pin.</h2>\n	<div class="content ">\n		<div>\n			Đối với kh&ocirc;ng &iacute;t người d&ugrave;ng với t&uacute;i tiền kh&ocirc;ng qu&aacute; rủng rỉnh, t&igrave;m đến thị trường&nbsp;smartphone&nbsp;đ&atilde; qua sử dụng l&agrave; một c&aacute;ch hay để c&oacute; cơ hội được trải nghiệm c&aacute;c thiết bị m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch. Tuy nhi&ecirc;n, khi chọn&nbsp;điện thoại&nbsp;cũ, c&oacute; rất nhiều vấn đề m&agrave; bạn cần kiểm tra để đảm bảo thiết bị m&agrave; m&igrave;nh sắp mua đ&aacute;ng với những đồng tiền m&agrave; m&igrave;nh bỏ ra nhất v&agrave; độ chai của pin r&otilde; r&agrave;ng l&agrave; một yếu tố quan trọng.</div>\n		<div>\n			&nbsp;</div>\n		<div>\n			Rất may, đối với những chiếc <a href="http://mobilecity.vn/apple-9/"><strong>iPhone</strong></a>, bạn c&oacute; thể &aacute;p dụng thủ thuật đơn giản chỉ v&agrave;i bước dưới đ&acirc;y để c&oacute; thể kiểm tra xem pin trong thiết bị đ&atilde; được sạc bao nhi&ecirc;u lần để xem thiết bị đ&oacute; đ&atilde; bị chai pin chưa từ đ&oacute; c&oacute; một quyết định mua tốt nhất.</div>\n		<div>\n			&nbsp;</div>\n		<div>\n			Bước 1: H&atilde;y v&agrave;o&nbsp;<a href="http://www.icopybot.com/" target="_blank" title="www.icopybot.com"><strong>www.icopybot.com</strong></a>&nbsp;v&agrave; chọn tab Download. Tại đ&acirc;y, h&atilde;y tải về phi&ecirc;n bản chương tr&igrave;nh iBackupBot sao cho ph&ugrave; hợp với hệ điều h&agrave;nh m&agrave; bạn đang sử dụng (Windows hoặc Mac).</div>\n		<div style="text-align: center;">\n			&nbsp;</div>\n		<div>\n			&nbsp;</div>\n		<div>\n			Bước 2: Kết nối iPhone v&agrave;o m&aacute;y t&iacute;nh th&ocirc;ng qua c&aacute;p nối USB, đồng thời khởi động iBackupBot v&agrave; click v&agrave;o t&ecirc;n thiết bị của bạn.</div>\n		<div>\n			<p>\n				Bước 3: Chọn tab More Information.</p>\n			<p>\n				Bước 4: L&uacute;c n&agrave;y, tại hộp thoại xổ ra, bạn sẽ thấy số chu tr&igrave;nh sạc m&agrave; thiết bị của m&igrave;nh đ&atilde; trải qua ở &ocirc; CycleCount.</p>\n			<div>\n				&nbsp;</div>\n			<div>\n				Theo Phonearena, đối với pin Li-Ion, cứ sau khoảng từ 300 đến 500 chu tr&igrave;nh sạc, dung lượng vi&ecirc;n pin sẽ giảm xuống c&ograve;n 80%. Lưu &yacute; rằng, chu tr&igrave;nh sạc kh&ocirc;ng phải l&agrave; số lần sạc. Giả sử &nbsp;bạn c&oacute; một chiếc smartphone với thời lượng pin 100%, sau một ng&agrave;y bạn sử dụng hết 75% v&agrave; bạn cắm sạc đầy trở lại. Sau đ&oacute; bạn tiếp tục d&ugrave;ng th&ecirc;m 25% dung lượng pin th&igrave; l&uacute;c n&agrave;y mới được coi l&agrave; thiết bị của bạn vừa trải qua một chu tr&igrave;nh sạc.</div>\n		</div>\n	</div>\n</div>\n', 0, 0, '2016-04-13', '11:00 PM', 'admin', 0, '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(10) NOT NULL,
  `nguoidang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diem` int(10) NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaydang` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tbluser`
--

INSERT INTO `tbluser` (`id`, `nguoidang`, `matkhau`, `diem`, `hoten`, `diachi`, `dienthoai`, `email`, `ngaydang`, `status`) VALUES
(2, 'tungvu90', '40080e38757097e6c2c8af4ee4f04c7d', 0, 'Vũ Văn TÙng', 'Hải Phòng', '01664295022', 'tungvu90@gmail.com', '2016-04-14', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tblvideo`
--

CREATE TABLE `tblvideo` (
  `id` int(10) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tblvideo`
--

INSERT INTO `tblvideo` (`id`, `title`, `url`, `ordernum`, `status`) VALUES
(1, 'Video chả mực chiên', 'https://www.youtube.com/watch?v=f5d50HEvR7I', 0, 0),
(2, 'Video món bánh cuốn Chả mực', 'https://www.youtube.com/watch?v=SpOhX0c6Jgs', 0, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `anh`
--
ALTER TABLE `anh`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tag_new`
--
ALTER TABLE `tag_new`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblchucnang`
--
ALTER TABLE `tblchucnang`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbldanhmucbaiviet`
--
ALTER TABLE `tbldanhmucbaiviet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbldanhmucbaiviet2`
--
ALTER TABLE `tbldanhmucbaiviet2`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbldanhmucbaiviet3`
--
ALTER TABLE `tbldanhmucbaiviet3`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbldanhmucphukien`
--
ALTER TABLE `tbldanhmucphukien`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbldanhmucphukien2`
--
ALTER TABLE `tbldanhmucphukien2`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbldanhmucsanpham`
--
ALTER TABLE `tbldanhmucsanpham`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbldanhmucsanpham2`
--
ALTER TABLE `tbldanhmucsanpham2`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblhang`
--
ALTER TABLE `tblhang`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblkhoanggia`
--
ALTER TABLE `tblkhoanggia`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblkieudang`
--
ALTER TABLE `tblkieudang`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbllienhe`
--
ALTER TABLE `tbllienhe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblmausac`
--
ALTER TABLE `tblmausac`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblmeta`
--
ALTER TABLE `tblmeta`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblphongcach`
--
ALTER TABLE `tblphongcach`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblphukien`
--
ALTER TABLE `tblphukien`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblquangcao`
--
ALTER TABLE `tblquangcao`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblrole`
--
ALTER TABLE `tblrole`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblsanpham`
--
ALTER TABLE `tblsanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmucsanpham` (`danhmucsanpham`),
  ADD KEY `view` (`view`),
  ADD KEY `ten` (`ten`);

--
-- Index pour la table `tblslider`
--
ALTER TABLE `tblslider`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblsupport`
--
ALTER TABLE `tblsupport`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblthongtincongty`
--
ALTER TABLE `tblthongtincongty`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbltintuc`
--
ALTER TABLE `tbltintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmucbaiviet` (`danhmucbaiviet`),
  ADD KEY `view` (`view`);

--
-- Index pour la table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblvideo`
--
ALTER TABLE `tblvideo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `anh`
--
ALTER TABLE `anh`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `tag_new`
--
ALTER TABLE `tag_new`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1630;
--
-- AUTO_INCREMENT pour la table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `tblchucnang`
--
ALTER TABLE `tblchucnang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `tbldanhmucbaiviet`
--
ALTER TABLE `tbldanhmucbaiviet`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT pour la table `tbldanhmucbaiviet2`
--
ALTER TABLE `tbldanhmucbaiviet2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `tbldanhmucbaiviet3`
--
ALTER TABLE `tbldanhmucbaiviet3`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `tbldanhmucphukien`
--
ALTER TABLE `tbldanhmucphukien`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `tbldanhmucphukien2`
--
ALTER TABLE `tbldanhmucphukien2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `tbldanhmucsanpham`
--
ALTER TABLE `tbldanhmucsanpham`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT pour la table `tbldanhmucsanpham2`
--
ALTER TABLE `tbldanhmucsanpham2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT pour la table `tblhang`
--
ALTER TABLE `tblhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `tblkhoanggia`
--
ALTER TABLE `tblkhoanggia`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `tblkieudang`
--
ALTER TABLE `tblkieudang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `tbllienhe`
--
ALTER TABLE `tbllienhe`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `tblmausac`
--
ALTER TABLE `tblmausac`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `tblmeta`
--
ALTER TABLE `tblmeta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `tblphongcach`
--
ALTER TABLE `tblphongcach`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `tblphukien`
--
ALTER TABLE `tblphukien`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `tblquangcao`
--
ALTER TABLE `tblquangcao`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `tblrole`
--
ALTER TABLE `tblrole`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `tblsanpham`
--
ALTER TABLE `tblsanpham`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `tblslider`
--
ALTER TABLE `tblslider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `tblsupport`
--
ALTER TABLE `tblsupport`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `tblthongtincongty`
--
ALTER TABLE `tblthongtincongty`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `tbltintuc`
--
ALTER TABLE `tbltintuc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `tblvideo`
--
ALTER TABLE `tblvideo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
