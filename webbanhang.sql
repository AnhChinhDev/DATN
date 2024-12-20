USE [webbanhang]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 10/28/2024 9:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](500) NULL,
	[Password] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adv]    Script Date: 10/28/2024 9:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adv](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Photo] [nvarchar](500) NULL,
	[Position] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 10/28/2024 9:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[Name] [nvarchar](500) NULL,
	[DisplayHomePage] [int] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriesProducts]    Script Date: 10/28/2024 9:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriesProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK_CategoriesProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 10/28/2024 9:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 10/28/2024 9:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [ntext] NULL,
	[Content] [ntext] NULL,
	[Hot] [int] NULL,
	[Photo] [nvarchar](500) NULL,
 CONSTRAINT [PK_News_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/28/2024 9:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[Create] [date] NULL,
	[Price] [float] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersDetail]    Script Date: 10/28/2024 9:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_orders_detail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/28/2024 9:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](4000) NULL,
	[Description] [nvarchar](4000) NULL,
	[Content] [ntext] NULL,
	[Photo] [nvarchar](4000) NULL,
	[Hot] [int] NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL,
 CONSTRAINT [PK_news] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 10/28/2024 9:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[Star] [int] NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slides]    Script Date: 10/28/2024 9:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slides](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Photo] [nvarchar](500) NULL,
	[Title] [nvarchar](500) NULL,
	[SubTitle] [nvarchar](500) NULL,
	[Info] [nvarchar](500) NULL,
	[Link] [nvarchar](500) NULL,
 CONSTRAINT [PK_Slides] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 10/28/2024 9:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagsProducts]    Script Date: 10/28/2024 9:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagsProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TagId] [int] NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK_TagsProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Id], [Email], [Password], [Name]) VALUES (6, N'admin6@gmail.com', N'$2a$11$cCSu4uwyEmRAizTuHsbAqehRuhuXXOQ/3/ewvF7FKTbW4kRfny/i6', N'helloworld')
INSERT [dbo].[Admin] ([Id], [Email], [Password], [Name]) VALUES (12, N'demoadmin@gmail.com', N'$2a$11$VUBd7EmWr.u2rWp32hKqxOS0dIxIbNt2W8XdB//7kcg0VJINbyvK.', N'demoadmin')
INSERT [dbo].[Admin] ([Id], [Email], [Password], [Name]) VALUES (13, N'admin@gmail.com', N'$2a$11$AifLf6Xl6XcMmAJzW7A8Te7qt7dhf.NIAlBlgqukGKC.dObNku1K6', N'admin')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Adv] ON 

INSERT [dbo].[Adv] ([Id], [Name], [Photo], [Position]) VALUES (2, N'Quảng cáo - trang sản phẩm (dưới Popular products)', N'133601293328048851_banner7.jpg', 5)
INSERT [dbo].[Adv] ([Id], [Name], [Photo], [Position]) VALUES (3, N'Quảng cáo - trang sản phẩm (dưới TAGS)', N'133601293261505486_banner9.jpg', 4)
INSERT [dbo].[Adv] ([Id], [Name], [Photo], [Position]) VALUES (4, N'Trang sản phẩm - banner', N'133601293165041918_banner7.jpg', 3)
INSERT [dbo].[Adv] ([Id], [Name], [Photo], [Position]) VALUES (6, N'Trang chủ - Ảnh Quảng cáo dưới slide show', N'133601293068391428_banner6.jpg', 2)
INSERT [dbo].[Adv] ([Id], [Name], [Photo], [Position]) VALUES (7, N'Trang chủ - Quảng cáo dưới slide show', N'133601292994667842_banner5.jpg', 1)
SET IDENTITY_INSERT [dbo].[Adv] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (3, 0, N'Men Fashion', 0)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (5, 0, N'Women Fashion', 1)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (10, 5, N'Women''s Shirt', 1)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (13, 4, N'Batteries 2', 0)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (14, 4, N'Headsets 2', 0)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (15, 4, N'Screen 2', 0)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (16, 3, N'Men''s Shoes', 1)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (17, 3, N'Men''s Accessories', 0)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (18, 3, N'Men''s Sweatshirt & Hoodies', 1)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (24, 5, N'Women''s Swearshirts & Hoodies', 1)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (25, 3, N'Men''s Shirt', 0)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (26, 5, N'Women''s Boots', 0)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (27, 5, N'Women''s Set Clothes', 0)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoriesProducts] ON 

INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (140, 20, 16)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (141, 19, 16)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (142, 9, 16)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (143, 5, 16)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (144, 12, 16)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (145, 4, 16)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (146, 15, 16)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (147, 20, 14)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (148, 19, 14)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (149, 9, 14)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (150, 5, 14)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (151, 12, 14)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (152, 4, 14)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (153, 15, 14)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (218, 19, 4)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (219, 9, 4)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (220, 5, 4)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (221, 12, 4)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (222, 11, 4)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (223, 10, 4)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (236, 20, 17)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (237, 19, 17)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (242, 24, 18)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (243, 17, 12)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (247, 24, 10)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (248, 5, 10)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (249, 10, 10)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (250, 5, 9)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (251, 20, 8)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (252, 3, 8)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (253, 24, 7)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (254, 5, 7)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (255, 10, 7)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (256, 5, 6)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (257, 24, 5)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (258, 23, 5)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (259, 5, 5)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (261, 24, 1)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (264, 3, 20)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (271, 3, 27)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (272, 3, 28)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (273, 27, 25)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (275, 27, 24)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (276, 5, 23)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (277, 27, 22)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (278, 27, 21)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (279, 5, 19)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (280, 24, 19)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (282, 25, 26)
SET IDENTITY_INSERT [dbo].[CategoriesProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [Name], [Email], [Address], [Phone], [Password]) VALUES (6, N'Nguyễn VănA', N'nva@gmail.com', N'Hà Nội', N'123456789', N'$2b$10$CbCd.UWBy0eV1NDtTphozuu2fRqnwj8UiRlIGFRo2mN6hJP0ycbGG')
INSERT [dbo].[Customers] ([Id], [Name], [Email], [Address], [Phone], [Password]) VALUES (7, N'Nguyễn Văn B', N'nvb@gmail.com', N'Hà Nội', N'123456789', N'$2b$10$JBH9AVugb.qcr64YqaNSieOBby80U6ZvFzAkq8SSUh4wAYeRp69iO')
INSERT [dbo].[Customers] ([Id], [Name], [Email], [Address], [Phone], [Password]) VALUES (8, N'test', N'test1@gmail.com', N'12312312', N'123', N'$2a$11$oJeJkjkjGb/aHnhGFQrghOKoWaxF8Ay/SgizG4OXnOx3y/R3Gvebu')
INSERT [dbo].[Customers] ([Id], [Name], [Email], [Address], [Phone], [Password]) VALUES (9, N'Thach Ngu Lon', N'a123@gmail.com', N'Hai Phong', N'1122121', N'$2a$11$Hc4trIr2mKQFO.3/ABAajOYONPjs.qMDVG9ObXoP07IlmLzHJ9.7K')
INSERT [dbo].[Customers] ([Id], [Name], [Email], [Address], [Phone], [Password]) VALUES (10, N'Nguyen Ngoc Thach', N'thachoc@gmail.com', N'Hai Phong ', N'11111', N'$2a$11$VwbaQf6HXUp6TELB1S.cqO42zVWubHeA6S3LqNX/qtLPHwZpKSiOq')
INSERT [dbo].[Customers] ([Id], [Name], [Email], [Address], [Phone], [Password]) VALUES (11, N'Nguyễn Văn Việt 1', N'vietnv2212@gmail.com', N'Thôn Dịch Đồng  ', N'0326902754', N'$2a$11$/My5dQj97S22LkMwS.h6A..aCB2imX7BQG4bjoECvcC1dWvaiLEUa')
INSERT [dbo].[Customers] ([Id], [Name], [Email], [Address], [Phone], [Password]) VALUES (12, N'vv', N'ngd1@gmail.com', N'asasa', N'01021212', N'$2a$11$h4fzuAkUfJ7HIFa9o0vFGeVOSwttTIPkCf7NasRblSBxq/MZS1uOS')
INSERT [dbo].[Customers] ([Id], [Name], [Email], [Address], [Phone], [Password]) VALUES (13, N'viet', N'test22@gmail.com', N'1212', N'1212', N'$2a$11$oPeF/HkvdIxl53F8fOurk.H4QkQUMlFX6yMDz.u42EBHcGyPSfi0O')
INSERT [dbo].[Customers] ([Id], [Name], [Email], [Address], [Phone], [Password]) VALUES (14, N'admin01', N'checkaccount@gmail.com', N'Ha Noi', N'122121212', N'$2a$11$JwEjigDfc1V5YBsUBeZvbeo1Q3QOrb88T7aJefJxo.t0gnjmTSZTW')
INSERT [dbo].[Customers] ([Id], [Name], [Email], [Address], [Phone], [Password]) VALUES (15, N'Nguyễn Văn Việt', N'admin6@gmail.com', N'Thôn Dịch Đồng', N'0326902754', N'$2a$11$/E0EraK9eKxO4x2m034DB.3WH7Bn7ItDo.nvchOVd33fd2D2oDarS')
INSERT [dbo].[Customers] ([Id], [Name], [Email], [Address], [Phone], [Password]) VALUES (16, N'admin10', N'demo1@gmail.com', N'Số 3 ngõ 5 Đường 7 Xã 9 Huyện 11 Tỉnh Hà Nội', N'999999999', N'$2a$11$Dgpn73/XrCJ9zJmzuSNoIOeAZeIPIqpQsoSScf8yMNu4.puAFrHyC')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([Id], [Name], [Description], [Content], [Hot], [Photo]) VALUES (2, N'News 4', N'News 4', N'News 4', 1, N'133710662986496397_il_794xN.6000854882_evs7.png')
INSERT [dbo].[News] ([Id], [Name], [Description], [Content], [Hot], [Photo]) VALUES (3, N'News 3', N'News 3', N'News 3', 1, N'133710662814956181_il_794xN.5805692460_4xwy.png')
INSERT [dbo].[News] ([Id], [Name], [Description], [Content], [Hot], [Photo]) VALUES (6, N'News 2', N'News 2', N'News 2', 1, N'133710662651083295_il_794xN.5567736175_lfow.png')
INSERT [dbo].[News] ([Id], [Name], [Description], [Content], [Hot], [Photo]) VALUES (7, N'News 1', N'News 1', N'News 1', 1, N'133710662477258292_il_300x300.6245251916_l32q.png')
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [CustomerId], [Create], [Price], [Status]) VALUES (28, 16, CAST(N'2024-09-22' AS Date), 3840000, 1)
INSERT [dbo].[Orders] ([Id], [CustomerId], [Create], [Price], [Status]) VALUES (29, 16, CAST(N'2024-09-22' AS Date), 2565000, 0)
INSERT [dbo].[Orders] ([Id], [CustomerId], [Create], [Price], [Status]) VALUES (30, 16, CAST(N'2024-09-22' AS Date), 1440000, 0)
INSERT [dbo].[Orders] ([Id], [CustomerId], [Create], [Price], [Status]) VALUES (31, 16, CAST(N'2024-09-22' AS Date), 960000, 1)
INSERT [dbo].[Orders] ([Id], [CustomerId], [Create], [Price], [Status]) VALUES (32, 16, CAST(N'2024-09-22' AS Date), 5130000, 2)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[OrdersDetail] ON 

INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (15, 10, 17, 1, 15000000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (16, 11, 10, 1, 22500000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (17, 12, 10, 1, 22500000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (18, 13, 17, 1, 15000000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (19, 13, 16, 1, 30000000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (20, 14, 16, 1, 30000000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (21, 15, 9, 1, 20800000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (22, 16, 10, 1, 22500000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (23, 17, 10, 1, 22500000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (24, 18, 10, 2, 22500000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (25, 19, 16, 1, 30000000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (26, 19, 10, 1, 22500000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (27, 20, 17, 1, 15000000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (28, 21, 12, 3, 30000000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (29, 22, 10, 1, 22500000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (30, 23, 19, 1, 360000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (31, 24, 22, 1, 855000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (32, 25, 23, 2, 960000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (33, 26, 22, 1, 855000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (34, 27, 24, 2, 990000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (35, 28, 23, 4, 960000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (36, 29, 22, 3, 855000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (37, 30, 19, 4, 360000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (38, 31, 23, 1, 960000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (39, 32, 22, 6, 855000)
SET IDENTITY_INSERT [dbo].[OrdersDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (19, N'Colorful Hoodies Hot 2024', N'<p>Colorful Hoodies Hot 2024</p>', N'<p>Colorful Hoodies Hot 2024</p>', N'133708878636998101_133571047958957215_product1.jpg', 1, 450000, 20)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (20, N'Man Coat Jeans with Feathers', N'<p>Man Coat Jeans with Feathers</p>', N'<p>Man Coat Jeans with Feathers</p>', N'133708880042118712_133571048112066035_product2.jpg', 1, 990000, 10)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (21, N'Set Office Clothes for her', N'<p>Set Office Clothes for her&nbsp;</p>', N'<p>Set Office Clothes for her&nbsp;</p>', N'133708880708419690_133571048223875071_product3.jpg', 1, 899000, 10)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (22, N'Set Office Clothes 2024', N'<p>Set Office Clothes 2024</p>', N'<p>Set Office Clothes 2024</p>', N'133708881363221109_133571048315078889_product4.jpg', 1, 950000, 10)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (23, N'Women Winter Coat', N'<p>Women Winter Coat&nbsp;</p>', N'<p>Women Winter Coat&nbsp;</p>', N'133708881867448522_133571048467640916_product5.jpg', 1, 1200000, 20)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (24, N'Set Office Leather Hot 2024', N'<p>Set Office Leather Hot 2024</p>', N'<p>Set Office Leather Hot 2024</p>', N'133708882327731390_133571048610328215_product6.jpg', 1, 1100000, 10)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (25, N'Women Set Office Clothes SP01', N'<p>Women Set Office Clothes SP01</p>', N'<p>Women Set Office Clothes SP01</p>', N'133708883025435590_133571048998982722_product7.jpg', 1, 600000, 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (26, N'Man Gym Shirt', N'<p>Man Gym Shirt 2</p>', N'<p>Man Gym Shirt</p>', N'133708883457598080_133571049140245115_product8.jpg', 1, 350000, 10)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Rating] ON 

INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (15, 17, 5)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (16, 17, 5)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (17, 18, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (18, 18, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (19, 18, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (20, 18, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (21, 18, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (22, 18, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (23, 18, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (24, 18, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (25, 18, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (26, 18, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (27, 18, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (28, 17, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (29, 18, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (30, 18, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (31, 18, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (32, 18, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (33, 14, 0)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (34, 18, 4)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (35, 17, 5)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (36, 16, 2)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (37, 18, 4)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (38, 19, 4)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (39, 26, 2)
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
SET IDENTITY_INSERT [dbo].[Slides] ON 

INSERT [dbo].[Slides] ([Id], [Name], [Photo], [Title], [SubTitle], [Info], [Link]) VALUES (1, N'Styles with Slices', N'133573800464446843_slider_3.png', N'Kid Smart Watches', N'Compra todos tus productos Smart por internet.', N'Info slide 1', N'http://dantri.com.vn')
INSERT [dbo].[Slides] ([Id], [Name], [Photo], [Title], [SubTitle], [Info], [Link]) VALUES (2, N'How to make dressing tips', N'133573800371541497_slider_2.png', N'How to make dressing tips', N'How to make dressing tips', N'Info slide 2', N'http://dantri.com.vn')
INSERT [dbo].[Slides] ([Id], [Name], [Photo], [Title], [SubTitle], [Info], [Link]) VALUES (3, N'Hot Trend Winter Becoming', N'133573800280841994_slide_1.png', N'Hot Trend Winter Becoming', N'Hot Trend Winter Becoming', N'Hot Trend Winter Becoming', N'https://dantri.com.vn/')
SET IDENTITY_INSERT [dbo].[Slides] OFF
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([Id], [Name]) VALUES (4, N'Hot Fashion')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (5, N'Women Fashion')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (6, N'Men Fashion')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (7, N'Jeans')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (8, N'Glasses')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (9, N'Watches')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (10, N'Shoes')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (11, N'Boots')
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
SET IDENTITY_INSERT [dbo].[TagsProducts] ON 

INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (82, 4, 16)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (83, 3, 16)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (84, 2, 16)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (85, 1, 16)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (86, 6, 14)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (87, 5, 14)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (88, 4, 14)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (89, 3, 14)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (90, 2, 14)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (91, 1, 14)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (124, 4, 4)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (125, 3, 4)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (126, 2, 4)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (127, 1, 4)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (128, 6, 17)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (129, 5, 17)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (134, 7, 18)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (135, 6, 18)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (136, 4, 18)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (137, 11, 12)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (138, 10, 12)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (139, 8, 12)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (140, 5, 12)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (141, 4, 12)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (142, 2, 12)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (146, 5, 10)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (147, 4, 10)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (148, 2, 10)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (149, 11, 9)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (150, 10, 9)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (151, 5, 9)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (152, 4, 9)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (153, 6, 8)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (154, 3, 8)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (155, 4, 7)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (156, 2, 7)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (157, 11, 6)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (158, 10, 6)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (159, 5, 6)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (160, 4, 6)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (161, 6, 5)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (162, 5, 5)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (163, 4, 5)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (164, 3, 5)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (165, 2, 5)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (166, 5, 1)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (169, 6, 20)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (179, 7, 27)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (180, 7, 28)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (181, 6, 28)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (182, 4, 28)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (183, 5, 25)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (185, 5, 24)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (186, 4, 24)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (187, 5, 23)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (188, 4, 23)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (189, 5, 22)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (190, 4, 22)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (191, 5, 21)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (192, 5, 19)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (193, 4, 19)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (197, 8, 26)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (198, 7, 26)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (199, 6, 26)
SET IDENTITY_INSERT [dbo].[TagsProducts] OFF
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_DisplayHomePage]  DEFAULT ((0)) FOR [DisplayHomePage]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_news_hot]  DEFAULT ((0)) FOR [Hot]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Discount_1]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
