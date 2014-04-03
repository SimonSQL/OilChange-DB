USE [OilChange]
GO

/****** Object:  Table [dbo].[CustomerCar]    Script Date: 4/3/2014 1:11:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CustomerCar](
	[CustomerCarID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CustomerID] [int] NULL,
	[CarID] [int] NULL,
 CONSTRAINT [PK_CustomerCar] PRIMARY KEY CLUSTERED 
(
	[CustomerCarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[CustomerCar]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCar_Car] FOREIGN KEY([CarID])
REFERENCES [dbo].[Car] ([CarID])
GO

ALTER TABLE [dbo].[CustomerCar] CHECK CONSTRAINT [FK_CustomerCar_Car]
GO

ALTER TABLE [dbo].[CustomerCar]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCar_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO

ALTER TABLE [dbo].[CustomerCar] CHECK CONSTRAINT [FK_CustomerCar_Customer]
GO

