/*
 Navicat Premium Data Transfer

 Source Server         : local_sqlserver
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : localhost\SQLEXPRESS:1433
 Source Catalog        : staff
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 23/03/2022 18:30:03
*/


-- ----------------------------
-- Table structure for data_staff
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[data_staff]') AND type IN ('U'))
	DROP TABLE [dbo].[data_staff]
GO

CREATE TABLE [dbo].[data_staff] (
  [nik] int  NOT NULL,
  [nama] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [alamat] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [handphone] varchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [joindate] date  NULL
)
GO

ALTER TABLE [dbo].[data_staff] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of data_staff
-- ----------------------------
INSERT INTO [dbo].[data_staff] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35728', N'PUTRI', N'SURABAYA', N'0812159405', NULL)
GO

INSERT INTO [dbo].[data_staff] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35729', N'PUTRA', N'SIDOARJO', N'0813256405', NULL)
GO

INSERT INTO [dbo].[data_staff] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35730', N'BUDI', N'GRESIK', N'0813256143', NULL)
GO

INSERT INTO [dbo].[data_staff] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35731', N'AAN', N'PASURUAN', N'0811234405', N'2019-02-10')
GO

INSERT INTO [dbo].[data_staff] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35732', N'ANGGI', N'JAKARTA', N'0815676405', N'2020-03-10')
GO

INSERT INTO [dbo].[data_staff] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35733', N'ANGGA', N'BANDUNG', N'0813456143', N'2020-04-10')
GO


-- ----------------------------
-- Table structure for staff_outsource
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[staff_outsource]') AND type IN ('U'))
	DROP TABLE [dbo].[staff_outsource]
GO

CREATE TABLE [dbo].[staff_outsource] (
  [nik] int  NOT NULL,
  [nama] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [alamat] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [handphone] varchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [joindate] date  NULL
)
GO

ALTER TABLE [dbo].[staff_outsource] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of staff_outsource
-- ----------------------------
INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35728', N'PUTRI', N'SURABAYA', N'0812159405', NULL)
GO

INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35729', N'PUTRA', N'SIDOARJO', N'0813256405', NULL)
GO

INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35730', N'BUDI', N'GRESIK', N'0813256143', NULL)
GO

INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35731', N'AAN', N'PASURUAN', N'0811234405', N'2019-02-10')
GO

INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35732', N'ANGGI', N'JAKARTA', N'0815676405', N'2020-03-10')
GO

INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35733', N'ANGGA', N'BANDUNG', N'0813456143', N'2020-04-10')
GO

INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35734', N'ABC', N'PASURUAN', N'0811234456', N'2019-02-10')
GO

INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35735', N'DEF', N'JAKARTA', N'0815676412', N'2020-03-10')
GO

INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35736', N'GHI', N'BANDUNG', N'0813456134', N'2020-04-10')
GO

INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35737', N'JKL', N'PASURUAN', N'0811234478', N'2019-01-10')
GO

INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35738', N'LMN', N'JAKARTA', N'0815676490', N'2020-06-10')
GO

INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35739', N'OPQ', N'PASURUAN', N'0811231205', N'2019-07-10')
GO

INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35740', N'RST', N'JAKARTA', N'0815673205', N'2020-01-10')
GO

INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35741', N'UVW', N'PASURUAN', N'0811234505', N'2019-02-10')
GO

INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35742', N'YXZ', N'JAKARTA', N'0815676675', N'2020-05-10')
GO

INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35743', N'CBA', N'PASURUAN', N'0811238905', N'2019-01-10')
GO

INSERT INTO [dbo].[staff_outsource] ([nik], [nama], [alamat], [handphone], [joindate]) VALUES (N'35744', N'FED', N'JAKARTA', N'0815670905', N'2020-02-10')
GO


-- ----------------------------
-- Primary Key structure for table data_staff
-- ----------------------------
ALTER TABLE [dbo].[data_staff] ADD CONSTRAINT [PK__data_sta__DF97D0ECF67302F7] PRIMARY KEY CLUSTERED ([nik])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table staff_outsource
-- ----------------------------
ALTER TABLE [dbo].[staff_outsource] ADD CONSTRAINT [PK__staff_ou__DF97D0ECD5186DC4] PRIMARY KEY CLUSTERED ([nik])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

