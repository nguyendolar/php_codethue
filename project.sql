-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 23, 2023 lúc 11:59 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `content`, `image`, `created_at`) VALUES
(2, 'aaaaaaaaa', 'aaaaaaaaaa', 'Images/blog/anhtintuc.jpg', '2023-08-23 16:18:55');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
