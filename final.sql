USE [master]
GO
/****** Object:  Database [DATN_Dang2]    Script Date: 12/25/2022 9:54:28 PM ******/
CREATE DATABASE [DATN_Dang2]
 GO
ALTER DATABASE [DATN_Dang2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DATN_Dang2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DATN_Dang2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DATN_Dang2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DATN_Dang2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DATN_Dang2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DATN_Dang2] SET ARITHABORT OFF 
GO
ALTER DATABASE [DATN_Dang2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DATN_Dang2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DATN_Dang2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DATN_Dang2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DATN_Dang2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DATN_Dang2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DATN_Dang2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DATN_Dang2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DATN_Dang2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DATN_Dang2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DATN_Dang2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DATN_Dang2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DATN_Dang2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DATN_Dang2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DATN_Dang2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DATN_Dang2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DATN_Dang2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DATN_Dang2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DATN_Dang2] SET  MULTI_USER 
GO
ALTER DATABASE [DATN_Dang2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DATN_Dang2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DATN_Dang2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DATN_Dang2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [DATN_Dang2]
GO
/****** Object:  Table [dbo].[authorities]    Script Date: 12/25/2022 9:54:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authorities](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[role_id] [varchar](255) NULL,
	[user_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 12/25/2022 9:54:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brands](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[createdate] [date] NULL,
	[logo] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 12/25/2022 9:54:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[createdate] [date] NULL,
	[name] [nvarchar](255) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[discounts]    Script Date: 12/25/2022 9:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discounts](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[createdate] [date] NULL,
	[number] [float] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[favorites]    Script Date: 12/25/2022 9:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[favorites](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime2](7) NULL,
	[product_id] [bigint] NULL,
	[user_id] [varchar](255) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[multiple_images]    Script Date: 12/25/2022 9:54:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[multiple_images](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[status] [bit] NULL,
	[product_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 12/25/2022 9:54:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[color] [varchar](255) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[order_id] [bigint] NULL,
	[product_id] [bigint] NULL,
	[total] [float] NULL,
	[image] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_tracks]    Script Date: 12/25/2022 9:54:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_tracks](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](255) NULL,
	[update_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 12/25/2022 9:54:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[address] [varchar](255) NULL,
	[create_date] [datetime2](7) NULL,
	[phone] [varchar](255) NULL,
	[user_id] [varchar](255) NULL,
	[district] [nvarchar](255) NULL,
	[province] [nvarchar](255) NULL,
	[status] [bit] NULL,
	[date] [date] NULL,
	[discount] [int] NULL,
	[ordertrack_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 12/25/2022 9:54:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[color] [nvarchar](255) NULL,
	[createdate] [date] NULL,
	[description] [nvarchar](255) NULL,
	[image] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[price] [float] NULL,
	[screen] [nvarchar](250) NULL,
	[gpu] [nvarchar](250) NULL,
	[battery] [nvarchar](250) NULL,
	[sim] [nvarchar](250) NULL,
	[hdh] [nvarchar](250) NULL,
	[quantity] [int] NULL,
	[size] [int] NULL,
	[status] [bit] NULL,
	[brand_id] [bigint] NULL,
	[category_id] [bigint] NULL,
	[discount_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 12/25/2022 9:54:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[comment] [varchar](255) NULL,
	[create_date] [datetime2](7) NULL,
	[rating] [float] NULL,
	[product_id] [bigint] NULL,
	[user_id] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 12/25/2022 9:54:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [varchar](255) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12/25/2022 9:54:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[username] [varchar](255) NOT NULL,
	[address] [varchar](255) NULL,
	[create_date] [datetime2](7) NULL,
	[email] [varchar](255) NULL,
	[fullname] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[photo] [varchar](255) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vouchers]    Script Date: 12/25/2022 9:54:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vouchers](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[discount_amount] [float] NULL,
	[end_date] [datetime2](7) NULL,
	[max_user] [bigint] NULL,
	[start_date] [datetime2](7) NULL,
	[status] [bit] NULL,
	[voucher_code] [varchar](255) NULL,
	[product_id] [bigint] NULL,
	[user_id] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[authorities] ON 

INSERT [dbo].[authorities] ([id], [role_id], [user_name]) VALUES (1, N'DIRE', N'Dang')
INSERT [dbo].[authorities] ([id], [role_id], [user_name]) VALUES (3, N'STAF', N'Hung')
INSERT [dbo].[authorities] ([id], [role_id], [user_name]) VALUES (4, N'STAF', N'Dang')
INSERT [dbo].[authorities] ([id], [role_id], [user_name]) VALUES (5, N'STAF', N'La')
INSERT [dbo].[authorities] ([id], [role_id], [user_name]) VALUES (33, N'CUST', N'h1')
SET IDENTITY_INSERT [dbo].[authorities] OFF
SET IDENTITY_INSERT [dbo].[brands] ON 

INSERT [dbo].[brands] ([id], [createdate], [logo], [name], [status]) VALUES (1, CAST(N'2022-09-25' AS Date), N'Apple-logo.PNG', N'Apple', 1)
INSERT [dbo].[brands] ([id], [createdate], [logo], [name], [status]) VALUES (2, CAST(N'2022-09-25' AS Date), N'samsung-logo.PNG', N'SamSung', 1)
INSERT [dbo].[brands] ([id], [createdate], [logo], [name], [status]) VALUES (3, CAST(N'2022-09-25' AS Date), N'logo-oppo.PNG', N'Oppo', 1)
INSERT [dbo].[brands] ([id], [createdate], [logo], [name], [status]) VALUES (4, CAST(N'2022-09-25' AS Date), N'Xiaomi_logo.png', N'Xiaomi', 1)
INSERT [dbo].[brands] ([id], [createdate], [logo], [name], [status]) VALUES (5, CAST(N'2022-09-25' AS Date), N'Realme-logo.png', N'Realmi', 1)
INSERT [dbo].[brands] ([id], [createdate], [logo], [name], [status]) VALUES (6, CAST(N'2022-09-25' AS Date), N'Vivo_logo.png', N'ViVo', 1)
SET IDENTITY_INSERT [dbo].[brands] OFF
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [createdate], [name], [status]) VALUES (1, CAST(N'2022-09-25' AS Date), N'Máy tính bảng', 1)
INSERT [dbo].[categories] ([id], [createdate], [name], [status]) VALUES (2, CAST(N'2022-09-25' AS Date), N'Ðiện Thoại', 1)
SET IDENTITY_INSERT [dbo].[categories] OFF
SET IDENTITY_INSERT [dbo].[discounts] ON 

INSERT [dbo].[discounts] ([id], [createdate], [number], [status]) VALUES (1, CAST(N'2022-04-23' AS Date), 0.1, 1)
INSERT [dbo].[discounts] ([id], [createdate], [number], [status]) VALUES (2, CAST(N'2022-04-23' AS Date), 0, 1)
SET IDENTITY_INSERT [dbo].[discounts] OFF
SET IDENTITY_INSERT [dbo].[favorites] ON 

INSERT [dbo].[favorites] ([id], [create_date], [product_id], [user_id], [status]) VALUES (1, CAST(N'2022-11-30T20:32:45.0630000' AS DateTime2), 13, N'Dang', 0)
INSERT [dbo].[favorites] ([id], [create_date], [product_id], [user_id], [status]) VALUES (2, CAST(N'2022-12-02T20:53:02.6340000' AS DateTime2), 14, N'Dang', 0)
INSERT [dbo].[favorites] ([id], [create_date], [product_id], [user_id], [status]) VALUES (3, CAST(N'2022-12-08T16:11:36.5450000' AS DateTime2), 21, N'Dang', 1)
INSERT [dbo].[favorites] ([id], [create_date], [product_id], [user_id], [status]) VALUES (4, CAST(N'2022-12-08T16:12:32.1840000' AS DateTime2), 23, N'Dang', 1)
INSERT [dbo].[favorites] ([id], [create_date], [product_id], [user_id], [status]) VALUES (5, CAST(N'2022-12-08T16:12:42.1380000' AS DateTime2), 24, N'Dang', 0)
INSERT [dbo].[favorites] ([id], [create_date], [product_id], [user_id], [status]) VALUES (6, CAST(N'2022-12-08T16:23:45.6280000' AS DateTime2), 57, N'Dang', 1)
INSERT [dbo].[favorites] ([id], [create_date], [product_id], [user_id], [status]) VALUES (7, CAST(N'2022-12-08T16:25:08.6610000' AS DateTime2), 7, N'Dang', 0)
INSERT [dbo].[favorites] ([id], [create_date], [product_id], [user_id], [status]) VALUES (8, CAST(N'2022-12-08T16:50:14.8120000' AS DateTime2), 1, N'Dang', 1)
INSERT [dbo].[favorites] ([id], [create_date], [product_id], [user_id], [status]) VALUES (9, CAST(N'2022-12-08T16:52:35.2480000' AS DateTime2), 2, N'Dang', 1)
INSERT [dbo].[favorites] ([id], [create_date], [product_id], [user_id], [status]) VALUES (10, CAST(N'2022-12-10T15:31:31.4890000' AS DateTime2), 13, N'La', 1)
INSERT [dbo].[favorites] ([id], [create_date], [product_id], [user_id], [status]) VALUES (11, CAST(N'2022-12-13T22:38:58.7800000' AS DateTime2), 57, N'La', 1)
INSERT [dbo].[favorites] ([id], [create_date], [product_id], [user_id], [status]) VALUES (12, CAST(N'2022-12-22T18:38:44.5050000' AS DateTime2), 50, N'Dang', 0)
SET IDENTITY_INSERT [dbo].[favorites] OFF
SET IDENTITY_INSERT [dbo].[multiple_images] ON 

INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (1, N'iphone-se-t.jpg', 1, 1)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (2, N'iphonese_mul1.jpg', 1, 1)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (3, N'iphonese_mul2.jpg', 1, 1)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (4, N'iphonese_mul3.jpg', 1, 1)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (5, N'iphonese_mul4.jpg', 1, 1)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (6, N'iphone-se.jpg', 1, 2)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (7, N'iphonese_mul1.jpg', 1, 2)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (8, N'iphonese_mul2.jpg', 1, 2)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (9, N'iphonese_mul3.jpg', 1, 2)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (10, N'iphonese_mul4.jpg', 1, 2)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (11, N'iPhone-11.jpg', 1, 3)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (12, N'iphone11_mul1.jpg', 1, 3)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (13, N'iphone11_mul2.jpg', 1, 3)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (14, N'iphone11_mul3.jpg', 1, 3)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (15, N'iphone11_mul4.jpg', 1, 3)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (16, N'iphone11_mul1.jpg', 1, 3)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (17, N'iPhone-11.jpg', 1, 4)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (18, N'iphone11_mul1.jpg', 1, 4)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (19, N'iphone11_mul2.jpg', 1, 4)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (20, N'iphone11_mul3.jpg', 1, 4)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (21, N'iphone11_mul4.jpg', 1, 4)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (22, N'iphone11_mul1.jpg', 1, 4)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (23, N'iPhone-12.jpg', 1, 5)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (24, N'Iphone12_mul1.jpg', 1, 5)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (25, N'Iphone12_mul2.jpg', 1, 5)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (26, N'Iphone12_mul3.jpg', 1, 5)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (27, N'Iphone12_mul4.jpg', 1, 5)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (28, N'Iphone12_mul5.jpg', 1, 5)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (29, N'iPhone-12.jpg', 1, 6)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (30, N'Iphone12_mul1.jpg', 1, 6)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (31, N'Iphone12_mul2.jpg', 1, 6)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (32, N'Iphone12_mul3.jpg', 1, 6)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (33, N'Iphone12_mul4.jpg', 1, 6)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (34, N'Iphone12_mul5.jpg', 1, 6)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (35, N'iphone-12-mini.jpg', 1, 7)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (36, N'Iphone12_mini_mul1.jpg', 1, 7)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (37, N'Iphone12_mini_mul2.jpg', 1, 7)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (38, N'Iphone12_mini_mul3.jpg', 1, 7)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (39, N'Iphone12_mini_mul4.jpg', 1, 7)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (40, N'Iphone12_mini_mul5.jpg', 1, 7)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (41, N'iphone-13.jpg', 1, 8)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (42, N'iphone13_mul1.jpg', 1, 8)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (43, N'iphone13_mul2.jpg', 1, 8)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (44, N'iphone13_mul3.jpg', 1, 8)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (45, N'iphone13_mul4.jpg', 1, 8)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (46, N'iphone13_mul5.jpg', 1, 8)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (47, N'iphone-13.jpg', 1, 9)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (48, N'iphone13_mul1.jpg', 1, 9)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (49, N'iphone13_mul2.jpg', 1, 9)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (50, N'iphone13_mul3.jpg', 1, 9)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (51, N'iphone13_mul4.jpg', 1, 9)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (52, N'iphone13_mul5.jpg', 1, 9)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (53, N'iphone-13-mini.jpg', 1, 10)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (54, N'iphone13mini_mul1.jpg', 1, 10)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (55, N'iphone13mini_mul2.jpg', 1, 10)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (56, N'iphone13mini_mul3.jpg', 1, 10)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (57, N'iphone13mini_mul4.jpg', 1, 10)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (58, N'iphone13mini_mul5.jpg', 1, 10)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (59, N'iphone-13-mini.jpg', 1, 11)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (60, N'iphone13mini_mul1.jpg', 1, 11)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (61, N'iphone13mini_mul2.jpg', 1, 11)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (62, N'iphone13mini_mul3.jpg', 1, 11)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (63, N'iphone13mini_mul4.jpg', 1, 11)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (64, N'iphone13mini_mul5.jpg', 1, 11)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (65, N'iPhone-13-Pro.jpg', 1, 12)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (66, N'iphone13pro_mul1.jpg', 1, 12)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (67, N'iphone13pro_mul2.jpg', 1, 12)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (68, N'iphone13pro_mul3.jpg', 1, 12)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (69, N'iphone13pro_mul4.jpg', 1, 12)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (70, N'iphone13pro_mul5.jpg', 1, 12)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (71, N'iphone13pro_mul1.jpg', 1, 13)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (72, N'iphone13pro_mul2.jpg', 1, 13)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (73, N'iphone13pro_mul3.jpg', 1, 13)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (74, N'iphone13pro_mul4.jpg', 1, 13)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (75, N'iphone13pro_mul5.jpg', 1, 13)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (76, N'iphone-13-pro-max.jpg', 1, 14)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (77, N'iphone13pm_mul1.jpg', 1, 14)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (78, N'iphone13pm_mul2.jpg', 1, 14)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (79, N'iphone13pm_mul3.jpg', 1, 14)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (80, N'iphone13pm_mul4.jpg', 1, 14)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (81, N'iphone13pm_mu5.jpg', 1, 14)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (82, N'iphone-13-pro-max.jpg', 1, 15)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (83, N'iphone13pm_mul1.jpg', 1, 15)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (84, N'iphone13pm_mul2.jpg', 1, 15)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (85, N'iphone13pm_mul3.jpg', 1, 15)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (86, N'iphone13pm_mul4.jpg', 1, 15)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (87, N'iphone13pm_mu5.jpg', 1, 15)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (88, N'iPhone-14.jpg', 1, 16)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (89, N'iphone14_mul11.jpg', 1, 16)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (90, N'iPhone-14.jpg', 1, 17)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (91, N'iphone14_mul11.jpg', 1, 17)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (92, N'iPhone-14-plus.jpg', 1, 18)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (93, N'iPhone-14-plus.jpg', 1, 19)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (94, N'iphone-14-pro.jpg', 1, 20)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (95, N'iphone-14-pro.jpg', 1, 21)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (96, N'iphone-14-pro-max.jpg', 1, 22)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (97, N'iphone-14-pro-max.jpg', 1, 23)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (98, N'Galaxy-S22-Black.jpg', 1, 24)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (99, N'ssS22black_mul1.jpg', 1, 24)
GO
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (100, N'ssS22black_mul2.jpg', 1, 24)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (101, N'ssS22black_mul3.jpg', 1, 24)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (102, N'ssS22black_mul4.jpg', 1, 24)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (103, N'Galaxy-S22-Black.jpg', 1, 25)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (104, N'ssS22black_mul1.jpg', 1, 25)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (105, N'ssS22black_mul2.jpg', 1, 25)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (106, N'ssS22black_mul3.jpg', 1, 25)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (107, N'ssS22black_mul4.jpg', 1, 25)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (108, N'Galaxy-S22-Plus-White.jpg', 1, 26)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (109, N'ssS22Plus_mul1.jpg', 1, 26)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (110, N'ssS22Plus_mul2.jpg', 1, 26)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (111, N'ssS22Plus_mul3.jpg', 1, 26)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (112, N'Galaxy-S22-Plus-White.jpg', 1, 27)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (113, N'ssS22Plus_mul1.jpg', 1, 27)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (114, N'ssS22Plus_mul2.jpg', 1, 27)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (115, N'ssS22Plus_mul3.jpg', 1, 27)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (116, N'Galaxy-S22-Ultra.jpg', 1, 28)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (117, N'ssS22Ultra_mul1.jpg', 1, 28)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (118, N'ssS22Ultra_mul2.jpg', 1, 28)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (119, N'ssS22Ultra_mul3.jpg', 1, 28)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (120, N'ssS22Ultra_mul4.jpg', 1, 28)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (121, N'Galaxy-S22-Ultra.jpg', 1, 29)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (122, N'ssS22Ultra_mul1.jpg', 1, 29)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (123, N'ssS22Ultra_mul2.jpg', 1, 29)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (124, N'ssS22Ultra_mul3.jpg', 1, 29)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (125, N'ssS22Ultra_mul4.jpg', 1, 29)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (126, N'Galaxy-S22-Ultra.jpg', 1, 30)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (127, N'ssS22Ultra_mul1.jpg', 1, 30)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (128, N'ssS22Ultra_mul2.jpg', 1, 30)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (129, N'ssS22Ultra_mul3.jpg', 1, 30)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (130, N'ssS22Ultra_mul4.jpg', 1, 30)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (131, N'samsung-galaxy-z-fold4.jpg', 1, 31)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (132, N'ssZFold4_mul1.jpg', 1, 31)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (133, N'ssZFold4_mul2.jpg', 1, 31)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (134, N'ssZFold4_mul3.jpg', 1, 31)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (135, N'ssZFold4_mul4.jpg', 1, 31)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (136, N'ssZFold4_mul5.jpg', 1, 31)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (137, N'samsung-galaxy-z-fold4.jpg', 1, 32)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (138, N'ssZFold4_mul1.jpg', 1, 32)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (139, N'ssZFold4_mul2.jpg', 1, 32)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (140, N'ssZFold4_mul3.jpg', 1, 32)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (141, N'ssZFold4_mul4.jpg', 1, 32)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (142, N'ssZFold4_mul5.jpg', 1, 32)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (143, N'OPPO-A76-den.jpg', 1, 33)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (144, N'a76_mul11.jpg', 1, 33)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (145, N'a76_mul2.jpg', 1, 33)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (146, N'a76_mul3.jpg', 1, 33)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (147, N'a76_mul4.jpg', 1, 33)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (148, N'a76_mul5.jpg', 1, 33)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (149, N'oppo-reno7-z-5g.jpg', 1, 34)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (150, N'reno7_mul1.jpg', 1, 34)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (151, N'reno7_mul2.jpg', 1, 34)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (152, N'reno7_mul3.jpg', 1, 34)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (153, N'reno7_mul4.jpg', 1, 34)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (154, N'reno7_mul5.jpg', 1, 34)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (155, N'oppo-reno6-5g.jpg', 1, 35)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (156, N'reno6_mul1.jpg', 1, 35)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (157, N'reno6_mul2.jpg', 1, 35)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (158, N'reno6_mul3.jpg', 1, 35)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (159, N'reno6_mul4.jpg', 1, 35)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (160, N'oppo-find-x5-pro.jpg', 1, 36)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (161, N'find_mul1.jpg', 1, 36)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (162, N'find_mul2.jpg', 1, 36)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (163, N'find_mul3.jpg', 1, 36)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (164, N'find_mul4.jpg', 1, 36)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (165, N'oppo-a96-den.jpg', 1, 37)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (166, N'a96_mul1.jpg', 1, 37)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (167, N'a96_mul2.jpg', 1, 37)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (168, N'a96_mul3.jpg', 1, 37)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (169, N'a96_mul4.jpg', 1, 37)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (170, N'a96_mul5.jpg', 1, 37)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (171, N'oppo-a95-4g.jpg', 1, 38)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (172, N'a95_mul1.jpg', 1, 38)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (173, N'a95_mul2.jpg', 1, 38)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (174, N'a95_mul3.jpg', 1, 38)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (175, N'a95_mul4.jpg', 1, 38)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (176, N'redmi-10-gray.jpg', 1, 39)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (177, N'redmi10g_mul1.jpg', 1, 39)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (178, N'redmi10g_mul2.jpg', 1, 39)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (179, N'redmi10g_mul3.jpg', 1, 39)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (180, N'xiaomi-redmi-note-11-pro.jpg', 1, 40)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (181, N'redminote11pro_mul1.jpg', 1, 40)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (182, N'redminote11pro_mul2.jpg', 1, 40)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (183, N'redminote11pro_mul3.jpg', 1, 40)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (184, N'redminote11pro_mul4.jpg', 1, 40)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (185, N'Xiaomi-redmi-note-11.jpg', 1, 41)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (186, N'redminote11_mul1.jpg', 1, 41)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (187, N'redminote11_mul2.jpg', 1, 41)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (188, N'redminote11_mul3.jpg', 1, 41)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (189, N'xiaomi-redmi-note-10s.jpg', 1, 42)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (190, N'redminote10s_mul1.jpg', 1, 42)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (191, N'redminote10s_mul2.jpg', 1, 42)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (192, N'redminote10s_mul3.jpg', 1, 42)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (193, N'redminote10s_mul4.jpg', 1, 42)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (194, N'xiaomi-redmi-note-10-pro.jpg', 1, 43)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (195, N'redminote10_mul1.jpg', 1, 43)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (196, N'redminote10_mul2.jpg', 1, 43)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (197, N'redminote10_mul3.jpg', 1, 43)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (198, N'redminote10_mul4.jpg', 1, 43)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (199, N'redminote10_mul5.jpg', 1, 43)
GO
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (200, N'xiaomi-redmi-10.jpg', 1, 44)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (201, N'redmi10_mul1.jpg', 1, 44)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (202, N'redmi10_mul2.jpg', 1, 44)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (203, N'redmi10_mul3.jpg', 1, 44)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (204, N'redmi10_mul4.jpg', 1, 44)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (205, N'realme-8-silver.jpg', 1, 45)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (206, N'realme8_mul1.jpg', 1, 45)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (207, N'realme8_mul2.jpg', 1, 45)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (208, N'realme8_mul3.jpg', 1, 45)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (209, N'realme8_mul4.jpg', 1, 45)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (210, N'realme-9-4g.jpg', 1, 46)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (211, N'realme9_mul1.jpg', 1, 46)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (212, N'realme9_mul2.jpg', 1, 46)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (213, N'realme9_mul3.jpg', 1, 46)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (214, N'realme9_mul4.jpg', 1, 46)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (215, N'realme-9i-den.jpg', 1, 47)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (216, N'realme9i_mul1.jpg', 1, 47)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (217, N'realme9i_mul2.jpg', 1, 47)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (218, N'realme9i_mul3.jpg', 1, 47)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (219, N'realme9i_mul4.jpg', 1, 47)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (220, N'realme9i_mul5.jpg', 1, 47)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (221, N'realme-9-pro.jpg', 1, 48)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (222, N'realme9pro_mul1.jpg', 1, 48)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (223, N'realme9pro_mul2.jpg', 1, 48)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (224, N'realme9pro_mul3.jpg', 1, 48)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (225, N'realme9pro_mul4.jpg', 1, 48)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (226, N'realme-c11.jpg', 1, 49)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (227, N'realmec11_mul1.jpg', 1, 49)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (228, N'realmec11_mul2.jpg', 1, 49)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (229, N'realmec11_mul3.jpg', 1, 49)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (230, N'realmec11_mul4.jpg', 1, 49)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (231, N'realmec11_mul5.jpg', 1, 49)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (232, N'realme-c21.jpg', 1, 50)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (233, N'realmec21_mul2.jpg', 1, 50)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (234, N'realmec21_mul3.jpg', 1, 50)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (235, N'realmec21_mul4.jpg', 1, 50)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (236, N'vivo-y15s.jpg', 1, 51)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (237, N'y15s_mul1.jpg', 1, 51)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (238, N'y15s_mul2.jpg', 1, 51)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (239, N'y15s_mul3.jpg', 1, 51)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (240, N'vivo-y16.jpg', 1, 52)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (241, N'y16_mul1.jpg', 1, 52)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (242, N'y16_mul2.jpg', 1, 52)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (243, N'y16_mul3.jpg', 1, 52)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (244, N'vivo-x80-xanh-.jpg', 1, 53)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (245, N'x80_mul1.jpg', 1, 53)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (246, N'x80_mul2.jpg', 1, 53)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (247, N'x80_mul3.jpg', 1, 53)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (248, N'Vivo-V23e.jpg', 1, 54)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (249, N'v23e_mul1.jpg', 1, 54)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (250, N'v23e_mul2.jpg', 1, 54)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (251, N'v23e_mul3.jpg', 1, 54)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (252, N'v23e_mul4.jpg', 1, 54)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (253, N'vivo-t1-5g-.jpg', 1, 55)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (254, N't15g_mul1.jpg', 1, 55)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (255, N't15g_mul2.jpg', 1, 55)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (256, N't15g_mul3.jpg', 1, 55)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (257, N't15g_mul4.jpg', 1, 55)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (258, N't15g_mul5.jpg', 1, 55)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (259, N'vivi-y01-den-.jpg', 1, 56)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (260, N'y1_mul1.jpg', 1, 56)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (261, N'y1_mul2.jpg', 1, 56)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (262, N'y1_mul3.jpg', 1, 56)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (263, N'y1_mul4.jpg', 1, 56)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (264, N'32f03e07.png', 1, 57)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (265, N'd99d05f8.png', 1, 57)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (266, N'4515fcf0.jpg', 1, 57)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (268, N'f7aef16a.jpg', NULL, 57)
INSERT [dbo].[multiple_images] ([id], [name], [status], [product_id]) VALUES (269, N'78609812.jpg', NULL, 57)
SET IDENTITY_INSERT [dbo].[multiple_images] OFF
SET IDENTITY_INSERT [dbo].[order_details] ON 

INSERT [dbo].[order_details] ([id], [color], [price], [quantity], [order_id], [product_id], [total], [image]) VALUES (30, N'Xám', 4490000, 1, 125, 41, 4490000, N'Xiaomi-redmi-note-11.jpeg')
INSERT [dbo].[order_details] ([id], [color], [price], [quantity], [order_id], [product_id], [total], [image]) VALUES (31, N'Tím Ðen', 30990000, 1, 126, 20, 27891000, N'iPhone-14-pro.jpg')
INSERT [dbo].[order_details] ([id], [color], [price], [quantity], [order_id], [product_id], [total], [image]) VALUES (32, N'Ðen', 15990000, 1, 127, 24, 15990000, N'Galaxy-S22-Black.jpg')
INSERT [dbo].[order_details] ([id], [color], [price], [quantity], [order_id], [product_id], [total], [image]) VALUES (33, N'Ðen', 27990000, 1, 128, 19, 25191000, N'iPhone-14-plus.jpg')
INSERT [dbo].[order_details] ([id], [color], [price], [quantity], [order_id], [product_id], [total], [image]) VALUES (34, N'Ðen', 4690000, 1, 129, 39, 4690000, N'redmi-10-gray.jpg')
INSERT [dbo].[order_details] ([id], [color], [price], [quantity], [order_id], [product_id], [total], [image]) VALUES (35, N'Xanh Ðen', 3290000, 1, 130, 51, 3290000, N'vivo-y15s.jpg')
INSERT [dbo].[order_details] ([id], [color], [price], [quantity], [order_id], [product_id], [total], [image]) VALUES (36, N'Tr?ng', 7190000, 1, 131, 40, 7190000, N'xiaomi-redmi-note-11-pro.jpg')
INSERT [dbo].[order_details] ([id], [color], [price], [quantity], [order_id], [product_id], [total], [image]) VALUES (37, N'Tím Ðen', 36990000, 1, 132, 23, 33291000, N'iphone-14-pro-max.jpg')
INSERT [dbo].[order_details] ([id], [color], [price], [quantity], [order_id], [product_id], [total], [image]) VALUES (38, N'Vàng Ð?ng', 7490000, 1, 133, 43, 7490000, N'xiaomi-redmi-note-10-pro.jpg')
INSERT [dbo].[order_details] ([id], [color], [price], [quantity], [order_id], [product_id], [total], [image]) VALUES (39, N'Xanh H?ng', 7990000, 1, 134, 54, 7990000, N'Vivo-V23e.jpg')
INSERT [dbo].[order_details] ([id], [color], [price], [quantity], [order_id], [product_id], [total], [image]) VALUES (40, N'Xanh Lam', 18990000, 1, 135, 53, 18990000, N'vivo-x80-xanh-.jpg')
INSERT [dbo].[order_details] ([id], [color], [price], [quantity], [order_id], [product_id], [total], [image]) VALUES (41, N'Tr?ng', 5990000, 1, 136, 42, 5990000, N'xiaomi-redmi-note-10s.jpeg')
SET IDENTITY_INSERT [dbo].[order_details] OFF
SET IDENTITY_INSERT [dbo].[order_tracks] ON 

INSERT [dbo].[order_tracks] ([id], [status], [update_date]) VALUES (1, N'Chờ xác nhận', NULL)
INSERT [dbo].[order_tracks] ([id], [status], [update_date]) VALUES (2, N'Đang giao hàng', NULL)
INSERT [dbo].[order_tracks] ([id], [status], [update_date]) VALUES (3, N'Đả giao hàng', NULL)
INSERT [dbo].[order_tracks] ([id], [status], [update_date]) VALUES (4, N'Đả hủy', NULL)
SET IDENTITY_INSERT [dbo].[order_tracks] OFF
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [address], [create_date], [phone], [user_id], [district], [province], [status], [date], [discount], [ordertrack_id]) VALUES (125, N'111', CAST(N'2022-12-11T22:32:58.2410000' AS DateTime2), N'0788906202', N'Dang', N'Quận Tân Bình', N'TP Hồ Chí Minh', 1, CAST(N'2022-12-11' AS Date), 0, 4)
INSERT [dbo].[orders] ([id], [address], [create_date], [phone], [user_id], [district], [province], [status], [date], [discount], [ordertrack_id]) VALUES (126, N'sad', CAST(N'2022-12-12T23:15:42.5160000' AS DateTime2), N'0788906202', N'Dang', N'Quận 3', N'TP Hồ Chí Minh', 1, CAST(N'2022-12-12' AS Date), 0, 4)
INSERT [dbo].[orders] ([id], [address], [create_date], [phone], [user_id], [district], [province], [status], [date], [discount], [ordertrack_id]) VALUES (127, N'sdsa', CAST(N'2022-12-12T23:16:43.0820000' AS DateTime2), N'0788906202', N'Dang', N'Quận 4', N'TP Hồ Chí Minh', 0, CAST(N'2022-12-12' AS Date), 0, 1)
INSERT [dbo].[orders] ([id], [address], [create_date], [phone], [user_id], [district], [province], [status], [date], [discount], [ordertrack_id]) VALUES (128, N'hn', CAST(N'2022-12-12T23:18:13.9170000' AS DateTime2), N'0788906202', N'Dang', N'Quận 4', N'TP Hồ Chí Minh', 1, CAST(N'2022-12-12' AS Date), 0, 1)
INSERT [dbo].[orders] ([id], [address], [create_date], [phone], [user_id], [district], [province], [status], [date], [discount], [ordertrack_id]) VALUES (129, N'asd', CAST(N'2022-12-12T23:19:38.6740000' AS DateTime2), N'0788906202', N'Dang', N'Quận 12', N'TP Hồ Chí Minh', 1, CAST(N'2022-12-12' AS Date), 0, 1)
INSERT [dbo].[orders] ([id], [address], [create_date], [phone], [user_id], [district], [province], [status], [date], [discount], [ordertrack_id]) VALUES (130, N'sa', CAST(N'2022-12-12T23:21:23.5660000' AS DateTime2), N'0788906202', N'Dang', NULL, NULL, 0, CAST(N'2022-12-12' AS Date), 0, 1)
INSERT [dbo].[orders] ([id], [address], [create_date], [phone], [user_id], [district], [province], [status], [date], [discount], [ordertrack_id]) VALUES (131, N'asdsa', CAST(N'2022-12-12T23:22:04.2230000' AS DateTime2), N'0788906202', N'Dang', NULL, NULL, 0, CAST(N'2022-12-12' AS Date), 0, 1)
INSERT [dbo].[orders] ([id], [address], [create_date], [phone], [user_id], [district], [province], [status], [date], [discount], [ordertrack_id]) VALUES (132, N'asd', CAST(N'2022-12-12T23:33:22.9370000' AS DateTime2), N'0788906202', N'Dang', NULL, NULL, 1, CAST(N'2022-12-12' AS Date), 0, 1)
INSERT [dbo].[orders] ([id], [address], [create_date], [phone], [user_id], [district], [province], [status], [date], [discount], [ordertrack_id]) VALUES (133, N'sdas', CAST(N'2022-12-12T23:35:23.8570000' AS DateTime2), N'0788906202', N'Dang', NULL, NULL, 1, CAST(N'2022-12-12' AS Date), 0, 1)
INSERT [dbo].[orders] ([id], [address], [create_date], [phone], [user_id], [district], [province], [status], [date], [discount], [ordertrack_id]) VALUES (134, N'asd', CAST(N'2022-12-12T23:37:14.6910000' AS DateTime2), N'0788906202', N'Dang', NULL, NULL, 0, CAST(N'2022-12-12' AS Date), 0, 1)
INSERT [dbo].[orders] ([id], [address], [create_date], [phone], [user_id], [district], [province], [status], [date], [discount], [ordertrack_id]) VALUES (135, N'dsf', CAST(N'2022-12-12T23:37:58.2040000' AS DateTime2), N'0788906202', N'Dang', NULL, NULL, 1, CAST(N'2022-12-12' AS Date), 0, 1)
INSERT [dbo].[orders] ([id], [address], [create_date], [phone], [user_id], [district], [province], [status], [date], [discount], [ordertrack_id]) VALUES (136, N'', CAST(N'2022-12-22T20:59:17.3940000' AS DateTime2), N'0788906202', N'Dang', N'Quận 12', N'TP Hồ Chí Minh', 1, CAST(N'2022-12-22' AS Date), 0, 1)
SET IDENTITY_INSERT [dbo].[orders] OFF
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (1, N'Trắng', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-se-t.jpg', N'Iphone SE 2020 128Gb', 9290000, N'IPS LCD,4.7 inch, Retina HD, 750 x 1334', N'Apple GPU 4 nhân', N'1821mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 4G', N'IOS 13', 0, 4, 1, 1, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (2, N'Ðen', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-se.jpeg', N'Iphone SE 2022 64Gb', 11790000, N'IPS LCD,4.7 inch, Retina HD, 750 x 1334', N'Apple GPU 4 nhân', N'2018 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 4G', N'IOS 15', 1, 4, 1, 1, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (3, N'Xanh Ngọc', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-11.jpg', N'Iphone 11 64Gb', 11490000, N'IPS LCD, 6.1  inch, Liquid Retina, 828 x 1792', N'Apple GPU 4 nhân', N'3110 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 4G', N'IOS 15', 1, 6, 1, 1, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (4, N'Xanh Ngọc', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-11.jpg', N'Iphone 11 128Gb', 13990000, N'IPS LCD, 6.1  inch, Liquid Retina, 828 x 1792', N'Apple GPU 4 nhân', N'3110 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 4G', N'IOS 15', 1, 6, 1, 1, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (5, N'Tím', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-12.jpg', N'Iphone 12 64Gb', 15990000, N'OLED, 6.1 inch, Super Retina XDR, 1170 x 2532', N'Apple GPU 4 nhân', N'2815 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 15', 1, 6, 1, 1, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (6, N'Tím', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-12.jpg', N'Iphone 12 128Gb', 17490000, N'OLED, 6.1 inch, Super Retina XDR, 1170 x 2532', N'Apple GPU 4 nhân', N'2815 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 15', 0, 6, 1, 1, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (7, N'Ðỏ', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-12-mini.jpeg', N'Iphone 12 Mini 256Gb', 15990000, N'OLED, 5.4 inch, Super Retina XDR,  1080 x 2340', N'Apple GPU 4 nhân', N'2227 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 15', 1, 5, 1, 1, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (8, N'Xanh Lá', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-13.jpg', N'Iphone 13 128Gb', 19990000, N'OLED, 6.1 inch, Super Retina XDR, 1170 x 2532', N'Apple GPU 4 nhân', N'3240 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 15', 1, 6, 1, 1, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (9, N'Xanh Lá', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-13.jpg', N'Iphone 13 256Gb', 21790000, N'OLED, 6.1 inch, Super Retina XDR, 1170 x 2532', N'Apple GPU 4 nhân', N'3240 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 15', 1, 6, 1, 1, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (10, N'Xanh Lá', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-13-mini.jpg', N'Iphone 13 Mini 128Gb', 18790000, N'OLED, 5.4 inch, Super Retina XDR,  1080 x 2340', N'Apple GPU 4 nhân', N'2438 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 15', 1, 5, 1, 1, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (11, N'Xanh Lá', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-13-mini.jpg', N'Iphone 13 Mini 256Gb', 20990000, N'OLED, 5.4 inch, Super Retina XDR,  1080 x 2340', N'Apple GPU 4 nhân', N'2438 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 15', 1, 5, 1, 1, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (12, N'Vàng Ðồng', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-13-pro.jpg', N'Iphone 13 Pro 128Gb', 24490000, N'OLED, 6.1 inch, Super Retina XDR, 1170 x 2532', N'Apple GPU 4 nhân', N'3095 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 15', 1, 6, 1, 1, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (13, N'Vàng Ðồng', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-13-pro.jpg', N'Iphone 13 Pro 256Gb', 27490000, N'OLED, 6.1 inch, Super Retina XDR, 1170 x 2532', N'Apple GPU 4 nhân', N'3095 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 15', 1, 6, 1, 1, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (14, N'Xanh Lá', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-13-pro-max.jpg', N'Iphone 13 Pro Max 128Gb', 27490000, N'OLED, 6.7 inch, Super Retina XDR, 1284 x 2778', N'Apple GPU 5 nhân', N'4352 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 15', -1, 6, 1, 1, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (15, N'Xanh Rêu', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-13-pro-max.jpg', N'Iphone 13 Pro Max 256Gb', 29490000, N'OLED, 6.7 inch, Super Retina XDR, 1284 x 2778', N'Apple GPU 5 nhân', N'4352 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 15', 1, 6, 1, 1, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (16, N'Tím', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-14.jpg', N'Iphone 14 128Gb', 24990000, N'OLED, 6.1 inch, Super Retina XDR, 1170 x 2532', N'Apple GPU 5 nhân', N'3279 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 16', 0, 6, 1, 1, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (17, N'Tím', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-14.jpg', N'Iphone 14 256Gb', 27990000, N'OLED, 6.1 inch, Super Retina XDR, 1170 x 2532', N'Apple GPU 5 nhân', N'3279 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 16', 0, 6, 1, 1, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (18, N'Ðen', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-14-plus.jpg', N'Iphone 14 Plus 128Gb', 27990000, N'OLED, 6.7 inch, Super Retina XDR, 1284 x 2778', N'Apple GPU 5 nhân', N'4325 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 16', 1, 6, 1, 1, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (19, N'Ðen', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-14-plus.jpg', N'Iphone 14 Plus 256Gb', 27990000, N'OLED, 6.7 inch, Super Retina XDR, 1284 x 2778', N'Apple GPU 5 nhân', N'4325 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 16', 0, 6, 1, 1, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (20, N'Tím Ðen', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-14-pro.jpg', N'Iphone 14 Pro 128Gb', 30990000, N'OLED, 6.1 inch, Super Retina XDR, 2556 x 1179 ', N'Apple GPU 5 nhân', N'3200 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 16', 0, 6, 1, 1, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (21, N'Tím Ðen', CAST(N'2022-02-10' AS Date), NULL, N'iPhone-14-pro.jpg', N'Iphone 14 Pro 256Gb', 34990000, N'OLED, 6.1 inch, Super Retina XDR, 2556 x 1179 ', N'Apple GPU 5 nhân', N'3200 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 16', 1, 6, 1, 1, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (22, N'Tím Ðen', CAST(N'2022-02-10' AS Date), NULL, N'iphone-14-pro-max.jpg', N'Iphone 14 Pro Max 128Gb', 33990000, N'OLED, 6.7 inch, Super Retina XDR, 2796 x 1290', N'Apple GPU 5 nhân', N'4323 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 16', 0, 6, 1, 1, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (23, N'Tím Ðen', CAST(N'2022-02-10' AS Date), NULL, N'iphone-14-pro-max.jpg', N'Iphone 14 Pro Max 256Gb', 36990000, N'OLED, 6.7 inch, Super Retina XDR, 2796 x 1290', N'Apple GPU 5 nhân', N'4323 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 16', 0, 6, 1, 1, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (24, N'Ðen', CAST(N'2022-02-10' AS Date), NULL, N'Galaxy-S22-Black.jpg', N'Samsung Galaxy S22 5G 8GB 128GB', 15990000, N'Dynamic AMOLED 2X , 6.1 inch ,Full HD+,1080 x 2340', N'Adreno 730', N'3700 mAh', N'2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G', N'Android 12', 0, 6, 1, 2, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (25, N'Ðen', CAST(N'2022-02-10' AS Date), NULL, N'Galaxy-S22-Black.jpg', N'Samsung Galaxy S22 5G 8GB 256GB', 16490000, N'Dynamic AMOLED 2X , 6.1 inch ,Full HD+,1080 x 2340', N'Adreno 730', N'3700 mAh', N'2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G', N'Android 12', 1, 6, 1, 2, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (26, N'Trắng', CAST(N'2022-02-10' AS Date), NULL, N'Galaxy-S22-Plus-White.jpg', N'Samsung Galaxy S22+ 5G 8BG 128GB', 19990000, N'Dynamic AMOLED 2X , 6.6 inch ,Full HD+,1080 x 2340', N'Adreno 730', N'4500 mAh', N'2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G', N'Android 12', 1, 6, 1, 2, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (27, N'Trắng', CAST(N'2022-02-10' AS Date), NULL, N'Galaxy-S22-Plus-White.jpg', N'Samsung Galaxy S22+ 5G 8BG 256GB', 20490000, N'Dynamic AMOLED 2X , 6.6 inch ,Full HD+,1080 x 2340', N'Adreno 730', N'4500 mAh', N'2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G', N'Android 12', 0, 6, 1, 2, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (28, N'Ðỏ', CAST(N'2022-02-10' AS Date), NULL, N'Galaxy-S22-Ultra.jpg', N'Samsung Galaxy S22 Ultra 5G 8GB 128GB', 25990000, N'Dynamic AMOLED 2X, 6.8 inch ,Quad HD+ (2K+), 1440 x 3088', N'Adreno 730', N'5000 mAh', N'2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G', N'Android 12', 1, 6, 1, 2, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (29, N'Ðỏ', CAST(N'2022-02-10' AS Date), NULL, N'Galaxy-S22-Ultra.jpg', N'Samsung Galaxy S22 Ultra 5G 12GB 256GB', 27990000, N'Dynamic AMOLED 2X, 6.8 inch ,Quad HD+ (2K+), 1440 x 3088', N'Adreno 730', N'5000 mAh', N'2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G', N'Android 12', 1, 6, 1, 2, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (30, N'Ðỏ', CAST(N'2022-02-10' AS Date), NULL, N'Galaxy-S22-Ultra.jpg', N'Samsung Galaxy S22 Ultra 5G 12GB 512GB', 30990000, N'Dynamic AMOLED 2X, 6.8 inch ,Quad HD+ (2K+), 1440 x 3088', N'Adreno 730', N'5000 mAh', N'2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G', N'Android 12', 1, 6, 1, 2, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (31, N'Xanh Dương', CAST(N'2022-02-10' AS Date), NULL, N'samsung-galaxy-z-fold4.jpg', N'Samsung Galaxy Z Flip4 8GB 128GB ', 20990000, N'Dynamic AMOLED 2X, Phụ: Super AMOLEDChính 6.7" & Phụ 1.9"Full HD+', N'Adreno 670', N'3700 mAh', N'1 Nano SIM & 1 eSIM', N'Android 12', 1, 6, 1, 2, 2, 1)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (32, N'Xanh Dương', CAST(N'2022-02-10' AS Date), NULL, N'samsung-galaxy-z-fold4.jpg', N'Samsung Galaxy Z Flip4 8GB 256GB ', 22990000, N'Dynamic AMOLED 2X, Phụ: Super AMOLEDChính 6.7" & Phụ 1.9"Full HD+', N'Adreno 670', N'3700 mAh', N'1 Nano SIM & 1 eSIM', N'Android 12', 1, 6, 1, 2, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (33, N'Vàng Ðồng', CAST(N'2022-02-10' AS Date), NULL, N'OPPO-A76-den.jpg', N'OPPO A76 6GB 128GB ', 5690000, N'IPS LCD6.56"HD+', N'Adreno 610', N'5000 mAh', N'2 Nano SIM', N'Android 11', 1, 6, 1, 3, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (34, N'Bạc', CAST(N'2022-02-10' AS Date), NULL, N'oppo-reno7-z-5g.jpg', N'OPPO Reno7 Z 8GB 128GB ', 9990000, N'AMOLED, 6.43 inch ,Full HD+, 1080 x 2400', N'Adreno 619', N'4500 mAh', N'2 Nano SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 5G', N'Android 11', 1, 6, 1, 3, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (35, N'Ðen', CAST(N'2022-02-10' AS Date), NULL, N'oppo-reno6-5g.jpg', N'OPPO Reno6 8GB 128GB ', 11290000, N'AMOLED, 6.43 inch ,Full HD+, 1080 x 2400', N'Mali-G68 MC4', N'4300 mAh', N'2 Nano SIM, Hỗ trợ 5G', N'Android 11', 1, 6, 1, 3, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (36, N'Ðen', CAST(N'2022-02-10' AS Date), NULL, N'oppo-find-x5-pro.jpg', N'OPPO Find X5 Pro 12GB 256GB ', 28990000, N'AMOLED, 6.7 inch ,Quad HD+ (2K+),1440 x 3216', N'Adreno 730', N'5000 mAh', N'2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G', N'Android 12', 1, 6, 1, 3, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (37, N'Ðen', CAST(N'2022-02-10' AS Date), NULL, N'oppo-a96-den.jpg', N'OPPO A96 8GB 128GB ', 6990000, N'IPS LCD, 6.59,inch ,Full HD+, 1080 x 2412', N'Adreno 610', N'5000 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Android 11', 1, 6, 1, 3, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (38, N'Ðen', CAST(N'2022-02-10' AS Date), NULL, N'oppo-a95-4g.jpg', N'OPPO A95 8GB 128GB ', 6490000, N'AMOLED, 6.43 inch ,Full HD+, 1080 x 2400', N'Adreno 610', N'5000 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Android 11', 0, 6, 1, 3, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (39, N'Ðen', CAST(N'2022-02-10' AS Date), NULL, N'redmi-10-gray.jpg', N'Xiaomi Redmi 10 6GB 128GB', 4690000, N'IPS LCD,6.53 inch, HD+, 720 x 1600', N'IMG PowerVR GE8320', N'5000 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Android 11', 0, 6, 1, 4, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (40, N'Trắng', CAST(N'2022-02-10' AS Date), NULL, N'xiaomi-redmi-note-11-pro.jpg', N'Xiaomi Redmi Note 11 Pro 8GB 128GB', 7190000, N'AMOLED, 6.67 inch ,Full HD+, 1080 x 2400', N'Adreno 619', N'5000 mAh', N'2 Nano SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'Android 11', 0, 6, 1, 4, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (41, N'Xám', CAST(N'2022-02-10' AS Date), NULL, N'Xiaomi-redmi-note-11.jpeg', N'Xiaomi Redmi Note 11 4GB 64GB', 4490000, N'AMOLED, 6.43 inch ,Full HD+, 1080 x 2400', N'Adreno 610', N'5000 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Android 11', 0, 6, 1, 4, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (42, N'Trắng', CAST(N'2022-02-10' AS Date), NULL, N'xiaomi-redmi-note-10s.jpeg', N'Xiaomi Redmi Note 10S 6GB 128GB', 5990000, N'AMOLED, 6.43 inch ,Full HD+, 1080 x 2400', N'Mali-G76 MC4', N'5000 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Android 11', 0, 6, 1, 4, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (43, N'Vàng Ðồng', CAST(N'2022-02-10' AS Date), NULL, N'xiaomi-redmi-note-10-pro.jpg', N'Xiaomi Redmi Note 10 Pro 8GB 128GB', 7490000, N'AMOLED, 6.67 inch ,Full HD+, 1080 x 2400', N'Adreno 618', N'5020 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Android 11', 0, 6, 1, 4, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (44, N'Xám', CAST(N'2022-02-10' AS Date), NULL, N'xiaomi-redmi-10.jpg', N'Xiaomi Redmi 10A 2GB 32GB', 2690000, N'IPS LCD,6.53 inch, HD+, 720 x 1600', N'IMG PowerVR GE8320', N'5000 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Android 11', 1, 6, 1, 4, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (45, N'Bạc', CAST(N'2022-02-10' AS Date), NULL, N'realme-8-silver.jpg', N'Realme 8 8GB 128GB', 7290000, N'Super AMOLED, 6.4 inch, Full HD+, 1080 x 2400', N'Mali-G76 MC4', N'5000 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Android 11', 1, 6, 1, 5, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (46, N'Vàng', CAST(N'2022-02-10' AS Date), NULL, N'realme-9-4g.jpg', N'Realme 9 8GB 128GB', 6690000, N'Super AMOLED, 6.4 inch, Full HD+, 1080 x 2400', N'Adreno 610', N'5000 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Android 12', 1, 6, 1, 5, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (47, N'Ðen', CAST(N'2022-02-10' AS Date), NULL, N'realme-9i-den.jpg', N'Realme 9i 4GB 64GB', 4990000, N'IPS LCD, 6.6 inch ,Full HD+, 1080 x 2412', N'Adreno 610', N'5000 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Android 11', 1, 6, 1, 5, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (48, N'Ðen', CAST(N'2022-02-10' AS Date), NULL, N'realme-9-pro.jpg', N'Realme 9 Pro 8GB 128GB', 7490000, N'IPS LCD, 6.6 inch ,Full HD+, 1080 x 2412', N'Adreno 619', N'5000 mAh', N'2 Nano SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 5G', N'Android 12', 1, 6, 1, 5, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (49, N'Xanh Dương', CAST(N'2022-02-10' AS Date), NULL, N'realme-c11.jpg', N'Realme C11 2GB 32GB', 2990000, N'IPS LCD,6.5 inch, HD+, 720 x 1600', N'IMG PowerVR GE8322', N'5000 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Android 11 (Go Edition)', 0, 6, 1, 5, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (50, N'Ðen', CAST(N'2022-02-10' AS Date), NULL, N'realme-c21.jpg', N'Realme C21-Y 3GB 32GB', 2690000, N'IPS LCD,6.5 inch, HD+, 720 x 1600', N'Mali-G52', N'5000 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Android 11', 1, 6, 1, 5, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (51, N'Xanh Ðen', CAST(N'2022-02-10' AS Date), NULL, N'vivo-y15s.jpg', N'Vivo Y15s 3GB 32GB', 3290000, N'IPS LCD,6.51 inch, HD+, 720 x 1600', N'IMG PowerVR GE8320', N'5000 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Android 11 (Go Edition)', 0, 6, 1, 6, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (52, N'Xanh', CAST(N'2022-02-10' AS Date), NULL, N'vivo-y16.jpg', N'Vivo Y16 4GB 128GB', 4490000, N'IPS LCD,6.51 inch, HD+, 720 x 1600', N'IMG PowerVR GE8320', N'5000 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Android 12', 1, 6, 1, 6, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (53, N'Xanh Lam', CAST(N'2022-02-10' AS Date), NULL, N'vivo-x80-xanh-.jpg', N'Vivo X80 12GB 256GB', 18990000, N'AMOLED, 6.78 inch ,Full HD+, 1080 x 2400', N'Mali-G710 MC10', N'4500 mAh', N'2 Nano SIM, Hỗ trợ 5G', N'Android 12', -1, 6, 1, 6, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (54, N'Xanh Hồng', CAST(N'2022-02-10' AS Date), NULL, N'Vivo-V23e.jpg', N'Vivo V23e 8GB 128GB', 7990000, N'AMOLED, 6.44 inch ,Full HD+, 1080 x 2400', N'Mali-G57 MC2', N'4050 mAh', N'2 Nano SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'Android 11', 0, 6, 1, 6, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (55, N'Ðen', CAST(N'2022-02-10' AS Date), NULL, N'vivo-t1-5g-.jpg', N'Vivo T1 5G 8GB 128GB', 8490000, N'AMOLED, 6.44 inch ,Full HD+, 1080 x 2404', N'Adreno 642L', N'4700 mAh', N'2 Nano SIM, Hỗ trợ 5G', N'Android 12', 1, 6, 1, 6, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (56, N'Ðen', CAST(N'2022-02-10' AS Date), NULL, N'vivo-y53s-den.jpg', N'Vivo Y01 2GB 32GB', 2790000, N'IPS LCD,6.51 inch, HD+, 720 x 1600', N'IMG PowerVR GE8320', N'5000 mAh', N'2 Nano SIM, Hỗ trợ 4G', N'Android 11 (Go Edition)', 1, 6, 1, 6, 2, 2)
INSERT [dbo].[products] ([id], [color], [createdate], [description], [image], [name], [price], [screen], [gpu], [battery], [sim], [hdh], [quantity], [size], [status], [brand_id], [category_id], [discount_id]) VALUES (57, N'đen', CAST(N'2022-11-30' AS Date), N'dang bán thử', N'32f03e07.png', N'iphone new', 20000000, N'IPS LCD,4.7 inch, Retina HD, 750 x 1334', N'Apple GPU 4 nhân', N'2018 mAh', N'1 Nano SIM & 1 eSIM, Hỗ trợ 5G', N'IOS 15', 2, 6, 1, 1, 2, 2)
SET IDENTITY_INSERT [dbo].[products] OFF
INSERT [dbo].[roles] ([id], [name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[roles] ([id], [name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[roles] ([id], [name]) VALUES (N'STAF', N'Staffs')
INSERT [dbo].[users] ([username], [address], [create_date], [email], [fullname], [password], [phone], [photo], [status]) VALUES (N'Dang', N'Trai Dat', NULL, N'haidang17522@gmail.com', N'Hai Dang', N'111', N'0788906200', N'eren.jpg', 1)
INSERT [dbo].[users] ([username], [address], [create_date], [email], [fullname], [password], [phone], [photo], [status]) VALUES (N'h1', N'123', CAST(N'2022-11-29T21:19:34.9920000' AS DateTime2), N'h1@gmail.com', N'h', N'111', N'1111111111', N'222016a1.png', 1)
INSERT [dbo].[users] ([username], [address], [create_date], [email], [fullname], [password], [phone], [photo], [status]) VALUES (N'Hung', N'Sao Moc', NULL, N'ph@gmail.com', N'Hung', N'111', N'0111', N'4c834ff9.jpg', 1)
INSERT [dbo].[users] ([username], [address], [create_date], [email], [fullname], [password], [phone], [photo], [status]) VALUES (N'La', N'Trai Dat', NULL, N'haidang261122@gmail.com', N'La', N'111', N'0122', N'asta.jpg', 1)
SET IDENTITY_INSERT [dbo].[vouchers] ON 

INSERT [dbo].[vouchers] ([id], [discount_amount], [end_date], [max_user], [start_date], [status], [voucher_code], [product_id], [user_id]) VALUES (1, 200000, CAST(N'2023-01-06T00:00:00.0000000' AS DateTime2), 2, CAST(N'2022-12-06T00:00:00.0000000' AS DateTime2), 1, N'8zs5wb', 2, N'Dang')
INSERT [dbo].[vouchers] ([id], [discount_amount], [end_date], [max_user], [start_date], [status], [voucher_code], [product_id], [user_id]) VALUES (2, 1000000, CAST(N'2022-12-30T00:00:00.0000000' AS DateTime2), 1, CAST(N'2022-12-09T00:00:00.0000000' AS DateTime2), 1, N'yda9m6', 1, N'Dang')
INSERT [dbo].[vouchers] ([id], [discount_amount], [end_date], [max_user], [start_date], [status], [voucher_code], [product_id], [user_id]) VALUES (3, 1000000, CAST(N'2022-12-13T00:00:00.0000000' AS DateTime2), 1, CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), 1, N'ugt3io', 6, N'Dang')
INSERT [dbo].[vouchers] ([id], [discount_amount], [end_date], [max_user], [start_date], [status], [voucher_code], [product_id], [user_id]) VALUES (4, 1000000, CAST(N'2022-12-27T00:00:00.0000000' AS DateTime2), 0, CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), 1, N'xcqbfa', 57, N'Dang')
SET IDENTITY_INSERT [dbo].[vouchers] OFF
ALTER TABLE [dbo].[orders] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[authorities]  WITH CHECK ADD  CONSTRAINT [FK1pec5q5koxb1acppey05jvmgj] FOREIGN KEY([user_name])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[authorities] CHECK CONSTRAINT [FK1pec5q5koxb1acppey05jvmgj]
GO
ALTER TABLE [dbo].[authorities]  WITH CHECK ADD  CONSTRAINT [FK7kj74d912rytfp5su91jfv0tg] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[authorities] CHECK CONSTRAINT [FK7kj74d912rytfp5su91jfv0tg]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [fk_o_t] FOREIGN KEY([ordertrack_id])
REFERENCES [dbo].[order_tracks] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [fk_o_t]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK32ql8ubntj5uh44ph9659tiih] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK32ql8ubntj5uh44ph9659tiih]
GO
USE [master]
GO
ALTER DATABASE [DATN_Dang2] SET  READ_WRITE 
GO
