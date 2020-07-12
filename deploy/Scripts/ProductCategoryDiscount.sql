USE [ProductManagement]
GO

/****** Object:  Table [dbo].[ProductCategoryDiscount]    Script Date: 7/12/2020 9:55:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductCategoryDiscount](
	[ID] [int] NOT NULL,
	[DiscountValue] [int] NULL,
	[DiscountUnit] [int] NULL,
	[ProductCategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductCategoryDiscount]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategoryDiscount_ProductCategory] FOREIGN KEY([ProductCategoryId])
REFERENCES [dbo].[ProductCategory] ([ID])
GO

ALTER TABLE [dbo].[ProductCategoryDiscount] CHECK CONSTRAINT [FK_ProductCategoryDiscount_ProductCategory]
GO


