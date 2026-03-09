/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80041
Source Host           : localhost:3306
Source Database       : power_rental_db

Target Server Type    : MYSQL
Target Server Version : 80041
File Encoding         : 65001

Date: 2025-06-23 20:35:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) DEFAULT 'admin',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123456', 'admin', '2025-06-18 20:07:47');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `power_bank_id` int NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `power_bank_id` (`power_bank_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`power_bank_id`) REFERENCES `power_banks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '123', '1', '2025-06-17 23:38:49', '2025-06-17 23:38:55', '0', '0.00');
INSERT INTO `orders` VALUES ('2', '123', '1', '2025-06-20 20:52:03', '2025-06-20 20:52:41', '0', '0.00');

-- ----------------------------
-- Table structure for power_banks
-- ----------------------------
DROP TABLE IF EXISTS `power_banks`;
CREATE TABLE `power_banks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(50) NOT NULL,
  `battery_level` int NOT NULL,
  `status` enum('AVAILABLE','RENTED','UNAVAILABLE') DEFAULT 'AVAILABLE',
  `location` varchar(100) NOT NULL,
  `battery` double(20,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of power_banks
-- ----------------------------
INSERT INTO `power_banks` VALUES ('1', '1', '67', 'AVAILABLE', '1', null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `balance` decimal(10,2) DEFAULT '100.00',
  `is_admin` tinyint(1) DEFAULT '0',
  `gender` varchar(10) NOT NULL,
  `order_history` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('123', 'ypl', 'ypl1689', '18138377203', '100.00', '1', '女', null);
INSERT INTO `users` VALUES ('124', '666', '123456', '18138377203', '100.00', '0', '女', null);
