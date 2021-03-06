USE [Videos]
GO
/****** Object:  Table [dbo].[MyCustomers]    Script Date: 2015/7/31 4:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyCustomers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Age] [int] NULL,
 CONSTRAINT [PK_MyCustomers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MyOrders]    Script Date: 2015/7/31 4:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyOrders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[Status] [nchar](10) NOT NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK_MyOrders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[MyCustomers] ON 

INSERT [dbo].[MyCustomers] ([Id], [Name], [Age]) VALUES (1, N'Zhang', 25)
INSERT [dbo].[MyCustomers] ([Id], [Name], [Age]) VALUES (2, N'Ace', 18)
INSERT [dbo].[MyCustomers] ([Id], [Name], [Age]) VALUES (3, N'Mario', 16)
SET IDENTITY_INSERT [dbo].[MyCustomers] OFF
SET IDENTITY_INSERT [dbo].[MyOrders] ON 

INSERT [dbo].[MyOrders] ([Id], [OrderDate], [Status], [CustomerId]) VALUES (23, CAST(0x96360B00 AS Date), N'c         ', 2)
INSERT [dbo].[MyOrders] ([Id], [OrderDate], [Status], [CustomerId]) VALUES (24, CAST(0x96360B00 AS Date), N'd         ', 3)
INSERT [dbo].[MyOrders] ([Id], [OrderDate], [Status], [CustomerId]) VALUES (25, CAST(0x96360B00 AS Date), N'e         ', 3)
INSERT [dbo].[MyOrders] ([Id], [OrderDate], [Status], [CustomerId]) VALUES (26, CAST(0x96360B00 AS Date), N'r         ', 1)
INSERT [dbo].[MyOrders] ([Id], [OrderDate], [Status], [CustomerId]) VALUES (28, CAST(0x96360B00 AS Date), N'w         ', 3)
SET IDENTITY_INSERT [dbo].[MyOrders] OFF
ALTER TABLE [dbo].[MyOrders]  WITH CHECK ADD  CONSTRAINT [FK_MyOrders_MyCustomers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[MyCustomers] ([Id])
GO
ALTER TABLE [dbo].[MyOrders] CHECK CONSTRAINT [FK_MyOrders_MyCustomers]
GO
