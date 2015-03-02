USE [Sklad]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 30.12.2013 14:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Code] [nchar](10) NULL,
	[ProductManufactureId] [nvarchar](200) NULL,
	[CategoryId] [int] NULL,
	[CountryId] [nchar](10) NULL,
	[UnitId] [nchar](10) NULL,
	[Weight] [decimal](7, 3) NULL,
	[Size] [decimal](7, 3) NULL,
	[VAT] [int] NULL,
	[SupplierId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[MinimumPrice] [decimal](18, 2) NULL,
	[PurchasePrice] [decimal](18, 2) NULL,
	[SalePrice] [decimal](18, 2) NULL,
	[PreSalePrice] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductSeries]    Script Date: 30.12.2013 14:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSeries](
	[ProductSeriesId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Series] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[SeriesCode] [nvarchar](200) NULL,
 CONSTRAINT [PK_ProductSeries] PRIMARY KEY CLUSTERED 
(
	[ProductSeriesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
