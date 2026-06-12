/*
 Navicat Premium Data Transfer

 Source Server         : DESKTOP-DMBP5NT
 Source Server Type    : SQL Server
 Source Server Version : 17001000 (17.00.1000)
 Source Catalog        : HUMAN_2025
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 17001000 (17.00.1000)
 File Encoding         : 65001

 Date: 26/05/2026 16:52:08
*/


-- ----------------------------
-- Table structure for Departments
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Departments]') AND type IN ('U'))
	DROP TABLE [dbo].[Departments]
GO

CREATE TABLE [dbo].[Departments] (
  [DepartmentID] int  IDENTITY(1,1) NOT NULL,
  [DepartmentName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CreatedAt] datetime DEFAULT getdate() NULL,
  [UpdatedAt] datetime DEFAULT getdate() NULL
)
GO

ALTER TABLE [dbo].[Departments] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Departments
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Departments] ON
GO

INSERT INTO [dbo].[Departments] ([DepartmentID], [DepartmentName], [CreatedAt], [UpdatedAt]) VALUES (N'1', N'Phòng Nhân sự', N'2025-10-20 19:10:57.140', N'2025-10-20 19:10:57.140')
GO

INSERT INTO [dbo].[Departments] ([DepartmentID], [DepartmentName], [CreatedAt], [UpdatedAt]) VALUES (N'2', N'Phòng Kế toán', N'2025-10-20 19:10:57.140', N'2025-10-20 19:10:57.140')
GO

INSERT INTO [dbo].[Departments] ([DepartmentID], [DepartmentName], [CreatedAt], [UpdatedAt]) VALUES (N'3', N'Phòng Kỹ thuật', N'2025-10-20 19:10:57.140', N'2025-10-20 19:10:57.140')
GO

INSERT INTO [dbo].[Departments] ([DepartmentID], [DepartmentName], [CreatedAt], [UpdatedAt]) VALUES (N'4', N'Phòng Kinh doanh', N'2025-10-20 19:10:57.140', N'2025-10-20 19:10:57.140')
GO

INSERT INTO [dbo].[Departments] ([DepartmentID], [DepartmentName], [CreatedAt], [UpdatedAt]) VALUES (N'5', N'Phòng Hành chính', N'2025-10-20 19:10:57.140', N'2025-10-20 19:10:57.140')
GO

INSERT INTO [dbo].[Departments] ([DepartmentID], [DepartmentName], [CreatedAt], [UpdatedAt]) VALUES (N'6', N'Phòng Marketing', N'2025-10-20 19:10:57.140', N'2025-10-20 19:10:57.140')
GO

INSERT INTO [dbo].[Departments] ([DepartmentID], [DepartmentName], [CreatedAt], [UpdatedAt]) VALUES (N'7', N'Phòng Sản xuất', N'2025-10-20 19:10:57.140', N'2025-10-20 19:10:57.140')
GO

INSERT INTO [dbo].[Departments] ([DepartmentID], [DepartmentName], [CreatedAt], [UpdatedAt]) VALUES (N'8', N'Phòng Bảo trì', N'2025-10-20 19:10:57.140', N'2025-10-20 19:10:57.140')
GO

INSERT INTO [dbo].[Departments] ([DepartmentID], [DepartmentName], [CreatedAt], [UpdatedAt]) VALUES (N'9', N'Phòng Nghiên cứu & Phát triển', N'2025-10-20 19:10:57.140', N'2025-10-20 19:10:57.140')
GO

INSERT INTO [dbo].[Departments] ([DepartmentID], [DepartmentName], [CreatedAt], [UpdatedAt]) VALUES (N'10', N'Phòng Dịch vụ khách hàng', N'2025-10-20 19:10:57.140', N'2025-10-20 19:10:57.140')
GO

INSERT INTO [dbo].[Departments] ([DepartmentID], [DepartmentName], [CreatedAt], [UpdatedAt]) VALUES (N'38', N'Phòng IT', N'2026-04-25 21:26:44.170', N'2026-04-25 21:26:44.170')
GO

SET IDENTITY_INSERT [dbo].[Departments] OFF
GO


-- ----------------------------
-- Table structure for Dividends
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Dividends]') AND type IN ('U'))
	DROP TABLE [dbo].[Dividends]
GO

