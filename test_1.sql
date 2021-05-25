/*
 Navicat Premium Data Transfer

 Source Server         : ll
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : test_1

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 25/05/2021 20:29:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apps_calss
-- ----------------------------
DROP TABLE IF EXISTS `apps_calss`;
CREATE TABLE `apps_calss`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apps_calss
-- ----------------------------
INSERT INTO `apps_calss` VALUES (1, 'Python');
INSERT INTO `apps_calss` VALUES (2, 'C');
INSERT INTO `apps_calss` VALUES (3, 'C#');
INSERT INTO `apps_calss` VALUES (4, 'C++');
INSERT INTO `apps_calss` VALUES (5, 'Java');
INSERT INTO `apps_calss` VALUES (6, 'JavaScript');
INSERT INTO `apps_calss` VALUES (7, 'PHP');
INSERT INTO `apps_calss` VALUES (8, 'VBS');
INSERT INTO `apps_calss` VALUES (9, '易语言');

-- ----------------------------
-- Table structure for apps_chengji
-- ----------------------------
DROP TABLE IF EXISTS `apps_chengji`;
CREATE TABLE `apps_chengji`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cheng` int(11) NULL DEFAULT NULL,
  `c_id_id` int(11) NOT NULL,
  `s_id_id` int(11) NOT NULL,
  `x_id_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `apps_chengji_s_id_id_2c9b1bde_fk_apps_student_id`(`s_id_id`) USING BTREE,
  INDEX `apps_chengji_c_id_id_b4eff4bf_fk_apps_calss_id`(`c_id_id`) USING BTREE,
  INDEX `apps_chengji_x_id_id_565ababd_fk_apps_xueqi_id`(`x_id_id`) USING BTREE,
  CONSTRAINT `apps_chengji_c_id_id_b4eff4bf_fk_apps_calss_id` FOREIGN KEY (`c_id_id`) REFERENCES `apps_calss` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `apps_chengji_s_id_id_2c9b1bde_fk_apps_student_id` FOREIGN KEY (`s_id_id`) REFERENCES `apps_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `apps_chengji_x_id_id_565ababd_fk_apps_xueqi_id` FOREIGN KEY (`x_id_id`) REFERENCES `apps_xueqi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1009 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apps_chengji
-- ----------------------------
INSERT INTO `apps_chengji` VALUES (1, 73, 1, 1, 1);
INSERT INTO `apps_chengji` VALUES (2, 96, 2, 1, 1);
INSERT INTO `apps_chengji` VALUES (3, 36, 3, 1, 1);
INSERT INTO `apps_chengji` VALUES (4, 85, 4, 1, 1);
INSERT INTO `apps_chengji` VALUES (5, 84, 5, 1, 1);
INSERT INTO `apps_chengji` VALUES (6, 63, 6, 1, 1);
INSERT INTO `apps_chengji` VALUES (7, 73, 7, 1, 1);
INSERT INTO `apps_chengji` VALUES (8, 7, 8, 1, 1);
INSERT INTO `apps_chengji` VALUES (9, 8, 9, 1, 1);
INSERT INTO `apps_chengji` VALUES (10, 56, 1, 1, 2);
INSERT INTO `apps_chengji` VALUES (11, 62, 2, 1, 2);
INSERT INTO `apps_chengji` VALUES (12, 94, 3, 1, 2);
INSERT INTO `apps_chengji` VALUES (13, 83, 4, 1, 2);
INSERT INTO `apps_chengji` VALUES (14, 56, 5, 1, 2);
INSERT INTO `apps_chengji` VALUES (15, 86, 6, 1, 2);
INSERT INTO `apps_chengji` VALUES (16, 60, 7, 1, 2);
INSERT INTO `apps_chengji` VALUES (17, 8, 8, 1, 2);
INSERT INTO `apps_chengji` VALUES (18, 19, 9, 1, 2);
INSERT INTO `apps_chengji` VALUES (19, 1, 1, 1, 3);
INSERT INTO `apps_chengji` VALUES (20, 95, 2, 1, 3);
INSERT INTO `apps_chengji` VALUES (21, 90, 3, 1, 3);
INSERT INTO `apps_chengji` VALUES (22, 18, 4, 1, 3);
INSERT INTO `apps_chengji` VALUES (23, 65, 5, 1, 3);
INSERT INTO `apps_chengji` VALUES (24, 53, 6, 1, 3);
INSERT INTO `apps_chengji` VALUES (25, 21, 7, 1, 3);
INSERT INTO `apps_chengji` VALUES (26, 43, 8, 1, 3);
INSERT INTO `apps_chengji` VALUES (27, 55, 9, 1, 3);
INSERT INTO `apps_chengji` VALUES (28, 56, 1, 1, 4);
INSERT INTO `apps_chengji` VALUES (29, 19, 2, 1, 4);
INSERT INTO `apps_chengji` VALUES (30, 67, 3, 1, 4);
INSERT INTO `apps_chengji` VALUES (31, 49, 4, 1, 4);
INSERT INTO `apps_chengji` VALUES (32, 88, 5, 1, 4);
INSERT INTO `apps_chengji` VALUES (33, 100, 6, 1, 4);
INSERT INTO `apps_chengji` VALUES (34, 85, 7, 1, 4);
INSERT INTO `apps_chengji` VALUES (35, 47, 8, 1, 4);
INSERT INTO `apps_chengji` VALUES (36, 6, 9, 1, 4);
INSERT INTO `apps_chengji` VALUES (37, 60, 1, 2, 1);
INSERT INTO `apps_chengji` VALUES (38, 7, 2, 2, 1);
INSERT INTO `apps_chengji` VALUES (39, 28, 3, 2, 1);
INSERT INTO `apps_chengji` VALUES (40, 52, 4, 2, 1);
INSERT INTO `apps_chengji` VALUES (41, 21, 5, 2, 1);
INSERT INTO `apps_chengji` VALUES (42, 58, 6, 2, 1);
INSERT INTO `apps_chengji` VALUES (43, 89, 7, 2, 1);
INSERT INTO `apps_chengji` VALUES (44, 98, 8, 2, 1);
INSERT INTO `apps_chengji` VALUES (45, 68, 9, 2, 1);
INSERT INTO `apps_chengji` VALUES (46, 71, 1, 2, 2);
INSERT INTO `apps_chengji` VALUES (47, 30, 2, 2, 2);
INSERT INTO `apps_chengji` VALUES (48, 30, 3, 2, 2);
INSERT INTO `apps_chengji` VALUES (49, 56, 4, 2, 2);
INSERT INTO `apps_chengji` VALUES (50, 32, 5, 2, 2);
INSERT INTO `apps_chengji` VALUES (51, 39, 6, 2, 2);
INSERT INTO `apps_chengji` VALUES (52, 54, 7, 2, 2);
INSERT INTO `apps_chengji` VALUES (53, 50, 8, 2, 2);
INSERT INTO `apps_chengji` VALUES (54, 35, 9, 2, 2);
INSERT INTO `apps_chengji` VALUES (55, 55, 1, 2, 3);
INSERT INTO `apps_chengji` VALUES (56, 2, 2, 2, 3);
INSERT INTO `apps_chengji` VALUES (57, 49, 3, 2, 3);
INSERT INTO `apps_chengji` VALUES (58, 87, 4, 2, 3);
INSERT INTO `apps_chengji` VALUES (59, 68, 5, 2, 3);
INSERT INTO `apps_chengji` VALUES (60, 12, 6, 2, 3);
INSERT INTO `apps_chengji` VALUES (61, 13, 7, 2, 3);
INSERT INTO `apps_chengji` VALUES (62, 57, 8, 2, 3);
INSERT INTO `apps_chengji` VALUES (63, 71, 9, 2, 3);
INSERT INTO `apps_chengji` VALUES (64, 59, 1, 2, 4);
INSERT INTO `apps_chengji` VALUES (65, 46, 2, 2, 4);
INSERT INTO `apps_chengji` VALUES (66, 77, 3, 2, 4);
INSERT INTO `apps_chengji` VALUES (67, 24, 4, 2, 4);
INSERT INTO `apps_chengji` VALUES (68, 93, 5, 2, 4);
INSERT INTO `apps_chengji` VALUES (69, 11, 6, 2, 4);
INSERT INTO `apps_chengji` VALUES (70, 47, 7, 2, 4);
INSERT INTO `apps_chengji` VALUES (71, 89, 8, 2, 4);
INSERT INTO `apps_chengji` VALUES (72, 40, 9, 2, 4);
INSERT INTO `apps_chengji` VALUES (73, 60, 1, 3, 1);
INSERT INTO `apps_chengji` VALUES (74, 99, 2, 3, 1);
INSERT INTO `apps_chengji` VALUES (75, 8, 3, 3, 1);
INSERT INTO `apps_chengji` VALUES (76, 24, 4, 3, 1);
INSERT INTO `apps_chengji` VALUES (77, 81, 5, 3, 1);
INSERT INTO `apps_chengji` VALUES (78, 11, 6, 3, 1);
INSERT INTO `apps_chengji` VALUES (79, 1, 7, 3, 1);
INSERT INTO `apps_chengji` VALUES (80, 33, 8, 3, 1);
INSERT INTO `apps_chengji` VALUES (81, 55, 9, 3, 1);
INSERT INTO `apps_chengji` VALUES (82, 52, 1, 3, 2);
INSERT INTO `apps_chengji` VALUES (83, 5, 2, 3, 2);
INSERT INTO `apps_chengji` VALUES (84, 57, 3, 3, 2);
INSERT INTO `apps_chengji` VALUES (85, 8, 4, 3, 2);
INSERT INTO `apps_chengji` VALUES (86, 44, 5, 3, 2);
INSERT INTO `apps_chengji` VALUES (87, 50, 6, 3, 2);
INSERT INTO `apps_chengji` VALUES (88, 36, 7, 3, 2);
INSERT INTO `apps_chengji` VALUES (89, 36, 8, 3, 2);
INSERT INTO `apps_chengji` VALUES (90, 59, 9, 3, 2);
INSERT INTO `apps_chengji` VALUES (91, 22, 1, 3, 3);
INSERT INTO `apps_chengji` VALUES (92, 75, 2, 3, 3);
INSERT INTO `apps_chengji` VALUES (93, 81, 3, 3, 3);
INSERT INTO `apps_chengji` VALUES (94, 90, 4, 3, 3);
INSERT INTO `apps_chengji` VALUES (95, 43, 5, 3, 3);
INSERT INTO `apps_chengji` VALUES (96, 6, 6, 3, 3);
INSERT INTO `apps_chengji` VALUES (97, 21, 7, 3, 3);
INSERT INTO `apps_chengji` VALUES (98, 7, 8, 3, 3);
INSERT INTO `apps_chengji` VALUES (99, 50, 9, 3, 3);
INSERT INTO `apps_chengji` VALUES (100, 81, 1, 3, 4);
INSERT INTO `apps_chengji` VALUES (101, 2, 2, 3, 4);
INSERT INTO `apps_chengji` VALUES (102, 64, 3, 3, 4);
INSERT INTO `apps_chengji` VALUES (103, 44, 4, 3, 4);
INSERT INTO `apps_chengji` VALUES (104, 39, 5, 3, 4);
INSERT INTO `apps_chengji` VALUES (105, 55, 6, 3, 4);
INSERT INTO `apps_chengji` VALUES (106, 86, 7, 3, 4);
INSERT INTO `apps_chengji` VALUES (107, 42, 8, 3, 4);
INSERT INTO `apps_chengji` VALUES (108, 71, 9, 3, 4);
INSERT INTO `apps_chengji` VALUES (109, 45, 1, 4, 1);
INSERT INTO `apps_chengji` VALUES (110, 18, 2, 4, 1);
INSERT INTO `apps_chengji` VALUES (111, 25, 3, 4, 1);
INSERT INTO `apps_chengji` VALUES (112, 23, 4, 4, 1);
INSERT INTO `apps_chengji` VALUES (113, 73, 5, 4, 1);
INSERT INTO `apps_chengji` VALUES (114, 6, 6, 4, 1);
INSERT INTO `apps_chengji` VALUES (115, 4, 7, 4, 1);
INSERT INTO `apps_chengji` VALUES (116, 65, 8, 4, 1);
INSERT INTO `apps_chengji` VALUES (117, 13, 9, 4, 1);
INSERT INTO `apps_chengji` VALUES (118, 79, 1, 4, 2);
INSERT INTO `apps_chengji` VALUES (119, 88, 2, 4, 2);
INSERT INTO `apps_chengji` VALUES (120, 87, 3, 4, 2);
INSERT INTO `apps_chengji` VALUES (121, 15, 4, 4, 2);
INSERT INTO `apps_chengji` VALUES (122, 32, 5, 4, 2);
INSERT INTO `apps_chengji` VALUES (123, 37, 6, 4, 2);
INSERT INTO `apps_chengji` VALUES (124, 84, 7, 4, 2);
INSERT INTO `apps_chengji` VALUES (125, 75, 8, 4, 2);
INSERT INTO `apps_chengji` VALUES (126, 46, 9, 4, 2);
INSERT INTO `apps_chengji` VALUES (127, 3, 1, 4, 3);
INSERT INTO `apps_chengji` VALUES (128, 36, 2, 4, 3);
INSERT INTO `apps_chengji` VALUES (129, 72, 3, 4, 3);
INSERT INTO `apps_chengji` VALUES (130, 100, 4, 4, 3);
INSERT INTO `apps_chengji` VALUES (131, 33, 5, 4, 3);
INSERT INTO `apps_chengji` VALUES (132, 15, 6, 4, 3);
INSERT INTO `apps_chengji` VALUES (133, 63, 7, 4, 3);
INSERT INTO `apps_chengji` VALUES (134, 96, 8, 4, 3);
INSERT INTO `apps_chengji` VALUES (135, 25, 9, 4, 3);
INSERT INTO `apps_chengji` VALUES (136, 10, 1, 4, 4);
INSERT INTO `apps_chengji` VALUES (137, 77, 2, 4, 4);
INSERT INTO `apps_chengji` VALUES (138, 34, 3, 4, 4);
INSERT INTO `apps_chengji` VALUES (139, 70, 4, 4, 4);
INSERT INTO `apps_chengji` VALUES (140, 80, 5, 4, 4);
INSERT INTO `apps_chengji` VALUES (141, 64, 6, 4, 4);
INSERT INTO `apps_chengji` VALUES (142, 60, 7, 4, 4);
INSERT INTO `apps_chengji` VALUES (143, 66, 8, 4, 4);
INSERT INTO `apps_chengji` VALUES (144, 79, 9, 4, 4);
INSERT INTO `apps_chengji` VALUES (145, 33, 1, 5, 1);
INSERT INTO `apps_chengji` VALUES (146, 68, 2, 5, 1);
INSERT INTO `apps_chengji` VALUES (147, 14, 3, 5, 1);
INSERT INTO `apps_chengji` VALUES (148, 92, 4, 5, 1);
INSERT INTO `apps_chengji` VALUES (149, 89, 5, 5, 1);
INSERT INTO `apps_chengji` VALUES (150, 67, 6, 5, 1);
INSERT INTO `apps_chengji` VALUES (151, 98, 7, 5, 1);
INSERT INTO `apps_chengji` VALUES (152, 79, 8, 5, 1);
INSERT INTO `apps_chengji` VALUES (153, 36, 9, 5, 1);
INSERT INTO `apps_chengji` VALUES (154, 84, 1, 5, 2);
INSERT INTO `apps_chengji` VALUES (155, 91, 2, 5, 2);
INSERT INTO `apps_chengji` VALUES (156, 88, 3, 5, 2);
INSERT INTO `apps_chengji` VALUES (157, 86, 4, 5, 2);
INSERT INTO `apps_chengji` VALUES (158, 32, 5, 5, 2);
INSERT INTO `apps_chengji` VALUES (159, 16, 6, 5, 2);
INSERT INTO `apps_chengji` VALUES (160, 37, 7, 5, 2);
INSERT INTO `apps_chengji` VALUES (161, 61, 8, 5, 2);
INSERT INTO `apps_chengji` VALUES (162, 3, 9, 5, 2);
INSERT INTO `apps_chengji` VALUES (163, 26, 1, 5, 3);
INSERT INTO `apps_chengji` VALUES (164, 71, 2, 5, 3);
INSERT INTO `apps_chengji` VALUES (165, 92, 3, 5, 3);
INSERT INTO `apps_chengji` VALUES (166, 51, 4, 5, 3);
INSERT INTO `apps_chengji` VALUES (167, 1, 5, 5, 3);
INSERT INTO `apps_chengji` VALUES (168, 21, 6, 5, 3);
INSERT INTO `apps_chengji` VALUES (169, 64, 7, 5, 3);
INSERT INTO `apps_chengji` VALUES (170, 82, 8, 5, 3);
INSERT INTO `apps_chengji` VALUES (171, 82, 9, 5, 3);
INSERT INTO `apps_chengji` VALUES (172, 15, 1, 5, 4);
INSERT INTO `apps_chengji` VALUES (173, 93, 2, 5, 4);
INSERT INTO `apps_chengji` VALUES (174, 9, 3, 5, 4);
INSERT INTO `apps_chengji` VALUES (175, 32, 4, 5, 4);
INSERT INTO `apps_chengji` VALUES (176, 71, 5, 5, 4);
INSERT INTO `apps_chengji` VALUES (177, 79, 6, 5, 4);
INSERT INTO `apps_chengji` VALUES (178, 47, 7, 5, 4);
INSERT INTO `apps_chengji` VALUES (179, 73, 8, 5, 4);
INSERT INTO `apps_chengji` VALUES (180, 39, 9, 5, 4);
INSERT INTO `apps_chengji` VALUES (181, 73, 1, 6, 1);
INSERT INTO `apps_chengji` VALUES (182, 91, 2, 6, 1);
INSERT INTO `apps_chengji` VALUES (183, 47, 3, 6, 1);
INSERT INTO `apps_chengji` VALUES (184, 50, 4, 6, 1);
INSERT INTO `apps_chengji` VALUES (185, 73, 5, 6, 1);
INSERT INTO `apps_chengji` VALUES (186, 76, 6, 6, 1);
INSERT INTO `apps_chengji` VALUES (187, 55, 7, 6, 1);
INSERT INTO `apps_chengji` VALUES (188, 37, 8, 6, 1);
INSERT INTO `apps_chengji` VALUES (189, 89, 9, 6, 1);
INSERT INTO `apps_chengji` VALUES (190, 78, 1, 6, 2);
INSERT INTO `apps_chengji` VALUES (191, 14, 2, 6, 2);
INSERT INTO `apps_chengji` VALUES (192, 29, 3, 6, 2);
INSERT INTO `apps_chengji` VALUES (193, 68, 4, 6, 2);
INSERT INTO `apps_chengji` VALUES (194, 93, 5, 6, 2);
INSERT INTO `apps_chengji` VALUES (195, 29, 6, 6, 2);
INSERT INTO `apps_chengji` VALUES (196, 80, 7, 6, 2);
INSERT INTO `apps_chengji` VALUES (197, 42, 8, 6, 2);
INSERT INTO `apps_chengji` VALUES (198, 11, 9, 6, 2);
INSERT INTO `apps_chengji` VALUES (199, 40, 1, 6, 3);
INSERT INTO `apps_chengji` VALUES (200, 89, 2, 6, 3);
INSERT INTO `apps_chengji` VALUES (201, 12, 3, 6, 3);
INSERT INTO `apps_chengji` VALUES (202, 89, 4, 6, 3);
INSERT INTO `apps_chengji` VALUES (203, 57, 5, 6, 3);
INSERT INTO `apps_chengji` VALUES (204, 66, 6, 6, 3);
INSERT INTO `apps_chengji` VALUES (205, 100, 7, 6, 3);
INSERT INTO `apps_chengji` VALUES (206, 80, 8, 6, 3);
INSERT INTO `apps_chengji` VALUES (207, 47, 9, 6, 3);
INSERT INTO `apps_chengji` VALUES (208, 63, 1, 6, 4);
INSERT INTO `apps_chengji` VALUES (209, 34, 2, 6, 4);
INSERT INTO `apps_chengji` VALUES (210, 66, 3, 6, 4);
INSERT INTO `apps_chengji` VALUES (211, 51, 4, 6, 4);
INSERT INTO `apps_chengji` VALUES (212, 61, 5, 6, 4);
INSERT INTO `apps_chengji` VALUES (213, 59, 6, 6, 4);
INSERT INTO `apps_chengji` VALUES (214, 63, 7, 6, 4);
INSERT INTO `apps_chengji` VALUES (215, 39, 8, 6, 4);
INSERT INTO `apps_chengji` VALUES (216, 66, 9, 6, 4);
INSERT INTO `apps_chengji` VALUES (217, 40, 1, 7, 1);
INSERT INTO `apps_chengji` VALUES (218, 63, 2, 7, 1);
INSERT INTO `apps_chengji` VALUES (219, 89, 3, 7, 1);
INSERT INTO `apps_chengji` VALUES (220, 11, 4, 7, 1);
INSERT INTO `apps_chengji` VALUES (221, 80, 5, 7, 1);
INSERT INTO `apps_chengji` VALUES (222, 14, 6, 7, 1);
INSERT INTO `apps_chengji` VALUES (223, 44, 7, 7, 1);
INSERT INTO `apps_chengji` VALUES (224, 31, 8, 7, 1);
INSERT INTO `apps_chengji` VALUES (225, 50, 9, 7, 1);
INSERT INTO `apps_chengji` VALUES (226, 37, 1, 7, 2);
INSERT INTO `apps_chengji` VALUES (227, 35, 2, 7, 2);
INSERT INTO `apps_chengji` VALUES (228, 2, 3, 7, 2);
INSERT INTO `apps_chengji` VALUES (229, 96, 4, 7, 2);
INSERT INTO `apps_chengji` VALUES (230, 80, 5, 7, 2);
INSERT INTO `apps_chengji` VALUES (231, 80, 6, 7, 2);
INSERT INTO `apps_chengji` VALUES (232, 2, 7, 7, 2);
INSERT INTO `apps_chengji` VALUES (233, 22, 8, 7, 2);
INSERT INTO `apps_chengji` VALUES (234, 30, 9, 7, 2);
INSERT INTO `apps_chengji` VALUES (235, 67, 1, 7, 3);
INSERT INTO `apps_chengji` VALUES (236, 10, 2, 7, 3);
INSERT INTO `apps_chengji` VALUES (237, 49, 3, 7, 3);
INSERT INTO `apps_chengji` VALUES (238, 5, 4, 7, 3);
INSERT INTO `apps_chengji` VALUES (239, 3, 5, 7, 3);
INSERT INTO `apps_chengji` VALUES (240, 16, 6, 7, 3);
INSERT INTO `apps_chengji` VALUES (241, 98, 7, 7, 3);
INSERT INTO `apps_chengji` VALUES (242, 51, 8, 7, 3);
INSERT INTO `apps_chengji` VALUES (243, 5, 9, 7, 3);
INSERT INTO `apps_chengji` VALUES (244, 5, 1, 7, 4);
INSERT INTO `apps_chengji` VALUES (245, 57, 2, 7, 4);
INSERT INTO `apps_chengji` VALUES (246, 38, 3, 7, 4);
INSERT INTO `apps_chengji` VALUES (247, 76, 4, 7, 4);
INSERT INTO `apps_chengji` VALUES (248, 51, 5, 7, 4);
INSERT INTO `apps_chengji` VALUES (249, 16, 6, 7, 4);
INSERT INTO `apps_chengji` VALUES (250, 79, 7, 7, 4);
INSERT INTO `apps_chengji` VALUES (251, 19, 8, 7, 4);
INSERT INTO `apps_chengji` VALUES (252, 85, 9, 7, 4);
INSERT INTO `apps_chengji` VALUES (253, 58, 1, 8, 1);
INSERT INTO `apps_chengji` VALUES (254, 71, 2, 8, 1);
INSERT INTO `apps_chengji` VALUES (255, 84, 3, 8, 1);
INSERT INTO `apps_chengji` VALUES (256, 66, 4, 8, 1);
INSERT INTO `apps_chengji` VALUES (257, 87, 5, 8, 1);
INSERT INTO `apps_chengji` VALUES (258, 65, 6, 8, 1);
INSERT INTO `apps_chengji` VALUES (259, 42, 7, 8, 1);
INSERT INTO `apps_chengji` VALUES (260, 43, 8, 8, 1);
INSERT INTO `apps_chengji` VALUES (261, 99, 9, 8, 1);
INSERT INTO `apps_chengji` VALUES (262, 98, 1, 8, 2);
INSERT INTO `apps_chengji` VALUES (263, 100, 2, 8, 2);
INSERT INTO `apps_chengji` VALUES (264, 90, 3, 8, 2);
INSERT INTO `apps_chengji` VALUES (265, 56, 4, 8, 2);
INSERT INTO `apps_chengji` VALUES (266, 41, 5, 8, 2);
INSERT INTO `apps_chengji` VALUES (267, 36, 6, 8, 2);
INSERT INTO `apps_chengji` VALUES (268, 50, 7, 8, 2);
INSERT INTO `apps_chengji` VALUES (269, 40, 8, 8, 2);
INSERT INTO `apps_chengji` VALUES (270, 80, 9, 8, 2);
INSERT INTO `apps_chengji` VALUES (271, 96, 1, 8, 3);
INSERT INTO `apps_chengji` VALUES (272, 42, 2, 8, 3);
INSERT INTO `apps_chengji` VALUES (273, 53, 3, 8, 3);
INSERT INTO `apps_chengji` VALUES (274, 91, 4, 8, 3);
INSERT INTO `apps_chengji` VALUES (275, 79, 5, 8, 3);
INSERT INTO `apps_chengji` VALUES (276, 24, 6, 8, 3);
INSERT INTO `apps_chengji` VALUES (277, 59, 7, 8, 3);
INSERT INTO `apps_chengji` VALUES (278, 20, 8, 8, 3);
INSERT INTO `apps_chengji` VALUES (279, 81, 9, 8, 3);
INSERT INTO `apps_chengji` VALUES (280, 96, 1, 8, 4);
INSERT INTO `apps_chengji` VALUES (281, 100, 2, 8, 4);
INSERT INTO `apps_chengji` VALUES (282, 81, 3, 8, 4);
INSERT INTO `apps_chengji` VALUES (283, 7, 4, 8, 4);
INSERT INTO `apps_chengji` VALUES (284, 80, 5, 8, 4);
INSERT INTO `apps_chengji` VALUES (285, 15, 6, 8, 4);
INSERT INTO `apps_chengji` VALUES (286, 14, 7, 8, 4);
INSERT INTO `apps_chengji` VALUES (287, 100, 8, 8, 4);
INSERT INTO `apps_chengji` VALUES (288, 67, 9, 8, 4);
INSERT INTO `apps_chengji` VALUES (289, 28, 1, 9, 1);
INSERT INTO `apps_chengji` VALUES (290, 84, 2, 9, 1);
INSERT INTO `apps_chengji` VALUES (291, 11, 3, 9, 1);
INSERT INTO `apps_chengji` VALUES (292, 91, 4, 9, 1);
INSERT INTO `apps_chengji` VALUES (293, 10, 5, 9, 1);
INSERT INTO `apps_chengji` VALUES (294, 96, 6, 9, 1);
INSERT INTO `apps_chengji` VALUES (295, 6, 7, 9, 1);
INSERT INTO `apps_chengji` VALUES (296, 52, 8, 9, 1);
INSERT INTO `apps_chengji` VALUES (297, 45, 9, 9, 1);
INSERT INTO `apps_chengji` VALUES (298, 58, 1, 9, 2);
INSERT INTO `apps_chengji` VALUES (299, 31, 2, 9, 2);
INSERT INTO `apps_chengji` VALUES (300, 12, 3, 9, 2);
INSERT INTO `apps_chengji` VALUES (301, 63, 4, 9, 2);
INSERT INTO `apps_chengji` VALUES (302, 10, 5, 9, 2);
INSERT INTO `apps_chengji` VALUES (303, 50, 6, 9, 2);
INSERT INTO `apps_chengji` VALUES (304, 29, 7, 9, 2);
INSERT INTO `apps_chengji` VALUES (305, 61, 8, 9, 2);
INSERT INTO `apps_chengji` VALUES (306, 82, 9, 9, 2);
INSERT INTO `apps_chengji` VALUES (307, 97, 1, 9, 3);
INSERT INTO `apps_chengji` VALUES (308, 98, 2, 9, 3);
INSERT INTO `apps_chengji` VALUES (309, 32, 3, 9, 3);
INSERT INTO `apps_chengji` VALUES (310, 11, 4, 9, 3);
INSERT INTO `apps_chengji` VALUES (311, 69, 5, 9, 3);
INSERT INTO `apps_chengji` VALUES (312, 42, 6, 9, 3);
INSERT INTO `apps_chengji` VALUES (313, 68, 7, 9, 3);
INSERT INTO `apps_chengji` VALUES (314, 64, 8, 9, 3);
INSERT INTO `apps_chengji` VALUES (315, 27, 9, 9, 3);
INSERT INTO `apps_chengji` VALUES (316, 32, 1, 9, 4);
INSERT INTO `apps_chengji` VALUES (317, 64, 2, 9, 4);
INSERT INTO `apps_chengji` VALUES (318, 10, 3, 9, 4);
INSERT INTO `apps_chengji` VALUES (319, 59, 4, 9, 4);
INSERT INTO `apps_chengji` VALUES (320, 62, 5, 9, 4);
INSERT INTO `apps_chengji` VALUES (321, 99, 6, 9, 4);
INSERT INTO `apps_chengji` VALUES (322, 97, 7, 9, 4);
INSERT INTO `apps_chengji` VALUES (323, 89, 8, 9, 4);
INSERT INTO `apps_chengji` VALUES (324, 56, 9, 9, 4);
INSERT INTO `apps_chengji` VALUES (325, 95, 1, 10, 1);
INSERT INTO `apps_chengji` VALUES (326, 84, 2, 10, 1);
INSERT INTO `apps_chengji` VALUES (327, 88, 3, 10, 1);
INSERT INTO `apps_chengji` VALUES (328, 96, 4, 10, 1);
INSERT INTO `apps_chengji` VALUES (329, 50, 5, 10, 1);
INSERT INTO `apps_chengji` VALUES (330, 44, 6, 10, 1);
INSERT INTO `apps_chengji` VALUES (331, 25, 7, 10, 1);
INSERT INTO `apps_chengji` VALUES (332, 6, 8, 10, 1);
INSERT INTO `apps_chengji` VALUES (333, 77, 9, 10, 1);
INSERT INTO `apps_chengji` VALUES (334, 2, 1, 10, 2);
INSERT INTO `apps_chengji` VALUES (335, 87, 2, 10, 2);
INSERT INTO `apps_chengji` VALUES (336, 15, 3, 10, 2);
INSERT INTO `apps_chengji` VALUES (337, 80, 4, 10, 2);
INSERT INTO `apps_chengji` VALUES (338, 29, 5, 10, 2);
INSERT INTO `apps_chengji` VALUES (339, 5, 6, 10, 2);
INSERT INTO `apps_chengji` VALUES (340, 2, 7, 10, 2);
INSERT INTO `apps_chengji` VALUES (341, 19, 8, 10, 2);
INSERT INTO `apps_chengji` VALUES (342, 93, 9, 10, 2);
INSERT INTO `apps_chengji` VALUES (343, 77, 1, 10, 3);
INSERT INTO `apps_chengji` VALUES (344, 62, 2, 10, 3);
INSERT INTO `apps_chengji` VALUES (345, 49, 3, 10, 3);
INSERT INTO `apps_chengji` VALUES (346, 61, 4, 10, 3);
INSERT INTO `apps_chengji` VALUES (347, 92, 5, 10, 3);
INSERT INTO `apps_chengji` VALUES (348, 64, 6, 10, 3);
INSERT INTO `apps_chengji` VALUES (349, 43, 7, 10, 3);
INSERT INTO `apps_chengji` VALUES (350, 95, 8, 10, 3);
INSERT INTO `apps_chengji` VALUES (351, 36, 9, 10, 3);
INSERT INTO `apps_chengji` VALUES (352, 68, 1, 10, 4);
INSERT INTO `apps_chengji` VALUES (353, 36, 2, 10, 4);
INSERT INTO `apps_chengji` VALUES (354, 14, 3, 10, 4);
INSERT INTO `apps_chengji` VALUES (355, 23, 4, 10, 4);
INSERT INTO `apps_chengji` VALUES (356, 34, 5, 10, 4);
INSERT INTO `apps_chengji` VALUES (357, 57, 6, 10, 4);
INSERT INTO `apps_chengji` VALUES (358, 30, 7, 10, 4);
INSERT INTO `apps_chengji` VALUES (359, 36, 8, 10, 4);
INSERT INTO `apps_chengji` VALUES (360, 46, 9, 10, 4);
INSERT INTO `apps_chengji` VALUES (361, 91, 1, 11, 1);
INSERT INTO `apps_chengji` VALUES (362, 63, 2, 11, 1);
INSERT INTO `apps_chengji` VALUES (363, 45, 3, 11, 1);
INSERT INTO `apps_chengji` VALUES (364, 86, 4, 11, 1);
INSERT INTO `apps_chengji` VALUES (365, 43, 5, 11, 1);
INSERT INTO `apps_chengji` VALUES (366, 82, 6, 11, 1);
INSERT INTO `apps_chengji` VALUES (367, 71, 7, 11, 1);
INSERT INTO `apps_chengji` VALUES (368, 2, 8, 11, 1);
INSERT INTO `apps_chengji` VALUES (369, 15, 9, 11, 1);
INSERT INTO `apps_chengji` VALUES (370, 1, 1, 11, 2);
INSERT INTO `apps_chengji` VALUES (371, 70, 2, 11, 2);
INSERT INTO `apps_chengji` VALUES (372, 89, 3, 11, 2);
INSERT INTO `apps_chengji` VALUES (373, 53, 4, 11, 2);
INSERT INTO `apps_chengji` VALUES (374, 48, 5, 11, 2);
INSERT INTO `apps_chengji` VALUES (375, 43, 6, 11, 2);
INSERT INTO `apps_chengji` VALUES (376, 36, 7, 11, 2);
INSERT INTO `apps_chengji` VALUES (377, 50, 8, 11, 2);
INSERT INTO `apps_chengji` VALUES (378, 26, 9, 11, 2);
INSERT INTO `apps_chengji` VALUES (379, 94, 1, 11, 3);
INSERT INTO `apps_chengji` VALUES (380, 3, 2, 11, 3);
INSERT INTO `apps_chengji` VALUES (381, 54, 3, 11, 3);
INSERT INTO `apps_chengji` VALUES (382, 76, 4, 11, 3);
INSERT INTO `apps_chengji` VALUES (383, 12, 5, 11, 3);
INSERT INTO `apps_chengji` VALUES (384, 70, 6, 11, 3);
INSERT INTO `apps_chengji` VALUES (385, 32, 7, 11, 3);
INSERT INTO `apps_chengji` VALUES (386, 38, 8, 11, 3);
INSERT INTO `apps_chengji` VALUES (387, 6, 9, 11, 3);
INSERT INTO `apps_chengji` VALUES (388, 28, 1, 11, 4);
INSERT INTO `apps_chengji` VALUES (389, 100, 2, 11, 4);
INSERT INTO `apps_chengji` VALUES (390, 50, 3, 11, 4);
INSERT INTO `apps_chengji` VALUES (391, 23, 4, 11, 4);
INSERT INTO `apps_chengji` VALUES (392, 19, 5, 11, 4);
INSERT INTO `apps_chengji` VALUES (393, 99, 6, 11, 4);
INSERT INTO `apps_chengji` VALUES (394, 66, 7, 11, 4);
INSERT INTO `apps_chengji` VALUES (395, 59, 8, 11, 4);
INSERT INTO `apps_chengji` VALUES (396, 17, 9, 11, 4);
INSERT INTO `apps_chengji` VALUES (397, 59, 1, 12, 1);
INSERT INTO `apps_chengji` VALUES (398, 31, 2, 12, 1);
INSERT INTO `apps_chengji` VALUES (399, 74, 3, 12, 1);
INSERT INTO `apps_chengji` VALUES (400, 52, 4, 12, 1);
INSERT INTO `apps_chengji` VALUES (401, 37, 5, 12, 1);
INSERT INTO `apps_chengji` VALUES (402, 85, 6, 12, 1);
INSERT INTO `apps_chengji` VALUES (403, 96, 7, 12, 1);
INSERT INTO `apps_chengji` VALUES (404, 22, 8, 12, 1);
INSERT INTO `apps_chengji` VALUES (405, 59, 9, 12, 1);
INSERT INTO `apps_chengji` VALUES (406, 24, 1, 12, 2);
INSERT INTO `apps_chengji` VALUES (407, 45, 2, 12, 2);
INSERT INTO `apps_chengji` VALUES (408, 15, 3, 12, 2);
INSERT INTO `apps_chengji` VALUES (409, 17, 4, 12, 2);
INSERT INTO `apps_chengji` VALUES (410, 61, 5, 12, 2);
INSERT INTO `apps_chengji` VALUES (411, 30, 6, 12, 2);
INSERT INTO `apps_chengji` VALUES (412, 20, 7, 12, 2);
INSERT INTO `apps_chengji` VALUES (413, 78, 8, 12, 2);
INSERT INTO `apps_chengji` VALUES (414, 69, 9, 12, 2);
INSERT INTO `apps_chengji` VALUES (415, 1, 1, 12, 3);
INSERT INTO `apps_chengji` VALUES (416, 67, 2, 12, 3);
INSERT INTO `apps_chengji` VALUES (417, 30, 3, 12, 3);
INSERT INTO `apps_chengji` VALUES (418, 15, 4, 12, 3);
INSERT INTO `apps_chengji` VALUES (419, 20, 5, 12, 3);
INSERT INTO `apps_chengji` VALUES (420, 34, 6, 12, 3);
INSERT INTO `apps_chengji` VALUES (421, 35, 7, 12, 3);
INSERT INTO `apps_chengji` VALUES (422, 92, 8, 12, 3);
INSERT INTO `apps_chengji` VALUES (423, 97, 9, 12, 3);
INSERT INTO `apps_chengji` VALUES (424, 47, 1, 12, 4);
INSERT INTO `apps_chengji` VALUES (425, 28, 2, 12, 4);
INSERT INTO `apps_chengji` VALUES (426, 19, 3, 12, 4);
INSERT INTO `apps_chengji` VALUES (427, 85, 4, 12, 4);
INSERT INTO `apps_chengji` VALUES (428, 24, 5, 12, 4);
INSERT INTO `apps_chengji` VALUES (429, 32, 6, 12, 4);
INSERT INTO `apps_chengji` VALUES (430, 81, 7, 12, 4);
INSERT INTO `apps_chengji` VALUES (431, 35, 8, 12, 4);
INSERT INTO `apps_chengji` VALUES (432, 8, 9, 12, 4);
INSERT INTO `apps_chengji` VALUES (433, 50, 1, 13, 1);
INSERT INTO `apps_chengji` VALUES (434, 88, 2, 13, 1);
INSERT INTO `apps_chengji` VALUES (435, 34, 3, 13, 1);
INSERT INTO `apps_chengji` VALUES (436, 55, 4, 13, 1);
INSERT INTO `apps_chengji` VALUES (437, 60, 5, 13, 1);
INSERT INTO `apps_chengji` VALUES (438, 5, 6, 13, 1);
INSERT INTO `apps_chengji` VALUES (439, 61, 7, 13, 1);
INSERT INTO `apps_chengji` VALUES (440, 37, 8, 13, 1);
INSERT INTO `apps_chengji` VALUES (441, 6, 9, 13, 1);
INSERT INTO `apps_chengji` VALUES (442, 79, 1, 13, 2);
INSERT INTO `apps_chengji` VALUES (443, 51, 2, 13, 2);
INSERT INTO `apps_chengji` VALUES (444, 45, 3, 13, 2);
INSERT INTO `apps_chengji` VALUES (445, 91, 4, 13, 2);
INSERT INTO `apps_chengji` VALUES (446, 9, 5, 13, 2);
INSERT INTO `apps_chengji` VALUES (447, 33, 6, 13, 2);
INSERT INTO `apps_chengji` VALUES (448, 74, 7, 13, 2);
INSERT INTO `apps_chengji` VALUES (449, 41, 8, 13, 2);
INSERT INTO `apps_chengji` VALUES (450, 18, 9, 13, 2);
INSERT INTO `apps_chengji` VALUES (451, 34, 1, 13, 3);
INSERT INTO `apps_chengji` VALUES (452, 62, 2, 13, 3);
INSERT INTO `apps_chengji` VALUES (453, 46, 3, 13, 3);
INSERT INTO `apps_chengji` VALUES (454, 19, 4, 13, 3);
INSERT INTO `apps_chengji` VALUES (455, 94, 5, 13, 3);
INSERT INTO `apps_chengji` VALUES (456, 77, 6, 13, 3);
INSERT INTO `apps_chengji` VALUES (457, 52, 7, 13, 3);
INSERT INTO `apps_chengji` VALUES (458, 45, 8, 13, 3);
INSERT INTO `apps_chengji` VALUES (459, 26, 9, 13, 3);
INSERT INTO `apps_chengji` VALUES (460, 15, 1, 13, 4);
INSERT INTO `apps_chengji` VALUES (461, 88, 2, 13, 4);
INSERT INTO `apps_chengji` VALUES (462, 32, 3, 13, 4);
INSERT INTO `apps_chengji` VALUES (463, 13, 4, 13, 4);
INSERT INTO `apps_chengji` VALUES (464, 9, 5, 13, 4);
INSERT INTO `apps_chengji` VALUES (465, 39, 6, 13, 4);
INSERT INTO `apps_chengji` VALUES (466, 56, 7, 13, 4);
INSERT INTO `apps_chengji` VALUES (467, 11, 8, 13, 4);
INSERT INTO `apps_chengji` VALUES (468, 42, 9, 13, 4);
INSERT INTO `apps_chengji` VALUES (469, 54, 1, 14, 1);
INSERT INTO `apps_chengji` VALUES (470, 46, 2, 14, 1);
INSERT INTO `apps_chengji` VALUES (471, 64, 3, 14, 1);
INSERT INTO `apps_chengji` VALUES (472, 68, 4, 14, 1);
INSERT INTO `apps_chengji` VALUES (473, 73, 5, 14, 1);
INSERT INTO `apps_chengji` VALUES (474, 73, 6, 14, 1);
INSERT INTO `apps_chengji` VALUES (475, 49, 7, 14, 1);
INSERT INTO `apps_chengji` VALUES (476, 5, 8, 14, 1);
INSERT INTO `apps_chengji` VALUES (477, 88, 9, 14, 1);
INSERT INTO `apps_chengji` VALUES (478, 44, 1, 14, 2);
INSERT INTO `apps_chengji` VALUES (479, 4, 2, 14, 2);
INSERT INTO `apps_chengji` VALUES (480, 38, 3, 14, 2);
INSERT INTO `apps_chengji` VALUES (481, 96, 4, 14, 2);
INSERT INTO `apps_chengji` VALUES (482, 31, 5, 14, 2);
INSERT INTO `apps_chengji` VALUES (483, 83, 6, 14, 2);
INSERT INTO `apps_chengji` VALUES (484, 79, 7, 14, 2);
INSERT INTO `apps_chengji` VALUES (485, 49, 8, 14, 2);
INSERT INTO `apps_chengji` VALUES (486, 42, 9, 14, 2);
INSERT INTO `apps_chengji` VALUES (487, 59, 1, 14, 3);
INSERT INTO `apps_chengji` VALUES (488, 21, 2, 14, 3);
INSERT INTO `apps_chengji` VALUES (489, 11, 3, 14, 3);
INSERT INTO `apps_chengji` VALUES (490, 83, 4, 14, 3);
INSERT INTO `apps_chengji` VALUES (491, 48, 5, 14, 3);
INSERT INTO `apps_chengji` VALUES (492, 27, 6, 14, 3);
INSERT INTO `apps_chengji` VALUES (493, 68, 7, 14, 3);
INSERT INTO `apps_chengji` VALUES (494, 35, 8, 14, 3);
INSERT INTO `apps_chengji` VALUES (495, 43, 9, 14, 3);
INSERT INTO `apps_chengji` VALUES (496, 87, 1, 14, 4);
INSERT INTO `apps_chengji` VALUES (497, 41, 2, 14, 4);
INSERT INTO `apps_chengji` VALUES (498, 44, 3, 14, 4);
INSERT INTO `apps_chengji` VALUES (499, 95, 4, 14, 4);
INSERT INTO `apps_chengji` VALUES (500, 26, 5, 14, 4);
INSERT INTO `apps_chengji` VALUES (501, 86, 6, 14, 4);
INSERT INTO `apps_chengji` VALUES (502, 54, 7, 14, 4);
INSERT INTO `apps_chengji` VALUES (503, 67, 8, 14, 4);
INSERT INTO `apps_chengji` VALUES (504, 48, 9, 14, 4);
INSERT INTO `apps_chengji` VALUES (505, 52, 1, 15, 1);
INSERT INTO `apps_chengji` VALUES (506, 40, 2, 15, 1);
INSERT INTO `apps_chengji` VALUES (507, 14, 3, 15, 1);
INSERT INTO `apps_chengji` VALUES (508, 39, 4, 15, 1);
INSERT INTO `apps_chengji` VALUES (509, 20, 5, 15, 1);
INSERT INTO `apps_chengji` VALUES (510, 54, 6, 15, 1);
INSERT INTO `apps_chengji` VALUES (511, 90, 7, 15, 1);
INSERT INTO `apps_chengji` VALUES (512, 39, 8, 15, 1);
INSERT INTO `apps_chengji` VALUES (513, 94, 9, 15, 1);
INSERT INTO `apps_chengji` VALUES (514, 59, 1, 15, 2);
INSERT INTO `apps_chengji` VALUES (515, 34, 2, 15, 2);
INSERT INTO `apps_chengji` VALUES (516, 84, 3, 15, 2);
INSERT INTO `apps_chengji` VALUES (517, 21, 4, 15, 2);
INSERT INTO `apps_chengji` VALUES (518, 52, 5, 15, 2);
INSERT INTO `apps_chengji` VALUES (519, 2, 6, 15, 2);
INSERT INTO `apps_chengji` VALUES (520, 98, 7, 15, 2);
INSERT INTO `apps_chengji` VALUES (521, 52, 8, 15, 2);
INSERT INTO `apps_chengji` VALUES (522, 77, 9, 15, 2);
INSERT INTO `apps_chengji` VALUES (523, 85, 1, 15, 3);
INSERT INTO `apps_chengji` VALUES (524, 47, 2, 15, 3);
INSERT INTO `apps_chengji` VALUES (525, 13, 3, 15, 3);
INSERT INTO `apps_chengji` VALUES (526, 18, 4, 15, 3);
INSERT INTO `apps_chengji` VALUES (527, 75, 5, 15, 3);
INSERT INTO `apps_chengji` VALUES (528, 49, 6, 15, 3);
INSERT INTO `apps_chengji` VALUES (529, 42, 7, 15, 3);
INSERT INTO `apps_chengji` VALUES (530, 16, 8, 15, 3);
INSERT INTO `apps_chengji` VALUES (531, 92, 9, 15, 3);
INSERT INTO `apps_chengji` VALUES (532, 70, 1, 15, 4);
INSERT INTO `apps_chengji` VALUES (533, 2, 2, 15, 4);
INSERT INTO `apps_chengji` VALUES (534, 49, 3, 15, 4);
INSERT INTO `apps_chengji` VALUES (535, 41, 4, 15, 4);
INSERT INTO `apps_chengji` VALUES (536, 7, 5, 15, 4);
INSERT INTO `apps_chengji` VALUES (537, 71, 6, 15, 4);
INSERT INTO `apps_chengji` VALUES (538, 82, 7, 15, 4);
INSERT INTO `apps_chengji` VALUES (539, 85, 8, 15, 4);
INSERT INTO `apps_chengji` VALUES (540, 37, 9, 15, 4);
INSERT INTO `apps_chengji` VALUES (541, 72, 1, 16, 1);
INSERT INTO `apps_chengji` VALUES (542, 3, 2, 16, 1);
INSERT INTO `apps_chengji` VALUES (543, 23, 3, 16, 1);
INSERT INTO `apps_chengji` VALUES (544, 63, 4, 16, 1);
INSERT INTO `apps_chengji` VALUES (545, 21, 5, 16, 1);
INSERT INTO `apps_chengji` VALUES (546, 11, 6, 16, 1);
INSERT INTO `apps_chengji` VALUES (547, 34, 7, 16, 1);
INSERT INTO `apps_chengji` VALUES (548, 95, 8, 16, 1);
INSERT INTO `apps_chengji` VALUES (549, 66, 9, 16, 1);
INSERT INTO `apps_chengji` VALUES (550, 32, 1, 16, 2);
INSERT INTO `apps_chengji` VALUES (551, 24, 2, 16, 2);
INSERT INTO `apps_chengji` VALUES (552, 8, 3, 16, 2);
INSERT INTO `apps_chengji` VALUES (553, 19, 4, 16, 2);
INSERT INTO `apps_chengji` VALUES (554, 86, 5, 16, 2);
INSERT INTO `apps_chengji` VALUES (555, 54, 6, 16, 2);
INSERT INTO `apps_chengji` VALUES (556, 75, 7, 16, 2);
INSERT INTO `apps_chengji` VALUES (557, 47, 8, 16, 2);
INSERT INTO `apps_chengji` VALUES (558, 80, 9, 16, 2);
INSERT INTO `apps_chengji` VALUES (559, 7, 1, 16, 3);
INSERT INTO `apps_chengji` VALUES (560, 38, 2, 16, 3);
INSERT INTO `apps_chengji` VALUES (561, 2, 3, 16, 3);
INSERT INTO `apps_chengji` VALUES (562, 40, 4, 16, 3);
INSERT INTO `apps_chengji` VALUES (563, 91, 5, 16, 3);
INSERT INTO `apps_chengji` VALUES (564, 58, 6, 16, 3);
INSERT INTO `apps_chengji` VALUES (565, 4, 7, 16, 3);
INSERT INTO `apps_chengji` VALUES (566, 49, 8, 16, 3);
INSERT INTO `apps_chengji` VALUES (567, 26, 9, 16, 3);
INSERT INTO `apps_chengji` VALUES (568, 55, 1, 16, 4);
INSERT INTO `apps_chengji` VALUES (569, 94, 2, 16, 4);
INSERT INTO `apps_chengji` VALUES (570, 87, 3, 16, 4);
INSERT INTO `apps_chengji` VALUES (571, 11, 4, 16, 4);
INSERT INTO `apps_chengji` VALUES (572, 65, 5, 16, 4);
INSERT INTO `apps_chengji` VALUES (573, 11, 6, 16, 4);
INSERT INTO `apps_chengji` VALUES (574, 80, 7, 16, 4);
INSERT INTO `apps_chengji` VALUES (575, 56, 8, 16, 4);
INSERT INTO `apps_chengji` VALUES (576, 80, 9, 16, 4);
INSERT INTO `apps_chengji` VALUES (577, 59, 1, 17, 1);
INSERT INTO `apps_chengji` VALUES (578, 11, 2, 17, 1);
INSERT INTO `apps_chengji` VALUES (579, 50, 3, 17, 1);
INSERT INTO `apps_chengji` VALUES (580, 99, 4, 17, 1);
INSERT INTO `apps_chengji` VALUES (581, 34, 5, 17, 1);
INSERT INTO `apps_chengji` VALUES (582, 34, 6, 17, 1);
INSERT INTO `apps_chengji` VALUES (583, 28, 7, 17, 1);
INSERT INTO `apps_chengji` VALUES (584, 46, 8, 17, 1);
INSERT INTO `apps_chengji` VALUES (585, 85, 9, 17, 1);
INSERT INTO `apps_chengji` VALUES (586, 5, 1, 17, 2);
INSERT INTO `apps_chengji` VALUES (587, 14, 2, 17, 2);
INSERT INTO `apps_chengji` VALUES (588, 95, 3, 17, 2);
INSERT INTO `apps_chengji` VALUES (589, 38, 4, 17, 2);
INSERT INTO `apps_chengji` VALUES (590, 60, 5, 17, 2);
INSERT INTO `apps_chengji` VALUES (591, 7, 6, 17, 2);
INSERT INTO `apps_chengji` VALUES (592, 77, 7, 17, 2);
INSERT INTO `apps_chengji` VALUES (593, 71, 8, 17, 2);
INSERT INTO `apps_chengji` VALUES (594, 30, 9, 17, 2);
INSERT INTO `apps_chengji` VALUES (595, 45, 1, 17, 3);
INSERT INTO `apps_chengji` VALUES (596, 68, 2, 17, 3);
INSERT INTO `apps_chengji` VALUES (597, 29, 3, 17, 3);
INSERT INTO `apps_chengji` VALUES (598, 10, 4, 17, 3);
INSERT INTO `apps_chengji` VALUES (599, 56, 5, 17, 3);
INSERT INTO `apps_chengji` VALUES (600, 52, 6, 17, 3);
INSERT INTO `apps_chengji` VALUES (601, 51, 7, 17, 3);
INSERT INTO `apps_chengji` VALUES (602, 91, 8, 17, 3);
INSERT INTO `apps_chengji` VALUES (603, 68, 9, 17, 3);
INSERT INTO `apps_chengji` VALUES (604, 29, 1, 17, 4);
INSERT INTO `apps_chengji` VALUES (605, 29, 2, 17, 4);
INSERT INTO `apps_chengji` VALUES (606, 19, 3, 17, 4);
INSERT INTO `apps_chengji` VALUES (607, 50, 4, 17, 4);
INSERT INTO `apps_chengji` VALUES (608, 59, 5, 17, 4);
INSERT INTO `apps_chengji` VALUES (609, 90, 6, 17, 4);
INSERT INTO `apps_chengji` VALUES (610, 38, 7, 17, 4);
INSERT INTO `apps_chengji` VALUES (611, 10, 8, 17, 4);
INSERT INTO `apps_chengji` VALUES (612, 83, 9, 17, 4);
INSERT INTO `apps_chengji` VALUES (613, 52, 1, 18, 1);
INSERT INTO `apps_chengji` VALUES (614, 56, 2, 18, 1);
INSERT INTO `apps_chengji` VALUES (615, 15, 3, 18, 1);
INSERT INTO `apps_chengji` VALUES (616, 20, 4, 18, 1);
INSERT INTO `apps_chengji` VALUES (617, 73, 5, 18, 1);
INSERT INTO `apps_chengji` VALUES (618, 55, 6, 18, 1);
INSERT INTO `apps_chengji` VALUES (619, 1, 7, 18, 1);
INSERT INTO `apps_chengji` VALUES (620, 31, 8, 18, 1);
INSERT INTO `apps_chengji` VALUES (621, 59, 9, 18, 1);
INSERT INTO `apps_chengji` VALUES (622, 51, 1, 18, 2);
INSERT INTO `apps_chengji` VALUES (623, 5, 2, 18, 2);
INSERT INTO `apps_chengji` VALUES (624, 14, 3, 18, 2);
INSERT INTO `apps_chengji` VALUES (625, 87, 4, 18, 2);
INSERT INTO `apps_chengji` VALUES (626, 29, 5, 18, 2);
INSERT INTO `apps_chengji` VALUES (627, 18, 6, 18, 2);
INSERT INTO `apps_chengji` VALUES (628, 60, 7, 18, 2);
INSERT INTO `apps_chengji` VALUES (629, 71, 8, 18, 2);
INSERT INTO `apps_chengji` VALUES (630, 36, 9, 18, 2);
INSERT INTO `apps_chengji` VALUES (631, 34, 1, 18, 3);
INSERT INTO `apps_chengji` VALUES (632, 14, 2, 18, 3);
INSERT INTO `apps_chengji` VALUES (633, 64, 3, 18, 3);
INSERT INTO `apps_chengji` VALUES (634, 61, 4, 18, 3);
INSERT INTO `apps_chengji` VALUES (635, 45, 5, 18, 3);
INSERT INTO `apps_chengji` VALUES (636, 8, 6, 18, 3);
INSERT INTO `apps_chengji` VALUES (637, 89, 7, 18, 3);
INSERT INTO `apps_chengji` VALUES (638, 92, 8, 18, 3);
INSERT INTO `apps_chengji` VALUES (639, 77, 9, 18, 3);
INSERT INTO `apps_chengji` VALUES (640, 5, 1, 18, 4);
INSERT INTO `apps_chengji` VALUES (641, 37, 2, 18, 4);
INSERT INTO `apps_chengji` VALUES (642, 29, 3, 18, 4);
INSERT INTO `apps_chengji` VALUES (643, 44, 4, 18, 4);
INSERT INTO `apps_chengji` VALUES (644, 55, 5, 18, 4);
INSERT INTO `apps_chengji` VALUES (645, 7, 6, 18, 4);
INSERT INTO `apps_chengji` VALUES (646, 66, 7, 18, 4);
INSERT INTO `apps_chengji` VALUES (647, 32, 8, 18, 4);
INSERT INTO `apps_chengji` VALUES (648, 43, 9, 18, 4);
INSERT INTO `apps_chengji` VALUES (649, 71, 1, 19, 1);
INSERT INTO `apps_chengji` VALUES (650, 40, 2, 19, 1);
INSERT INTO `apps_chengji` VALUES (651, 38, 3, 19, 1);
INSERT INTO `apps_chengji` VALUES (652, 94, 4, 19, 1);
INSERT INTO `apps_chengji` VALUES (653, 89, 5, 19, 1);
INSERT INTO `apps_chengji` VALUES (654, 79, 6, 19, 1);
INSERT INTO `apps_chengji` VALUES (655, 50, 7, 19, 1);
INSERT INTO `apps_chengji` VALUES (656, 15, 8, 19, 1);
INSERT INTO `apps_chengji` VALUES (657, 75, 9, 19, 1);
INSERT INTO `apps_chengji` VALUES (658, 100, 1, 19, 2);
INSERT INTO `apps_chengji` VALUES (659, 61, 2, 19, 2);
INSERT INTO `apps_chengji` VALUES (660, 44, 3, 19, 2);
INSERT INTO `apps_chengji` VALUES (661, 12, 4, 19, 2);
INSERT INTO `apps_chengji` VALUES (662, 66, 5, 19, 2);
INSERT INTO `apps_chengji` VALUES (663, 42, 6, 19, 2);
INSERT INTO `apps_chengji` VALUES (664, 12, 7, 19, 2);
INSERT INTO `apps_chengji` VALUES (665, 2, 8, 19, 2);
INSERT INTO `apps_chengji` VALUES (666, 2, 9, 19, 2);
INSERT INTO `apps_chengji` VALUES (667, 62, 1, 19, 3);
INSERT INTO `apps_chengji` VALUES (668, 60, 2, 19, 3);
INSERT INTO `apps_chengji` VALUES (669, 15, 3, 19, 3);
INSERT INTO `apps_chengji` VALUES (670, 94, 4, 19, 3);
INSERT INTO `apps_chengji` VALUES (671, 83, 5, 19, 3);
INSERT INTO `apps_chengji` VALUES (672, 36, 6, 19, 3);
INSERT INTO `apps_chengji` VALUES (673, 80, 7, 19, 3);
INSERT INTO `apps_chengji` VALUES (674, 62, 8, 19, 3);
INSERT INTO `apps_chengji` VALUES (675, 31, 9, 19, 3);
INSERT INTO `apps_chengji` VALUES (676, 42, 1, 19, 4);
INSERT INTO `apps_chengji` VALUES (677, 63, 2, 19, 4);
INSERT INTO `apps_chengji` VALUES (678, 91, 3, 19, 4);
INSERT INTO `apps_chengji` VALUES (679, 93, 4, 19, 4);
INSERT INTO `apps_chengji` VALUES (680, 23, 5, 19, 4);
INSERT INTO `apps_chengji` VALUES (681, 88, 6, 19, 4);
INSERT INTO `apps_chengji` VALUES (682, 34, 7, 19, 4);
INSERT INTO `apps_chengji` VALUES (683, 18, 8, 19, 4);
INSERT INTO `apps_chengji` VALUES (684, 25, 9, 19, 4);
INSERT INTO `apps_chengji` VALUES (685, 26, 1, 20, 1);
INSERT INTO `apps_chengji` VALUES (686, 90, 2, 20, 1);
INSERT INTO `apps_chengji` VALUES (687, 6, 3, 20, 1);
INSERT INTO `apps_chengji` VALUES (688, 94, 4, 20, 1);
INSERT INTO `apps_chengji` VALUES (689, 59, 5, 20, 1);
INSERT INTO `apps_chengji` VALUES (690, 37, 6, 20, 1);
INSERT INTO `apps_chengji` VALUES (691, 81, 7, 20, 1);
INSERT INTO `apps_chengji` VALUES (692, 35, 8, 20, 1);
INSERT INTO `apps_chengji` VALUES (693, 20, 9, 20, 1);
INSERT INTO `apps_chengji` VALUES (694, 96, 1, 20, 2);
INSERT INTO `apps_chengji` VALUES (695, 29, 2, 20, 2);
INSERT INTO `apps_chengji` VALUES (696, 84, 3, 20, 2);
INSERT INTO `apps_chengji` VALUES (697, 82, 4, 20, 2);
INSERT INTO `apps_chengji` VALUES (698, 97, 5, 20, 2);
INSERT INTO `apps_chengji` VALUES (699, 20, 6, 20, 2);
INSERT INTO `apps_chengji` VALUES (700, 7, 7, 20, 2);
INSERT INTO `apps_chengji` VALUES (701, 76, 8, 20, 2);
INSERT INTO `apps_chengji` VALUES (702, 5, 9, 20, 2);
INSERT INTO `apps_chengji` VALUES (703, 15, 1, 20, 3);
INSERT INTO `apps_chengji` VALUES (704, 86, 2, 20, 3);
INSERT INTO `apps_chengji` VALUES (705, 20, 3, 20, 3);
INSERT INTO `apps_chengji` VALUES (706, 20, 4, 20, 3);
INSERT INTO `apps_chengji` VALUES (707, 61, 5, 20, 3);
INSERT INTO `apps_chengji` VALUES (708, 69, 6, 20, 3);
INSERT INTO `apps_chengji` VALUES (709, 21, 7, 20, 3);
INSERT INTO `apps_chengji` VALUES (710, 37, 8, 20, 3);
INSERT INTO `apps_chengji` VALUES (711, 56, 9, 20, 3);
INSERT INTO `apps_chengji` VALUES (712, 34, 1, 20, 4);
INSERT INTO `apps_chengji` VALUES (713, 52, 2, 20, 4);
INSERT INTO `apps_chengji` VALUES (714, 19, 3, 20, 4);
INSERT INTO `apps_chengji` VALUES (715, 43, 4, 20, 4);
INSERT INTO `apps_chengji` VALUES (716, 11, 5, 20, 4);
INSERT INTO `apps_chengji` VALUES (717, 95, 6, 20, 4);
INSERT INTO `apps_chengji` VALUES (718, 97, 7, 20, 4);
INSERT INTO `apps_chengji` VALUES (719, 49, 8, 20, 4);
INSERT INTO `apps_chengji` VALUES (720, 48, 9, 20, 4);
INSERT INTO `apps_chengji` VALUES (721, 67, 1, 21, 1);
INSERT INTO `apps_chengji` VALUES (722, 3, 2, 21, 1);
INSERT INTO `apps_chengji` VALUES (723, 78, 3, 21, 1);
INSERT INTO `apps_chengji` VALUES (724, 18, 4, 21, 1);
INSERT INTO `apps_chengji` VALUES (725, 10, 5, 21, 1);
INSERT INTO `apps_chengji` VALUES (726, 81, 6, 21, 1);
INSERT INTO `apps_chengji` VALUES (727, 11, 7, 21, 1);
INSERT INTO `apps_chengji` VALUES (728, 67, 8, 21, 1);
INSERT INTO `apps_chengji` VALUES (729, 100, 9, 21, 1);
INSERT INTO `apps_chengji` VALUES (730, 51, 1, 21, 2);
INSERT INTO `apps_chengji` VALUES (731, 7, 2, 21, 2);
INSERT INTO `apps_chengji` VALUES (732, 54, 3, 21, 2);
INSERT INTO `apps_chengji` VALUES (733, 89, 4, 21, 2);
INSERT INTO `apps_chengji` VALUES (734, 17, 5, 21, 2);
INSERT INTO `apps_chengji` VALUES (735, 4, 6, 21, 2);
INSERT INTO `apps_chengji` VALUES (736, 15, 7, 21, 2);
INSERT INTO `apps_chengji` VALUES (737, 16, 8, 21, 2);
INSERT INTO `apps_chengji` VALUES (738, 20, 9, 21, 2);
INSERT INTO `apps_chengji` VALUES (739, 5, 1, 21, 3);
INSERT INTO `apps_chengji` VALUES (740, 19, 2, 21, 3);
INSERT INTO `apps_chengji` VALUES (741, 91, 3, 21, 3);
INSERT INTO `apps_chengji` VALUES (742, 37, 4, 21, 3);
INSERT INTO `apps_chengji` VALUES (743, 59, 5, 21, 3);
INSERT INTO `apps_chengji` VALUES (744, 41, 6, 21, 3);
INSERT INTO `apps_chengji` VALUES (745, 75, 7, 21, 3);
INSERT INTO `apps_chengji` VALUES (746, 75, 8, 21, 3);
INSERT INTO `apps_chengji` VALUES (747, 51, 9, 21, 3);
INSERT INTO `apps_chengji` VALUES (748, 82, 1, 21, 4);
INSERT INTO `apps_chengji` VALUES (749, 52, 2, 21, 4);
INSERT INTO `apps_chengji` VALUES (750, 95, 3, 21, 4);
INSERT INTO `apps_chengji` VALUES (751, 83, 4, 21, 4);
INSERT INTO `apps_chengji` VALUES (752, 71, 5, 21, 4);
INSERT INTO `apps_chengji` VALUES (753, 24, 6, 21, 4);
INSERT INTO `apps_chengji` VALUES (754, 7, 7, 21, 4);
INSERT INTO `apps_chengji` VALUES (755, 87, 8, 21, 4);
INSERT INTO `apps_chengji` VALUES (756, 32, 9, 21, 4);
INSERT INTO `apps_chengji` VALUES (757, 35, 1, 22, 1);
INSERT INTO `apps_chengji` VALUES (758, 71, 2, 22, 1);
INSERT INTO `apps_chengji` VALUES (759, 76, 3, 22, 1);
INSERT INTO `apps_chengji` VALUES (760, 85, 4, 22, 1);
INSERT INTO `apps_chengji` VALUES (761, 16, 5, 22, 1);
INSERT INTO `apps_chengji` VALUES (762, 32, 6, 22, 1);
INSERT INTO `apps_chengji` VALUES (763, 21, 7, 22, 1);
INSERT INTO `apps_chengji` VALUES (764, 52, 8, 22, 1);
INSERT INTO `apps_chengji` VALUES (765, 13, 9, 22, 1);
INSERT INTO `apps_chengji` VALUES (766, 86, 1, 22, 2);
INSERT INTO `apps_chengji` VALUES (767, 48, 2, 22, 2);
INSERT INTO `apps_chengji` VALUES (768, 7, 3, 22, 2);
INSERT INTO `apps_chengji` VALUES (769, 90, 4, 22, 2);
INSERT INTO `apps_chengji` VALUES (770, 83, 5, 22, 2);
INSERT INTO `apps_chengji` VALUES (771, 93, 6, 22, 2);
INSERT INTO `apps_chengji` VALUES (772, 92, 7, 22, 2);
INSERT INTO `apps_chengji` VALUES (773, 49, 8, 22, 2);
INSERT INTO `apps_chengji` VALUES (774, 18, 9, 22, 2);
INSERT INTO `apps_chengji` VALUES (775, 22, 1, 22, 3);
INSERT INTO `apps_chengji` VALUES (776, 67, 2, 22, 3);
INSERT INTO `apps_chengji` VALUES (777, 69, 3, 22, 3);
INSERT INTO `apps_chengji` VALUES (778, 28, 4, 22, 3);
INSERT INTO `apps_chengji` VALUES (779, 80, 5, 22, 3);
INSERT INTO `apps_chengji` VALUES (780, 90, 6, 22, 3);
INSERT INTO `apps_chengji` VALUES (781, 65, 7, 22, 3);
INSERT INTO `apps_chengji` VALUES (782, 45, 8, 22, 3);
INSERT INTO `apps_chengji` VALUES (783, 40, 9, 22, 3);
INSERT INTO `apps_chengji` VALUES (784, 41, 1, 22, 4);
INSERT INTO `apps_chengji` VALUES (785, 19, 2, 22, 4);
INSERT INTO `apps_chengji` VALUES (786, 5, 3, 22, 4);
INSERT INTO `apps_chengji` VALUES (787, 85, 4, 22, 4);
INSERT INTO `apps_chengji` VALUES (788, 63, 5, 22, 4);
INSERT INTO `apps_chengji` VALUES (789, 45, 6, 22, 4);
INSERT INTO `apps_chengji` VALUES (790, 39, 7, 22, 4);
INSERT INTO `apps_chengji` VALUES (791, 57, 8, 22, 4);
INSERT INTO `apps_chengji` VALUES (792, 42, 9, 22, 4);
INSERT INTO `apps_chengji` VALUES (793, 53, 1, 23, 1);
INSERT INTO `apps_chengji` VALUES (794, 17, 2, 23, 1);
INSERT INTO `apps_chengji` VALUES (795, 29, 3, 23, 1);
INSERT INTO `apps_chengji` VALUES (796, 18, 4, 23, 1);
INSERT INTO `apps_chengji` VALUES (797, 24, 5, 23, 1);
INSERT INTO `apps_chengji` VALUES (798, 39, 6, 23, 1);
INSERT INTO `apps_chengji` VALUES (799, 4, 7, 23, 1);
INSERT INTO `apps_chengji` VALUES (800, 42, 8, 23, 1);
INSERT INTO `apps_chengji` VALUES (801, 76, 9, 23, 1);
INSERT INTO `apps_chengji` VALUES (802, 28, 1, 23, 2);
INSERT INTO `apps_chengji` VALUES (803, 20, 2, 23, 2);
INSERT INTO `apps_chengji` VALUES (804, 36, 3, 23, 2);
INSERT INTO `apps_chengji` VALUES (805, 36, 4, 23, 2);
INSERT INTO `apps_chengji` VALUES (806, 80, 5, 23, 2);
INSERT INTO `apps_chengji` VALUES (807, 33, 6, 23, 2);
INSERT INTO `apps_chengji` VALUES (808, 9, 7, 23, 2);
INSERT INTO `apps_chengji` VALUES (809, 77, 8, 23, 2);
INSERT INTO `apps_chengji` VALUES (810, 10, 9, 23, 2);
INSERT INTO `apps_chengji` VALUES (811, 25, 1, 23, 3);
INSERT INTO `apps_chengji` VALUES (812, 39, 2, 23, 3);
INSERT INTO `apps_chengji` VALUES (813, 15, 3, 23, 3);
INSERT INTO `apps_chengji` VALUES (814, 74, 4, 23, 3);
INSERT INTO `apps_chengji` VALUES (815, 72, 5, 23, 3);
INSERT INTO `apps_chengji` VALUES (816, 67, 6, 23, 3);
INSERT INTO `apps_chengji` VALUES (817, 68, 7, 23, 3);
INSERT INTO `apps_chengji` VALUES (818, 4, 8, 23, 3);
INSERT INTO `apps_chengji` VALUES (819, 23, 9, 23, 3);
INSERT INTO `apps_chengji` VALUES (820, 16, 1, 23, 4);
INSERT INTO `apps_chengji` VALUES (821, 78, 2, 23, 4);
INSERT INTO `apps_chengji` VALUES (822, 25, 3, 23, 4);
INSERT INTO `apps_chengji` VALUES (823, 28, 4, 23, 4);
INSERT INTO `apps_chengji` VALUES (824, 57, 5, 23, 4);
INSERT INTO `apps_chengji` VALUES (825, 5, 6, 23, 4);
INSERT INTO `apps_chengji` VALUES (826, 28, 7, 23, 4);
INSERT INTO `apps_chengji` VALUES (827, 44, 8, 23, 4);
INSERT INTO `apps_chengji` VALUES (828, 26, 9, 23, 4);
INSERT INTO `apps_chengji` VALUES (829, 31, 1, 24, 1);
INSERT INTO `apps_chengji` VALUES (830, 72, 2, 24, 1);
INSERT INTO `apps_chengji` VALUES (831, 50, 3, 24, 1);
INSERT INTO `apps_chengji` VALUES (832, 7, 4, 24, 1);
INSERT INTO `apps_chengji` VALUES (833, 27, 5, 24, 1);
INSERT INTO `apps_chengji` VALUES (834, 69, 6, 24, 1);
INSERT INTO `apps_chengji` VALUES (835, 82, 7, 24, 1);
INSERT INTO `apps_chengji` VALUES (836, 73, 8, 24, 1);
INSERT INTO `apps_chengji` VALUES (837, 4, 9, 24, 1);
INSERT INTO `apps_chengji` VALUES (838, 3, 1, 24, 2);
INSERT INTO `apps_chengji` VALUES (839, 44, 2, 24, 2);
INSERT INTO `apps_chengji` VALUES (840, 68, 3, 24, 2);
INSERT INTO `apps_chengji` VALUES (841, 46, 4, 24, 2);
INSERT INTO `apps_chengji` VALUES (842, 17, 5, 24, 2);
INSERT INTO `apps_chengji` VALUES (843, 69, 6, 24, 2);
INSERT INTO `apps_chengji` VALUES (844, 88, 7, 24, 2);
INSERT INTO `apps_chengji` VALUES (845, 39, 8, 24, 2);
INSERT INTO `apps_chengji` VALUES (846, 78, 9, 24, 2);
INSERT INTO `apps_chengji` VALUES (847, 81, 1, 24, 3);
INSERT INTO `apps_chengji` VALUES (848, 15, 2, 24, 3);
INSERT INTO `apps_chengji` VALUES (849, 35, 3, 24, 3);
INSERT INTO `apps_chengji` VALUES (850, 26, 4, 24, 3);
INSERT INTO `apps_chengji` VALUES (851, 89, 5, 24, 3);
INSERT INTO `apps_chengji` VALUES (852, 69, 6, 24, 3);
INSERT INTO `apps_chengji` VALUES (853, 44, 7, 24, 3);
INSERT INTO `apps_chengji` VALUES (854, 100, 8, 24, 3);
INSERT INTO `apps_chengji` VALUES (855, 69, 9, 24, 3);
INSERT INTO `apps_chengji` VALUES (856, 20, 1, 24, 4);
INSERT INTO `apps_chengji` VALUES (857, 6, 2, 24, 4);
INSERT INTO `apps_chengji` VALUES (858, 77, 3, 24, 4);
INSERT INTO `apps_chengji` VALUES (859, 25, 4, 24, 4);
INSERT INTO `apps_chengji` VALUES (860, 38, 5, 24, 4);
INSERT INTO `apps_chengji` VALUES (861, 66, 6, 24, 4);
INSERT INTO `apps_chengji` VALUES (862, 12, 7, 24, 4);
INSERT INTO `apps_chengji` VALUES (863, 59, 8, 24, 4);
INSERT INTO `apps_chengji` VALUES (864, 98, 9, 24, 4);
INSERT INTO `apps_chengji` VALUES (865, 93, 1, 25, 1);
INSERT INTO `apps_chengji` VALUES (866, 61, 2, 25, 1);
INSERT INTO `apps_chengji` VALUES (867, 31, 3, 25, 1);
INSERT INTO `apps_chengji` VALUES (868, 80, 4, 25, 1);
INSERT INTO `apps_chengji` VALUES (869, 72, 5, 25, 1);
INSERT INTO `apps_chengji` VALUES (870, 79, 6, 25, 1);
INSERT INTO `apps_chengji` VALUES (871, 12, 7, 25, 1);
INSERT INTO `apps_chengji` VALUES (872, 43, 8, 25, 1);
INSERT INTO `apps_chengji` VALUES (873, 38, 9, 25, 1);
INSERT INTO `apps_chengji` VALUES (874, 83, 1, 25, 2);
INSERT INTO `apps_chengji` VALUES (875, 86, 2, 25, 2);
INSERT INTO `apps_chengji` VALUES (876, 22, 3, 25, 2);
INSERT INTO `apps_chengji` VALUES (877, 26, 4, 25, 2);
INSERT INTO `apps_chengji` VALUES (878, 99, 5, 25, 2);
INSERT INTO `apps_chengji` VALUES (879, 25, 6, 25, 2);
INSERT INTO `apps_chengji` VALUES (880, 52, 7, 25, 2);
INSERT INTO `apps_chengji` VALUES (881, 43, 8, 25, 2);
INSERT INTO `apps_chengji` VALUES (882, 8, 9, 25, 2);
INSERT INTO `apps_chengji` VALUES (883, 33, 1, 25, 3);
INSERT INTO `apps_chengji` VALUES (884, 17, 2, 25, 3);
INSERT INTO `apps_chengji` VALUES (885, 78, 3, 25, 3);
INSERT INTO `apps_chengji` VALUES (886, 68, 4, 25, 3);
INSERT INTO `apps_chengji` VALUES (887, 96, 5, 25, 3);
INSERT INTO `apps_chengji` VALUES (888, 80, 6, 25, 3);
INSERT INTO `apps_chengji` VALUES (889, 83, 7, 25, 3);
INSERT INTO `apps_chengji` VALUES (890, 48, 8, 25, 3);
INSERT INTO `apps_chengji` VALUES (891, 49, 9, 25, 3);
INSERT INTO `apps_chengji` VALUES (892, 25, 1, 25, 4);
INSERT INTO `apps_chengji` VALUES (893, 35, 2, 25, 4);
INSERT INTO `apps_chengji` VALUES (894, 75, 3, 25, 4);
INSERT INTO `apps_chengji` VALUES (895, 4, 4, 25, 4);
INSERT INTO `apps_chengji` VALUES (896, 59, 5, 25, 4);
INSERT INTO `apps_chengji` VALUES (897, 16, 6, 25, 4);
INSERT INTO `apps_chengji` VALUES (898, 93, 7, 25, 4);
INSERT INTO `apps_chengji` VALUES (899, 73, 8, 25, 4);
INSERT INTO `apps_chengji` VALUES (900, 74, 9, 25, 4);

-- ----------------------------
-- Table structure for apps_grade
-- ----------------------------
DROP TABLE IF EXISTS `apps_grade`;
CREATE TABLE `apps_grade`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `t_id_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `apps_grade_t_id_id_c4f01075_fk_apps_teacher_id`(`t_id_id`) USING BTREE,
  CONSTRAINT `apps_grade_t_id_id_c4f01075_fk_apps_teacher_id` FOREIGN KEY (`t_id_id`) REFERENCES `apps_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apps_grade
-- ----------------------------
INSERT INTO `apps_grade` VALUES (1, '一班', 1);
INSERT INTO `apps_grade` VALUES (2, '二班', 1);
INSERT INTO `apps_grade` VALUES (3, '三班', 2);

-- ----------------------------
-- Table structure for apps_mistakes
-- ----------------------------
DROP TABLE IF EXISTS `apps_mistakes`;
CREATE TABLE `apps_mistakes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id_id` int(11) NOT NULL,
  `ti_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `apps_mistakes_s_id_id_288b29b8_fk_apps_student_id`(`s_id_id`) USING BTREE,
  INDEX `apps_mistakes_ti_id_id_b2682539_fk_apps_timu_id`(`ti_id_id`) USING BTREE,
  CONSTRAINT `apps_mistakes_s_id_id_288b29b8_fk_apps_student_id` FOREIGN KEY (`s_id_id`) REFERENCES `apps_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `apps_mistakes_ti_id_id_b2682539_fk_apps_timu_id` FOREIGN KEY (`ti_id_id`) REFERENCES `apps_timu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apps_mistakes
-- ----------------------------
INSERT INTO `apps_mistakes` VALUES (1, 1, 1);
INSERT INTO `apps_mistakes` VALUES (2, 1, 2);
INSERT INTO `apps_mistakes` VALUES (3, 1, 3);
INSERT INTO `apps_mistakes` VALUES (4, 1, 4);
INSERT INTO `apps_mistakes` VALUES (5, 1, 5);

-- ----------------------------
-- Table structure for apps_student
-- ----------------------------
DROP TABLE IF EXISTS `apps_student`;
CREATE TABLE `apps_student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `g_id_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `apps_student_g_id_id_a048c498_fk_apps_grade_id`(`g_id_id`) USING BTREE,
  CONSTRAINT `apps_student_g_id_id_a048c498_fk_apps_grade_id` FOREIGN KEY (`g_id_id`) REFERENCES `apps_grade` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apps_student
-- ----------------------------
INSERT INTO `apps_student` VALUES (1, '2001', '张三', 1);
INSERT INTO `apps_student` VALUES (2, '2002', '李四', 1);
INSERT INTO `apps_student` VALUES (3, '2003', '王五', 1);
INSERT INTO `apps_student` VALUES (4, '2004', '赵六', 1);
INSERT INTO `apps_student` VALUES (5, '2005', '林八', 1);
INSERT INTO `apps_student` VALUES (6, '2006', '小刘', 1);
INSERT INTO `apps_student` VALUES (7, '2007', '小张', 2);
INSERT INTO `apps_student` VALUES (8, '2008', '小王', 2);
INSERT INTO `apps_student` VALUES (9, '2009', '小林', 2);
INSERT INTO `apps_student` VALUES (10, '2010', '小李', 2);
INSERT INTO `apps_student` VALUES (11, '2011', '小梁', 2);
INSERT INTO `apps_student` VALUES (12, '2012', '小毛', 2);
INSERT INTO `apps_student` VALUES (13, '2013', '大宝', 2);
INSERT INTO `apps_student` VALUES (14, '2014', '赵嘉乐', 3);
INSERT INTO `apps_student` VALUES (15, '2015', '何嘉祥', 3);
INSERT INTO `apps_student` VALUES (16, '2016', '刘源', 3);
INSERT INTO `apps_student` VALUES (17, '2017', '花花', 3);
INSERT INTO `apps_student` VALUES (18, '2018', '福西西', 3);
INSERT INTO `apps_student` VALUES (19, '2019', '农农', 3);
INSERT INTO `apps_student` VALUES (20, '2020', '涛涛', 3);
INSERT INTO `apps_student` VALUES (21, '2021', '国超', 3);
INSERT INTO `apps_student` VALUES (22, '2022', '昊昊', 3);
INSERT INTO `apps_student` VALUES (23, '2023', '霉霉', 3);
INSERT INTO `apps_student` VALUES (24, '2024', '戳爷', 3);
INSERT INTO `apps_student` VALUES (25, '2025', '八爷', 3);

-- ----------------------------
-- Table structure for apps_teacher
-- ----------------------------
DROP TABLE IF EXISTS `apps_teacher`;
CREATE TABLE `apps_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apps_teacher
-- ----------------------------
INSERT INTO `apps_teacher` VALUES (1, '20010101', '李老师');
INSERT INTO `apps_teacher` VALUES (2, '20010202', '杭老师');
INSERT INTO `apps_teacher` VALUES (3, '20010303', '张老师');

-- ----------------------------
-- Table structure for apps_timu
-- ----------------------------
DROP TABLE IF EXISTS `apps_timu`;
CREATE TABLE `apps_timu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `A` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `B` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `C` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `D` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `correct` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `c_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `apps_timu_c_id_id_47607463_fk_apps_calss_id`(`c_id_id`) USING BTREE,
  CONSTRAINT `apps_timu_c_id_id_47607463_fk_apps_calss_id` FOREIGN KEY (`c_id_id`) REFERENCES `apps_calss` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apps_timu
-- ----------------------------
INSERT INTO `apps_timu` VALUES (1, '如果想要将整数转换成字符串，需要用到什么函数?', 'A . num()', 'B . double()', 'C . int()', 'D . str()', 'D', 1);
INSERT INTO `apps_timu` VALUES (2, '在Python中一个数字占几个字节：', 'A . 0.5个', 'B . 1个', 'C . 2个', 'D . 4个', 'B', 2);
INSERT INTO `apps_timu` VALUES (3, '正则表达式中使用（ ）来匹配任意数量的字母或数字或下划线或汉字：', 'A . \\w', 'B . \\b', 'C . ^', 'D . \\w*', 'D', 3);
INSERT INTO `apps_timu` VALUES (4, '小明未开启手机指纹支付方式，需要设置6个数字的微信支付密码，下列哪项是正确的微信支付密码格式：', 'A . [0-9]{1,6}', 'B . [0-6]{0,9}', 'C . [0-9]{6}', 'D . [0-9]{1-6}', 'C', 4);
INSERT INTO `apps_timu` VALUES (5, '使用已存在的字典作为函数的可变参数，需要：', 'A . 直接使用字典名称作为参数', 'B . 在字典名称前加“*”', 'C . 在字典名称前加“**”', 'D .  在字典内每个元素前加“**”', 'C', 5);
INSERT INTO `apps_timu` VALUES (6, '如果想要将整数转换成字符串，需要用到什么函数?', 'A . num()', 'B . double()', 'C . int()', 'D . str()', 'D', 1);
INSERT INTO `apps_timu` VALUES (7, '在Python中一个数字占几个字节：', 'A . 0.5个', 'B . 1个', 'C . 2个', 'D . 4个', 'B', 2);
INSERT INTO `apps_timu` VALUES (8, '正则表达式中使用（ ）来匹配任意数量的字母或数字或下划线或汉字：', 'A . \\w', 'B . \\b', 'C . ^', 'D . \\w*', 'D', 3);
INSERT INTO `apps_timu` VALUES (9, '小明未开启手机指纹支付方式，需要设置6个数字的微信支付密码，下列哪项是正确的微信支付密码格式：', 'A . [0-9]{1,6}', 'B . [0-6]{0,9}', 'C . [0-9]{6}', 'D . [0-9]{1-6}', 'C', 4);
INSERT INTO `apps_timu` VALUES (10, '使用已存在的字典作为函数的可变参数，需要：', 'A . 直接使用字典名称作为参数', 'B . 在字典名称前加“*”', 'C . 在字典名称前加“**”', 'D .  在字典内每个元素前加“**”', 'C', 5);
INSERT INTO `apps_timu` VALUES (11, '如果想要将整数转换成字符串，需要用到什么函数?', 'A . num()', 'B . double()', 'C . int()', 'D . str()', 'D', 1);
INSERT INTO `apps_timu` VALUES (12, '在Python中一个数字占几个字节：', 'A . 0.5个', 'B . 1个', 'C . 2个', 'D . 4个', 'B', 2);
INSERT INTO `apps_timu` VALUES (13, '正则表达式中使用（ ）来匹配任意数量的字母或数字或下划线或汉字：', 'A . \\w', 'B . \\b', 'C . ^', 'D . \\w*', 'D', 3);
INSERT INTO `apps_timu` VALUES (14, '小明未开启手机指纹支付方式，需要设置6个数字的微信支付密码，下列哪项是正确的微信支付密码格式：', 'A . [0-9]{1,6}', 'B . [0-6]{0,9}', 'C . [0-9]{6}', 'D . [0-9]{1-6}', 'C', 4);
INSERT INTO `apps_timu` VALUES (15, '使用已存在的字典作为函数的可变参数，需要：', 'A . 直接使用字典名称作为参数', 'B . 在字典名称前加“*”', 'C . 在字典名称前加“**”', 'D .  在字典内每个元素前加“**”', 'C', 5);
INSERT INTO `apps_timu` VALUES (16, '如果想要将整数转换成字符串，需要用到什么函数?', 'A . num()', 'B . double()', 'C . int()', 'D . str()', 'D', 1);
INSERT INTO `apps_timu` VALUES (17, '在Python中一个数字占几个字节：', 'A . 0.5个', 'B . 1个', 'C . 2个', 'D . 4个', 'B', 2);
INSERT INTO `apps_timu` VALUES (18, '正则表达式中使用（ ）来匹配任意数量的字母或数字或下划线或汉字：', 'A . \\w', 'B . \\b', 'C . ^', 'D . \\w*', 'D', 3);
INSERT INTO `apps_timu` VALUES (19, '小明未开启手机指纹支付方式，需要设置6个数字的微信支付密码，下列哪项是正确的微信支付密码格式：', 'A . [0-9]{1,6}', 'B . [0-6]{0,9}', 'C . [0-9]{6}', 'D . [0-9]{1-6}', 'C', 4);
INSERT INTO `apps_timu` VALUES (20, '使用已存在的字典作为函数的可变参数，需要：', 'A . 直接使用字典名称作为参数', 'B . 在字典名称前加“*”', 'C . 在字典名称前加“**”', 'D .  在字典内每个元素前加“**”', 'C', 5);

-- ----------------------------
-- Table structure for apps_xueqi
-- ----------------------------
DROP TABLE IF EXISTS `apps_xueqi`;
CREATE TABLE `apps_xueqi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xueqi` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apps_xueqi
-- ----------------------------
INSERT INTO `apps_xueqi` VALUES (1, '第一学期');
INSERT INTO `apps_xueqi` VALUES (2, '第二学期');
INSERT INTO `apps_xueqi` VALUES (3, '第三学期');
INSERT INTO `apps_xueqi` VALUES (4, '第四学期');

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add calss', 7, 'add_calss');
INSERT INTO `auth_permission` VALUES (26, 'Can change calss', 7, 'change_calss');
INSERT INTO `auth_permission` VALUES (27, 'Can delete calss', 7, 'delete_calss');
INSERT INTO `auth_permission` VALUES (28, 'Can view calss', 7, 'view_calss');
INSERT INTO `auth_permission` VALUES (29, 'Can add grade', 8, 'add_grade');
INSERT INTO `auth_permission` VALUES (30, 'Can change grade', 8, 'change_grade');
INSERT INTO `auth_permission` VALUES (31, 'Can delete grade', 8, 'delete_grade');
INSERT INTO `auth_permission` VALUES (32, 'Can view grade', 8, 'view_grade');
INSERT INTO `auth_permission` VALUES (33, 'Can add teacher', 9, 'add_teacher');
INSERT INTO `auth_permission` VALUES (34, 'Can change teacher', 9, 'change_teacher');
INSERT INTO `auth_permission` VALUES (35, 'Can delete teacher', 9, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (36, 'Can view teacher', 9, 'view_teacher');
INSERT INTO `auth_permission` VALUES (37, 'Can add xueqi', 10, 'add_xueqi');
INSERT INTO `auth_permission` VALUES (38, 'Can change xueqi', 10, 'change_xueqi');
INSERT INTO `auth_permission` VALUES (39, 'Can delete xueqi', 10, 'delete_xueqi');
INSERT INTO `auth_permission` VALUES (40, 'Can view xueqi', 10, 'view_xueqi');
INSERT INTO `auth_permission` VALUES (41, 'Can add timu', 11, 'add_timu');
INSERT INTO `auth_permission` VALUES (42, 'Can change timu', 11, 'change_timu');
INSERT INTO `auth_permission` VALUES (43, 'Can delete timu', 11, 'delete_timu');
INSERT INTO `auth_permission` VALUES (44, 'Can view timu', 11, 'view_timu');
INSERT INTO `auth_permission` VALUES (45, 'Can add student', 12, 'add_student');
INSERT INTO `auth_permission` VALUES (46, 'Can change student', 12, 'change_student');
INSERT INTO `auth_permission` VALUES (47, 'Can delete student', 12, 'delete_student');
INSERT INTO `auth_permission` VALUES (48, 'Can view student', 12, 'view_student');
INSERT INTO `auth_permission` VALUES (49, 'Can add mistakes', 13, 'add_mistakes');
INSERT INTO `auth_permission` VALUES (50, 'Can change mistakes', 13, 'change_mistakes');
INSERT INTO `auth_permission` VALUES (51, 'Can delete mistakes', 13, 'delete_mistakes');
INSERT INTO `auth_permission` VALUES (52, 'Can view mistakes', 13, 'view_mistakes');
INSERT INTO `auth_permission` VALUES (53, 'Can add chengji', 14, 'add_chengji');
INSERT INTO `auth_permission` VALUES (54, 'Can change chengji', 14, 'change_chengji');
INSERT INTO `auth_permission` VALUES (55, 'Can delete chengji', 14, 'delete_chengji');
INSERT INTO `auth_permission` VALUES (56, 'Can view chengji', 14, 'view_chengji');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (7, 'apps', 'calss');
INSERT INTO `django_content_type` VALUES (14, 'apps', 'chengji');
INSERT INTO `django_content_type` VALUES (8, 'apps', 'grade');
INSERT INTO `django_content_type` VALUES (13, 'apps', 'mistakes');
INSERT INTO `django_content_type` VALUES (12, 'apps', 'student');
INSERT INTO `django_content_type` VALUES (9, 'apps', 'teacher');
INSERT INTO `django_content_type` VALUES (11, 'apps', 'timu');
INSERT INTO `django_content_type` VALUES (10, 'apps', 'xueqi');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2021-05-24 08:09:18.042324');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2021-05-24 08:09:18.325346');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2021-05-24 08:09:19.267418');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-05-24 08:09:19.526442');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-24 08:09:19.554442');
INSERT INTO `django_migrations` VALUES (6, 'apps', '0001_initial', '2021-05-24 08:09:19.942469');
INSERT INTO `django_migrations` VALUES (7, 'contenttypes', '0002_remove_content_type_name', '2021-05-24 08:09:20.944546');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2021-05-24 08:09:21.059553');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0003_alter_user_email_max_length', '2021-05-24 08:09:21.178563');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0004_alter_user_username_opts', '2021-05-24 08:09:21.195563');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0005_alter_user_last_login_null', '2021-05-24 08:09:21.310573');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0006_require_contenttypes_0002', '2021-05-24 08:09:21.318573');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2021-05-24 08:09:21.335574');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0008_alter_user_username_max_length', '2021-05-24 08:09:21.469585');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0009_alter_user_last_name_max_length', '2021-05-24 08:09:21.617595');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0010_alter_group_name_max_length', '2021-05-24 08:09:21.737607');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0011_update_proxy_permissions', '2021-05-24 08:09:21.759608');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2021-05-24 08:09:21.821611');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('be0hns75wsfm9inwfqcqsrt6oxyh5oec', 'ZjI4ODI0M2U2MjE0MDVjMTcyMjg1MDM3ZmViZjBjYTkyOWMzM2VhYjqABJUVBgAAAAAAAH2UKIwBc5SMFWRqYW5nby5kYi5tb2RlbHMuYmFzZZSMDm1vZGVsX3VucGlja2xllJOUjARhcHBzlIwHU3R1ZGVudJSGlIWUUpR9lCiMBl9zdGF0ZZRoAowKTW9kZWxTdGF0ZZSTlCmBlH2UKIwGYWRkaW5nlImMAmRilIwHZGVmYXVsdJR1YowCaWSUSwGMBm51bWJlcpSMBDIwMDGUjARuYW1llIwG5byg5LiJlIwHZ19pZF9pZJRLAYwPX2RqYW5nb192ZXJzaW9ulIwDMi4ylHVijAhzdWJfZGljdJR9lCiMBXN1Yl8xlF2UKEtJSzhLAUs4ZYwFc3ViXzKUXZQoS2BLPktfSxNljAVzdWJfM5RdlChLJEteS1pLQ2WMBXN1Yl80lF2UKEtVS1NLEksxZYwFc3ViXzWUXZQoS1RLOEtBS1hljAVzdWJfNpRdlChLP0tWSzVLZGWMBXN1Yl83lF2UKEtJSzxLFUtVZYwFc3ViXziUXZQoSwdLCEsrSy9ljAVzdWJfOZRdlChLCEsTSzdLBmV1jANudW2UjAE3lIwGZV9saXN0lF2UKIwBMZSMATKUjAEzlIwBNJSMATWUZYwKdGl0bGVfbGlzdJQoKEsBjEPlpoLmnpzmg7PopoHlsIbmlbTmlbDovazmjaLmiJDlrZfnrKbkuLLvvIzpnIDopoHnlKjliLDku4DkuYjlh73mlbA/lIwJQSAuIG51bSgplIwMQiAuIGRvdWJsZSgplIwJQyAuIGludCgplIwJRCAuIHN0cigplIwBRJRLAXSUKEsCjCrlnKhQeXRob27kuK3kuIDkuKrmlbDlrZfljaDlh6DkuKrlrZfoioLvvJqUjApBIC4gMC415LiqlIwIQiAuIDHkuKqUjAhDIC4gMuS4qpSMCEQgLiA05LiqlIwBQpRLAnSUKEsDjF7mraPliJnooajovr7lvI/kuK3kvb/nlKjvvIgg77yJ5p2l5Yy56YWN5Lu75oSP5pWw6YeP55qE5a2X5q+N5oiW5pWw5a2X5oiW5LiL5YiS57q/5oiW5rGJ5a2X77yalIwGQSAuIFx3lIwGQiAuIFxilIwFQyAuIF6UjAdEIC4gXHcqlGg+SwN0lChLBIyL5bCP5piO5pyq5byA5ZCv5omL5py65oyH57q55pSv5LuY5pa55byP77yM6ZyA6KaB6K6+572uNuS4quaVsOWtl+eahOW+ruS/oeaUr+S7mOWvhuegge+8jOS4i+WIl+WTqumhueaYr+ato+ehrueahOW+ruS/oeaUr+S7mOWvhueggeagvOW8j++8mpSMDkEgLiBbMC05XXsxLDZ9lIwOQiAuIFswLTZdezAsOX2UjAxDIC4gWzAtOV17Nn2UjA5EIC4gWzAtOV17MS02fZSMAUOUSwR0lChLBYw/5L2/55So5bey5a2Y5Zyo55qE5a2X5YW45L2c5Li65Ye95pWw55qE5Y+v5Y+Y5Y+C5pWw77yM6ZyA6KaB77yalIwoQSAuIOebtOaOpeS9v+eUqOWtl+WFuOWQjeensOS9nOS4uuWPguaVsJSMIEIgLiDlnKjlrZflhbjlkI3np7DliY3liqDigJwq4oCdlIwhQyAuIOWcqOWtl+WFuOWQjeensOWJjeWKoOKAnCoq4oCdlIwsRCAuIMKg5Zyo5a2X5YW45YaF5q+P5Liq5YWD57Sg5YmN5Yqg4oCcKirigJ2UaFJLBXSUKEsGjEPlpoLmnpzmg7PopoHlsIbmlbTmlbDovazmjaLmiJDlrZfnrKbkuLLvvIzpnIDopoHnlKjliLDku4DkuYjlh73mlbA/lIwJQSAuIG51bSgplIwMQiAuIGRvdWJsZSgplIwJQyAuIGludCgplIwJRCAuIHN0cigplGg+SwF0lChLB4wq5ZyoUHl0aG9u5Lit5LiA5Liq5pWw5a2X5Y2g5Yeg5Liq5a2X6IqC77yalIwKQSAuIDAuNeS4qpSMCEIgLiAx5LiqlIwIQyAuIDLkuKqUjAhEIC4gNOS4qpRoRUsCdJR0lIwHaWRfbGlzdJRdlChLAUsCSwNLBEsFSwZLB2V1Lg==', '2021-06-08 12:26:06.858981');

SET FOREIGN_KEY_CHECKS = 1;
