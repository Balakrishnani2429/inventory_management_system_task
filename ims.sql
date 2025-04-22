-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 06:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ims`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `created_at`, `updated_at`) VALUES
(4, 'Product 1', 'SKU001', '19.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(5, 'Product 2', 'SKU002', '29.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(6, 'Product 3', 'SKU003', '39.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(7, 'Product 4', 'SKU004', '49.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(8, 'Product 5', 'SKU005', '59.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(9, 'Product 6', 'SKU006', '69.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(10, 'Product 7', 'SKU007', '79.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(11, 'Product 8', 'SKU008', '89.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(12, 'Product 9', 'SKU009', '99.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(13, 'Product 10', 'SKU010', '109.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(14, 'Product 11', 'SKU011', '119.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(15, 'Product 12', 'SKU012', '129.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(16, 'Product 13', 'SKU013', '139.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(17, 'Product 14', 'SKU014', '149.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(18, 'Product 15', 'SKU015', '159.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(19, 'Product 16', 'SKU016', '169.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(20, 'Product 17', 'SKU017', '179.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(21, 'Product 18', 'SKU018', '189.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(22, 'Product 19', 'SKU019', '199.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53'),
(23, 'Product 20', 'SKU020', '209.99', '2025-04-22 21:25:53', '2025-04-22 21:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `stock_transactions`
--

CREATE TABLE `stock_transactions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `type` enum('in','out') DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_transactions`
--

INSERT INTO `stock_transactions` (`id`, `product_id`, `type`, `quantity`, `date`) VALUES
(21, 4, 'in', 10, '2025-04-22'),
(22, 5, 'in', 50, '2025-04-22'),
(23, 6, 'in', 100, '2025-04-22'),
(24, 7, 'in', 150, '2025-04-22'),
(25, 8, 'in', 200, '2025-04-22'),
(26, 9, 'in', 250, '2025-04-22'),
(27, 10, 'in', 300, '2025-04-22'),
(28, 11, 'in', 350, '2025-04-22'),
(29, 12, 'in', 400, '2025-04-22'),
(30, 13, 'in', 450, '2025-04-22'),
(31, 14, 'in', 500, '2025-04-22'),
(32, 15, 'in', 550, '2025-04-22'),
(33, 16, 'in', 600, '2025-04-22'),
(34, 17, 'in', 700, '2025-04-22'),
(35, 18, 'in', 800, '2025-04-22'),
(36, 19, 'in', 900, '2025-04-22'),
(37, 20, 'in', 1000, '2025-04-22'),
(38, 21, 'in', 2000, '2025-04-22'),
(39, 22, 'in', 1000, '2025-04-22'),
(40, 23, 'in', 5000, '2025-04-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_transactions`
--
ALTER TABLE `stock_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `stock_transactions`
--
ALTER TABLE `stock_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stock_transactions`
--
ALTER TABLE `stock_transactions`
  ADD CONSTRAINT `stock_transactions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
