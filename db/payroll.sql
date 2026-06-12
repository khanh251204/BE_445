/*
 Navicat Premium Data Transfer

 Source Server         : LAPTOP
 Source Server Type    : MySQL
 Source Server Version : 80044 (8.0.44)
 Source Host           : localhost:3306
 Source Schema         : payroll

 Target Server Type    : MySQL
 Target Server Version : 80044 (8.0.44)
 File Encoding         : 65001

 Date: 26/05/2026 16:51:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attendance
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance`  (
  `AttendanceID` int NOT NULL AUTO_INCREMENT,
  `EmployeeID` int NULL DEFAULT NULL,
  `WorkDays` int NOT NULL,
  `AbsentDays` int NULL DEFAULT 0,
  `LeaveDays` int NULL DEFAULT 0,
  `AttendanceMonth` date NOT NULL,
  `CreatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`AttendanceID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attendance
-- ----------------------------
INSERT INTO `attendance` VALUES (1, 1, 22, 1, 0, '2024-09-01', '2025-10-20 19:13:03');
INSERT INTO `attendance` VALUES (2, 2, 21, 0, 1, '2024-09-01', '2025-10-20 19:13:03');
INSERT INTO `attendance` VALUES (3, 3, 23, 0, 0, '2024-09-01', '2025-10-20 19:13:03');
INSERT INTO `attendance` VALUES (4, 4, 22, 2, 0, '2024-09-01', '2025-10-20 19:13:03');
INSERT INTO `attendance` VALUES (5, 5, 18, 3, 2, '2024-09-01', '2025-10-20 19:13:03');
INSERT INTO `attendance` VALUES (6, 6, 24, 0, 0, '2024-09-01', '2025-10-20 19:13:03');
INSERT INTO `attendance` VALUES (7, 7, 20, 1, 1, '2024-09-01', '2025-10-20 19:13:03');
INSERT INTO `attendance` VALUES (8, 8, 19, 2, 0, '2024-09-01', '2025-10-20 19:13:03');
INSERT INTO `attendance` VALUES (9, 9, 16, 0, 2, '2024-09-01', '2025-10-20 19:13:03');
INSERT INTO `attendance` VALUES (10, 10, 22, 1, 0, '2024-09-01', '2025-10-20 19:13:03');
INSERT INTO `attendance` VALUES (11, 1, 22, 1, 0, '2024-09-01', '2025-10-20 19:14:40');
INSERT INTO `attendance` VALUES (12, 2, 21, 0, 1, '2024-09-01', '2025-10-20 19:14:40');
INSERT INTO `attendance` VALUES (13, 3, 23, 0, 0, '2024-09-01', '2025-10-20 19:14:40');
INSERT INTO `attendance` VALUES (14, 4, 22, 2, 0, '2024-09-01', '2025-10-20 19:14:40');
INSERT INTO `attendance` VALUES (15, 5, 18, 3, 2, '2024-09-01', '2025-10-20 19:14:40');
INSERT INTO `attendance` VALUES (16, 6, 24, 0, 0, '2024-09-01', '2025-10-20 19:14:40');
INSERT INTO `attendance` VALUES (17, 7, 20, 1, 1, '2024-09-01', '2025-10-20 19:14:40');
INSERT INTO `attendance` VALUES (18, 8, 19, 2, 0, '2024-09-01', '2025-10-20 19:14:40');
INSERT INTO `attendance` VALUES (19, 9, 16, 0, 2, '2024-09-01', '2025-10-20 19:14:40');
INSERT INTO `attendance` VALUES (20, 10, 22, 1, 0, '2024-09-01', '2025-10-20 19:14:40');
INSERT INTO `attendance` VALUES (21, 10, 26, 0, 0, '2026-03-01', '2026-04-30 08:51:00');
INSERT INTO `attendance` VALUES (22, 90, 26, 1, 0, '2026-03-01', '2026-04-30 08:51:57');
INSERT INTO `attendance` VALUES (23, 1, 24, 1, 1, '2026-04-01', '2026-05-04 09:58:30');
INSERT INTO `attendance` VALUES (25, 99, 26, 0, 1, '2026-04-01', '2026-05-04 12:54:30');
INSERT INTO `attendance` VALUES (26, 99, 26, 1, 1, '2026-05-01', '2026-05-07 19:24:14');
INSERT INTO `attendance` VALUES (27, 103, 26, 1, 1, '2026-04-01', '2026-05-09 20:46:58');
INSERT INTO `attendance` VALUES (28, 97, 26, 0, 0, '2026-05-01', '2026-05-12 14:35:05');
INSERT INTO `attendance` VALUES (29, 108, 24, 0, 0, '2026-05-01', '2026-05-13 15:51:52');

-- ----------------------------
-- Table structure for departments_payroll
-- ----------------------------
DROP TABLE IF EXISTS `departments_payroll`;
CREATE TABLE `departments_payroll`  (
  `DepartmentID` int NOT NULL,
  `DepartmentName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SyncedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`DepartmentID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of departments_payroll
-- ----------------------------
INSERT INTO `departments_payroll` VALUES (1, 'Phòng Nhân sự', '2025-10-20 19:13:03');
INSERT INTO `departments_payroll` VALUES (2, 'Phòng Kế toán', '2025-10-20 19:13:03');
INSERT INTO `departments_payroll` VALUES (3, 'Phòng Kỹ thuật', '2025-10-20 19:13:03');
INSERT INTO `departments_payroll` VALUES (4, 'Phòng Kinh doanh', '2025-10-20 19:13:03');
INSERT INTO `departments_payroll` VALUES (5, 'Phòng Hành chính', '2025-10-20 19:13:03');
INSERT INTO `departments_payroll` VALUES (6, 'Phòng Marketing', '2025-10-20 19:13:03');
INSERT INTO `departments_payroll` VALUES (7, 'Phòng Sản xuất', '2025-10-20 19:13:03');
INSERT INTO `departments_payroll` VALUES (8, 'Phòng Bảo trì', '2025-10-20 19:13:03');
INSERT INTO `departments_payroll` VALUES (9, 'Phòng Nghiên cứu & Phát triển', '2025-10-20 19:13:03');
INSERT INTO `departments_payroll` VALUES (10, 'Phòng Dịch vụ khách hàng', '2025-10-20 19:13:03');
INSERT INTO `departments_payroll` VALUES (38, 'Phòng IT', '2026-04-25 21:26:44');

-- ----------------------------
-- Table structure for employees_payroll
-- ----------------------------
DROP TABLE IF EXISTS `employees_payroll`;
CREATE TABLE `employees_payroll`  (
  `EmployeeID` int NOT NULL,
  `FullName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DepartmentID` int NULL DEFAULT NULL,
  `PositionID` int NULL DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SyncedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`EmployeeID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employees_payroll
-- ----------------------------
INSERT INTO `employees_payroll` VALUES (1, 'Nguyễn Văn An', 1, 1, 'Đang làm việc', '2025-10-20 19:13:03');
INSERT INTO `employees_payroll` VALUES (2, 'Lê Thị Bình', 2, 3, 'Đang làm việc', '2025-10-20 19:13:03');
INSERT INTO `employees_payroll` VALUES (3, 'Trần Quốc Cường', 3, 7, 'Đang làm việc', '2025-10-20 19:13:03');
INSERT INTO `employees_payroll` VALUES (4, 'Phạm Hồng Dung', 4, 2, 'Đang làm việc', '2025-10-20 19:13:03');
INSERT INTO `employees_payroll` VALUES (5, 'Võ Thành Đạt', 5, 4, 'Nghỉ phép', '2025-10-20 19:13:03');
INSERT INTO `employees_payroll` VALUES (6, 'Đặng Minh Hạnh', 6, 1, 'Đang làm việc', '2025-10-20 19:13:03');
INSERT INTO `employees_payroll` VALUES (7, 'Lưu Trung Hiếu', 7, 5, 'Đang làm việc', '2025-10-20 19:13:03');
INSERT INTO `employees_payroll` VALUES (8, 'Ngô Thu Lan', 8, 8, 'Đang làm việc', '2025-10-20 19:13:03');
INSERT INTO `employees_payroll` VALUES (9, 'Bùi Văn Minh', 9, 9, 'Thực tập', '2025-10-20 19:13:03');
INSERT INTO `employees_payroll` VALUES (10, 'Hoàng Thị Oanh', 10, 6, 'Đang làm việc', '2025-10-20 19:13:03');
INSERT INTO `employees_payroll` VALUES (74, 'Nguyen Van A', 2, 3, 'Đang làm việc', '2026-04-10 22:19:12');
INSERT INTO `employees_payroll` VALUES (90, 'Hoàng Quốc Khánhh', 2, 1, 'Thực tập', '2026-04-13 17:46:00');
INSERT INTO `employees_payroll` VALUES (97, 'Nguyen Van A', 2, 3, 'Đang làm việc', '2026-04-14 19:30:58');
INSERT INTO `employees_payroll` VALUES (99, 'Đỗ Nam Trung', 1, 1, 'Đang làm việc', '2026-04-14 22:33:44');
INSERT INTO `employees_payroll` VALUES (103, 'Khanh Hoang Quoc', 38, 4, 'Đang làm việc', '2026-05-09 15:13:13');
INSERT INTO `employees_payroll` VALUES (106, 'Bùi Thị Như', 38, 23, 'Đang làm việc', '2026-05-12 16:48:31');
INSERT INTO `employees_payroll` VALUES (107, 'A', 38, 23, 'Nghỉ việc', '2026-05-13 15:25:19');
INSERT INTO `employees_payroll` VALUES (108, 'Nguyễn Văn Anh', 1, 1, 'Đang làm việc', '2026-05-13 15:49:00');
INSERT INTO `employees_payroll` VALUES (109, 'Nguyen Van A', 2, 3, 'Đang làm việc', '2026-05-14 16:00:13');
INSERT INTO `employees_payroll` VALUES (200, 'Nguyen Van A', 2, 3, 'Đang làm việc', '2026-04-10 21:58:41');

-- ----------------------------
-- Table structure for positions_payroll
-- ----------------------------
DROP TABLE IF EXISTS `positions_payroll`;
CREATE TABLE `positions_payroll`  (
  `PositionID` int NOT NULL,
  `PositionName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SyncedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PositionID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of positions_payroll
-- ----------------------------
INSERT INTO `positions_payroll` VALUES (1, 'Nhân viên', '2025-10-20 19:13:03');
INSERT INTO `positions_payroll` VALUES (2, 'Trưởng nhóm', '2025-10-20 19:13:03');
INSERT INTO `positions_payroll` VALUES (3, 'Phó phòng', '2025-10-20 19:13:03');
INSERT INTO `positions_payroll` VALUES (4, 'Trưởng phòng', '2025-10-20 19:13:03');
INSERT INTO `positions_payroll` VALUES (5, 'Giám đốc', '2025-10-20 19:13:03');
INSERT INTO `positions_payroll` VALUES (6, 'Thư ký', '2025-10-20 19:13:03');
INSERT INTO `positions_payroll` VALUES (7, 'Kỹ sư', '2025-10-20 19:13:03');
INSERT INTO `positions_payroll` VALUES (8, 'Nhân viên thử việc', '2025-10-20 19:13:03');
INSERT INTO `positions_payroll` VALUES (9, 'Thực tập sinh', '2025-10-20 19:13:03');
INSERT INTO `positions_payroll` VALUES (10, 'Cố vấn kỹ thuật', '2025-10-20 19:13:03');
INSERT INTO `positions_payroll` VALUES (23, 'Phó giám đốc', '2026-04-21 20:38:02');

-- ----------------------------
-- Table structure for salaries
-- ----------------------------
DROP TABLE IF EXISTS `salaries`;
CREATE TABLE `salaries`  (
  `SalaryID` int NOT NULL AUTO_INCREMENT,
  `EmployeeID` int NULL DEFAULT NULL,
  `SalaryMonth` date NOT NULL,
  `BaseSalary` decimal(12, 2) NOT NULL,
  `Bonus` decimal(12, 2) NULL DEFAULT 0.00,
  `Deductions` decimal(12, 2) NULL DEFAULT 0.00,
  `NetSalary` decimal(12, 2) NOT NULL,
  `CreatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`SalaryID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of salaries
-- ----------------------------
INSERT INTO `salaries` VALUES (1, 1, '2024-09-01', 15000000.00, 600000.00, 0.00, 15600000.00, '2025-10-20 19:13:03');
INSERT INTO `salaries` VALUES (2, 2, '2024-09-01', 10000000.00, 800000.00, 100000.00, 10700000.00, '2025-10-20 19:13:03');
INSERT INTO `salaries` VALUES (3, 3, '2024-09-01', 15000000.00, 600000.00, 0.00, 15600000.00, '2025-10-20 19:13:03');
INSERT INTO `salaries` VALUES (4, 4, '2024-09-01', 11000000.00, 400000.00, 100000.00, 11300000.00, '2025-10-20 19:13:03');
INSERT INTO `salaries` VALUES (5, 5, '2024-09-01', 9000000.00, 0.00, 300000.00, 8700000.00, '2025-10-20 19:13:03');
INSERT INTO `salaries` VALUES (6, 6, '2024-09-01', 9500000.00, 500000.00, 0.00, 10000000.00, '2025-10-20 19:13:03');
INSERT INTO `salaries` VALUES (7, 7, '2024-09-01', 18000000.00, 1000000.00, 0.00, 19000000.00, '2025-10-20 19:13:03');
INSERT INTO `salaries` VALUES (8, 8, '2024-09-01', 7000000.00, 200000.00, 0.00, 7200000.00, '2025-10-20 19:13:03');
INSERT INTO `salaries` VALUES (9, 9, '2024-09-01', 5000000.00, 0.00, 0.00, 5000000.00, '2025-10-20 19:13:03');
INSERT INTO `salaries` VALUES (10, 10, '2024-09-01', 8500000.00, 300000.00, 100000.00, 8700000.00, '2025-10-20 19:13:03');
INSERT INTO `salaries` VALUES (11, 1, '2024-09-01', 12000000.00, 500000.00, 200000.00, 12300000.00, '2025-10-20 19:15:00');
INSERT INTO `salaries` VALUES (12, 2, '2024-09-01', 10000000.00, 800000.00, 100000.00, 10700000.00, '2025-10-20 19:15:00');
INSERT INTO `salaries` VALUES (13, 3, '2024-09-01', 15000000.00, 600000.00, 0.00, 15600000.00, '2025-10-20 19:15:00');
INSERT INTO `salaries` VALUES (14, 4, '2024-09-01', 11000000.00, 400000.00, 100000.00, 11300000.00, '2025-10-20 19:15:00');
INSERT INTO `salaries` VALUES (15, 5, '2024-09-01', 9000000.00, 0.00, 300000.00, 8700000.00, '2025-10-20 19:15:00');
INSERT INTO `salaries` VALUES (16, 6, '2024-09-01', 9500000.00, 500000.00, 0.00, 10000000.00, '2025-10-20 19:15:00');
INSERT INTO `salaries` VALUES (17, 7, '2024-09-01', 18000000.00, 1000000.00, 0.00, 19000000.00, '2025-10-20 19:15:00');
INSERT INTO `salaries` VALUES (18, 8, '2024-09-01', 7000000.00, 200000.00, 0.00, 7200000.00, '2025-10-20 19:15:00');
INSERT INTO `salaries` VALUES (19, 9, '2024-09-01', 5000000.00, 0.00, 0.00, 5000000.00, '2025-10-20 19:15:00');
INSERT INTO `salaries` VALUES (20, 10, '2024-09-01', 8500000.00, 200000.00, 100000.00, 8600000.00, '2025-10-20 19:15:00');
INSERT INTO `salaries` VALUES (21, 90, '2026-03-01', 5000000.00, 10000000.00, 100000.00, 14900000.00, '2026-04-30 08:54:12');
INSERT INTO `salaries` VALUES (23, 99, '2026-04-01', 10000000.00, 100000.00, 0.00, 10100000.00, '2026-05-04 12:58:49');
INSERT INTO `salaries` VALUES (24, 99, '2026-05-01', 15000000.00, 0.00, 0.00, 15000000.00, '2026-05-07 19:24:38');
INSERT INTO `salaries` VALUES (25, 103, '2026-04-01', 15000000.00, 3000000.00, 0.00, 18000000.00, '2026-05-09 20:47:31');
INSERT INTO `salaries` VALUES (26, 108, '2026-05-01', 1000000.00, 10000000.00, 0.00, 11000000.00, '2026-05-13 15:53:01');

SET FOREIGN_KEY_CHECKS = 1;