CREATE TABLE [dbo].[Dividends] (
  [DividendID] int  IDENTITY(1,1) NOT NULL,
  [EmployeeID] int  NULL,
  [DividendAmount] decimal(12,2)  NOT NULL,
  [DividendDate] date  NOT NULL,
  [CreatedAt] datetime DEFAULT getdate() NULL
)
GO

ALTER TABLE [dbo].[Dividends] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Dividends
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Dividends] ON
GO

INSERT INTO [dbo].[Dividends] ([DividendID], [EmployeeID], [DividendAmount], [DividendDate], [CreatedAt]) VALUES (N'1', N'1', N'500000.00', N'2024-12-31', N'2025-10-20 19:11:51.703')
GO

INSERT INTO [dbo].[Dividends] ([DividendID], [EmployeeID], [DividendAmount], [DividendDate], [CreatedAt]) VALUES (N'2', N'2', N'800000.00', N'2024-12-31', N'2025-10-20 19:11:51.703')
GO

INSERT INTO [dbo].[Dividends] ([DividendID], [EmployeeID], [DividendAmount], [DividendDate], [CreatedAt]) VALUES (N'3', N'3', N'300000.00', N'2024-12-31', N'2025-10-20 19:11:51.703')
GO

INSERT INTO [dbo].[Dividends] ([DividendID], [EmployeeID], [DividendAmount], [DividendDate], [CreatedAt]) VALUES (N'4', N'4', N'700000.00', N'2024-12-31', N'2025-10-20 19:11:51.703')
GO

INSERT INTO [dbo].[Dividends] ([DividendID], [EmployeeID], [DividendAmount], [DividendDate], [CreatedAt]) VALUES (N'5', N'5', N'400000.00', N'2024-12-31', N'2025-10-20 19:11:51.703')
GO

INSERT INTO [dbo].[Dividends] ([DividendID], [EmployeeID], [DividendAmount], [DividendDate], [CreatedAt]) VALUES (N'6', N'6', N'600000.00', N'2024-12-31', N'2025-10-20 19:11:51.703')
GO

INSERT INTO [dbo].[Dividends] ([DividendID], [EmployeeID], [DividendAmount], [DividendDate], [CreatedAt]) VALUES (N'7', N'7', N'900000.00', N'2024-12-31', N'2025-10-20 19:11:51.703')
GO

INSERT INTO [dbo].[Dividends] ([DividendID], [EmployeeID], [DividendAmount], [DividendDate], [CreatedAt]) VALUES (N'8', N'8', N'200000.00', N'2024-12-31', N'2025-10-20 19:11:51.703')
GO

INSERT INTO [dbo].[Dividends] ([DividendID], [EmployeeID], [DividendAmount], [DividendDate], [CreatedAt]) VALUES (N'9', N'9', N'150000.00', N'2024-12-31', N'2025-10-20 19:11:51.703')
GO

INSERT INTO [dbo].[Dividends] ([DividendID], [EmployeeID], [DividendAmount], [DividendDate], [CreatedAt]) VALUES (N'10', N'10', N'850000.00', N'2024-12-31', N'2025-10-20 19:11:51.703')
GO

SET IDENTITY_INSERT [dbo].[Dividends] OFF
GO


-- ----------------------------
-- Table structure for Employees
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type IN ('U'))
	DROP TABLE [dbo].[Employees]
GO

CREATE TABLE [dbo].[Employees] (
  [EmployeeID] int  IDENTITY(1,1) NOT NULL,
  [FullName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DateOfBirth] date  NOT NULL,
  [Gender] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PhoneNumber] nvarchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Email] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [HireDate] date  NOT NULL,
  [DepartmentID] int  NULL,
  [PositionID] int  NULL,
  [Status] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedAt] datetime DEFAULT getdate() NULL,
  [UpdatedAt] datetime DEFAULT getdate() NULL
)
GO

