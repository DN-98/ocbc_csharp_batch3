/*
 Navicat Premium Data Transfer

 Source Server         : local_sqlserver
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : localhost\SQLEXPRESS:1433
 Source Catalog        : db_bank
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 23/03/2022 18:08:52
*/


-- ----------------------------
-- Table structure for costumers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[costumers]') AND type IN ('U'))
	DROP TABLE [dbo].[costumers]
GO

CREATE TABLE [dbo].[costumers] (
  [costumer_id] int  IDENTITY(1,1) NOT NULL,
  [FirstName] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LastName] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [phoneNumber] varchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [address1] text COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [address2] text COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [city] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [state] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [postCode] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [salesRep_Employee_id] int  NOT NULL,
  [creditLimit] float(53)  NULL
)
GO

ALTER TABLE [dbo].[costumers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of costumers
-- ----------------------------
SET IDENTITY_INSERT [dbo].[costumers] ON
GO

INSERT INTO [dbo].[costumers] ([costumer_id], [FirstName], [LastName], [phoneNumber], [address1], [address2], [city], [state], [postCode], [salesRep_Employee_id], [creditLimit]) VALUES (N'1', N'ABC', N'ABC', N'0811234456', N'Jl. ABCDEFG', NULL, N'PASURUAN', N'INDONESIA', N'133231', N'10', NULL)
GO

INSERT INTO [dbo].[costumers] ([costumer_id], [FirstName], [LastName], [phoneNumber], [address1], [address2], [city], [state], [postCode], [salesRep_Employee_id], [creditLimit]) VALUES (N'2', N'DEF', N'DEF', N'0815676412', N'Jl. ABCDEFG', NULL, N'JAKARTA', N'INDONESIA', N'125231', N'10', NULL)
GO

INSERT INTO [dbo].[costumers] ([costumer_id], [FirstName], [LastName], [phoneNumber], [address1], [address2], [city], [state], [postCode], [salesRep_Employee_id], [creditLimit]) VALUES (N'3', N'GHI', N'DEF', N'0813456134', N'Jl. ABCDEFG', NULL, N'BANDUNG', N'INDONESIA', N'128231', N'10', NULL)
GO

INSERT INTO [dbo].[costumers] ([costumer_id], [FirstName], [LastName], [phoneNumber], [address1], [address2], [city], [state], [postCode], [salesRep_Employee_id], [creditLimit]) VALUES (N'4', N'JKL', N'AEF', N'0811234478', N'Jl. ABCDEFG', NULL, N'PASURUAN', N'INDONESIA', N'113231', N'10', NULL)
GO

INSERT INTO [dbo].[costumers] ([costumer_id], [FirstName], [LastName], [phoneNumber], [address1], [address2], [city], [state], [postCode], [salesRep_Employee_id], [creditLimit]) VALUES (N'5', N'LMN', N'BEF', N'0815676490', N'Jl. ABCDEFG', NULL, N'JAKARTA', N'BRUNEI', N'123231', N'10', NULL)
GO

INSERT INTO [dbo].[costumers] ([costumer_id], [FirstName], [LastName], [phoneNumber], [address1], [address2], [city], [state], [postCode], [salesRep_Employee_id], [creditLimit]) VALUES (N'6', N'OPQ', N'CEF', N'0811231205', N'Jl. ABCDEFG', NULL, N'PASURUAN', N'BRUNEI', N'123231', N'11', NULL)
GO

INSERT INTO [dbo].[costumers] ([costumer_id], [FirstName], [LastName], [phoneNumber], [address1], [address2], [city], [state], [postCode], [salesRep_Employee_id], [creditLimit]) VALUES (N'7', N'RST', N'FEF', N'0815673205', N'Jl. ABCDEFG', NULL, N'JAKARTA', N'BRUNEI', N'123231', N'11', NULL)
GO

INSERT INTO [dbo].[costumers] ([costumer_id], [FirstName], [LastName], [phoneNumber], [address1], [address2], [city], [state], [postCode], [salesRep_Employee_id], [creditLimit]) VALUES (N'8', N'UVW', N'GEF', N'0811234505', N'Jl. ABCDEFG', NULL, N'PASURUAN', N'BRUNEI', N'122231', N'11', NULL)
GO

INSERT INTO [dbo].[costumers] ([costumer_id], [FirstName], [LastName], [phoneNumber], [address1], [address2], [city], [state], [postCode], [salesRep_Employee_id], [creditLimit]) VALUES (N'9', N'YXZ', N'HEF', N'0815676675', N'Jl. ABCDEFG', NULL, N'JAKARTA', N'BRUNEI', N'123131', N'11', NULL)
GO

INSERT INTO [dbo].[costumers] ([costumer_id], [FirstName], [LastName], [phoneNumber], [address1], [address2], [city], [state], [postCode], [salesRep_Employee_id], [creditLimit]) VALUES (N'10', N'CBA', N'IEF', N'0811238905', N'Jl. ABCDEFG10', NULL, N'PASURUAN', N'BRUNEI', N'123231', N'10', NULL)
GO

INSERT INTO [dbo].[costumers] ([costumer_id], [FirstName], [LastName], [phoneNumber], [address1], [address2], [city], [state], [postCode], [salesRep_Employee_id], [creditLimit]) VALUES (N'11', N'FED', N'DEF', N'0815670905', N'Jl. ABCDEFG', NULL, N'JAKARTA', N'BRUNEI', N'121231', N'10', NULL)
GO

SET IDENTITY_INSERT [dbo].[costumers] OFF
GO


-- ----------------------------
-- Table structure for employee
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[employee]') AND type IN ('U'))
	DROP TABLE [dbo].[employee]
GO

CREATE TABLE [dbo].[employee] (
  [employee_id] int  IDENTITY(1,1) NOT NULL,
  [FirstName] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LastName] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [extension] varchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [email] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [office_id] int  NOT NULL,
  [reportsTo] int  NOT NULL,
  [jobTitle] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[employee] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of employee
-- ----------------------------
SET IDENTITY_INSERT [dbo].[employee] ON
GO

INSERT INTO [dbo].[employee] ([employee_id], [FirstName], [LastName], [extension], [email], [office_id], [reportsTo], [jobTitle]) VALUES (N'1', N'Freya', N'Maxwell', NULL, N'freyamaxwell@frm.co.id', N'1', N'1', N'CEO')
GO

INSERT INTO [dbo].[employee] ([employee_id], [FirstName], [LastName], [extension], [email], [office_id], [reportsTo], [jobTitle]) VALUES (N'2', N'Steve', N'Maxwell', NULL, N'stevemaxwell@frm.co.id', N'1', N'1', N'COO')
GO

INSERT INTO [dbo].[employee] ([employee_id], [FirstName], [LastName], [extension], [email], [office_id], [reportsTo], [jobTitle]) VALUES (N'3', N'Naomi', N'Keith', NULL, N'naomikeith@frm.co.id', N'1', N'1', N'CTO')
GO

INSERT INTO [dbo].[employee] ([employee_id], [FirstName], [LastName], [extension], [email], [office_id], [reportsTo], [jobTitle]) VALUES (N'4', N'Laura', N'Maxwell', NULL, N'lauramaxwell@frm.co.id', N'1', N'1', N'CFO')
GO

INSERT INTO [dbo].[employee] ([employee_id], [FirstName], [LastName], [extension], [email], [office_id], [reportsTo], [jobTitle]) VALUES (N'5', N'Maya', N'Stonefield', NULL, N'mayastonefield@frm.co.id', N'1', N'1', N'CMO')
GO

INSERT INTO [dbo].[employee] ([employee_id], [FirstName], [LastName], [extension], [email], [office_id], [reportsTo], [jobTitle]) VALUES (N'6', N'Marcel', N'Gerald', NULL, N'marcelgerald@frm.co.id', N'2', N'2', N'Manager of HRD')
GO

INSERT INTO [dbo].[employee] ([employee_id], [FirstName], [LastName], [extension], [email], [office_id], [reportsTo], [jobTitle]) VALUES (N'7', N'Steven', N'Phillips', NULL, N'stevenphillips@frm.co.id', N'2', N'3', N'Manager of IT Department')
GO

INSERT INTO [dbo].[employee] ([employee_id], [FirstName], [LastName], [extension], [email], [office_id], [reportsTo], [jobTitle]) VALUES (N'8', N'Carmilla', N'Beck', NULL, N'carmillabeck@frm.co.id', N'3', N'5', N'Manager of Marketing and Sales Department')
GO

INSERT INTO [dbo].[employee] ([employee_id], [FirstName], [LastName], [extension], [email], [office_id], [reportsTo], [jobTitle]) VALUES (N'9', N'Xavier', N'Tan', NULL, N'xaviertan@frm.co.id', N'2', N'7', N'IT STAFF')
GO

INSERT INTO [dbo].[employee] ([employee_id], [FirstName], [LastName], [extension], [email], [office_id], [reportsTo], [jobTitle]) VALUES (N'10', N'Soya', N'Swift', NULL, N'soyaswift@frm.co.id', N'3', N'8', N'Marketing Officer')
GO

INSERT INTO [dbo].[employee] ([employee_id], [FirstName], [LastName], [extension], [email], [office_id], [reportsTo], [jobTitle]) VALUES (N'11', N'Marcellia', N'Rein', NULL, N'marcelliarein@frm.co.id', N'3', N'8', N'Sales Officer')
GO

INSERT INTO [dbo].[employee] ([employee_id], [FirstName], [LastName], [extension], [email], [office_id], [reportsTo], [jobTitle]) VALUES (N'12', N'Dana', N'Baek', NULL, N'danabaek@frm.co.id', N'2', N'6', N'HR Staff')
GO

SET IDENTITY_INSERT [dbo].[employee] OFF
GO


-- ----------------------------
-- Table structure for offices
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[offices]') AND type IN ('U'))
	DROP TABLE [dbo].[offices]
GO

CREATE TABLE [dbo].[offices] (
  [office_id] int  IDENTITY(1,1) NOT NULL,
  [city] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [phoneNumber] varchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [address1] text COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [address2] text COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [state] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [postCode] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [territory] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[offices] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of offices
-- ----------------------------
SET IDENTITY_INSERT [dbo].[offices] ON
GO

INSERT INTO [dbo].[offices] ([office_id], [city], [phoneNumber], [address1], [address2], [state], [postCode], [territory]) VALUES (N'1', N'JAKARTA', N'(021) 29865920', N'Dipo Tower, Jl.Gatot Subroto No.51-52, Jakarta Pusat 7, Petamburan, Tanah Abang,', NULL, N'INDONESIA', N'10260', NULL)
GO

INSERT INTO [dbo].[offices] ([office_id], [city], [phoneNumber], [address1], [address2], [state], [postCode], [territory]) VALUES (N'2', N'SURABAYA', N'(031) 28937000', N'Jl. Mayjen HR. Muhammad No.36, Pradahkalikendal, Kec. Dukuhpakis', NULL, N'INDONESIA', N'60189', NULL)
GO

INSERT INTO [dbo].[offices] ([office_id], [city], [phoneNumber], [address1], [address2], [state], [postCode], [territory]) VALUES (N'3', N'SURABAYA', N'(031) 5458241', N'Jl. Raden Saleh No.10A, Bubutan, Kec. Bubutan', NULL, N'INDONESIA', N'60174', NULL)
GO

INSERT INTO [dbo].[offices] ([office_id], [city], [phoneNumber], [address1], [address2], [state], [postCode], [territory]) VALUES (N'4', N'SURABAYA', N'(031) 5320578', N'Jl. Pemuda No.104-106, Embong Kaliasin, Kec. Genteng', NULL, N'INDONESIA', N'60271', NULL)
GO

INSERT INTO [dbo].[offices] ([office_id], [city], [phoneNumber], [address1], [address2], [state], [postCode], [territory]) VALUES (N'5', N'SURABAYA', N'(031) 5678271', N'Jl. Ciliwung No.14, Darmo, Kec. Wonokromo', NULL, N'INDONESIA', N'60241', NULL)
GO

SET IDENTITY_INSERT [dbo].[offices] OFF
GO


-- ----------------------------
-- Table structure for orderDetails
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[orderDetails]') AND type IN ('U'))
	DROP TABLE [dbo].[orderDetails]
GO

CREATE TABLE [dbo].[orderDetails] (
  [orderTrans_id] int  IDENTITY(1,1) NOT NULL,
  [order_id] int  NULL,
  [product_id] int  NULL,
  [quantityOrder] int  NULL,
  [priceEach] float(53)  NULL,
  [orderLine_id] int  NULL
)
GO

ALTER TABLE [dbo].[orderDetails] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of orderDetails
-- ----------------------------
SET IDENTITY_INSERT [dbo].[orderDetails] ON
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'2', N'1', N'3', N'1', N'50999000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'3', N'1', N'3', N'1', N'50999000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'4', N'2', N'11', N'2', N'70999000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'5', N'2', N'12', N'1', N'17799000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'6', N'2', N'13', N'2', N'16799000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'7', N'3', N'12', N'1', N'17799000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'8', N'3', N'13', N'3', N'16799000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'9', N'4', N'10', N'2', N'6999000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'10', N'4', N'12', N'1', N'17799000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'11', N'5', N'11', N'3', N'70999000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'12', N'6', N'13', N'1', N'16799000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'13', N'7', N'5', N'2', N'24999000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'14', N'7', N'6', N'1', N'22499000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'15', N'8', N'4', N'1', N'27999000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'16', N'9', N'4', N'1', N'27999000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'17', N'10', N'3', N'1', N'50999000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'18', N'11', N'6', N'1', N'22499000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'19', N'11', N'7', N'1', N'22499000', NULL)
GO

INSERT INTO [dbo].[orderDetails] ([orderTrans_id], [order_id], [product_id], [quantityOrder], [priceEach], [orderLine_id]) VALUES (N'20', N'11', N'8', N'5', N'15299000', NULL)
GO

SET IDENTITY_INSERT [dbo].[orderDetails] OFF
GO


-- ----------------------------
-- Table structure for orders
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[orders]') AND type IN ('U'))
	DROP TABLE [dbo].[orders]
GO

CREATE TABLE [dbo].[orders] (
  [order_id] int  IDENTITY(1,1) NOT NULL,
  [orderDate] date  NULL,
  [requiredDate] date  NULL,
  [shipDate] date  NULL,
  [status] int  NULL,
  [comments] text COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [costumer_id] int  NULL
)
GO

ALTER TABLE [dbo].[orders] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of orders
-- ----------------------------
SET IDENTITY_INSERT [dbo].[orders] ON
GO

INSERT INTO [dbo].[orders] ([order_id], [orderDate], [requiredDate], [shipDate], [status], [comments], [costumer_id]) VALUES (N'1', N'2022-03-21', N'2022-03-24', N'2022-03-21', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[orders] ([order_id], [orderDate], [requiredDate], [shipDate], [status], [comments], [costumer_id]) VALUES (N'2', N'2022-03-21', N'2022-03-24', N'2022-03-21', NULL, NULL, N'2')
GO

INSERT INTO [dbo].[orders] ([order_id], [orderDate], [requiredDate], [shipDate], [status], [comments], [costumer_id]) VALUES (N'3', N'2022-03-21', N'2022-03-24', N'2022-03-21', NULL, NULL, N'4')
GO

INSERT INTO [dbo].[orders] ([order_id], [orderDate], [requiredDate], [shipDate], [status], [comments], [costumer_id]) VALUES (N'4', N'2022-03-21', N'2022-03-24', N'2022-03-21', NULL, NULL, N'5')
GO

INSERT INTO [dbo].[orders] ([order_id], [orderDate], [requiredDate], [shipDate], [status], [comments], [costumer_id]) VALUES (N'5', N'2022-03-21', N'2022-03-24', N'2022-03-21', NULL, NULL, N'3')
GO

INSERT INTO [dbo].[orders] ([order_id], [orderDate], [requiredDate], [shipDate], [status], [comments], [costumer_id]) VALUES (N'6', N'2022-03-22', N'2022-03-25', N'2022-03-22', NULL, NULL, N'3')
GO

INSERT INTO [dbo].[orders] ([order_id], [orderDate], [requiredDate], [shipDate], [status], [comments], [costumer_id]) VALUES (N'7', N'2022-03-22', N'2022-03-25', N'2022-03-22', NULL, NULL, N'6')
GO

INSERT INTO [dbo].[orders] ([order_id], [orderDate], [requiredDate], [shipDate], [status], [comments], [costumer_id]) VALUES (N'8', N'2022-03-22', N'2022-03-25', N'2022-03-22', NULL, NULL, N'4')
GO

INSERT INTO [dbo].[orders] ([order_id], [orderDate], [requiredDate], [shipDate], [status], [comments], [costumer_id]) VALUES (N'9', N'2022-03-22', N'2022-03-25', N'2022-03-22', NULL, NULL, N'2')
GO

INSERT INTO [dbo].[orders] ([order_id], [orderDate], [requiredDate], [shipDate], [status], [comments], [costumer_id]) VALUES (N'10', N'2022-03-23', N'2022-03-26', N'2022-03-23', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[orders] ([order_id], [orderDate], [requiredDate], [shipDate], [status], [comments], [costumer_id]) VALUES (N'11', N'2022-03-23', N'2022-03-26', N'2022-03-23', NULL, NULL, N'3')
GO

SET IDENTITY_INSERT [dbo].[orders] OFF
GO


-- ----------------------------
-- Table structure for payments
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[payments]') AND type IN ('U'))
	DROP TABLE [dbo].[payments]
GO

CREATE TABLE [dbo].[payments] (
  [payment_id] int  IDENTITY(1,1) NOT NULL,
  [costumer_id] int  NULL,
  [checkNumber] int  NULL,
  [paymentDate] date  NULL,
  [amount] float(53)  NULL
)
GO

ALTER TABLE [dbo].[payments] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of payments
-- ----------------------------
SET IDENTITY_INSERT [dbo].[payments] ON
GO

SET IDENTITY_INSERT [dbo].[payments] OFF
GO


-- ----------------------------
-- Table structure for productLines
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[productLines]') AND type IN ('U'))
	DROP TABLE [dbo].[productLines]
GO

CREATE TABLE [dbo].[productLines] (
  [productLine_id] int  IDENTITY(1,1) NOT NULL,
  [textDesc] text COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [htmlDesc] text COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [img_loc] text COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[productLines] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of productLines
-- ----------------------------
SET IDENTITY_INSERT [dbo].[productLines] ON
GO

SET IDENTITY_INSERT [dbo].[productLines] OFF
GO


-- ----------------------------
-- Table structure for products
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[products]') AND type IN ('U'))
	DROP TABLE [dbo].[products]
GO

CREATE TABLE [dbo].[products] (
  [product_id] int  IDENTITY(1,1) NOT NULL,
  [productName] text COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [productLine] int  NULL,
  [productScale] date  NULL,
  [productVendor] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [productDesc] text COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [quantityInStock] int  NULL,
  [buyPrice] float(53)  NULL,
  [MSRP] float(53)  NULL
)
GO

ALTER TABLE [dbo].[products] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of products
-- ----------------------------
SET IDENTITY_INSERT [dbo].[products] ON
GO

INSERT INTO [dbo].[products] ([product_id], [productName], [productLine], [productScale], [productVendor], [productDesc], [quantityInStock], [buyPrice], [MSRP]) VALUES (N'3', N'Zenbook Pro Duo 15 OLED UX582', NULL, NULL, N'ASUS', NULL, N'5', N'40999000', N'50999000')
GO

INSERT INTO [dbo].[products] ([product_id], [productName], [productLine], [productScale], [productVendor], [productDesc], [quantityInStock], [buyPrice], [MSRP]) VALUES (N'4', N'Zenbook Pro 15 OLED UX535', NULL, NULL, N'ASUS', NULL, N'3', N'24999000', N'27999000')
GO

INSERT INTO [dbo].[products] ([product_id], [productName], [productLine], [productScale], [productVendor], [productDesc], [quantityInStock], [buyPrice], [MSRP]) VALUES (N'5', N'Zenbook S UX393', NULL, NULL, N'ASUS', NULL, N'0', N'22999000', N'24999000')
GO

INSERT INTO [dbo].[products] ([product_id], [productName], [productLine], [productScale], [productVendor], [productDesc], [quantityInStock], [buyPrice], [MSRP]) VALUES (N'6', N'Zenbook 14 UX435EG', NULL, NULL, N'ASUS', NULL, N'0', N'20499000', N'22499000')
GO

INSERT INTO [dbo].[products] ([product_id], [productName], [productLine], [productScale], [productVendor], [productDesc], [quantityInStock], [buyPrice], [MSRP]) VALUES (N'7', N'Zenbook Flip 13 OLED UX363 i7', NULL, NULL, N'ASUS', NULL, N'0', N'20499000', N'22499000')
GO

INSERT INTO [dbo].[products] ([product_id], [productName], [productLine], [productScale], [productVendor], [productDesc], [quantityInStock], [buyPrice], [MSRP]) VALUES (N'8', N'Vivobook S14 S433 i7', NULL, NULL, N'ASUS', NULL, N'15', N'14299000', N'15299000')
GO

INSERT INTO [dbo].[products] ([product_id], [productName], [productLine], [productScale], [productVendor], [productDesc], [quantityInStock], [buyPrice], [MSRP]) VALUES (N'9', N'Vivobook Ultra 15 OLED K513', NULL, NULL, N'ASUS', NULL, N'15', N'9099000', N'10099000')
GO

INSERT INTO [dbo].[products] ([product_id], [productName], [productLine], [productScale], [productVendor], [productDesc], [quantityInStock], [buyPrice], [MSRP]) VALUES (N'10', N'Vivobook E410', NULL, NULL, N'ASUS', NULL, N'10', N'6599000', N'6999000')
GO

INSERT INTO [dbo].[products] ([product_id], [productName], [productLine], [productScale], [productVendor], [productDesc], [quantityInStock], [buyPrice], [MSRP]) VALUES (N'11', N'ROG Zephyrus Duo 15 SE GX551', NULL, NULL, N'ASUS', NULL, N'2', N'60999000', N'70999000')
GO

INSERT INTO [dbo].[products] ([product_id], [productName], [productLine], [productScale], [productVendor], [productDesc], [quantityInStock], [buyPrice], [MSRP]) VALUES (N'12', N'Vivobook Pro 15 OLED K3500PC', NULL, NULL, N'ASUS', NULL, N'2', N'15799000', N'17799000')
GO

INSERT INTO [dbo].[products] ([product_id], [productName], [productLine], [productScale], [productVendor], [productDesc], [quantityInStock], [buyPrice], [MSRP]) VALUES (N'13', N'Vivobook Pro 14 OLED K3400PH', NULL, NULL, N'ASUS', NULL, N'1', N'14799000', N'16799000')
GO

SET IDENTITY_INSERT [dbo].[products] OFF
GO


-- ----------------------------
-- Auto increment value for costumers
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[costumers]', RESEED, 11)
GO


-- ----------------------------
-- Indexes structure for table costumers
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx_name]
ON [dbo].[costumers] (
  [FirstName] ASC,
  [LastName] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_costumer_id]
ON [dbo].[costumers] (
  [costumer_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table costumers
-- ----------------------------
ALTER TABLE [dbo].[costumers] ADD CONSTRAINT [PK__tb_costu__04AA169F82EFB3B0] PRIMARY KEY CLUSTERED ([costumer_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for employee
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[employee]', RESEED, 12)
GO


-- ----------------------------
-- Primary Key structure for table employee
-- ----------------------------
ALTER TABLE [dbo].[employee] ADD CONSTRAINT [PK__tb_emplo__C52E0BA8266FB952] PRIMARY KEY CLUSTERED ([employee_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for offices
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[offices]', RESEED, 5)
GO


-- ----------------------------
-- Primary Key structure for table offices
-- ----------------------------
ALTER TABLE [dbo].[offices] ADD CONSTRAINT [PK__offices__2A196375F937FF8B] PRIMARY KEY CLUSTERED ([office_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for orderDetails
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[orderDetails]', RESEED, 20)
GO


-- ----------------------------
-- Primary Key structure for table orderDetails
-- ----------------------------
ALTER TABLE [dbo].[orderDetails] ADD CONSTRAINT [PK__orderDet__992F15292BC7A24B] PRIMARY KEY CLUSTERED ([orderTrans_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for orders
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[orders]', RESEED, 11)
GO


-- ----------------------------
-- Primary Key structure for table orders
-- ----------------------------
ALTER TABLE [dbo].[orders] ADD CONSTRAINT [PK__orders__46596229B00F6FCC] PRIMARY KEY CLUSTERED ([order_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for payments
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[payments]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table payments
-- ----------------------------
ALTER TABLE [dbo].[payments] ADD CONSTRAINT [PK__payments__ED1FC9EAEECC555E] PRIMARY KEY CLUSTERED ([payment_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for productLines
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[productLines]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table productLines
-- ----------------------------
ALTER TABLE [dbo].[productLines] ADD CONSTRAINT [PK__productL__102DA78B3914F308] PRIMARY KEY CLUSTERED ([productLine_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for products
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[products]', RESEED, 13)
GO


-- ----------------------------
-- Primary Key structure for table products
-- ----------------------------
ALTER TABLE [dbo].[products] ADD CONSTRAINT [PK__products__47027DF5E75A4E70] PRIMARY KEY CLUSTERED ([product_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table costumers
-- ----------------------------
ALTER TABLE [dbo].[costumers] ADD CONSTRAINT [FK_salesRep] FOREIGN KEY ([salesRep_Employee_id]) REFERENCES [dbo].[employee] ([employee_id]) ON DELETE NO ACTION ON UPDATE CASCADE
GO


-- ----------------------------
-- Foreign Keys structure for table employee
-- ----------------------------
ALTER TABLE [dbo].[employee] ADD CONSTRAINT [FK_reportsTo] FOREIGN KEY ([reportsTo]) REFERENCES [dbo].[employee] ([employee_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[employee] ADD CONSTRAINT [FK_office] FOREIGN KEY ([office_id]) REFERENCES [dbo].[offices] ([office_id]) ON DELETE NO ACTION ON UPDATE CASCADE
GO


-- ----------------------------
-- Foreign Keys structure for table orderDetails
-- ----------------------------
ALTER TABLE [dbo].[orderDetails] ADD CONSTRAINT [FK_product] FOREIGN KEY ([product_id]) REFERENCES [dbo].[products] ([product_id]) ON DELETE SET NULL ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[orderDetails] ADD CONSTRAINT [FK_order] FOREIGN KEY ([order_id]) REFERENCES [dbo].[orders] ([order_id]) ON DELETE CASCADE ON UPDATE CASCADE
GO


-- ----------------------------
-- Foreign Keys structure for table orders
-- ----------------------------
ALTER TABLE [dbo].[orders] ADD CONSTRAINT [FK_customer] FOREIGN KEY ([costumer_id]) REFERENCES [dbo].[costumers] ([costumer_id]) ON DELETE NO ACTION ON UPDATE CASCADE
GO


-- ----------------------------
-- Foreign Keys structure for table products
-- ----------------------------
ALTER TABLE [dbo].[products] ADD CONSTRAINT [FK_productLine] FOREIGN KEY ([productLine]) REFERENCES [dbo].[productLines] ([productLine_id]) ON DELETE SET NULL ON UPDATE CASCADE
GO

