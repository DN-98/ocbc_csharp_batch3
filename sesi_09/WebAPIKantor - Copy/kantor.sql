/*
 Navicat Premium Data Transfer

 Source Server         : local_mysql
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : 127.0.0.1:3306
 Source Schema         : kantor

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 25/03/2022 12:47:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id_employee` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_kelamin` enum('Perempuan','Laki-laki') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_employee`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 'Jonh Doe', 'Laki-laki', 'Pagedangan');
INSERT INTO `employee` VALUES (2, 'Alicia Jordan', 'Perempuan', 'Surabaya');
INSERT INTO `employee` VALUES (3, 'Smith', 'Laki-laki', 'Manado');
INSERT INTO `employee` VALUES (4, 'James Dron', 'Laki-laki', 'Jakarta');

SET FOREIGN_KEY_CHECKS = 1;