ALTER TABLE [dbo].[Employees] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Employees
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Employees] ON
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'1', N'Nguyễn Văn An', N'1990-02-15', N'Nữ', N'0901234568', N'an.nguyen@company.vn', N'2020-01-10', N'10', N'1', N'Đang làm việc', N'2025-10-20 19:11:42.303', N'2026-04-09 22:22:50.413')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'2', N'Lê Thị Bình', N'1992-05-22', N'Nữ', N'0912345678', N'binh.le@company.vn', N'2019-03-12', N'2', N'3', N'Đang làm việc', N'2025-10-20 19:11:42.303', N'2025-10-20 19:11:42.303')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'3', N'Trần Quốc Cường', N'1988-11-10', N'Nam', N'0987654321', N'cuong.tran@company.vn', N'2021-05-05', N'3', N'7', N'Đang làm việc', N'2025-10-20 19:11:42.303', N'2025-10-20 19:11:42.303')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'4', N'Phạm Hồng Dung', N'1995-06-08', N'Nữ', N'0934567890', N'dung.pham@company.vn', N'2022-02-01', N'4', N'2', N'Đang làm việc', N'2025-10-20 19:11:42.303', N'2025-10-20 19:11:42.303')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'5', N'Võ Thành Đạt', N'1991-09-19', N'Nam', N'0945678901', N'dat.vo@company.vn', N'2018-07-20', N'5', N'4', N'Nghỉ phép', N'2025-10-20 19:11:42.303', N'2026-05-11 01:05:40.857')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'6', N'Đặng Minh Hạnh', N'1996-04-25', N'Nam', N'0976543210', N'hanh.dang@company.vn', N'2023-01-01', N'6', N'1', N'Đang làm việc', N'2025-10-20 19:11:42.303', N'2026-05-11 01:05:28.153')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'7', N'Lưu Trung Hiếu', N'1993-03-30', N'Nam', N'0956789012', N'hieu.luu@company.vn', N'2017-09-15', N'7', N'5', N'Đang làm việc', N'2025-10-20 19:11:42.303', N'2025-10-20 19:11:42.303')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'8', N'Ngô Thu Lan', N'1998-12-12', N'Nữ', N'0901122334', N'lan.ngo@company.vn', N'2024-03-03', N'8', N'8', N'Đang làm việc', N'2025-10-20 19:11:42.303', N'2026-04-13 09:56:25.233')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'9', N'Bùi Văn Minh', N'1989-10-05', N'Nam', N'0933111222', N'minh.bui@company.vn', N'2016-11-11', N'9', N'9', N'Thực tập', N'2025-10-20 19:11:42.303', N'2025-10-20 19:11:42.303')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'10', N'Hoàng Thị Oanh', N'1994-07-17', N'Nữ', N'0909988776', N'oanh.hoang@company.vn', N'2020-06-01', N'4', N'6', N'Đang làm việc', N'2025-10-20 19:11:42.303', N'2026-04-13 15:53:20.303')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'90', N'Hoàng Quốc Khánhh', N'2004-12-12', N'Nam', N'0886412302', N'hoangquockhanh7@dtu.edu.vn', N'2010-12-12', N'38', N'1', N'Thực tập', N'2026-04-13 17:46:00.770', N'2026-05-09 15:17:15.727')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'97', N'Nguyen Van A', N'1998-05-20', N'Nam', N'0901234567', N'nguyenvana19@example.com', N'2024-01-01', N'2', N'3', N'Đang làm việc', N'2026-04-14 19:30:58.643', N'2026-04-14 19:30:58.643')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'99', N'Đỗ Nam Trung', N'1970-05-07', N'Nam', N'0912345678', N'donalTrump@gmail.com', N'2023-05-07', N'1', N'5', N'Đang làm việc', N'2026-04-14 22:33:44.413', N'2026-05-07 18:45:18.307')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'103', N'Khanh Hoang Quoc', N'2004-12-12', N'Nam', N'0886412302', N'hoangquockhanh8@dtu.edu.vn', N'2025-12-12', N'38', N'4', N'Đang làm việc', N'2026-05-09 15:13:13.173', N'2026-05-11 00:58:25.517')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'106', N'Bùi Thị Như', N'2005-08-14', N'Nữ', N'0967356455', N'nhu@company.vn', N'2026-05-12', N'38', N'23', N'Đang làm việc', N'2026-05-12 16:48:31.500', N'2026-05-12 16:48:31.500')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'107', N'A', N'2000-12-12', N'Nam', N'0886412302', N'a@gmail.com', N'2025-12-12', N'38', N'23', N'Nghỉ việc', N'2026-05-13 15:25:19.043', N'2026-05-13 15:25:19.043')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'108', N'Nguyễn Văn Anh', N'2000-05-13', N'Nam', N'0901234567', N'an1.nguyen@company.vn', N'2000-10-10', N'1', N'1', N'Đang làm việc', N'2026-05-13 15:49:00.290', N'2026-05-14 16:03:24.197')
GO

