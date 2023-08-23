-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 23, 2023 lúc 07:43 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `content`, `image`, `created_at`) VALUES
(1, 'Phối đồ với Giày Nike Air Force 1 Low Brooklyn Cream – Giày Nike âm Dương', '<p><strong>Gi&agrave;y Nike Air Force 1 Low Brooklyn Cream &ndash; Gi&agrave;y Nike &acirc;m Dương</strong>&nbsp;l&agrave; c&aacute;i t&ecirc;n đ&atilde; g&acirc;y chấn động cộng đồng sneakerheads tr&ecirc;n to&agrave;n thế giới v&agrave; cả Việt Nam cũng kh&ocirc;ng ngoại lệ. Đ&ocirc;i gi&agrave;y Nike AF1 mới n&agrave;y nổi bật với phần kiểu d&aacute;ng v&ocirc; c&ugrave;ng độc đ&aacute;o, đế gi&agrave;y đặc biệt gi&uacute;p hack chiều cao đ&aacute;ng kể cũng l&agrave; một trong những điểm thu h&uacute;t sự ch&uacute; &yacute;. Vậy th&igrave; với một đ&ocirc;i gi&agrave;y c&oacute; thiết kế đơn giản, m&agrave;u sắc trắng tinh tế như vậy th&igrave; ch&uacute;ng ta n&ecirc;n chọn c&aacute;ch phối đồ với Nike &acirc;m Dương như thế n&agrave;o để thật nổi bật v&agrave; thu h&uacute;t nhỉ? H&atilde;y c&ugrave;ng Tyhi Sneaker t&igrave;m hiểu xem mọi người phối đồ với Gi&agrave;y Nike &Acirc;m Dương như thế n&agrave;o nh&eacute;!</p>\r\n\r\n<p><img alt=\"Nike âm dương\" src=\"https://tyhisneaker.com/wp-content/uploads/2023/03/nike-am-duong.png\" style=\"height:560px; width:560px\" title=\"Phối đồ với Giày Nike Air Force 1 Low Brooklyn Cream – Giày Nike âm Dương\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Những c&aacute;ch phối đồ c&ugrave;ng với gi&agrave;y Nike &acirc;m Dương</strong></h3>\r\n\r\n<p>Học Tiktoker Nam Ho&agrave;ng c&aacute;ch phối đồ c&ugrave;ng Nike &acirc;m Dương:<br />\r\nCh&agrave;ng Tiktoker giới trẻ n&agrave;y diện Nike &acirc;m Dương khi ra đi chơi, dạo phố n&ecirc;n chắc chắn trang phục của anh ch&agrave;ng sẽ v&ocirc; c&ugrave;ng thoải m&aacute;i v&agrave; năng động, một ch&uacute;t street style. Sẽ rất ph&ugrave; hợp với những điểm thiết kế của Nike &acirc;m Dương.</p>\r\n\r\n<p>Anh ch&agrave;ng diện cho m&igrave;nh một chiếc quần jogger m&agrave;u đem kh&aacute; basic nhưng vẫn rất t&ocirc;n d&aacute;ng đ&uacute;ng kh&ocirc;ng n&agrave;o. C&ocirc; n&agrave;ng lựa chọn phối c&ugrave;ng với chiếc &aacute;o sơ mi kem hoạ tiết LV đen nổi bật, độc lạ gi&uacute;p h&agrave;i h&ograve;a bộ outfit của c&ocirc; n&agrave;ng. M&agrave;u &aacute;o cũng matching với m&agrave;u của đ&ocirc;i gi&agrave;y n&ecirc;n nh&igrave;n tổng thể bộ đồ của Nam Ho&agrave;ng rất h&agrave;i h&ograve;a v&agrave; nổi bật.</p>\r\n\r\n<p><img alt=\"phoi do voi nike am duong\" src=\"https://tyhisneaker.com/wp-content/uploads/2023/03/phoi-do-voi-nike-am-duong.webp\" style=\"height:560px; width:560px\" title=\"Phối đồ với Giày Nike Air Force 1 Low Brooklyn Cream – Giày Nike âm Dương\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với bộ outfit n&agrave;y ch&uacute;ng ta c&oacute; thể đi hẹn h&ograve;, dạo phố, đi coffee c&ugrave;ng bạn b&egrave;, đi dạo phố,&hellip; vẫn rất thời trang v&agrave; hợp phong c&aacute;ch đ&oacute; nha. Nếu bạn chưa biết phối g&igrave; với Nike &acirc;m Dương th&igrave; c&oacute; thể học theo n&agrave;ng Nam Ho&agrave;ng nh&eacute;!</p>\r\n', 'Images/blog/nike-am-duong-300x150.png', '2023-08-23 23:34:51'),
(2, 'Đánh giá giày Jordan 1 Zoom Air PSG Paris Saint', '<p>Chắc hẳn c&aacute;c bạn trẻ v&agrave; đặc biệt l&agrave; những bạn y&ecirc;u th&iacute;ch b&oacute;ng rổ th&igrave; sẽ kh&ocirc;ng thể bỏ qua những đ&ocirc;i gi&agrave;y thể thao của nh&agrave; Nike Jordan đ&uacute;ng kh&ocirc;ng n&agrave;o. V&agrave; đương nhi&ecirc;n l&agrave; kh&ocirc;ng thể kh&ocirc;ng biết đội b&oacute;ng rổ chuy&ecirc;n nghiệp của Ph&aacute;p &ndash; Paris Saint Germain nhỉ. Mới đ&acirc;y nh&agrave; Nike Jordan đ&atilde; kết hợp c&ugrave;ng với đội b&oacute;ng rổ n&agrave;y cho ra mắt một si&ecirc;u phẩm mang t&ecirc;n của đội l&agrave;<strong>&nbsp;Jordan 1 Paris Saint Germain</strong>&nbsp;cực k&igrave; hot.</p>\r\n\r\n<p><img alt=\"danh gia chi tiet giay jordan 1 zoom air psg paris saint germain\" src=\"https://tyhisneaker.com/wp-content/uploads/2021/04/danh-gia-chi-tiet-giay-jordan-1-zoom-air-psg-paris-saint-germain.jpeg\" style=\"height:720px; width:880px\" title=\"Đánh giá giày Jordan 1 Zoom Air PSG Paris Saint\" /></p>\r\n\r\n<h2>Chọn mua gi&agrave;y Nike Air Jordan 1 Zoom Air PSG Paris Saint-Germain ở đ&acirc;u?</h2>\r\n\r\n<p>Với một đ&ocirc;i gi&agrave;y đ&aacute;nh gi&aacute; sự collab giữa hai &ocirc;ng lớn như vậy v&agrave; thiết kế v&ocirc; c&ugrave;ng đặc biệt, mới lạ như Jordan 1 Paris Saint Germain th&igrave; gi&aacute; cả của những đ&ocirc;i n&agrave;y sẽ kh&ocirc;ng hề thấp. Việc t&igrave;m mua được gi&agrave;y ch&iacute;nh h&atilde;ng của v&ocirc; c&ugrave;ng kh&oacute;.</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; vậy nhu cầu t&igrave;m mua những đ&ocirc;i jordan PSG rep 1:1 l&agrave; v&ocirc; c&ugrave;ng nhiều. Nếu bạn đang t&igrave;m cho m&igrave;nh chỗ mua gi&agrave;y replica th&igrave; h&atilde;y đến ngay với TyHi Sneaker nh&eacute;!</p>\r\n\r\n<p><img alt=\"2e43de8e ce6c 4276 b51e eb5e45beaa66\" src=\"https://tyhisneaker.com/wp-content/uploads/2021/04/2e43de8e-ce6c-4276-b51e-eb5e45beaa66.jpeg\" style=\"height:640px; width:640px\" title=\"Đánh giá giày Jordan 1 Zoom Air PSG Paris Saint\" /></p>\r\n\r\n<p>Những đ&ocirc;i gi&agrave;y tại TyHi Sneaker lu&ocirc;n được đảm bảo về chất lượng, giống với h&agrave;ng ch&iacute;nh h&atilde;ng đến 90% lận đ&oacute; nha. Ngo&agrave;i ra th&igrave; khi mua gi&agrave;y ở TyHi Sneaker c&aacute;c bạn c&oacute; thể tiết kiệm cho m&igrave;nh từ 10% đến 30% so với khi mua ở c&aacute;c shop gi&agrave;y kh&aacute;c đấy. Vậy th&igrave; c&ograve;n chần chừ g&igrave; nữa m&agrave; kh&ocirc;ng đến ngay với TyHi Sneaker n&agrave;o.</p>\r\n', 'Images/blog/danh-gia-chi-tiet-giay-jordan-1-zoom-air-psg-paris-saint-germain-300x169.jpg', '2023-08-23 23:38:05'),
(3, 'Phối đồ với giày Converse Run Star Hike cá tính phong cách thời trang', '<h3><strong>Những điểm nổi bật của gi&agrave;y Converse Run Star Hike:</strong></h3>\r\n\r\n<p>Phi&ecirc;n bản Converse Run Star Hike rep 1 1 được tr&igrave;nh l&agrave;ng với hai m&agrave;u cơ bản l&agrave; đen v&agrave; trắng. L&agrave; 2 gam m&agrave;u rất dễ sử dụng v&agrave; dễ b&aacute;n nhất. Được lấy cảm hứng từ những đ&ocirc;i gi&agrave;y thể thao n&ecirc;n Converse Run Star Hike được thiết kế rất chắc chắn v&agrave; &ocirc;m ch&acirc;n.</p>\r\n\r\n<p><img alt=\"phoi do voi giay converse run star hike ca tinh phong cach thoi trang 7\" src=\"https://tyhisneaker.com/wp-content/uploads/2021/03/phoi-do-voi-giay-converse-run-star-hike-ca-tinh-phong-cach-thoi-trang-7.webp\" style=\"height:600px; width:600px\" title=\"Phối đồ với giày Converse Run Star Hike cá tính phong cách thời trang\" /></p>\r\n\r\n<p>Mẫu gi&agrave;y n&agrave;y vẫn sử dụng bộ đế răng cưa nh&ocirc; cao gi&uacute;p bạn c&oacute; thể &ldquo;ăn gian&rdquo; chiều cao một c&aacute;ch đ&aacute;ng kể đấy nh&eacute;. Đ&acirc;y l&agrave; một điểm cộng to lớn cho thiết kế lần n&agrave;y. Gi&agrave;y Run Star Hike được thiết kế đặc biệt kh&aacute;c hẳn những người anh em đ&atilde; ra mắt trước n&oacute; với phần cổ v&agrave; d&acirc;y gi&agrave;y thấp, sẽ tạo cho bạn một cảm gi&aacute;c thoải m&aacute;i v&agrave; bạn c&oacute; thể tự do vận động ở v&ugrave;ng mắt c&aacute; ch&acirc;n.</p>\r\n\r\n<p>Chất liệu của đ&ocirc;i gi&agrave;y n&agrave;y cũng l&agrave; một điểm cộng to lớn, với c&aacute;c sợi dệt chắc chắn. Tr&ecirc;n th&acirc;n gi&agrave;y xuất hiện những đường chỉ trắng được đan xen tỉ mỉ.</p>\r\n\r\n<p>Nh&igrave;n vẻ bề ngo&agrave;i th&igrave; chắc c&aacute;c bạn đo&aacute;n rằng Run Star Hike chắc sẽ nặng giống Balenciaga đ&uacute;ng kh&ocirc;ng n&agrave;o. Nhưng m&agrave; kh&ocirc;ng đ&acirc;u nh&eacute;, Converse đ&atilde; thiết kế tối giản trọng lượng n&ecirc;n bạn c&oacute; thể thoải m&aacute;i mang cả một ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng hề lo vấn đề đau mỏi ch&acirc;n.</p>\r\n\r\n<p>Ưu điểm của Converse Run Star Hike rất nhiều v&agrave; chắc chắn sẽ kh&ocirc;ng l&agrave;m bạn phải thất vọng với những ưu điểm đ&oacute; đ&acirc;u nha!</p>\r\n\r\n<blockquote>\r\n<p><a href=\"https://tyhisneaker.com/san-pham/giay-converse-run-star-hike-hi-jw-anderson-black-2/\">Mua gi&agrave;y Converse Run Star Hike chuẩn h&agrave;ng Trung si&ecirc;u cấp tại Tyhi Sneaker gi&aacute; rẻ</a></p>\r\n</blockquote>\r\n\r\n<h3><strong>Những c&aacute;ch phối đồ c&ugrave;ng với gi&agrave;y Converse Run Star Hike</strong></h3>\r\n\r\n<p>Học Jennie ( BlackPink ) c&aacute;ch phối đồ c&ugrave;ng Converse Run Star Hike:<br />\r\nC&ocirc; n&agrave;ng ca sĩ Kpop n&agrave;y diện Run Star Hike khi ra s&acirc;n bay n&ecirc;n chắc chắn trang phục của c&ocirc; n&agrave;ng sẽ v&ocirc; c&ugrave;ng thoải m&aacute;i v&agrave; năng động. Sẽ rất ph&ugrave; hợp với những điểm thiết kế của Run Star Hike.</p>\r\n\r\n<p>C&ocirc; n&agrave;ng diện cho m&igrave;nh một chiếc quần baggy m&agrave;u kem kh&aacute; basic nhưng vẫn rất t&ocirc;n d&aacute;ng đ&uacute;ng kh&ocirc;ng n&agrave;o. C&ocirc; n&agrave;ng lựa chọn phối c&ugrave;ng với chiếc &aacute;o d&acirc;y ch&eacute;o m&agrave;u đen nổi bật, độc lạ gi&uacute;p h&agrave;i h&ograve;a bộ outfit của c&ocirc; n&agrave;ng. M&agrave;u &aacute;o cũng matching với m&agrave;u của đ&ocirc;i gi&agrave;y n&ecirc;n nh&igrave;n tổng thể bộ đồ của Jennie rất h&agrave;i h&ograve;a v&agrave; nổi bật.</p>\r\n\r\n<p><img alt=\"phoi do voi giay converse run star hike ca tinh phong cach thoi trang 1\" src=\"https://tyhisneaker.com/wp-content/uploads/2021/03/phoi-do-voi-giay-converse-run-star-hike-ca-tinh-phong-cach-thoi-trang-1.webp\" style=\"height:800px; width:800px\" title=\"Phối đồ với giày Converse Run Star Hike cá tính phong cách thời trang\" /></p>\r\n\r\n<p>Với bộ outfit n&agrave;y ch&uacute;ng ta c&oacute; thể đi hẹn h&ograve;, đi coffee c&ugrave;ng bạn b&egrave;, đi dạo phố,&hellip; vẫn rất thời trang v&agrave; hợp phong c&aacute;ch đ&oacute; nha. Nếu bạn chưa biết phối g&igrave; với Run Star Hike th&igrave; c&oacute; thể học theo n&agrave;ng Jennie BlackPink nh&eacute;!</p>\r\n', 'Images/blog/phoi-do-voi-giay-converse-run-star-hike-ca-tinh-phong-cach-thoi-trang-4-300x193.jpg', '2023-08-23 23:40:36'),
(4, 'Top 10+ Ảnh Phối đồ phong cách cổ điển với Giày Jordan 1 low Paris', '<p>Phối đồ c&ugrave;ng jordan 1 low paris như thế n&agrave;o để vừa sang vừa chất. Dưới đ&acirc;y l&agrave; c&aacute;ch phối đồ với Jordan 1 Mid Chile Red White với nhiều c&aacute;ch phối đồ cực đỉnh, l&agrave;m cho c&aacute;c t&iacute;n đồ m&ecirc; gi&agrave;y jordan ngất ng&acirc;y.</p>\r\n\r\n<h3>Phối đồ với gi&agrave;y Jordan 1 low Paris hợp thời trang v&agrave; Phong C&aacute;ch</h3>\r\n\r\n<p><img alt=\"Top 10+ Ảnh Phối đồ phong cách cổ điển với Giày Jordan 1 low Paris\" src=\"https://tyhisneaker.com/wp-content/uploads/2022/10/phoi-do-voi-giay-jordan-1-low-paris-9.jpeg\" style=\"height:520px; width:980px\" title=\"Top 10+ Ảnh Phối đồ phong cách cổ điển với Giày Jordan 1 low Paris\" /></p>\r\n\r\n<p>Top 10+ Ảnh Phối đồ phong c&aacute;ch cổ điển với Gi&agrave;y Jordan 1 low Paris</p>\r\n\r\n<p><img alt=\"Top 10+ Ảnh Phối đồ phong cách cổ điển với Giày Jordan 1 low Paris\" src=\"https://tyhisneaker.com/wp-content/uploads/2021/03/phoi-do-voi-giay-jordan-1-low-paris-14.jpeg\" style=\"height:1280px; width:1024px\" title=\"Top 10+ Ảnh Phối đồ phong cách cổ điển với Giày Jordan 1 low Paris\" /></p>\r\n\r\n<p>Top 10+ Ảnh Phối đồ phong c&aacute;ch cổ điển với Gi&agrave;y Jordan 1 low Paris</p>\r\n\r\n<p><img alt=\"Top 10+ Ảnh Phối đồ phong cách cổ điển với Giày Jordan 1 low Paris\" src=\"https://tyhisneaker.com/wp-content/uploads/2021/03/phoi-do-voi-giay-jordan-1-low-paris-12.jpeg\" style=\"height:585px; width:600px\" title=\"Top 10+ Ảnh Phối đồ phong cách cổ điển với Giày Jordan 1 low Paris\" /></p>\r\n\r\n<p>Top 10+ Ảnh Phối đồ phong c&aacute;ch cổ điển với Gi&agrave;y Jordan 1 low Paris</p>\r\n\r\n<p><img alt=\"Top 10+ Ảnh Phối đồ phong cách cổ điển với Giày Jordan 1 low Paris\" src=\"https://tyhisneaker.com/wp-content/uploads/2021/03/phoi-do-voi-giay-jordan-1-low-paris-11.jpeg\" style=\"height:690px; width:750px\" title=\"Top 10+ Ảnh Phối đồ phong cách cổ điển với Giày Jordan 1 low Paris\" /></p>\r\n\r\n<p>Top 10+ Ảnh Phối đồ phong c&aacute;ch cổ điển với Gi&agrave;y Jordan 1 low Paris</p>\r\n\r\n<p><img alt=\"Top 10+ Ảnh Phối đồ phong cách cổ điển với Giày Jordan 1 low Paris\" src=\"https://tyhisneaker.com/wp-content/uploads/2021/03/phoi-do-voi-giay-jordan-1-low-paris-7.jpeg\" style=\"height:562px; width:563px\" title=\"Top 10+ Ảnh Phối đồ phong cách cổ điển với Giày Jordan 1 low Paris\" /></p>\r\n\r\n<p>Top 10+ Ảnh Phối đồ phong c&aacute;ch cổ điển với Gi&agrave;y Jordan 1 low Paris</p>\r\n\r\n<p><img alt=\"Top 10+ Ảnh Phối đồ phong cách cổ điển với Giày Jordan 1 low Paris\" src=\"https://tyhisneaker.com/wp-content/uploads/2021/03/phoi-do-voi-giay-jordan-1-low-paris.jpeg\" style=\"height:1440px; width:960px\" title=\"Top 10+ Ảnh Phối đồ phong cách cổ điển với Giày Jordan 1 low Paris\" /></p>\r\n\r\n<p>Top 10+ Ảnh Phối đồ phong c&aacute;ch cổ điển với Gi&agrave;y Jordan 1 low Paris</p>\r\n', 'Images/blog/phoi-do-voi-giay-jordan-1-low-paris-12-300x293.jpg', '2023-08-23 23:45:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `cart_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_as` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`cart_id`, `user_id`, `product_id`, `product_qty`, `cart_status`, `created_as`) VALUES
(70, 11, 166, 4, 0, '2023-08-05 09:28:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `category_descriptions` text DEFAULT NULL,
  `category_status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_slug`, `category_image`, `category_descriptions`, `category_status`) VALUES
(198, 'Nike', 'nikeshoe', 'Images/category/nike.png', 'nike', 1),
(199, 'Adidas', 'adidas', 'Images/category/adidas.png', 'adidas', 1),
(200, 'Nike shoe', 'airforce', 'Images/category/af1.webp', 'ghlg', 0),
(201, 'Amouage', 'a', 'Images/category/44.jpg', 'a', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shipping_firstname` varchar(255) NOT NULL,
  `shipping_lastname` varchar(255) NOT NULL,
  `shipping_phone` int(11) NOT NULL,
  `shipping_email` varchar(255) NOT NULL,
  `shipping_country` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_city` varchar(255) NOT NULL,
  `shipping_pin` tinyint(4) NOT NULL,
  `total_price` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `user_comment` int(11) DEFAULT NULL,
  `order_status` tinyint(10) NOT NULL DEFAULT 0,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `shipping_firstname`, `shipping_lastname`, `shipping_phone`, `shipping_email`, `shipping_country`, `shipping_address`, `shipping_city`, `shipping_pin`, `total_price`, `payment_method`, `payment_id`, `user_comment`, `order_status`, `create_at`) VALUES
(18, 11, '123', '123', 123, 'dphat1120@gmail.com', 'India', '123', '123', 123, 7, 'momo', 1, NULL, 4, '2023-08-04 18:48:04'),
(19, 11, '123', '123', 123, 'dphat1120@gmail.com', 'South Africa', '123', '123', 123, 5, 'momo', 1, NULL, 4, '2023-08-04 18:50:01'),
(20, 13, 'Khiem', 'Nguyen', 2147483647, 'dkhiem@gmail.com', 'India', 'abc1', 'abc', 127, 0, 'momo', 1, NULL, 0, '2023-08-15 09:33:42'),
(21, 13, 'Khiem', 'Nguyen', 2147483647, 'dkhiem@gmail.com', 'India', 'abc', 'abc', 127, 0, 'momo', 1, NULL, 0, '2023-08-15 09:39:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `item_price` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `item_qty`, `item_price`, `create_at`) VALUES
(11, 18, 166, 7, 1, '2023-08-05 01:48:04'),
(12, 19, 166, 5, 1, '2023-08-05 01:50:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_slug` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_status` tinyint(4) NOT NULL DEFAULT 0,
  `product_descriptions` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_slug`, `product_quantity`, `product_price`, `product_status`, `product_descriptions`, `category_id`) VALUES
(191, 'Nike Air Force 1 Low Premium', 'airforce', 25, 160, 1, 'The radiance lives on in the Nike Air Force 1 Low Premium, the b-ball original that puts a fresh spin on what you know best: Stitched overlays, classic colors and the perfect amount of hoops style to make heads turn. Metallic silver accents add flash whil', 198),
(192, 'Nike Air Force 1 React', 'airforce', 24, 140, 1, 'Split your time between classic and new with this fresh, off-court look. Fusing modern comfort with hoops style, the AF1 React delivers a futuristic sensation. Its responsive foam midsole puts tech in the perfect position, while the rich mixture of materi', 198),
(193, 'Nike Air Force 1 07 SE', 'airforce', 29, 76, 1, 'Celebrating 40 years of pushing sport and fashion boundaries, this commemorative AF1 mixes elements from beloved launches to highlight the timeless design’s place in sneaker history. Gold accents, a debossed 40 on the heel and an honorary tongue label a', 198),
(194, 'Tatum 1 ', 'jordan', 27, 120, 1, 'Jayson Tatum is known for his off-court looks as much his on-court moves (well, almost). In this special edition Tatum 1, you can stunt on ‘em like a tunnel-walk champion. Denim-inspired, but still ready to ball. Who says you can’t play in jeans?', 198),
(196, '', 'qwe', 123, 1231, 1, 'rtyrty', 198),
(200, 'Jordan 6 Rings', 'jordan', 22, 22, 1, 'asdad', 198),
(201, 'Jordan Max Aura 5', 'jordan', 22, 251, 1, 'qwrqr', 198),
(205, 'Jordan 6 Rings', 'qwe', 24, 124, 1, '2412', 200);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_image`
--

CREATE TABLE `product_image` (
  `image_id` int(11) NOT NULL,
  `image_source` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_image`
--

INSERT INTO `product_image` (`image_id`, `image_source`, `product_id`) VALUES
(211, '../Assets/Images/product/jdtatum.jpg', 194),
(212, '../Assets/Images/product/af1se.webp', 193),
(213, '../Assets/Images/product/af1react.webp', 192),
(225, 'Images/product/product_64e467e23d106.webp', 200),
(226, 'Images/product/product_64e4691369c72.webp', 201),
(237, '../Assets/Images/product/af1midlv8.webp', 191),
(238, '../Assets/Images/product/af1lowpre - Copy.webp', 196),
(239, '../Assets/Images/product/af1high - Copy.webp', 196),
(240, 'Images/product/product_64e46ad0770ea.webp', 205),
(241, 'Images/product/product_64e46ad077835.webp', 205),
(242, 'Images/product/product_64e46ad07802d.webp', 205),
(243, 'Images/product/product_64e46ad0786d7.webp', 205),
(244, 'Images/product/product_64e46ad078cb8.webp', 205);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Role` tinyint(4) NOT NULL DEFAULT 0,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `phone`, `password`, `Role`, `create_at`) VALUES
(8, 'Nino', 'Sayono', 'Nino', 'dphat1120@gmail.com', 888260251, '123', 1, '2023-07-28 20:00:52'),
(11, 'Nino', 'Sayono', 'User', 'dphat@gmail.com', 888260251, '123', 0, '2023-08-02 09:01:16'),
(12, 'Khiem', 'Nguyen', 'dkhiem@gmail.com', 'dkhiem@gmail.com', 2147483647, '123', 1, '2023-08-05 09:40:37'),
(13, 'Khiem', 'Nguyen', 'dangkhiem', 'dkhiem1@gmail.com', 902234454, 'khiem1', 0, '2023-08-15 08:54:41');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT cho bảng `product_image`
--
ALTER TABLE `product_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
