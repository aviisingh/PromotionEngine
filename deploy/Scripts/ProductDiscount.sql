USE [ProductManagement]
GO

/****** Object:  Table [dbo].[ProductDiscount]    Script Date: 7/12/2020 9:55:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductDiscount](
	[ID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[DiscountValue] [int] NULL,
	[DiscountUnit] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductDiscount]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductId])
GO