INSERT INTO [dbo].[Employees] ([EmployeeID], [FullName], [DateOfBirth], [Gender], [PhoneNumber], [Email], [HireDate], [DepartmentID], [PositionID], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'109', N'Nguyen Van A', N'1998-05-20', N'Nam', N'0901234567', N'nguyenvana17@example.com', N'2024-01-01', N'2', N'3', N'Đang làm việc', N'2026-05-14 16:00:13.767', N'2026-05-14 16:00:13.767')
GO

SET IDENTITY_INSERT [dbo].[Employees] OFF
GO


-- ----------------------------
-- Table structure for Positions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Positions]') AND type IN ('U'))
	DROP TABLE [dbo].[Positions]
GO

CREATE TABLE [dbo].[Positions] (
  [PositionID] int  IDENTITY(1,1) NOT NULL,
  [PositionName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CreatedAt] datetime DEFAULT getdate() NULL,
  [UpdatedAt] datetime DEFAULT getdate() NULL
)
GO

ALTER TABLE [dbo].[Positions] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Positions
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Positions] ON
GO

INSERT INTO [dbo].[Positions] ([PositionID], [PositionName], [CreatedAt], [UpdatedAt]) VALUES (N'1', N'Nhân viên', N'2025-10-20 19:11:34.503', N'2025-10-20 19:11:34.503')
GO

INSERT INTO [dbo].[Positions] ([PositionID], [PositionName], [CreatedAt], [UpdatedAt]) VALUES (N'2', N'Trưởng nhóm', N'2025-10-20 19:11:34.503', N'2025-10-20 19:11:34.503')
GO

INSERT INTO [dbo].[Positions] ([PositionID], [PositionName], [CreatedAt], [UpdatedAt]) VALUES (N'3', N'Phó phòng', N'2025-10-20 19:11:34.503', N'2025-10-20 19:11:34.503')
GO

INSERT INTO [dbo].[Positions] ([PositionID], [PositionName], [CreatedAt], [UpdatedAt]) VALUES (N'4', N'Trưởng phòng', N'2025-10-20 19:11:34.503', N'2025-10-20 19:11:34.503')
GO

INSERT INTO [dbo].[Positions] ([PositionID], [PositionName], [CreatedAt], [UpdatedAt]) VALUES (N'5', N'Giám đốc', N'2025-10-20 19:11:34.503', N'2025-10-20 19:11:34.503')
GO

INSERT INTO [dbo].[Positions] ([PositionID], [PositionName], [CreatedAt], [UpdatedAt]) VALUES (N'6', N'Thư ký', N'2025-10-20 19:11:34.503', N'2025-10-20 19:11:34.503')
GO

INSERT INTO [dbo].[Positions] ([PositionID], [PositionName], [CreatedAt], [UpdatedAt]) VALUES (N'7', N'Kỹ sư', N'2025-10-20 19:11:34.503', N'2025-10-20 19:11:34.503')
GO

INSERT INTO [dbo].[Positions] ([PositionID], [PositionName], [CreatedAt], [UpdatedAt]) VALUES (N'8', N'Nhân viên thử việc', N'2025-10-20 19:11:34.503', N'2025-10-20 19:11:34.503')
GO

INSERT INTO [dbo].[Positions] ([PositionID], [PositionName], [CreatedAt], [UpdatedAt]) VALUES (N'9', N'Thực tập sinh', N'2025-10-20 19:11:34.503', N'2025-10-20 19:11:34.503')
GO

INSERT INTO [dbo].[Positions] ([PositionID], [PositionName], [CreatedAt], [UpdatedAt]) VALUES (N'10', N'Cố vấn kỹ thuật', N'2025-10-20 19:11:34.503', N'2025-10-20 19:11:34.503')
GO

INSERT INTO [dbo].[Positions] ([PositionID], [PositionName], [CreatedAt], [UpdatedAt]) VALUES (N'23', N'Phó giám đốc', N'2026-04-21 20:38:02.903', N'2026-04-21 20:38:02.903')
GO

SET IDENTITY_INSERT [dbo].[Positions] OFF
GO


-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type IN ('U'))
	DROP TABLE [dbo].[sysdiagrams]
GO

CREATE TABLE [dbo].[sysdiagrams] (
  [name] sysname  NOT NULL,
  [principal_id] int  NOT NULL,
  [diagram_id] int  IDENTITY(1,1) NOT NULL,
  [version] int  NULL,
  [definition] varbinary(max)  NULL
)
GO

ALTER TABLE [dbo].[sysdiagrams] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sysdiagrams] ON
GO

