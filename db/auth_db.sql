/*
 Navicat Premium Data Transfer

 Source Server         : LAPTOP
 Source Server Type    : MySQL
 Source Server Version : 80044 (8.0.44)
 Source Host           : localhost:3306
 Source Schema         : auth_db

 Target Server Type    : MySQL
 Target Server Version : 80044 (8.0.44)
 File Encoding         : 65001

 Date: 26/05/2026 16:51:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for employee_audit
-- ----------------------------
DROP TABLE IF EXISTS `employee_audit`;
CREATE TABLE `employee_audit`  (
  `AuditID` int NOT NULL AUTO_INCREMENT,
  `ActionType` enum('INSERT','UPDATE','DELETE') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ChangedFields` json NULL,
  `OldValues` json NULL,
  `NewValues` json NULL,
  `ChangedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TableName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'Employees',
  `EmployeeEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ChangedByEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`AuditID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 168 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_audit
-- ----------------------------
INSERT INTO `employee_audit` VALUES (120, 'UPDATE', '[]', '{\"Email\": \"donalTrump@gmail.com\", \"Status\": \"Nghỉ việc\", \"FullName\": \"Đỗ Nam Trung\", \"UpdatedAt\": \"2026-04-29 11:58:59\"}', '{\"Email\": \"donalTrump@gmail.com\", \"Gender\": \"Nam\", \"Status\": \"Nghỉ việc\", \"FullName\": \"Đỗ Nam Trung\", \"HireDate\": \"2022-12-12\", \"PositionID\": 5, \"DateOfBirth\": \"1970-12-12\", \"PhoneNumber\": \"0912345678\", \"DepartmentID\": 1}', '2026-04-29 11:59:52', 'employees', 'donalTrump@gmail.com', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (121, 'INSERT', '[\"DepartmentName\"]', NULL, '{\"DepartmentName\": \"Hoàng Khánh\"}', '2026-04-29 12:05:52', 'departments', 'an.nguyen@company.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (122, 'UPDATE', '[\"Status\"]', '{\"Email\": \"nguyenvana17@example.com\", \"Status\": \"Đang làm việc\", \"FullName\": \"Nguyen Van A\", \"UpdatedAt\": \"2026-04-25 21:39:00\"}', '{\"Email\": \"nguyenvana17@example.com\", \"Gender\": \"Male\", \"Status\": \"Nghỉ việc\", \"FullName\": \"Nguyen Van A\", \"HireDate\": \"2024-01-01\", \"PositionID\": 23, \"DateOfBirth\": \"1998-05-20\", \"PhoneNumber\": \"0901234567\", \"DepartmentID\": 38}', '2026-04-29 13:01:20', 'employees', 'nguyenvana17@example.com', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (123, 'DELETE', '[]', NULL, NULL, '2026-04-29 13:01:38', 'employees', 'nguyenvana17@example.com', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (124, 'UPDATE', '[\"Status\"]', '{\"Email\": \"donalTrump@gmail.com\", \"Status\": \"Nghỉ việc\", \"FullName\": \"Đỗ Nam Trung\", \"UpdatedAt\": \"2026-04-29 11:59:52\"}', '{\"Email\": \"donalTrump@gmail.com\", \"Gender\": \"Nam\", \"Status\": \"Đang làm việc\", \"FullName\": \"Đỗ Nam Trung\", \"HireDate\": \"2022-12-12\", \"PositionID\": 5, \"DateOfBirth\": \"1970-12-12\", \"PhoneNumber\": \"0912345678\", \"DepartmentID\": 1}', '2026-04-29 13:34:33', 'employees', 'donalTrump@gmail.com', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (125, 'UPDATE', '[]', '{\"Email\": \"hoangquockhanh7@dtu.edu.vn\", \"Status\": \"Thực tập\", \"FullName\": \"Hoàng Quốc Khánh\", \"UpdatedAt\": \"2026-04-20 12:20:08\"}', '{\"Email\": \"hoangquockhanh7@dtu.edu.vn\", \"Gender\": \"Nam\", \"Status\": \"Thực tập\", \"FullName\": \"Hoàng Quốc Khánh\", \"HireDate\": \"2010-12-12\", \"PositionID\": 1, \"DateOfBirth\": \"2004-12-12\", \"PhoneNumber\": \"0886412302\", \"DepartmentID\": 39}', '2026-04-30 08:54:49', 'employees', 'hoangquockhanh7@dtu.edu.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (126, 'UPDATE', '[\"AbsentDays\"]', '{\"WorkDays\": 26, \"LeaveDays\": 1, \"AbsentDays\": 1}', '{\"WorkDays\": 26.0, \"LeaveDays\": 1.0, \"AbsentDays\": 0.0}', '2026-05-04 11:40:15', 'attendance', 'an.nguyen@company.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (127, 'INSERT', '[\"EmployeeID\", \"AttendanceMonth\", \"WorkDays\", \"AbsentDays\", \"LeaveDays\"]', NULL, '{\"WorkDays\": 26.0, \"LeaveDays\": 0.0, \"AbsentDays\": 0.0, \"EmployeeID\": 90, \"AttendanceMonth\": \"2026-04-01\"}', '2026-05-04 11:42:41', 'attendance', 'hoangquockhanh7@dtu.edu.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (128, 'DELETE', '[\"EmployeeID\", \"AttendanceMonth\"]', '{\"EmployeeID\": 90, \"AttendanceMonth\": \"2026-04-01\"}', NULL, '2026-05-04 11:43:44', 'attendance', 'hoangquockhanh7@dtu.edu.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (129, 'UPDATE', '[\"Deductions\", \"NetSalary\"]', '{\"Bonus\": 10000000.0, \"NetSalary\": 14800000.0, \"BaseSalary\": 5000000.0, \"Deductions\": 200000.0}', '{\"Bonus\": 10000000.0, \"NetSalary\": 14900000.0, \"BaseSalary\": 5000000.0, \"Deductions\": 100000.0}', '2026-05-04 11:49:29', 'payroll', 'hoangquockhanh7@dtu.edu.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (130, 'INSERT', '[\"EmployeeID\", \"AttendanceMonth\", \"WorkDays\", \"AbsentDays\", \"LeaveDays\"]', NULL, '{\"WorkDays\": 26.0, \"LeaveDays\": 1.0, \"AbsentDays\": 0.0, \"EmployeeID\": 99, \"AttendanceMonth\": \"2026-04-01\"}', '2026-05-04 12:54:30', 'attendance', 'donalTrump@gmail.com', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (131, 'UPDATE', '[\"WorkDays\", \"AbsentDays\"]', '{\"WorkDays\": 26, \"LeaveDays\": 1, \"AbsentDays\": 0}', '{\"WorkDays\": 24.0, \"LeaveDays\": 1.0, \"AbsentDays\": 1.0}', '2026-05-04 13:07:00', 'attendance', 'an.nguyen@company.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (132, 'UPDATE', '[]', '{\"Email\": \"donalTrump@gmail.com\", \"Status\": \"Đang làm việc\", \"FullName\": \"Đỗ Nam Trung\", \"UpdatedAt\": \"2026-04-29 13:34:33\"}', '{\"Email\": \"donalTrump@gmail.com\", \"Gender\": \"Nam\", \"Status\": \"Đang làm việc\", \"FullName\": \"Đỗ Nam Trung\", \"HireDate\": \"2023-05-07\", \"PositionID\": 5, \"DateOfBirth\": \"1970-12-12\", \"PhoneNumber\": \"0912345678\", \"DepartmentID\": 1}', '2026-05-07 18:42:34', 'employees', 'donalTrump@gmail.com', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (133, 'UPDATE', '[]', '{\"Email\": \"donalTrump@gmail.com\", \"Status\": \"Đang làm việc\", \"FullName\": \"Đỗ Nam Trung\", \"UpdatedAt\": \"2026-05-07 18:42:34\"}', '{\"Email\": \"donalTrump@gmail.com\", \"Gender\": \"Nam\", \"Status\": \"Đang làm việc\", \"FullName\": \"Đỗ Nam Trung\", \"HireDate\": \"2023-05-07\", \"PositionID\": 5, \"DateOfBirth\": \"1970-05-07\", \"PhoneNumber\": \"0912345678\", \"DepartmentID\": 1}', '2026-05-07 18:45:18', 'employees', 'donalTrump@gmail.com', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (134, 'INSERT', '[\"EmployeeID\", \"AttendanceMonth\", \"WorkDays\", \"AbsentDays\", \"LeaveDays\"]', NULL, '{\"WorkDays\": 26.0, \"LeaveDays\": 1.0, \"AbsentDays\": 1.0, \"EmployeeID\": 99, \"AttendanceMonth\": \"2026-05-01\"}', '2026-05-07 19:24:14', 'attendance', 'donalTrump@gmail.com', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (135, 'INSERT', '[\"EmployeeID\", \"SalaryMonth\", \"BaseSalary\", \"Bonus\", \"Deductions\", \"NetSalary\"]', NULL, '{\"Bonus\": 0.0, \"NetSalary\": 5000000.0, \"BaseSalary\": 5000000.0, \"Deductions\": 0.0, \"EmployeeID\": 99, \"SalaryMonth\": \"2026-05-01\"}', '2026-05-07 19:24:38', 'salaries', 'donalTrump@gmail.com', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (136, 'UPDATE', '[\"BaseSalary\", \"NetSalary\"]', '{\"Bonus\": 0.0, \"NetSalary\": 5000000.0, \"BaseSalary\": 5000000.0, \"Deductions\": 0.0}', '{\"Bonus\": 0.0, \"NetSalary\": 15000000.0, \"BaseSalary\": 15000000.0, \"Deductions\": 0.0}', '2026-05-07 19:28:16', 'salaries', 'donalTrump@gmail.com', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (137, 'UPDATE', '[\"Bonus\", \"NetSalary\"]', '{\"Bonus\": 300000.0, \"NetSalary\": 8700000.0, \"BaseSalary\": 8500000.0, \"Deductions\": 100000.0}', '{\"Bonus\": 200000.0, \"NetSalary\": 8600000.0, \"BaseSalary\": 8500000.0, \"Deductions\": 100000.0}', '2026-05-09 13:49:48', 'salaries', 'oanh.hoang@company.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (138, 'INSERT', '[\"DepartmentName\"]', NULL, '{\"DepartmentName\": \"Nhật\"}', '2026-05-09 14:49:18', 'departments', 'an.nguyen@company.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (139, 'INSERT', '[\"FullName\", \"Email\", \"Status\", \"DateOfBirth\", \"Gender\", \"HireDate\", \"PhoneNumber\", \"DepartmentID\", \"PositionID\"]', NULL, '{\"Email\": \"hoangquockhanh8@dtu.edu.vn\", \"Gender\": \"Male\", \"Status\": \"Đang làm việc\", \"FullName\": \"Khanh Hoang Quoc\", \"HireDate\": \"2025-12-12\", \"PositionID\": 4, \"DateOfBirth\": \"2004-12-12\", \"PhoneNumber\": \"0886412302\", \"DepartmentID\": 38}', '2026-05-09 15:13:13', 'employees', NULL, 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (140, 'UPDATE', '[]', '{\"Email\": \"hoangquockhanh8@dtu.edu.vn\", \"Status\": \"Đang làm việc\", \"FullName\": \"Khanh Hoang Quoc\", \"UpdatedAt\": \"2026-05-09 15:13:13\"}', '{\"Email\": \"hoangquockhanh8@dtu.edu.vn\", \"Gender\": \"Other\", \"Status\": \"Đang làm việc\", \"FullName\": \"Khanh Hoang Quoc\", \"HireDate\": \"2025-12-12\", \"PositionID\": 4, \"DateOfBirth\": \"2004-12-12\", \"PhoneNumber\": \"0886412302\", \"DepartmentID\": 38}', '2026-05-09 15:15:09', 'employees', 'hoangquockhanh8@dtu.edu.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (141, 'DELETE', '[]', NULL, NULL, '2026-05-09 15:16:49', 'departments', 'an.nguyen@company.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (142, 'DELETE', '[]', NULL, NULL, '2026-05-09 15:16:52', 'departments', 'an.nguyen@company.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (143, 'UPDATE', '[]', '{\"Email\": \"hoangquockhanh7@dtu.edu.vn\", \"Status\": \"Thực tập\", \"FullName\": \"Hoàng Quốc Khánhh\", \"UpdatedAt\": \"2026-04-30 08:54:49\"}', '{\"Email\": \"hoangquockhanh7@dtu.edu.vn\", \"Gender\": \"Name\", \"Status\": \"Thực tập\", \"FullName\": \"Hoàng Quốc Khánhh\", \"HireDate\": \"2010-12-12\", \"PositionID\": 1, \"DateOfBirth\": \"2004-12-12\", \"PhoneNumber\": \"0886412302\", \"DepartmentID\": 38}', '2026-05-09 15:17:15', 'employees', 'hoangquockhanh7@dtu.edu.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (144, 'DELETE', '[]', NULL, NULL, '2026-05-09 15:17:27', 'departments', 'an.nguyen@company.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (145, 'DELETE', '[\"PositionName\"]', '{\"PositionName\": \"Khánh\"}', NULL, '2026-05-09 15:17:33', 'positions', NULL, 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (146, 'INSERT', '[\"EmployeeID\", \"AttendanceMonth\", \"WorkDays\", \"AbsentDays\", \"LeaveDays\"]', NULL, '{\"WorkDays\": 26.0, \"LeaveDays\": 1.0, \"AbsentDays\": 1.0, \"EmployeeID\": 103, \"AttendanceMonth\": \"2026-04-01\"}', '2026-05-09 20:46:58', 'attendance', 'hoangquockhanh8@dtu.edu.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (147, 'INSERT', '[\"EmployeeID\", \"SalaryMonth\", \"BaseSalary\", \"Bonus\", \"Deductions\", \"NetSalary\"]', NULL, '{\"Bonus\": 3000000.0, \"NetSalary\": 18000000.0, \"BaseSalary\": 15000000.0, \"Deductions\": 0.0, \"EmployeeID\": 103, \"SalaryMonth\": \"2026-04-01\"}', '2026-05-09 20:47:31', 'salaries', 'hoangquockhanh8@dtu.edu.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (148, 'UPDATE', '[]', '{\"Email\": \"hoangquockhanh8@dtu.edu.vn\", \"Status\": \"Đang làm việc\", \"FullName\": \"Khanh Hoang Quoc\", \"UpdatedAt\": \"2026-05-09 15:15:09\"}', '{\"Email\": \"hoangquockhanh8@dtu.edu.vn\", \"Gender\": \"Male\", \"Status\": \"Đang làm việc\", \"FullName\": \"Khanh Hoang Quoc\", \"HireDate\": \"2025-12-12\", \"PositionID\": 4, \"DateOfBirth\": \"2004-12-12\", \"PhoneNumber\": \"0886412302\", \"DepartmentID\": 38}', '2026-05-11 00:58:25', 'employees', 'hoangquockhanh8@dtu.edu.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (149, 'UPDATE', '[]', '{\"Email\": \"hanh.dang@company.vn\", \"Status\": \"Đang làm việc\", \"FullName\": \"Đặng Minh Hạnh\", \"UpdatedAt\": \"2025-10-20 19:11:42\"}', '{\"Email\": \"hanh.dang@company.vn\", \"Gender\": \"Male\", \"Status\": \"Đang làm việc\", \"FullName\": \"Đặng Minh Hạnh\", \"HireDate\": \"2023-01-01\", \"PositionID\": 1, \"DateOfBirth\": \"1996-04-25\", \"PhoneNumber\": \"0976543210\", \"DepartmentID\": 6}', '2026-05-11 01:05:28', 'employees', 'hanh.dang@company.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (150, 'UPDATE', '[]', '{\"Email\": \"dat.vo@company.vn\", \"Status\": \"Nghỉ phép\", \"FullName\": \"Võ Thành Đạt\", \"UpdatedAt\": \"2025-10-20 19:11:42\"}', '{\"Email\": \"dat.vo@company.vn\", \"Gender\": \"Male\", \"Status\": \"Nghỉ phép\", \"FullName\": \"Võ Thành Đạt\", \"HireDate\": \"2018-07-20\", \"PositionID\": 4, \"DateOfBirth\": \"1991-09-19\", \"PhoneNumber\": \"0945678901\", \"DepartmentID\": 5}', '2026-05-11 01:05:40', 'employees', 'dat.vo@company.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (151, 'INSERT', '[\"FullName\", \"Email\", \"Status\", \"DateOfBirth\", \"Gender\", \"HireDate\", \"PhoneNumber\", \"DepartmentID\", \"PositionID\"]', NULL, '{\"Email\": \"hoangquockhanh9@dtu.edu.vn\", \"Gender\": \"Nam\", \"Status\": \"Đang làm việc\", \"FullName\": \"Khanh Hoang Quoc\", \"HireDate\": \"2025-12-12\", \"PositionID\": 23, \"DateOfBirth\": \"2009-12-12\", \"PhoneNumber\": \"0886412302\", \"DepartmentID\": 38}', '2026-05-11 01:56:20', 'employees', NULL, 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (152, 'INSERT', '[\"EmployeeID\", \"AttendanceMonth\", \"WorkDays\", \"AbsentDays\", \"LeaveDays\"]', NULL, '{\"WorkDays\": 26.0, \"LeaveDays\": 0.0, \"AbsentDays\": 0.0, \"EmployeeID\": 97, \"AttendanceMonth\": \"2026-05-01\"}', '2026-05-12 14:35:05', 'attendance', 'nguyenvana19@example.com', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (153, 'INSERT', '[\"FullName\", \"Email\", \"Status\", \"DateOfBirth\", \"Gender\", \"HireDate\", \"PhoneNumber\", \"DepartmentID\", \"PositionID\"]', NULL, '{\"Email\": \"kimjungun@gmail.com\", \"Gender\": \"\", \"Status\": \"Đang làm việc\", \"FullName\": \"Kim Chính Ân\", \"HireDate\": \"2010-12-12\", \"PositionID\": 5, \"DateOfBirth\": \"1982-01-08\", \"PhoneNumber\": \"0367700210\", \"DepartmentID\": 7}', '2026-05-12 14:48:19', 'employees', NULL, 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (154, 'DELETE', '[]', NULL, NULL, '2026-05-12 14:48:34', 'employees', 'kimjungun@gmail.com', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (155, 'INSERT', '[\"FullName\", \"Email\", \"Status\", \"DateOfBirth\", \"Gender\", \"HireDate\", \"PhoneNumber\", \"DepartmentID\", \"PositionID\"]', NULL, '{\"Email\": \"nhu@company.vn\", \"Gender\": \"Nữ\", \"Status\": \"Đang làm việc\", \"FullName\": \"Bùi Thị Như\", \"HireDate\": \"2026-05-12\", \"PositionID\": 23, \"DateOfBirth\": \"2005-08-14\", \"PhoneNumber\": \"0967356455\", \"DepartmentID\": 38}', '2026-05-12 16:48:31', 'employees', NULL, 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (156, 'INSERT', '[\"DepartmentName\"]', NULL, '{\"DepartmentName\": \"abc\"}', '2026-05-12 17:40:25', 'departments', 'an.nguyen@company.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (157, 'INSERT', '[\"DepartmentName\"]', NULL, '{\"DepartmentName\": \"abcd\"}', '2026-05-12 17:40:51', 'departments', 'an.nguyen@company.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (158, 'DELETE', '[]', NULL, NULL, '2026-05-13 15:05:55', 'departments', 'an.nguyen@company.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (159, 'DELETE', '[]', NULL, NULL, '2026-05-13 15:11:51', 'departments', 'an.nguyen@company.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (160, 'INSERT', '[\"FullName\", \"Email\", \"Status\", \"DateOfBirth\", \"Gender\", \"HireDate\", \"PhoneNumber\", \"DepartmentID\", \"PositionID\"]', NULL, '{\"Email\": \"a@gmail.com\", \"Gender\": \"Nam\", \"Status\": \"Nghỉ việc\", \"FullName\": \"A\", \"HireDate\": \"2025-12-12\", \"PositionID\": 23, \"DateOfBirth\": \"2000-12-12\", \"PhoneNumber\": \"0886412302\", \"DepartmentID\": 38}', '2026-05-13 15:25:19', 'employees', NULL, 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (161, 'INSERT', '[\"FullName\", \"Email\", \"Status\", \"DateOfBirth\", \"Gender\", \"HireDate\", \"PhoneNumber\", \"DepartmentID\", \"PositionID\"]', NULL, '{\"Email\": \"huynq@gmail.com\", \"Gender\": \"Nam\", \"Status\": \"Đang làm việc\", \"FullName\": \"Nguyễn Đăng Quang Huy\", \"HireDate\": \"2000-05-13\", \"PositionID\": 1, \"DateOfBirth\": \"2000-05-13\", \"PhoneNumber\": \"0886412302\", \"DepartmentID\": 1}', '2026-05-13 15:49:00', 'employees', NULL, 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (162, 'INSERT', '[\"EmployeeID\", \"AttendanceMonth\", \"WorkDays\", \"AbsentDays\", \"LeaveDays\"]', NULL, '{\"WorkDays\": 24.0, \"LeaveDays\": 0.0, \"AbsentDays\": 0.0, \"EmployeeID\": 108, \"AttendanceMonth\": \"2026-05-01\"}', '2026-05-13 15:51:52', 'attendance', 'huynq@gmail.com', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (163, 'INSERT', '[\"EmployeeID\", \"SalaryMonth\", \"BaseSalary\", \"Bonus\", \"Deductions\", \"NetSalary\"]', NULL, '{\"Bonus\": 10000000.0, \"NetSalary\": 11000000.0, \"BaseSalary\": 1000000.0, \"Deductions\": 0.0, \"EmployeeID\": 108, \"SalaryMonth\": \"2026-05-01\"}', '2026-05-13 15:53:02', 'salaries', 'huynq@gmail.com', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (164, 'INSERT', '[\"FullName\", \"Email\", \"Status\", \"DateOfBirth\", \"Gender\", \"HireDate\", \"PhoneNumber\", \"DepartmentID\", \"PositionID\"]', NULL, '{\"Email\": \"nguyenvana17@example.com\", \"Gender\": \"Nam\", \"Status\": \"Đang làm việc\", \"FullName\": \"Nguyen Van A\", \"HireDate\": \"2024-01-01\", \"PositionID\": 3, \"DateOfBirth\": \"1998-05-20\", \"PhoneNumber\": \"0901234567\", \"DepartmentID\": 2}', '2026-05-14 16:00:13', 'employees', NULL, 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (165, 'UPDATE', '[\"FullName\", \"Email\"]', '{\"Email\": \"huynq@gmail.com\", \"Status\": \"Đang làm việc\", \"FullName\": \"Nguyễn Đăng Quang Huy\", \"UpdatedAt\": \"2026-05-13 15:49:00\"}', '{\"Email\": \"an1.nguyen@company.vn\", \"Gender\": \"Nam\", \"Status\": \"Đang làm việc\", \"FullName\": \"Nguyễn Văn Anh\", \"HireDate\": \"2000-10-10\", \"PositionID\": 1, \"DateOfBirth\": \"2000-05-13\", \"PhoneNumber\": \"0901234567\", \"DepartmentID\": 1}', '2026-05-14 16:03:24', 'employees', 'huynq@gmail.com', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (166, 'DELETE', '[]', NULL, NULL, '2026-05-14 16:06:03', 'employees', 'hoangquockhanh9@dtu.edu.vn', 'an.nguyen@company.vn');
INSERT INTO `employee_audit` VALUES (167, 'UPDATE', '[\"BaseSalary\", \"Bonus\", \"Deductions\", \"NetSalary\"]', '{\"Bonus\": 500000.0, \"NetSalary\": 12300000.0, \"BaseSalary\": 12000000.0, \"Deductions\": 200000.0}', '{\"Bonus\": 600000.0, \"NetSalary\": 15600000.0, \"BaseSalary\": 15000000.0, \"Deductions\": 0.0}', '2026-05-14 16:14:36', 'salaries', 'an.nguyen@company.vn', 'an.nguyen@company.vn');

-- ----------------------------
-- Table structure for functions
-- ----------------------------
DROP TABLE IF EXISTS `functions`;
CREATE TABLE `functions`  (
  `FunctionID` int NOT NULL AUTO_INCREMENT,
  `FunctionName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ModuleID` int NULL DEFAULT NULL,
  PRIMARY KEY (`FunctionID`) USING BTREE,
  INDEX `ModuleID`(`ModuleID` ASC) USING BTREE,
  CONSTRAINT `functions_ibfk_1` FOREIGN KEY (`ModuleID`) REFERENCES `modules` (`ModuleID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of functions
-- ----------------------------
INSERT INTO `functions` VALUES (1, 'View Employee', 1);
INSERT INTO `functions` VALUES (2, 'Create Employee', 1);
INSERT INTO `functions` VALUES (3, 'Update Employee', 1);
INSERT INTO `functions` VALUES (4, 'Delete Employee', 1);
INSERT INTO `functions` VALUES (5, 'View Salary', 2);
INSERT INTO `functions` VALUES (6, 'Update Salary', 2);
INSERT INTO `functions` VALUES (7, 'View Report', 3);
INSERT INTO `functions` VALUES (8, 'View User', 4);
INSERT INTO `functions` VALUES (9, 'Update Password', 4);
INSERT INTO `functions` VALUES (10, 'Update User', 4);
INSERT INTO `functions` VALUES (11, 'View Department', 5);
INSERT INTO `functions` VALUES (12, 'Create Department', 5);
INSERT INTO `functions` VALUES (13, 'Update Department', 5);
INSERT INTO `functions` VALUES (14, 'Delete Department', 5);
INSERT INTO `functions` VALUES (18, 'View Position', 6);
INSERT INTO `functions` VALUES (19, 'Create Position', 6);
INSERT INTO `functions` VALUES (20, 'Update Position', 6);
INSERT INTO `functions` VALUES (21, 'Delete Position', 6);
INSERT INTO `functions` VALUES (25, 'View Log Login', 7);
INSERT INTO `functions` VALUES (26, 'View Log Employee', 7);
INSERT INTO `functions` VALUES (28, 'View Log Login', 7);
INSERT INTO `functions` VALUES (29, 'View Log Login', 8);
INSERT INTO `functions` VALUES (30, 'View Log Employee', 7);
INSERT INTO `functions` VALUES (31, 'View Log Employee', 8);
INSERT INTO `functions` VALUES (35, 'View User', 4);
INSERT INTO `functions` VALUES (36, 'Update Password', 4);
INSERT INTO `functions` VALUES (37, 'Update User', 4);

-- ----------------------------
-- Table structure for login_audit
-- ----------------------------
DROP TABLE IF EXISTS `login_audit`;
CREATE TABLE `login_audit`  (
  `AuditID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `Action` enum('LOGIN','LOGOUT','TOKEN_REFRESH') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `IPAddress` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `UserAgent` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SessionID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Status` enum('SUCCESS','FAILED') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'SUCCESS',
  `Timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`AuditID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 305 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_audit
-- ----------------------------
INSERT INTO `login_audit` VALUES (19, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-02 11:31:48');
INSERT INTO `login_audit` VALUES (20, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-02 20:36:30');
INSERT INTO `login_audit` VALUES (21, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-02 21:48:17');
INSERT INTO `login_audit` VALUES (22, 3, 'LOGOUT', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-02 21:48:28');
INSERT INTO `login_audit` VALUES (23, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-02 21:58:50');
INSERT INTO `login_audit` VALUES (24, 3, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-02 21:58:52');
INSERT INTO `login_audit` VALUES (25, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-02 21:59:04');
INSERT INTO `login_audit` VALUES (26, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-03 10:18:53');
INSERT INTO `login_audit` VALUES (27, 3, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-03 10:19:03');
INSERT INTO `login_audit` VALUES (28, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-05 23:09:51');
INSERT INTO `login_audit` VALUES (29, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-06 09:35:51');
INSERT INTO `login_audit` VALUES (30, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-06 11:19:44');
INSERT INTO `login_audit` VALUES (31, 3, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-06 11:25:50');
INSERT INTO `login_audit` VALUES (32, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-06 11:26:28');
INSERT INTO `login_audit` VALUES (33, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-06 11:35:31');
INSERT INTO `login_audit` VALUES (34, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-06 11:36:11');
INSERT INTO `login_audit` VALUES (35, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-07 16:40:35');
INSERT INTO `login_audit` VALUES (36, 3, 'LOGOUT', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-07 16:41:08');
INSERT INTO `login_audit` VALUES (37, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-07 16:42:14');
INSERT INTO `login_audit` VALUES (38, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-07 16:42:50');
INSERT INTO `login_audit` VALUES (39, 3, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-07 16:48:04');
INSERT INTO `login_audit` VALUES (40, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-07 16:48:18');
INSERT INTO `login_audit` VALUES (41, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-07 16:48:53');
INSERT INTO `login_audit` VALUES (42, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-07 17:23:38');
INSERT INTO `login_audit` VALUES (43, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-07 17:58:07');
INSERT INTO `login_audit` VALUES (44, 3, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-07 18:49:13');
INSERT INTO `login_audit` VALUES (45, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-07 18:49:46');
INSERT INTO `login_audit` VALUES (46, 3, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-07 19:07:49');
INSERT INTO `login_audit` VALUES (47, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-07 19:08:08');
INSERT INTO `login_audit` VALUES (48, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-07 20:32:35');
INSERT INTO `login_audit` VALUES (49, 1, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-07 23:24:11');
INSERT INTO `login_audit` VALUES (50, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-07 23:24:29');
INSERT INTO `login_audit` VALUES (51, 3, 'LOGOUT', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-07 23:24:47');
INSERT INTO `login_audit` VALUES (52, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-07 23:27:29');
INSERT INTO `login_audit` VALUES (53, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-07 23:27:42');
INSERT INTO `login_audit` VALUES (54, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-07 23:27:58');
INSERT INTO `login_audit` VALUES (55, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-07 23:43:21');
INSERT INTO `login_audit` VALUES (56, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-07 23:50:30');
INSERT INTO `login_audit` VALUES (57, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-07 23:56:37');
INSERT INTO `login_audit` VALUES (58, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-08 14:58:34');
INSERT INTO `login_audit` VALUES (59, 3, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-08 14:59:28');
INSERT INTO `login_audit` VALUES (60, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-08 15:09:56');
INSERT INTO `login_audit` VALUES (61, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-08 17:02:00');
INSERT INTO `login_audit` VALUES (62, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-08 21:31:03');
INSERT INTO `login_audit` VALUES (63, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-08 21:45:20');
INSERT INTO `login_audit` VALUES (64, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-08 22:20:03');
INSERT INTO `login_audit` VALUES (65, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-09 16:10:00');
INSERT INTO `login_audit` VALUES (66, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-09 19:31:41');
INSERT INTO `login_audit` VALUES (67, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-09 19:44:57');
INSERT INTO `login_audit` VALUES (68, 3, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-09 22:24:27');
INSERT INTO `login_audit` VALUES (69, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-09 22:24:56');
INSERT INTO `login_audit` VALUES (70, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-09 23:07:49');
INSERT INTO `login_audit` VALUES (71, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-09 23:40:51');
INSERT INTO `login_audit` VALUES (72, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-09 23:55:29');
INSERT INTO `login_audit` VALUES (73, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-10 08:43:22');
INSERT INTO `login_audit` VALUES (74, 3, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-10 10:13:52');
INSERT INTO `login_audit` VALUES (75, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-10 10:14:01');
INSERT INTO `login_audit` VALUES (76, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-10 10:48:00');
INSERT INTO `login_audit` VALUES (77, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-10 10:48:46');
INSERT INTO `login_audit` VALUES (78, 11, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-10 20:13:57');
INSERT INTO `login_audit` VALUES (79, 11, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-10 20:27:46');
INSERT INTO `login_audit` VALUES (80, 3, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-10 20:29:09');
INSERT INTO `login_audit` VALUES (81, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-10 20:57:39');
INSERT INTO `login_audit` VALUES (82, 11, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-10 22:18:58');
INSERT INTO `login_audit` VALUES (83, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-10 22:32:54');
INSERT INTO `login_audit` VALUES (84, 11, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-10 23:03:17');
INSERT INTO `login_audit` VALUES (85, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-13 19:47:43');
INSERT INTO `login_audit` VALUES (86, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-13 19:47:48');
INSERT INTO `login_audit` VALUES (87, 1, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-16 22:50:21');
INSERT INTO `login_audit` VALUES (88, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-16 23:04:15');
INSERT INTO `login_audit` VALUES (89, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-20 00:17:48');
INSERT INTO `login_audit` VALUES (90, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-20 11:06:40');
INSERT INTO `login_audit` VALUES (91, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-21 10:18:33');
INSERT INTO `login_audit` VALUES (92, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-21 19:36:31');
INSERT INTO `login_audit` VALUES (93, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-21 22:26:38');
INSERT INTO `login_audit` VALUES (94, 1, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-21 22:28:25');
INSERT INTO `login_audit` VALUES (95, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-21 22:30:18');
INSERT INTO `login_audit` VALUES (96, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-21 22:30:34');
INSERT INTO `login_audit` VALUES (97, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-21 22:31:28');
INSERT INTO `login_audit` VALUES (98, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-21 22:34:16');
INSERT INTO `login_audit` VALUES (99, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-21 22:34:26');
INSERT INTO `login_audit` VALUES (100, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-21 22:38:29');
INSERT INTO `login_audit` VALUES (101, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-21 22:48:34');
INSERT INTO `login_audit` VALUES (102, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-21 22:53:04');
INSERT INTO `login_audit` VALUES (103, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-21 22:53:36');
INSERT INTO `login_audit` VALUES (104, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-21 22:54:38');
INSERT INTO `login_audit` VALUES (105, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-21 22:56:05');
INSERT INTO `login_audit` VALUES (106, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-21 22:56:29');
INSERT INTO `login_audit` VALUES (107, 1, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-21 23:58:26');
INSERT INTO `login_audit` VALUES (108, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-22 00:00:57');
INSERT INTO `login_audit` VALUES (109, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-22 00:11:11');
INSERT INTO `login_audit` VALUES (110, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-22 00:16:54');
INSERT INTO `login_audit` VALUES (111, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-22 00:20:27');
INSERT INTO `login_audit` VALUES (112, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-22 00:23:23');
INSERT INTO `login_audit` VALUES (113, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-22 00:23:25');
INSERT INTO `login_audit` VALUES (114, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-22 00:25:07');
INSERT INTO `login_audit` VALUES (115, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-22 00:25:09');
INSERT INTO `login_audit` VALUES (116, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-22 00:37:40');
INSERT INTO `login_audit` VALUES (117, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-22 00:37:42');
INSERT INTO `login_audit` VALUES (118, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-22 00:38:14');
INSERT INTO `login_audit` VALUES (119, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-22 00:38:16');
INSERT INTO `login_audit` VALUES (120, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-22 14:00:41');
INSERT INTO `login_audit` VALUES (121, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-22 14:01:06');
INSERT INTO `login_audit` VALUES (122, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-22 14:01:09');
INSERT INTO `login_audit` VALUES (123, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-25 15:04:33');
INSERT INTO `login_audit` VALUES (124, 4, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-25 15:07:20');
INSERT INTO `login_audit` VALUES (125, 3, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-25 15:31:51');
INSERT INTO `login_audit` VALUES (126, 4, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-25 15:32:37');
INSERT INTO `login_audit` VALUES (127, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-25 20:32:36');
INSERT INTO `login_audit` VALUES (128, 1, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-25 22:30:14');
INSERT INTO `login_audit` VALUES (129, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-25 23:16:09');
INSERT INTO `login_audit` VALUES (130, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-25 23:16:22');
INSERT INTO `login_audit` VALUES (131, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-25 23:16:34');
INSERT INTO `login_audit` VALUES (132, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-26 19:49:48');
INSERT INTO `login_audit` VALUES (133, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 21:59:57');
INSERT INTO `login_audit` VALUES (134, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:01:55');
INSERT INTO `login_audit` VALUES (135, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:03:04');
INSERT INTO `login_audit` VALUES (136, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:04:23');
INSERT INTO `login_audit` VALUES (137, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:12:29');
INSERT INTO `login_audit` VALUES (138, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:12:34');
INSERT INTO `login_audit` VALUES (139, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:12:38');
INSERT INTO `login_audit` VALUES (140, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:12:42');
INSERT INTO `login_audit` VALUES (141, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:12:47');
INSERT INTO `login_audit` VALUES (142, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:15:39');
INSERT INTO `login_audit` VALUES (143, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:15:43');
INSERT INTO `login_audit` VALUES (144, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:15:48');
INSERT INTO `login_audit` VALUES (145, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:15:52');
INSERT INTO `login_audit` VALUES (146, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:15:56');
INSERT INTO `login_audit` VALUES (147, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:16:31');
INSERT INTO `login_audit` VALUES (148, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:16:36');
INSERT INTO `login_audit` VALUES (149, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:16:40');
INSERT INTO `login_audit` VALUES (150, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:16:45');
INSERT INTO `login_audit` VALUES (151, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:16:49');
INSERT INTO `login_audit` VALUES (152, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:18:45');
INSERT INTO `login_audit` VALUES (153, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:18:50');
INSERT INTO `login_audit` VALUES (154, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:18:54');
INSERT INTO `login_audit` VALUES (155, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:18:59');
INSERT INTO `login_audit` VALUES (156, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:19:03');
INSERT INTO `login_audit` VALUES (157, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:20:58');
INSERT INTO `login_audit` VALUES (158, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:21:02');
INSERT INTO `login_audit` VALUES (159, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:21:07');
INSERT INTO `login_audit` VALUES (160, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:21:11');
INSERT INTO `login_audit` VALUES (161, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:21:16');
INSERT INTO `login_audit` VALUES (162, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:22:40');
INSERT INTO `login_audit` VALUES (163, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:22:44');
INSERT INTO `login_audit` VALUES (164, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:22:48');
INSERT INTO `login_audit` VALUES (165, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:22:53');
INSERT INTO `login_audit` VALUES (166, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:22:57');
INSERT INTO `login_audit` VALUES (167, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-27 22:24:39');
INSERT INTO `login_audit` VALUES (168, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:33:11');
INSERT INTO `login_audit` VALUES (169, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:33:16');
INSERT INTO `login_audit` VALUES (170, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:33:20');
INSERT INTO `login_audit` VALUES (171, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:33:25');
INSERT INTO `login_audit` VALUES (172, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:33:29');
INSERT INTO `login_audit` VALUES (173, 1, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-27 22:34:41');
INSERT INTO `login_audit` VALUES (174, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:37:28');
INSERT INTO `login_audit` VALUES (175, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:37:33');
INSERT INTO `login_audit` VALUES (176, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:37:37');
INSERT INTO `login_audit` VALUES (177, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:37:42');
INSERT INTO `login_audit` VALUES (178, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:37:46');
INSERT INTO `login_audit` VALUES (179, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:42:52');
INSERT INTO `login_audit` VALUES (180, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:42:56');
INSERT INTO `login_audit` VALUES (181, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:43:01');
INSERT INTO `login_audit` VALUES (182, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:43:05');
INSERT INTO `login_audit` VALUES (183, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:43:10');
INSERT INTO `login_audit` VALUES (184, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:43:34');
INSERT INTO `login_audit` VALUES (185, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:43:38');
INSERT INTO `login_audit` VALUES (186, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:43:43');
INSERT INTO `login_audit` VALUES (187, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:43:47');
INSERT INTO `login_audit` VALUES (188, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:43:51');
INSERT INTO `login_audit` VALUES (189, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:45:32');
INSERT INTO `login_audit` VALUES (190, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:45:36');
INSERT INTO `login_audit` VALUES (191, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:45:41');
INSERT INTO `login_audit` VALUES (192, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:45:45');
INSERT INTO `login_audit` VALUES (193, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:45:50');
INSERT INTO `login_audit` VALUES (194, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:47:39');
INSERT INTO `login_audit` VALUES (195, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:47:43');
INSERT INTO `login_audit` VALUES (196, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:47:48');
INSERT INTO `login_audit` VALUES (197, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:47:52');
INSERT INTO `login_audit` VALUES (198, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:47:57');
INSERT INTO `login_audit` VALUES (199, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:56:00');
INSERT INTO `login_audit` VALUES (200, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:56:04');
INSERT INTO `login_audit` VALUES (201, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:56:08');
INSERT INTO `login_audit` VALUES (202, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:56:13');
INSERT INTO `login_audit` VALUES (203, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:56:18');
INSERT INTO `login_audit` VALUES (204, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:59:04');
INSERT INTO `login_audit` VALUES (205, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:59:07');
INSERT INTO `login_audit` VALUES (206, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:59:11');
INSERT INTO `login_audit` VALUES (207, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:59:15');
INSERT INTO `login_audit` VALUES (208, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:59:25');
INSERT INTO `login_audit` VALUES (209, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:59:27');
INSERT INTO `login_audit` VALUES (210, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:59:32');
INSERT INTO `login_audit` VALUES (211, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:59:36');
INSERT INTO `login_audit` VALUES (212, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 22:59:41');
INSERT INTO `login_audit` VALUES (213, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:03:45');
INSERT INTO `login_audit` VALUES (214, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:03:47');
INSERT INTO `login_audit` VALUES (215, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:03:51');
INSERT INTO `login_audit` VALUES (216, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:03:56');
INSERT INTO `login_audit` VALUES (217, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:04:01');
INSERT INTO `login_audit` VALUES (218, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:05:51');
INSERT INTO `login_audit` VALUES (219, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:05:54');
INSERT INTO `login_audit` VALUES (220, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:05:58');
INSERT INTO `login_audit` VALUES (221, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:06:03');
INSERT INTO `login_audit` VALUES (222, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:06:07');
INSERT INTO `login_audit` VALUES (223, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:06:43');
INSERT INTO `login_audit` VALUES (224, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:06:46');
INSERT INTO `login_audit` VALUES (225, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:06:50');
INSERT INTO `login_audit` VALUES (226, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:06:55');
INSERT INTO `login_audit` VALUES (227, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:06:59');
INSERT INTO `login_audit` VALUES (228, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:10:18');
INSERT INTO `login_audit` VALUES (229, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:10:22');
INSERT INTO `login_audit` VALUES (230, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:10:27');
INSERT INTO `login_audit` VALUES (231, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:10:31');
INSERT INTO `login_audit` VALUES (232, 1, 'LOGIN', '127.0.0.1', 'python-requests/2.33.1', NULL, 'SUCCESS', '2026-04-27 23:10:35');
INSERT INTO `login_audit` VALUES (233, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-28 21:44:56');
INSERT INTO `login_audit` VALUES (234, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-28 21:44:59');
INSERT INTO `login_audit` VALUES (235, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-28 21:45:08');
INSERT INTO `login_audit` VALUES (236, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-28 21:47:47');
INSERT INTO `login_audit` VALUES (237, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-28 21:52:03');
INSERT INTO `login_audit` VALUES (238, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-28 21:53:38');
INSERT INTO `login_audit` VALUES (239, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-28 21:55:30');
INSERT INTO `login_audit` VALUES (240, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-28 21:58:41');
INSERT INTO `login_audit` VALUES (241, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-28 22:01:24');
INSERT INTO `login_audit` VALUES (242, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-28 22:05:56');
INSERT INTO `login_audit` VALUES (243, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-28 22:09:42');
INSERT INTO `login_audit` VALUES (244, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-28 22:15:50');
INSERT INTO `login_audit` VALUES (245, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-29 11:14:32');
INSERT INTO `login_audit` VALUES (246, 1, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-29 13:00:05');
INSERT INTO `login_audit` VALUES (247, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-29 14:28:31');
INSERT INTO `login_audit` VALUES (248, 20, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-29 22:40:08');
INSERT INTO `login_audit` VALUES (249, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-30 08:33:53');
INSERT INTO `login_audit` VALUES (250, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-30 08:42:08');
INSERT INTO `login_audit` VALUES (251, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-30 08:43:38');
INSERT INTO `login_audit` VALUES (252, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-30 09:16:24');
INSERT INTO `login_audit` VALUES (253, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-30 09:22:29');
INSERT INTO `login_audit` VALUES (254, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-30 21:27:04');
INSERT INTO `login_audit` VALUES (255, 20, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-30 21:41:42');
INSERT INTO `login_audit` VALUES (256, 20, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-04-30 22:37:54');
INSERT INTO `login_audit` VALUES (257, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-04-30 23:51:01');
INSERT INTO `login_audit` VALUES (258, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-04 09:53:44');
INSERT INTO `login_audit` VALUES (259, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-04 10:44:15');
INSERT INTO `login_audit` VALUES (260, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-04 17:28:42');
INSERT INTO `login_audit` VALUES (261, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-04 17:28:49');
INSERT INTO `login_audit` VALUES (262, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-04 20:30:58');
INSERT INTO `login_audit` VALUES (263, 2, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-04 20:33:54');
INSERT INTO `login_audit` VALUES (264, 2, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-04 20:34:36');
INSERT INTO `login_audit` VALUES (265, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-04 20:34:42');
INSERT INTO `login_audit` VALUES (266, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-04 23:30:50');
INSERT INTO `login_audit` VALUES (267, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-04 23:47:45');
INSERT INTO `login_audit` VALUES (268, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-05 00:30:44');
INSERT INTO `login_audit` VALUES (269, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-05 00:58:25');
INSERT INTO `login_audit` VALUES (270, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-05 00:58:34');
INSERT INTO `login_audit` VALUES (271, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-05 10:54:00');
INSERT INTO `login_audit` VALUES (272, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-05 11:02:37');
INSERT INTO `login_audit` VALUES (273, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-05 11:02:53');
INSERT INTO `login_audit` VALUES (274, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-06 13:58:38');
INSERT INTO `login_audit` VALUES (275, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-07 16:50:25');
INSERT INTO `login_audit` VALUES (276, 20, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-05-07 19:37:07');
INSERT INTO `login_audit` VALUES (277, 20, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-05-08 10:26:21');
INSERT INTO `login_audit` VALUES (278, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-08 10:28:37');
INSERT INTO `login_audit` VALUES (279, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-09 11:21:23');
INSERT INTO `login_audit` VALUES (280, 20, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-05-09 11:23:19');
INSERT INTO `login_audit` VALUES (281, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-09 11:28:10');
INSERT INTO `login_audit` VALUES (282, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-09 11:30:00');
INSERT INTO `login_audit` VALUES (283, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-09 14:44:41');
INSERT INTO `login_audit` VALUES (284, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-09 15:07:38');
INSERT INTO `login_audit` VALUES (285, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-09 18:25:46');
INSERT INTO `login_audit` VALUES (286, 20, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-05-09 19:00:09');
INSERT INTO `login_audit` VALUES (287, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-09 22:24:24');
INSERT INTO `login_audit` VALUES (288, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-09 22:24:35');
INSERT INTO `login_audit` VALUES (289, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-09 22:24:52');
INSERT INTO `login_audit` VALUES (290, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-09 22:24:58');
INSERT INTO `login_audit` VALUES (291, 20, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-05-10 21:33:11');
INSERT INTO `login_audit` VALUES (292, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-11 00:33:08');
INSERT INTO `login_audit` VALUES (293, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-11 15:26:11');
INSERT INTO `login_audit` VALUES (294, 20, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-05-11 16:01:49');
INSERT INTO `login_audit` VALUES (295, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-11 16:30:33');
INSERT INTO `login_audit` VALUES (296, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-12 14:28:24');
INSERT INTO `login_audit` VALUES (297, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-13 15:04:32');
INSERT INTO `login_audit` VALUES (298, 20, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-05-13 15:18:09');
INSERT INTO `login_audit` VALUES (299, 1, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-05-13 15:18:21');
INSERT INTO `login_audit` VALUES (300, 1, 'LOGOUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-13 15:45:15');
INSERT INTO `login_audit` VALUES (301, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-13 15:45:25');
INSERT INTO `login_audit` VALUES (302, 1, 'LOGIN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, 'SUCCESS', '2026-05-14 15:06:07');
INSERT INTO `login_audit` VALUES (303, 1, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-05-14 15:53:10');
INSERT INTO `login_audit` VALUES (304, 1, 'LOGIN', '127.0.0.1', 'PostmanRuntime/7.51.1', NULL, 'SUCCESS', '2026-05-26 16:36:38');

-- ----------------------------
-- Table structure for modules
-- ----------------------------
DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules`  (
  `ModuleID` int NOT NULL AUTO_INCREMENT,
  `ModuleName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ModuleID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modules
-- ----------------------------
INSERT INTO `modules` VALUES (1, 'Employee');
INSERT INTO `modules` VALUES (2, 'Payroll');
INSERT INTO `modules` VALUES (3, 'Report');
INSERT INTO `modules` VALUES (4, 'User');
INSERT INTO `modules` VALUES (5, 'Department');
INSERT INTO `modules` VALUES (6, 'Position');
INSERT INTO `modules` VALUES (7, 'Log Audit');
INSERT INTO `modules` VALUES (8, 'Log Audit');

-- ----------------------------
-- Table structure for permission_functions
-- ----------------------------
DROP TABLE IF EXISTS `permission_functions`;
CREATE TABLE `permission_functions`  (
  `PermissionID` int NULL DEFAULT NULL,
  `FunctionID` int NULL DEFAULT NULL,
  UNIQUE INDEX `PermissionID`(`PermissionID` ASC, `FunctionID` ASC) USING BTREE,
  INDEX `FunctionID`(`FunctionID` ASC) USING BTREE,
  CONSTRAINT `permission_functions_ibfk_1` FOREIGN KEY (`PermissionID`) REFERENCES `permissions` (`PermissionID`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `permission_functions_ibfk_2` FOREIGN KEY (`FunctionID`) REFERENCES `functions` (`FunctionID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_functions
-- ----------------------------
INSERT INTO `permission_functions` VALUES (1, 1);
INSERT INTO `permission_functions` VALUES (1, 5);
INSERT INTO `permission_functions` VALUES (1, 7);
INSERT INTO `permission_functions` VALUES (1, 11);
INSERT INTO `permission_functions` VALUES (1, 18);
INSERT INTO `permission_functions` VALUES (2, 2);
INSERT INTO `permission_functions` VALUES (2, 12);
INSERT INTO `permission_functions` VALUES (2, 19);
INSERT INTO `permission_functions` VALUES (3, 3);
INSERT INTO `permission_functions` VALUES (3, 6);
INSERT INTO `permission_functions` VALUES (3, 13);
INSERT INTO `permission_functions` VALUES (3, 20);
INSERT INTO `permission_functions` VALUES (4, 14);
INSERT INTO `permission_functions` VALUES (4, 21);
INSERT INTO `permission_functions` VALUES (5, 8);
INSERT INTO `permission_functions` VALUES (5, 9);
INSERT INTO `permission_functions` VALUES (5, 10);
INSERT INTO `permission_functions` VALUES (24, 8);
INSERT INTO `permission_functions` VALUES (24, 9);
INSERT INTO `permission_functions` VALUES (24, 10);
INSERT INTO `permission_functions` VALUES (24, 25);
INSERT INTO `permission_functions` VALUES (24, 26);
INSERT INTO `permission_functions` VALUES (24, 28);
INSERT INTO `permission_functions` VALUES (24, 29);
INSERT INTO `permission_functions` VALUES (24, 30);
INSERT INTO `permission_functions` VALUES (24, 31);
INSERT INTO `permission_functions` VALUES (24, 35);
INSERT INTO `permission_functions` VALUES (24, 36);
INSERT INTO `permission_functions` VALUES (24, 37);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `PermissionID` int NOT NULL AUTO_INCREMENT,
  `PermissionName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`PermissionID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'VIEW');
INSERT INTO `permissions` VALUES (2, 'CREATE');
INSERT INTO `permissions` VALUES (3, 'UPDATE');
INSERT INTO `permissions` VALUES (4, 'DELETE');
INSERT INTO `permissions` VALUES (5, 'EXECUTE');
INSERT INTO `permissions` VALUES (24, 'VIEW_ADMIN');

-- ----------------------------
-- Table structure for role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_permissions`;
CREATE TABLE `role_permissions`  (
  `RoleID` int NULL DEFAULT NULL,
  `PermissionID` int NULL DEFAULT NULL,
  UNIQUE INDEX `RoleID`(`RoleID` ASC, `PermissionID` ASC) USING BTREE,
  INDEX `PermissionID`(`PermissionID` ASC) USING BTREE,
  CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`RoleID`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`PermissionID`) REFERENCES `permissions` (`PermissionID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permissions
-- ----------------------------
INSERT INTO `role_permissions` VALUES (1, 1);
INSERT INTO `role_permissions` VALUES (1, 2);
INSERT INTO `role_permissions` VALUES (1, 3);
INSERT INTO `role_permissions` VALUES (1, 4);
INSERT INTO `role_permissions` VALUES (1, 5);
INSERT INTO `role_permissions` VALUES (1, 24);
INSERT INTO `role_permissions` VALUES (2, 1);
INSERT INTO `role_permissions` VALUES (2, 2);
INSERT INTO `role_permissions` VALUES (2, 3);
INSERT INTO `role_permissions` VALUES (3, 1);
INSERT INTO `role_permissions` VALUES (3, 2);
INSERT INTO `role_permissions` VALUES (3, 3);
INSERT INTO `role_permissions` VALUES (4, 1);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `RoleID` int NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`RoleID`) USING BTREE,
  UNIQUE INDEX `RoleName`(`RoleName` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'ADMIN');
INSERT INTO `roles` VALUES (4, 'EMPLOYEE');
INSERT INTO `roles` VALUES (2, 'HR');
INSERT INTO `roles` VALUES (3, 'PAYROLL');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `UserID` int NULL DEFAULT NULL,
  `RoleID` int NULL DEFAULT NULL,
  UNIQUE INDEX `UserID`(`UserID` ASC, `RoleID` ASC) USING BTREE,
  INDEX `RoleID`(`RoleID` ASC) USING BTREE,
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`RoleID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES (1, 1);
INSERT INTO `user_roles` VALUES (2, 2);
INSERT INTO `user_roles` VALUES (3, 3);
INSERT INTO `user_roles` VALUES (4, 4);
INSERT INTO `user_roles` VALUES (5, 4);
INSERT INTO `user_roles` VALUES (6, 4);
INSERT INTO `user_roles` VALUES (7, 4);
INSERT INTO `user_roles` VALUES (8, 4);
INSERT INTO `user_roles` VALUES (9, 4);
INSERT INTO `user_roles` VALUES (18, 4);
INSERT INTO `user_roles` VALUES (20, 4);
INSERT INTO `user_roles` VALUES (21, 4);
INSERT INTO `user_roles` VALUES (23, 1);
INSERT INTO `user_roles` VALUES (24, 4);
INSERT INTO `user_roles` VALUES (25, 4);
INSERT INTO `user_roles` VALUES (27, 4);
INSERT INTO `user_roles` VALUES (28, 4);
INSERT INTO `user_roles` VALUES (29, 4);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `EmployeeID` int NOT NULL,
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_active` tinyint(1) NULL DEFAULT 1,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserID`) USING BTREE,
  UNIQUE INDEX `EmployeeID`(`EmployeeID` ASC) USING BTREE,
  UNIQUE INDEX `Email`(`Email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 'an.nguyen@company.vn', '$2b$12$UkVYzZfKxFvrNIe/I.I2S.Smj8RSOgvE8jRBcrV32FLAUy9Qe8oqa', 1, '2026-03-29 22:36:49');
INSERT INTO `users` VALUES (2, 2, 'binh.le@company.vn', '$2b$12$UVqLpXo.LxZwOL4b/HxkDeq1729K0M3YehgmfuSMn2l4vEBWkpOIS', 1, '2026-03-29 22:36:49');
INSERT INTO `users` VALUES (3, 3, 'cuong.tran@company.vn', '$2b$12$izzjrNMgAKtzIKchkiOPB.uD//E6Vy.dvX7mvgTFf/G.yX7EHh9fG', 1, '2026-03-29 22:36:49');
INSERT INTO `users` VALUES (4, 5, 'dat.vo@company.vn', '$2b$12$OSLzxB7pJOBxMuA7MKcAvu2rVEzqKYvoFtX.Qp.ZmpVVEPBm/dxkW', 1, '2026-03-29 22:36:50');
INSERT INTO `users` VALUES (5, 4, 'dung.pham@company.vn', '$2b$12$tIdIUarIAgPBWiciJnhgz.XLsEuYtpORNPvZEWSQZtQ0rDI4p7RVO', 0, '2026-03-29 22:36:50');
INSERT INTO `users` VALUES (6, 6, 'hanh.dang@company.vn', '$2b$12$5ufXzkkbi9didfwWS3.2huHVjFDmObgQy9awBCBw63BhmsePt7Ao.', 1, '2026-03-29 22:36:50');
INSERT INTO `users` VALUES (7, 7, 'hieu.luu@company.vn', '$2b$12$qJc93nMZ/WqrEKRO1UfaxOkoS7mGfO.wyfIa0okY2myxu3.V5LcVW', 1, '2026-03-29 22:36:51');
INSERT INTO `users` VALUES (8, 8, 'lan.ngo@company.vn', '$2b$12$xt/mlAEZny8PhI0YytI83eYyexUIm386C2.OGbgcTQDeksJ/EU/2a', 1, '2026-03-29 22:36:51');
INSERT INTO `users` VALUES (9, 9, 'minh.bui@company.vn', '$2b$12$deHQExowu9CBdJ5CvXF1POMHDNqgcvTtoXJLtMskkV5MqcTXDFG.m', 1, '2026-03-29 22:36:51');
INSERT INTO `users` VALUES (18, 10, 'oanh.hoang@company.vn', '$2b$12$SjDKpHIfdlyEDQ6.Ev8Ln.49IXg1eTO6Fj0H6UESlsB3uHgjDVYZO', 1, '2026-04-12 21:05:25');
INSERT INTO `users` VALUES (20, 90, 'hoangquockhanh7@dtu.edu.vn', '$2b$12$kAgM/x3sGZVk58Xls.19vOw/14X2J.W.H0TigPIcoY4Fzgj3nmEUO', 1, '2026-04-13 17:46:01');
INSERT INTO `users` VALUES (21, 99, 'donalTrump@gmail.com', '$2b$12$RkzxEqWtDtzQR.3Yk1eAhOF1IFMZ3Q3KC0lEcSAFwRBO335iEybLG', 1, '2026-04-20 12:19:46');
INSERT INTO `users` VALUES (23, 97, 'nguyenvana19@example.com', '$2b$12$XJMiTMi/XJEp0qnwZk8fYOBmOcvDL/2j4oEudRUKgCNFrdQGkwtAq', 1, '2026-04-20 12:19:47');
INSERT INTO `users` VALUES (24, 103, 'hoangquockhanh8@dtu.edu.vn', '$2b$12$WUPKHenTKFE3LfR4WJGSn.YS/J/iAPHmgwCo93kP5le5WSpcOk/Ei', 1, '2026-05-09 15:13:14');
INSERT INTO `users` VALUES (25, 104, 'hoangquockhanh9@dtu.edu.vn', '$2b$12$Oi4e2DWCxtlc.xcObsbyouq/Kd/7GZbuqC8Rn706QelPHp1Hu6Kni', 1, '2026-05-11 01:56:21');
INSERT INTO `users` VALUES (27, 106, 'nhu@company.vn', '$2b$12$.1OTVnw.vY.G1oJOS401deojPePeZyAFkqhXraVbZ4CiUIxSY5vF2', 1, '2026-05-12 16:48:32');
INSERT INTO `users` VALUES (28, 107, 'a@gmail.com', '$2b$12$kidY1G0riR7vbq5YJ5sMneAewtnZygdYzvud/6O2wiPU2DF/kgUU.', 1, '2026-05-13 15:25:19');
INSERT INTO `users` VALUES (29, 108, 'huynq@gmail.com', '$2b$12$bWGj/IQ9zKkPwgghif9CTOrZk0jVHBJzrsuBmzmXIVSn8pwGEgixq', 1, '2026-05-13 15:49:01');

SET FOREIGN_KEY_CHECKS = 1;
