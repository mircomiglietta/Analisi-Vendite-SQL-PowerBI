USE [SalesAnalysis]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 12/01/2025 19:48:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/01/2025 19:48:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 12/01/2025 19:48:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[SaleID] [int] IDENTITY(1,1) NOT NULL,
	[SaleDate] [date] NOT NULL,
	[ProductID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[TotalAmount] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [Email]) VALUES (1, N'Alice Rossi', N'alice.rossi@example.com')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [Email]) VALUES (2, N'Marco Bianchi', N'marco.bianchi@example.com')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [Email]) VALUES (3, N'Giulia Verdi', N'giulia.verdi@example.com')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [Email]) VALUES (4, N'Luca Neri', N'luca.neri@example.com')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [Email]) VALUES (5, N'Sara Blu', N'sara.blu@example.com')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [Email]) VALUES (6, N'Andrea Gialli', N'andrea.gialli@example.com')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [Email]) VALUES (7, N'Francesca Viola', N'francesca.viola@example.com')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [Price]) VALUES (1, N'Laptop', CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price]) VALUES (2, N'Smartphone', CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price]) VALUES (3, N'Headphones', CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price]) VALUES (4, N'Keyboard', CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price]) VALUES (5, N'Mouse', CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price]) VALUES (6, N'Monitor', CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price]) VALUES (7, N'Tablet', CAST(300.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales] ON 

INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (1, CAST(N'2024-01-01' AS Date), 1, 1, 1, CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (2, CAST(N'2024-01-02' AS Date), 2, 2, 2, CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (3, CAST(N'2024-01-03' AS Date), 3, 3, 3, CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (4, CAST(N'2024-01-04' AS Date), 4, 4, 1, CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (5, CAST(N'2024-01-05' AS Date), 5, 5, 2, CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (6, CAST(N'2024-01-06' AS Date), 1, 3, 1, CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (7, CAST(N'2024-01-07' AS Date), 2, 4, 1, CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (8, CAST(N'2024-02-01' AS Date), 6, 6, 1, CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (9, CAST(N'2024-02-02' AS Date), 7, 7, 1, CAST(300.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (10, CAST(N'2024-02-05' AS Date), 2, 1, 3, CAST(1500.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (11, CAST(N'2024-02-10' AS Date), 5, 2, 5, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (12, CAST(N'2024-02-12' AS Date), 3, 5, 2, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (13, CAST(N'2024-02-15' AS Date), 4, 4, 2, CAST(60.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (14, CAST(N'2024-03-01' AS Date), 1, 6, 2, CAST(1600.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (15, CAST(N'2024-03-05' AS Date), 6, 7, 1, CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (16, CAST(N'2024-03-07' AS Date), 7, 3, 1, CAST(300.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (17, CAST(N'2024-03-10' AS Date), 2, 4, 4, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (18, CAST(N'2024-03-15' AS Date), 3, 1, 5, CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[Sales] ([SaleID], [SaleDate], [ProductID], [CustomerID], [Quantity], [TotalAmount]) VALUES (19, CAST(N'2024-03-20' AS Date), 5, 2, 10, CAST(200.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Sales] OFF
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