SET IDENTITY_INSERT [dbo].[sysdiagrams] OFF
GO


-- ----------------------------
-- procedure structure for GetEmployees
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEmployees]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[GetEmployees]
GO

CREATE PROCEDURE [dbo].[GetEmployees]
AS
BEGIN
    SELECT 
        e.EmployeeID,
        e.FullName,
        e.Email,
        e.DateOfBirth,
        e.Gender,
        e.HireDate,
        e.Status,
        e.PhoneNumber,
        d.DepartmentName,
        e.DepartmentID,
        e.PositionID,
        p.PositionName,
				e.CreatedAt
    FROM employees e
    LEFT JOIN departments d ON e.DepartmentID = d.DepartmentID
    LEFT JOIN positions p ON e.PositionID = p.PositionID
		ORDER BY e.CreatedAt DESC;
END
GO


-- ----------------------------
-- procedure structure for GetEmployeeId
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEmployeeId]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[GetEmployeeId]
GO

CREATE PROCEDURE [dbo].[GetEmployeeId]
    @EmployeeID INT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM Employees WHERE EmployeeID = @EmployeeID)
    BEGIN
        SELECT N'EmployeeID không tồn tại' AS message;
    RETURN;
    END

    SELECT 
        e.EmployeeID,
        e.FullName,
        e.Email,
        e.DateOfBirth,
        e.Gender,
        e.HireDate,
        e.Status,
        e.PhoneNumber,
        d.DepartmentName,
        p.PositionName
    FROM Employees e
    LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
    LEFT JOIN Positions p ON e.PositionID = p.PositionID
    WHERE e.EmployeeID = @EmployeeID
END
GO


-- ----------------------------
-- procedure structure for sp_upgraddiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_upgraddiagrams]
GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagrams]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagramdefinition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagramdefinition]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_creatediagram]
GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO


-- ----------------------------
-- procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_renamediagram]
GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_alterdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_alterdiagram]
GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_dropdiagram]
GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO


-- ----------------------------
-- function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fn_diagramobjects]
GO

CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO


-- ----------------------------
-- Auto increment value for Departments
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Departments]', RESEED, 43)
GO


-- ----------------------------
-- Primary Key structure for table Departments
-- ----------------------------
ALTER TABLE [dbo].[Departments] ADD CONSTRAINT [PK__Departme__B2079BCD4AD01802] PRIMARY KEY CLUSTERED ([DepartmentID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Dividends
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Dividends]', RESEED, 10)
GO


-- ----------------------------
-- Primary Key structure for table Dividends
-- ----------------------------
ALTER TABLE [dbo].[Dividends] ADD CONSTRAINT [PK__Dividend__E519C77845F446D4] PRIMARY KEY CLUSTERED ([DividendID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Employees
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Employees]', RESEED, 109)
GO


-- ----------------------------
-- Uniques structure for table Employees
-- ----------------------------
ALTER TABLE [dbo].[Employees] ADD CONSTRAINT [UQ__Employee__A9D1053432061C1B] UNIQUE NONCLUSTERED ([Email] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Employees
-- ----------------------------
ALTER TABLE [dbo].[Employees] ADD CONSTRAINT [PK__Employee__7AD04FF14A9AB906] PRIMARY KEY CLUSTERED ([EmployeeID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Positions
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Positions]', RESEED, 24)
GO


-- ----------------------------
-- Primary Key structure for table Positions
-- ----------------------------
ALTER TABLE [dbo].[Positions] ADD CONSTRAINT [PK__Position__60BB9A5907278D3D] PRIMARY KEY CLUSTERED ([PositionID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sysdiagrams
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sysdiagrams]', RESEED, 1)
GO


-- ----------------------------
-- Uniques structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED ([principal_id] ASC, [name] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [PK__sysdiagr__C2B05B614C561F5E] PRIMARY KEY CLUSTERED ([diagram_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table Dividends
-- ----------------------------
ALTER TABLE [dbo].[Dividends] ADD CONSTRAINT [FK_Dividends_Employees] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employees] ([EmployeeID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Employees
-- ----------------------------
ALTER TABLE [dbo].[Employees] ADD CONSTRAINT [FK_Employees_Departments] FOREIGN KEY ([DepartmentID]) REFERENCES [dbo].[Departments] ([DepartmentID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Employees] ADD CONSTRAINT [FK_Employees_Positions] FOREIGN KEY ([PositionID]) REFERENCES [dbo].[Positions] ([PositionID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

