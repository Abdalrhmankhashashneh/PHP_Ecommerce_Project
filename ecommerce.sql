-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2022 at 06:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_date`) VALUES
(1, 'admin', 'smsmspy@gmail.com', 'admin', '2022-05-28'),
(2, 'lujain', 'lujain.masters@gmail.com', '123', '2022-05-04'),
(10, 'kuxohasy', 'qemet@mailinator.com', 'Pa$$w0rd!', '2022-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quntity` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_img` text NOT NULL,
  `category_des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_img`, `category_des`) VALUES
(8, 'Tools ', 'images/slt_stainless_tools_hp_card.jpg', 'All tools you need'),
(9, 'Cookware', 'images/slt_cast_iron_round_wide_7109937_hp_card.jpg', 'all you need Cookware'),
(10, 'Bakeware', 'images/slt_platinum_6pc_2753432_hp_card.jpg', 'all you need Bakeware');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_email` varchar(50) NOT NULL,
  `contact_des` text NOT NULL,
  `contact_done` tinyint(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` double NOT NULL,
  `product_img` text NOT NULL,
  `product_des` text NOT NULL,
  `sub_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_img`, `product_des`, `sub_category_id`) VALUES
(9, 'STRAIGHT PASTRY / PASTA WHEEL CUTTER WITH ALUMINIUM WHEEL AND BEECH HANDLE', 9.06, 'images/large-pizza-cutter.jpg', 'A straight pastry cutter with wheel, great for cutting a straight zig-zag edge in pastry or pasta.', 18),
(11, 'NARROW \'CHEDDAR\' SPATULA CHEESE KNIFE', 9.06, 'images/cheese-knife.jpg', 'Use when serving your favourite cheese. The spatula has a turned beech wood handle and INOX 18/10 stainless steel blade.\r\n ', 18),
(13, 'Sur La Table Silicone-Tipped Tongs, 12\"', 15.46, 'images/3420403_01i_1017_s.jpg', 'Our stainless steel spider skimmer is perfect for boiling potatoes, blanching veggies, deep-frying or any type of quick food retrieval. The strong mesh is designed to resist denting and holds food securely to reduce spills. Available in two sizes.\n\nWe thoughtfully designed and developed our new Sur La Table stainless steel tools with the home chef in mind. Each tool is carefully reviewed by hand to ensure the best quality. Drawing on decades of experience in the kitchen and familiarity with the world’s top brands, we’ve selected only the best features: these essential tools are made of the most durable stainless steel and feature weighted, ergonomic handles for optimum balance and comfort.', 14),
(14, 'MANUAL HAND CRANK WOODEN COFFEE GRINDER WITH DRAWER', 17.46, 'images/manual-hand-crank-coffee-grinder.jpg', 'Make your own freshly ground coffee beans with this traditional, manual, hand crank coffee mill. \r\n\r\nSits sturdily on the worktop as you turn the round wooden knob. Slide open the top window to add your coffee beans to the grinding mechanism. Pull open the small drawer at the front to reveal your freshly ground coffee. Perfect for grinding a few beans each morning for that fresh aromatic flavour.', 15),
(15, 'Brody Simon', 1.7, 'images/beech-wood-fork.jpg', 'Et voluptatem Quos ', 15),
(16, 'LASAGNE SHOVEL', 4.36, 'images/lasagne-pasta-cutter.jpg', 'Serve and cut beautiful square portions of lasagne.  Also perfect for portioning out Shepherds Pie, tray bakes, brownies etc.', 18),
(17, 'OVAL PASTA CUTTER ROLLER', 3.46, 'images/smooth-rectangle-cutter-with-handle-small.jpg', 'Simply roll this gadget over your sheet of fresh pasta to quickly and easily produce a row of perfect ovals. These ovals can then be filled and used to make ravioli, or twisted to form tortellini or any other intricate design.', 20),
(18, 'Sur La Table Stainless Steel Measuring Cups, Set Of 6', 35.16, 'images/3332574_01i_0118_s.jpg', 'Every chef—whether professional or amateur—needs a quality set of tools. These measuring cups are made of sleek stainless steel and nest together on an easy-to-open ring for space-saving storage. Set includes six measuring cups.', 16),
(19, 'Spoons, Set Of 6', 15.96, 'images/3332632_01i_0118_s.jpg', 'Each stainless steel measuring spoon in this set is narrow enough to fit in just about any container—perfect for small spice jars. They can be removed and stored on the included easy-to-open ring. Set includes six measuring spoons.', 16),
(20, 'TRIANGULAR RAVIOLI TRAY MOULD WITH WOODEN ROLLING PIN', 4.05, 'images/medium-round-ravioli-tray.jpg', 'Make large quantities of ravioli quickly with this easy to use triangular ravioli tray.', 18),
(21, 'BRASS ROUND ANOLINI', 5.16, 'images/capelletti-wood-brass.jpg', 'Anolini are a small filled pasta that are traditionally served in a beef and capon broth for Christmas and Easter. \r\n\r\nAnolini nowadays are served with lots of different fillings and sauces.', 18),
(22, 'Non-Skid Stainless Steel Mixing Bowls, Set Of 3', 47.96, 'images/2566180_05p_0216_s.jpg', 'Our mixing bowls combine the durability and clean look of stainless steel with the stability of the nonstick rubber base. This versatile set includes three sizes to meet all of your baking needs, and they nest together for efficient storage.', 18),
(23, 'MALLOREDDUS PASTA BOARD', 28.95, 'images/large-mezzaluna.jpg', 'Malloreddus pasta originates from Sardinia and is made of semolina and water. Traditionally it is shaped into little \'canoes\' by rolling small pieces of pasta onto the surface of a woven basket, thus creating its characteristic grooves.', 15),
(24, 'With Handles', 23.96, 'images/535609_01.jpg', 'Our marble rolling pin is the baker’s choice for working with dough. The naturally cool marble helps keep your dough at an optimal temperature throughout preparation, and sturdy wooden handles reduce fatigue. Rolling pin comes with a handy marble cradle for storage. Marble pastry board sold separately.', 19),
(25, 'Sur La Table Soft-Grip Sifters', 12, 'images/5509831_01i_0719_s.jpg', 'Our spring-set sifters turn clumps of flour, powdered sugar and more to a light, uniform consistency. The fine mesh base has spokes set above that agitate the flour when you press the trigger in the comfortable, soft-grip handle. Our exclusive sifters are available in two sizes to accommodate your baking needs.', 19),
(26, 'Deep Dutch Oven,', 90, 'images/7110406_0422_01i_s.jpg', 'Le Creuset Signature Round Deep Dutch Oven, 5.25 qt.\n$379.95 $249.96\n (155)', 20),
(27, 'HEAVY FLAT MEAT TENDERISER', 4.5, 'images/meat-tenderizer.jpg', 'Use this heavy 800g flat meat pounder to tenderise steaks, pork and lamb chops or flatten chicken breasts.\r\n\r\nCreates a good uniform thickness to allow even cooking.\r\n\r\nEasy to clean with no grooves or ridges. The pounding surface is completely smooth.\r\n\r\n', 15),
(29, 'Sur La Table Stoneware Au Gratin, 14 oz.', 15, 'images/6705644_01i_0721_s.jpg', 'Sur La Table Stoneware Au Gratin, 14 oz.', 20);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcategory_id` int(11) NOT NULL,
  `subcategory_name` varchar(50) NOT NULL,
  `subcategory_img` text NOT NULL,
  `subcategory_des` text NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcategory_id`, `subcategory_name`, `subcategory_img`, `subcategory_des`, `category_id`) VALUES
(14, 'Utensils', 'images/6745475_0821_01i_s.jpg', 'Utensils Tools ', 8),
(15, 'Gadgets', 'images/7062995_0422_01i_s.jpg', 'Gadgets product                        ', 8),
(16, 'Mix & Measure', 'images/5648894_01i_0919_s.jpg', 'Mix & Measure Tools', 8),
(18, 'Bakeware', 'images/6901847_0122_01.jpg', 'Bakeware product                        ', 10),
(19, 'Baking Tools', 'images/535591_0219_01.jpg', 'Baking Tools product', 10),
(20, 'Cookware', 'images/7110406_0422_01i_s.jpg', 'Cookware', 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `password`, `email`, `address`, `city`, `phone`, `username`) VALUES
(1, 'Pa$$w0rd!', 'vyxomehun@mailinator.com', 'Soluta aut tempore ', 'Alias natus ipsum ac', '(351) 268-7068', 'pidema'),
(2, '123', 'lujain.masters@gmail.com', 'Amman Jordan', 'irbid', '077777777777', 'luj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_email` (`admin_email`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `sub_category_id` (`sub_category_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`sub_category_id`) REFERENCES `subcategory` (`subcategory_id`);

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
