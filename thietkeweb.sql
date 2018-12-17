-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 10 Mars 2018 à 02:40
-- Version du serveur :  10.1.8-MariaDB
-- Version de PHP :  5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `thietkeweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE `payments` (
  `id` int(6) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `payment_amount` decimal(7,2) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `itemid` varchar(25) NOT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tblalbumanh`
--

CREATE TABLE `tblalbumanh` (
  `id` int(10) NOT NULL,
  `ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anh` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tblalbumanh`
--

INSERT INTO `tblalbumanh` (`id`, `ten`, `anh`) VALUES
(3, 'Gái xinh', '["a7eb1edc4564574be0ba31148c72a966.jpg","d3b008075af865ffe9afdd4897d03adc.jpg","e9a2deafc1e1626ab0a0558533474110.jpg","16c1ade51687d4085251d05ef5670613.jpg","9860729b314d13665d3394b22767e6c4.jpg"]'),
(4, 'Siêu nhân', '["c50c99e0afa7b668fba6832c0d710afc.jpg","d58253fa9f7c408116f75dd667ec803f.jpg","8a33cb0e05014f939f5e948e7eff3b55.jpg","fb047a89120e74e59e5ebdf06a6e2ec1.jpg"]');

-- --------------------------------------------------------

--
-- Structure de la table `tblbaiviet`
--

CREATE TABLE `tblbaiviet` (
  `id` int(10) NOT NULL,
  `danhmucbaiviet` int(10) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tomtat` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anh_thumb` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` int(10) NOT NULL,
  `ngaydang` date NOT NULL,
  `giodang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tblbaiviet`
--

INSERT INTO `tblbaiviet` (`id`, `danhmucbaiviet`, `title`, `tomtat`, `noidung`, `anh`, `anh_thumb`, `view`, `ngaydang`, `giodang`, `ordernum`, `status`) VALUES
(3, 41, 'Lợi thế của chương trình A levels', 'Thông tin chi tiết về A level và chương trình du học Anh sẽ có tại “Triển lãm du học phổ thông” do Công ty tư vấn Đức Anh tổ chức.', '<p>Sự kiện diễn ra vào 16h-19h ngày 15/3 tại Khách sạn Grand Sài Gòn, số 8 Đồng Khởi, quận 1, TP HCM và 16h-19h ngày 16/3 tại De L’Opera Hanoi, 29 Tràng Tiền, quận Hoàn Kiếm, Hà Nội.&nbsp;</p>\r\n\r\n<p>Thông tin chi tiết về triển lãm xem&nbsp;<a href="http://ducanhduhoc.vn/trien-lam-du-hoc-pho-thong-anh-uc-my-new-zealand-canada" target="_blank">tại đây</a>. Phụ huynh và học sinh, sinh viên vào cửa tự do hoặc đăng&nbsp;ký&nbsp;tham&nbsp;dự <a href="http://bit.ly/Trienlamduhoc" target="_blank">tại đây</a>. Thông tin thêm liên hệ hotline 09887 09698, 09811 15056 và email: <a href="mailto:duhoc@ducanh.edu.vn">duhoc@ducanh.edu.vn</a></p>\r\n\r\n<p>Học sinh có nhu cầu xin học và học bổng có thể mang theo bản công chứng học bạ, bảng điểm chứng chỉ tiếng Anh để được nhận và xem xét hồ sơ ngay tại triển lãm.</p>\r\n\r\n<p>Đại diện công ty Đức Anh cho biết A levels là điều kiện bắt buộc với sinh viên tại các trường đại học hàng đầu như Cambridge, Oxford, St. Andrew hoặc các ngành y, luật… Học viên cũng có cơ hội giành học bổng 20%, 50% và 70% học phí A levels.</p>\r\n\r\n<p>A levels được công nhận bởi tất cả các trường đại học tại Anh cũng như các trường và tổ chức quốc tế tại hơn 50 quốc gia trên thế giới. Chương trình phù hợp lứa tuổi và phát triển tâm sinh lý nên học sinh dễ cảm thấy thoải mái.&nbsp;</p>\r\n\r\n<p>Với chương trình này, học sinh tiếp thu lượng tri thức toàn diện về khoa học tự nhiên lẫn xã hội ở mức nâng cao trong suốt 2 năm. Qua đó, khi tốt nghiệp, học sinh sẽ có đủ năng lực để vào thẳng chương trình đại học.</p>\r\n\r\n<p>Học sinh được chọn môn học A levels dựa vào khả năng học tập của chính mình và có thể cả định hướng nghề nghiệp về sau (yếu tố thứ 2 này không bắt buộc). Bên cạnh đó, tại Anh có nhiều trường cung cấp khoá A levels nên sinh viên có nhiều lựa chọn địa điểm học chất lượng.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://localhost:8080/xaydungweb/upload/images/du_hoc.png" style="height:333px; width:500px" /></p>\r\n\r\n<p>Khi nộp hồ sơ ngay tại triển lãm, học sinh có cơ hội nhận rút thăm trúng thưởng điện thoại Oppo, phí dịch thuật trị giá 1 triệu đồng, phí xét hồ sơ xin học (application fee, tùy trường). Bên cạnh đó là những ưu đãi có điều kiện gồm phí hành chính trị giá 2,25 triệu đồng, phí thi IELTS, PTE A trị giá 3,5 triệu đồng và 5 triệu đồng khi nhập học tại trường.</p>\r\n\r\n<p>Ngoài ra, khi check in tại sự kiện, người tham sự sẽ có cơ hội nhận vé xem phim, học bổng khóa luyện thi IELTS, PTE A, gậy selfie, USB, sổ ghi nhớ...</p>\r\n\r\n<p>Các học bổng công ty Đức Anh đang điều phối gồm 50% học phí (22.275 Euro) A level tại Manchester University (Tập đoàn INTO), 10-30% học phí A level tại Newton Program, University of East Asia (Tập đoàn INTO), 20%,40%,70% học phí tại Bellerbys College và 20-40% học phí tại CATS College (Cambridge, Canterbury và London).&nbsp;</p>\r\n\r\n<p>Chương trình A levels tại các trường tư thục ở Anh thường chú trọng vào việc tuyển sinh và đào tạo cho học sinh quốc tế, có nhiều hỗ trợ nhằm đảm bảo các em đạt thành tích học tập cao nhất có thể.&nbsp;<span style="color:rgb(0,0,0)">&nbsp;Quy mô lớp học nhỏ nên giáo viên có nhiều thời gian quan tâm tới từng học sinh. Mức học phí trung bình từ</span><span style="color:rgb(0,0,0)">&nbsp;14.000-27.000 bảng Anh một năm.</span></p>\r\n\r\n<p>Theo đại diện công ty Đức Anh, tỷ lệ học sinh tại đây đậu vào các trường đại học top 10 tại Anh rất cao với 45% học sinh A levels của Bellerbys đậu vào các trường đại học top 10 và 31 sinh viên đậu vào các trường đại học top 3 (Oxford, Cambridge, Imperial, LSE). Bên cạnh đó là 92% học sinh A levels của CATS College đậu vào các trường đại học Top 50.</p>\r\n\r\n<p>Đa số các trường công thường ưu tiên cho học sinh bản xứ và chỉ nhận một số lượng học sinh quốc tế nhất định cho chương trình A levels. Học phí tại đây thường rẻ, trung bình ctừ 6.000-10.000 GBP một năm với sĩ số lớp học đông hơn so với trường tư.&nbsp;</p>\r\n\r\n<p>Đại diện công ty Đức Anh cho biết các trường công chủ yếu tập trung vào việc giảng dạy, ít có các dịch vụ hỗ trợ và giúp đỡ học sinh quốc tế. Việc học cùng với đa số bạn học người bản địa sẽ vừa là cơ hội để tăng khả năng sử dụng tiếng Anh đồng thời là thách thức đối với học sinh nước ngoài.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://localhost:8080/xaydungweb/upload/images/Image-274877893-ExtractWord-1-6929-7549-1489141482.png" style="height:500px; width:500px" /></p>\r\n\r\n<p>Vũ Thiên Hương là sinh viên Việt Nam đã hoàn thành A Levels tại CATS Cambridge với 4 điểm A* và giành được học bổng Jardine trị giá 150.000 bảng Anh của Đại học Cambridge. Ở đây, học sinh được thử thách và phát huy khả năng học tập, sự bền bỉ về cảm xúc và niềm đam mê chuyên môn.</p>\r\n\r\n<p>"Môi trường học tập quốc tế, giáo viên và bạn bè đã truyền cảm hứng cho tôi trở thành một người yêu khoa học, có tư duy phản biện, tư duy độc lập và quan tâm tới văn hóa, xã hội. Tôi rất biết ơn các buổi phỏng vấn giả lập, các buổi sửa bài, các lớp gia sư và vô số giờ mà gia sư cá nhân của tôi đã bỏ ra để giúp tôi hoàn thiện các đơn đăng ký vào đại học của mình", Hương cho biết. gggg</p>\r\n', 'upload/du_hoc.png', 'upload/resized/du_hoc_thumb.png', 2, '2017-03-15', '08:00 PM', 0, 1),
(4, 41, 'Du học sinh Việt tạo trại hè khoa học lý thú cho học sinh cấp 3', '(Dân trí) - Trại hè Toán và Khoa học miễn phí – MaSSP do các sinh viên Việt tại Mỹ tổ chức bước sang mùa thứ 2 với quy mô lớn hơn, hứa hẹn sẽ đem đến cho các bạn học sinh THPT trên cả nước một mùa hè ', '<h2>(Dân trí) - Trại hè Toán và Khoa học miễn phí – MaSSP do các sinh viên Việt tại Mỹ tổ chức bước sang mùa thứ 2 với quy mô lớn hơn, hứa hẹn sẽ đem đến cho các bạn học sinh THPT trên cả nước một mùa hè 2017 sôi động, bổ ích.</h2>\r\n\r\n<p>Với mong muốn mang đến cho các bạn học sinh cấp 3 ở Việt Nam cơ hội được nghiên cứu chuyên sâu và hiểu biết về ứng dụng của Toán và Khoa học, bằng những kiến thức mình học được ở trường, lớp, đồng thời học hỏi thêm các công cụ hữu ích, 4 nữ du học sinh Mỹ là Lê Hồng Nhung (sinh viên Toán và Kinh Tế trường đại học Wellesley), Đỗ Thị Thu Thảo (sinh viên cao học năm 2 tại đại học MIT), Vũ Minh Châu (cựu sinh viên đại học MIT) và Nguyễn Thị Trinh (sinh viên năm cuối tại đại học MIT chuyên ngành Kĩ sư sinh học) đã cùng nhau sáng lập nên trại hè Toán và Khoa học MaSSP.</p>\r\n\r\n<p>Năm đầu tiên tổ chức, 24 bạn học sinh từ 9 tỉnh và thành phố đã được cùng hội ngộ và làm dự án Toán và Tin trong 2 tuần, dưới sự hướng dẫn của các anh chị du học sinh đến từ MIT, The University of Chicago, và các trường đại học lớn tại Việt Nam, MaSSP - trại hè Toán và Khoa học dành cho các bạn học sinh THPT trên cả nước đã quay trở lại.</p>\r\n', 'upload/massp1-1489806095879.jpg', 'upload/resized/massp1-1489806095879_thumb.jpg', 6, '2017-03-24', '11:00 PM', 0, 1),
(5, 41, 'Cô gái Việt chiến thắng tại cuộc thi ý tưởng khởi nghiệp trên đất Pháp', '(Dân trí) - Cô gái Đoàn Thị Hạnh vừa qua đã chiến thắng trong cuộc thi “Ý tưởng khởi nghiệp” và giành giải “Doanh nhân trẻ tiềm năng” dành cho người lao động trẻ tuổi từ 18 đến 32 tại Pháp. ', '<h2>(Dân trí) - Cô gái Đoàn Thị Hạnh vừa qua đã chiến thắng trong cuộc thi “Ý tưởng khởi nghiệp” và giành giải “Doanh nhân trẻ tiềm năng” dành cho người lao động trẻ tuổi từ 18 đến 32 tại Pháp.</h2>\r\n\r\n<p>Các cuộc thi này do Adie – Hiệp hội Sáng kiến phát triển kinh tế, tổ chức. Đây là hiệp hội thuộc nhà nước Pháp nhằm hỗ trợ tài chính cho các doanh nghiệp trẻ, tư vấn, giúp đỡ và theo dõi trong suốt quá trình khởi nghiệp.</p>\r\n\r\n<p>Ngay từ khi đặt chân đến Pháp, Đoàn Thị Hạnh đã hiểu rằng muốn hòa nhập và phát triển trên đất nước hình lục lăng này không có cách nào khác là phải học và sử dụng tiếng Pháp như ngôn ngữ mẹ đẻ. Hai năm đầu tiên cô gái trẻ người Nam Định đã tập trung toàn bộ thời gian của mình để theo học chuyên ngành nâng cao ngôn ngữ. Sau đó Hạnh tiếp tục theo học ngành ngân hàng.</p>\r\n\r\n<p>Tốt nghiệp năm 2014 cũng là giai đoạn Pháp đối mặt với tỉ lệ thất nghiệp tăng vọt biến, Hạnh đã ngay lập tức lên kế hoạch cho ý tưởng “Nem và ẩm thực Việt nam Bio với các nguyên liệu sạch 100% hữu cơ”.</p>\r\n\r\n<p>Và tháng 2/2017 vừa qua, Hạnh vinh dự vượt qua các bạn trẻ người Pháp và người nước ngoài khác giành nhận các giải thưởng và đặc biệt là sự giúp đỡ của các hiệp hội chính phủ Pháp để tiếp tục hoàn thành ước mơ quảng bá ẩm thực Việt nam ra thế giới của mình.</p>\r\n', 'upload/doanthihanh2-1489199445282.jpg', 'upload/resized/doanthihanh2-1489199445282_thumb.jpg', 23, '2017-03-24', '11:04 PM', 0, 1),
(6, 41, '8X Việt nghiên cứu trí tuệ nhân tạo, giành học bổng tiến sĩ Mỹ 7 tỷ đồng', '(Dân trí) - Vừa nghiên cứu về não và trí tuệ nhân tạo, vừa dạy học tại Viện Công nghệ số 1 thế giới Massachusetts (Boston, Mỹ), Lê Mậu Tuấn vẫn dành nhiều thời gian để hướng dẫn các bạn trẻ có đam mê ', '<h2>(Dân trí) - Vừa nghiên cứu về não và trí tuệ nhân tạo, vừa dạy học tại Viện Công nghệ số 1 thế giới Massachusetts (Boston, Mỹ), Lê Mậu Tuấn vẫn dành nhiều thời gian để hướng dẫn các bạn trẻ có đam mê tạo ra những dự án ý nghĩa cho xã hội.</h2>\r\n\r\n<p><strong>Vừa nghiên cứu tiến sĩ ở MIT, vừa học thạc sĩ Y khoa Harvard</strong></p>\r\n\r\n<p>Lê Mậu Tuấn, 28 tuổi, đang là nghiên cứu sinh tiến sĩ ngành Khoa học máy tính và Trí tuệ nhân tạo tại Học viện Công nghệ Massachusetts (Massachusetts Institute of Technology - MIT).</p>\r\n\r\n<p>Tuấn du học từ năm 15 tuổi với học bổng toàn phần ASEAN của Chính phủ Singapore. Hoàn thành chương trình cấp 2 và cấp 3 tại quốc đảo sư đảo, chàng trai Việt giành học bổng toàn phần trị giá 34.000 bảng Anh/năm từ trường Imperial College London.</p>\r\n\r\n<p>Tốt nghiệp Kỹ sư Điện tử tại Anh quốc, Tuấn nhận ra niềm say mê nghiên cứu ứng dụng thông tin điện tử công nghệ cao trong phục hồi chức năng cho các bệnh nhân bị đột quỵ, nên đã quay trở lại Singapore để tham gia nghiên cứu đề tài này.</p>\r\n', 'upload/mautuan1-1489621052545.jpg', 'upload/resized/mautuan1-1489621052545_thumb.jpg', 3, '2017-03-24', '11:06 PM', 0, 1),
(7, 41, 'Gần 1000 sinh viên quốc tế háo hức xếp hàng thưởng thức bánh mì, phở bò Việt', '(Dân trí) - Một Việt Nam bình dị với nét ẩm thực đặc sắc khó quên được quảng bá tới đông đảo bạn bè quốc tế trong Lễ hội Văn hóa Việt Nam 2017 tại trung tâm thủ đô London, Anh Quốc diễn ra ngày 17/3 v', '<h2>(Dân trí) - Một Việt Nam bình dị với nét ẩm thực đặc sắc khó quên được quảng bá tới đông đảo bạn bè quốc tế trong Lễ hội Văn hóa Việt Nam 2017 tại trung tâm thủ đô London, Anh Quốc diễn ra ngày 17/3 vừa qua.</h2>\r\n\r\n<p>Lễ hội Văn hóa Việt Nam 2017 do Hội Sinh viên Việt Nam tại Đại học University College London (UCL) tổ chức với sự giúp đỡ của Đại sứ quán Việt Nam tại Vương quốc Anh, Tổng hội Sinh viên Việt Nam tại Vương quốc Anh và Bắc Ai-len (SVUK) thu hút sự tham gia của gần 1000 sinh viên quốc tế.</p>\r\n\r\n<p>Lễ hội tập trung quảng bá văn hóa Việt Nam thông qua buổi triễn lãm tranh ảnh về đất nước, con người Việt Nam và các quầy bán thức ăn ngoài trời đến từ những nhà hàng Việt Nam hàng đầu Luân Đôn.</p>\r\n\r\n<p>Sau thành công 2 năm đầu, lễ hội năm nay tiếp tục mang đến những nét đẹp ẩm thực, đất nước, con người Việt Nam đến với bạn bè quốc tế nhằm thúc đẩy giao lưu văn hóa, khơi dậy tinh thần yêu nước của du học sinh Việt Nam và cộng đồng người Việt tại Anh.</p>\r\n', 'upload/lehoi2-1490332771453.jpg', 'upload/resized/lehoi2-1490332771453_thumb.jpg', 10, '2017-03-24', '11:10 PM', 0, 1),
(8, 41, 'Đại học giảng dạy hay nghiên cứu 2018', 'Bảng xếp hạng của Times Higher Education được xây dựng trên tiêu chí giảng dạy 25%, tiêu chí nghiên cứu và liên quan nghiên cứu chiếm 75%. Vậy nhiệm vụ chính của một trường đại học là giảng dạy hay ng', '<h2>Bảng xếp hạng của Times Higher Education được xây dựng trên tiêu chí giảng dạy 25%, tiêu chí nghiên cứu và liên quan nghiên cứu chiếm 75%. Vậy nhiệm vụ chính của một trường đại học là giảng dạy hay nghiên cứu? Dưới đây là góc nhìn của TS. Lê Đức Tùng (giảng viên ĐH London) qua bức tranh giáo dục của Anh quốc.</h2>\r\n\r\n<p>Mới đây, tạp chí Times Higher Education công bố top 300 trường đại học tốt nhất châu Á năm 2017. Việt Nam hoàn toàn “vắng bóng” trong danh sách.</p>\r\n\r\n<p>Và theo bảng xếp hạng đại học này thì nghiên cứu đóng vai trò trọng yếu: chỉ 25% là giảng dạy, 75% còn lại là nghiên cứu và liên quan tới nghiên cứu.</p>\r\n\r\n<p>Cụ thể, bảng xếp hạng đại học châu Á của Times Higher Education được bình chọn dựa trên 13 tiêu chí chia thành 4 lĩnh vực: giảng dạy chiếm 25%, nghiên cứu 30%, tầm ảnh hưởng nghiên cứu chiếm 30%, triển vọng quốc tế chiếm 7,5% và chuyển giao kiến thức 7,5%.</p>\r\n\r\n<p>Dễ thấy, từ lâu đại học không chỉ là nơi trao đổi kiến thức mà là nơi phát triển kiến thức mới. Do đó, nghiên cứu là một hoạt động không thể thiếu ở môi trường đại học. Bảng xếp hạng của Times Higher Education xem hoạt động nghiên cứu gần như là thước đo chính.</p>\r\n\r\n<p>Vậy rốt cuộc nhiệm vụ chính của một trường đại học là giảng dạy hay nghiên cứu? Và hoạt động nào quan trọng hơn?</p>\r\n', 'upload/bxh2-1490058129870.png', 'upload/resized/bxh2-1490058129870_thumb.png', 130, '2017-03-24', '11:12 PM', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tbldanhmucbaiviet`
--

CREATE TABLE `tbldanhmucbaiviet` (
  `id` int(10) NOT NULL,
  `danhmucbaiviet` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(10) NOT NULL,
  `menu` int(1) NOT NULL,
  `home` int(1) NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tbldanhmucbaiviet`
--

INSERT INTO `tbldanhmucbaiviet` (`id`, `danhmucbaiviet`, `parent_id`, `menu`, `home`, `ordernum`, `status`) VALUES
(20, 'Giáo dục', 0, 1, 0, 0, 1),
(21, 'Pháp luật', 0, 1, 0, 0, 1),
(22, 'Thể thao', 0, 1, 0, 0, 1),
(23, 'Giải trí', 0, 1, 0, 0, 1),
(24, 'Kinh doanh', 0, 1, 0, 0, 1),
(25, 'Thế giới', 0, 0, 0, 0, 1),
(26, 'Quân sự', 25, 1, 0, 0, 1),
(27, 'Cuộc sống đó đây', 25, 1, 0, 0, 1),
(28, 'Người Việt Nam Châu', 25, 1, 0, 0, 1),
(29, 'Vĩ mô', 24, 1, 0, 0, 1),
(30, 'Chứng khoán', 24, 1, 0, 0, 1),
(31, 'Khởi nghiệp', 24, 1, 0, 0, 1),
(32, 'Thương mại điện tử', 24, 1, 0, 0, 1),
(33, 'Bất động sản', 24, 1, 0, 0, 1),
(34, 'Nhà đất', 33, 1, 0, 0, 1),
(35, 'Làm đẹp', 23, 1, 0, 0, 1),
(36, 'Thời trang', 23, 1, 0, 0, 1),
(37, 'Giới sao', 23, 1, 0, 0, 1),
(38, 'Bóng đá', 22, 1, 0, 0, 1),
(39, 'Tennis', 22, 1, 0, 0, 1),
(40, 'Các môn khác', 22, 1, 0, 0, 1),
(41, 'Du học', 20, 1, 0, 0, 1),
(42, 'Tuyển sinh', 20, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblgopy`
--

CREATE TABLE `tblgopy` (
  `id` int(10) NOT NULL,
  `title` int(10) NOT NULL,
  `hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tblgopy`
--

INSERT INTO `tblgopy` (`id`, `title`, `hoten`, `dienthoai`, `diachi`, `email`, `noidung`, `status`) VALUES
(1, 8, 'Vũ Văn TÙng', '0985 261 445', 'Hải Phòng', 'tungvu90@gmail.com', 'Xin chào các bạn của tôi ơi', 0),
(2, 8, 'Vũ Văn TÙng', '0985 261 445', 'Hải Phòng', 'tungvu90@gmail.com', 'gjjkkkkk', 0),
(3, 8, 'Vũ Văn TÙng', '0985 261 445', '7th Floor, VCCI Building, No1 Le Nin street, Vinh city, Nghe An province, Viet Nam', 'tungvu90@gmail.com', 'ggggggggggggggg', 0),
(4, 8, 'Vũ Văn TÙng', '0985 261 445', '7th Floor, VCCI Building, No1 Le Nin street, Vinh city, Nghe An province, Viet Nam', 'tungvu90@gmail.com', 'gggggggggg', 0),
(5, 8, 'Vũ Văn TÙng', '0985 261 445', '7th Floor, VCCI Building, No1 Le Nin street, Vinh city, Nghe An province, Viet Nam', 'tungvu90@gmail.com', 'ggggggggggggg', 0),
(6, 8, 'Nguyễn Xuân A', '01664295022', 'HP', 'huy@gmail.com', 'ccccccccccccccc', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tbllienhe`
--

CREATE TABLE `tbllienhe` (
  `id` int(10) NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `ngaydang` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tblsanpham`
--

CREATE TABLE `tblsanpham` (
  `id` int(10) NOT NULL,
  `ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gia` int(10) NOT NULL,
  `donvitinh` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tblsanpham`
--

INSERT INTO `tblsanpham` (`id`, `ten`, `anh`, `gia`, `donvitinh`) VALUES
(1, 'HTC', 'upload/htc.png', 8000000, 'đ'),
(2, 'Iphone 5s', 'upload/Iphone-5s.jpg', 9000000, 'đ'),
(3, 'Iphone 6s', 'upload/iphone6s.jpg', 14000000, 'đ'),
(4, 'Nokia lumia 730', 'upload/lumia730.jpg', 3500000, 'đ'),
(5, 'Nokia Lumia 1520', 'upload/lumia1520.jpg', 2000000, 'đ'),
(6, 'Nokia', 'upload/nokia.jpg', 500000, 'đ'),
(7, 'Samsung Galaxys 6 Edge', 'upload/samsunggalaxys6edge.jpg', 14000000, 'đ'),
(8, 'Sony Xperia 5', 'upload/sonyxperiam5.jpg', 6000000, 'đ');

-- --------------------------------------------------------

--
-- Structure de la table `tblslider`
--

CREATE TABLE `tblslider` (
  `id` int(10) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anh_thumb` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tblslider`
--

INSERT INTO `tblslider` (`id`, `title`, `anh`, `anh_thumb`, `link`, `ordernum`, `status`) VALUES
(33, 'Body cho bé thoáng mát', 'upload/ao-brazin-san-nha-2016.jpg', 'upload/resized/ao-brazin-san-nha-2016_thumb.jpg', '', 0, 1),
(34, 'anh 3', 'upload/ao_bong_da_tre.jpg', 'upload/resized/ao_bong_da_tre_thumb.jpg', '', 0, 1),
(36, 'Dịch vụ taxi tải', 'upload/143159693329.gif', 'upload/resized/143159693329_thumb.gif', '', 0, 1),
(37, 'slider ', 'upload/ketthuc.jpg', 'upload/resized/ketthuc_thumb.jpg', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblsupports`
--

CREATE TABLE `tblsupports` (
  `id` int(10) NOT NULL,
  `yahoo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `skyper` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tblthongtincongty`
--

CREATE TABLE `tblthongtincongty` (
  `id` int(10) NOT NULL,
  `tencongty` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hotline` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(10) NOT NULL,
  `taikhoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tbluser`
--

INSERT INTO `tbluser` (`id`, `taikhoan`, `matkhau`, `hoten`, `dienthoai`, `email`, `diachi`, `role`, `status`) VALUES
(2, 'tungvu90', '40080e38757097e6c2c8af4ee4f04c7d', 'Vũ Văn Tùng', '01664295022', 'tungvu90@gmail.com', 'Hải Phòng', ',Danh mục bài viết-add_danhmucbv.php-list_danhmucbv.php-edit_danhmucbv.php-delete_danhmucbv.php,Quản lý bài viết-add_baiviet.php-list_baiviet.php-edit_baiviet.php-delete_baiviet.php,Quản lý Slider-add_slider.php-list_slider.php-edit_slider.php-delete_slider.php,Quản lý Video-add_video.php-list_video.php-edit_video.php-delete_video.php,Quản lý User-add_user.php-list_user.php-edit_user.php-delete_user.php', 1),
(3, 'tungvu80', '25f9e794323b453885f5181f1b624d0b', 'Nguyễn Thị Thu Hà', '01664589022', 'kythuat@hpsoft.vn', 'Hải Phòng', '', 1),
(4, 'nguyenthiha90', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Thị Hà', '01664589022', 'nguyenthiha90@gmail.com', 'Hải Phòng', '', 1),
(5, 'nguyenvanhung88', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Văn Hùng', '0313 123 456', 'nguyenvanhung@gmail.com', 'Hải Phòng', '', 1),
(6, 'vukimoanh94', 'e10adc3949ba59abbe56e057f20f883e', 'Vũ Kim Oanh', '04.39780780 - 0912750879', 'oanhvu94@gmail.com', 'Hải Phòng', '', 1),
(7, 'vungoclan99', '25f9e794323b453885f5181f1b624d0b', 'Vũ Ngọc Lan', '04.39780780 - 0912750879', 'ngoclan99@gmail.com', 'Hải Phòng', ',Quản lý Video-add_video.php-list_video.php-edit_video.php-delete_video.php', 1),
(8, 'nguyena90', '25f9e794323b453885f5181f1b624d0b', 'Nguyễn Văn A', '01664295063', 'nguyena90@gmail.com', 'Hà Nội', ',Danh mục bài viết-add_danhmucbv.php-list_danhmucbv.php-edit_danhmucbv.php-delete_danhmucbv.php,Quản lý bài viết-add_baiviet.php-list_baiviet.php-edit_baiviet.php-delete_baiviet.php', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblvideo`
--

CREATE TABLE `tblvideo` (
  `id` int(10) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tblvideo`
--

INSERT INTO `tblvideo` (`id`, `title`, `link`, `ordernum`, `status`) VALUES
(33, 'Chỉ yêu mình em', 'https://www.youtube.com/watch?v=nEvL8UlKkgc', 0, 1),
(34, 'Du hành khắp thiên hạ', 'https://www.youtube.com/watch?v=aaxyjHbqBx4', 0, 1),
(35, 'Cô dâu không phải là em', 'https://www.youtube.com/watch?v=fIcTuBXPyOo', 0, 1),
(36, 'Không có anh bên cạnh em thật sự cô đơn', 'https://www.youtube.com/watch?v=3G03K6cS4Uw', 0, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblalbumanh`
--
ALTER TABLE `tblalbumanh`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblbaiviet`
--
ALTER TABLE `tblbaiviet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbldanhmucbaiviet`
--
ALTER TABLE `tbldanhmucbaiviet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblgopy`
--
ALTER TABLE `tblgopy`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbllienhe`
--
ALTER TABLE `tbllienhe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblsanpham`
--
ALTER TABLE `tblsanpham`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblslider`
--
ALTER TABLE `tblslider`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblsupports`
--
ALTER TABLE `tblsupports`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblthongtincongty`
--
ALTER TABLE `tblthongtincongty`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT pour la table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tblalbumanh`
--
ALTER TABLE `tblalbumanh`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `tblbaiviet`
--
ALTER TABLE `tblbaiviet`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `tbldanhmucbaiviet`
--
ALTER TABLE `tbldanhmucbaiviet`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `tblgopy`
--
ALTER TABLE `tblgopy`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `tbllienhe`
--
ALTER TABLE `tbllienhe`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tblsanpham`
--
ALTER TABLE `tblsanpham`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `tblslider`
--
ALTER TABLE `tblslider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `tblsupports`
--
ALTER TABLE `tblsupports`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tblthongtincongty`
--
ALTER TABLE `tblthongtincongty`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `tblvideo`
--
ALTER TABLE `tblvideo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
