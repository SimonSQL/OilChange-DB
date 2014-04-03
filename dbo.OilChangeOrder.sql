USE [OilChange]
GO

/****** Object:  Table [dbo].[OilChangeOrder]    Script Date: 4/3/2014 1:13:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OilChangeOrder](
	[OilChangeOrderID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CarID] [int] NULL,
	[ServiceID] [int] NULL,
	[OilChangeDate] [date] NULL,
 CONSTRAINT [PK_OilChangeOrder] PRIMARY KEY CLUSTERED 
(
	[OilChangeOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[OilChangeOrder]  WITH CHECK ADD  CONSTRAINT [FK_OilChangeOrder_Car] FOREIGN KEY([CarID])
REFERENCES [dbo].[Car] ([CarID])
GO

ALTER TABLE [dbo].[OilChangeOrder] CHECK CONSTRAINT [FK_OilChangeOrder_Car]
GO

ALTER TABLE [dbo].[OilChangeOrder]  WITH CHECK ADD  CONSTRAINT [FK_OilChangeOrder_ServiceList] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[ServiceList] ([ServiceID])
GO

ALTER TABLE [dbo].[OilChangeOrder] CHECK CONSTRAINT [FK_OilChangeOrder_ServiceList]
GO

