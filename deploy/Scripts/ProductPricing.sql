USE [ProductManagement]
GO

/****** Object:  Table [dbo].[ProductPricing]    Script Date: 7/12/2020 9:55:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductPricing](
	[ID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[BasePrice] [int] NULL,
	[DateCreated] [datetime] NULL,
	[ExpiryDate] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductPricing]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductId])
GO


