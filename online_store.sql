USE [online_store]
GO
/****** Object:  Table [dbo].[activity_history]    Script Date: 3/9/2017 3:55:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activity_history](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[time_stamp] [datetime] NULL,
	[activity] [varchar](255) NULL,
	[notes] [varchar](1000) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cart_products]    Script Date: 3/9/2017 3:55:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[quantity] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[categories]    Script Date: 3/9/2017 3:55:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pictures]    Script Date: 3/9/2017 3:55:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pictures](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[picture_key] [varchar](255) NULL,
	[alt_text] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pictures_products]    Script Date: 3/9/2017 3:55:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pictures_products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[picture_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[products]    Script Date: 3/9/2017 3:55:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[count] [int] NULL,
	[rating] [int] NULL,
	[price] [decimal](9, 2) NULL,
	[description] [varchar](4000) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[products_categories]    Script Date: 3/9/2017 3:55:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[category_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[profiles]    Script Date: 3/9/2017 3:55:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[street] [varchar](255) NULL,
	[city] [varchar](255) NULL,
	[state] [varchar](255) NULL,
	[zip_code] [int] NULL,
	[phone_number] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[reviews]    Script Date: 3/9/2017 3:55:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[rating] [int] NULL,
	[review_text] [varchar](5000) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[reviews_pictures]    Script Date: 3/9/2017 3:55:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews_pictures](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[picture_id] [int] NULL,
	[review_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 3/9/2017 3:55:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) NULL,
	[last_name] [varchar](255) NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[admin_privileges] [bit] NULL
) ON [PRIMARY]

GO
