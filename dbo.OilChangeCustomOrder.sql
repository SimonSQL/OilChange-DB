USE [OilChange]
GO

/****** Object:  Table [dbo].[OilChangeCustomOrder]    Script Date: 4/3/2014 1:12:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OilChangeCustomOrder](
	[OilChangeCustomOrderID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CarID] [int] NULL,
	[OilID] [int] NULL,
	[FilterID] [int] NULL,
	[QtyOilinQuart] [int] NULL,
	[Labor] [money] NULL,
	[PricePerQuart] [money] NULL,
	[TotalPrice]  AS ([QtyOilinQuart]*[PricePerQuart]+[Labor]),
	[OilChangeDate] [datetime] NULL,
 CONSTRAINT [PK_OilChangeCustomOrder] PRIMARY KEY CLUSTERED 
(
	[OilChangeCustomOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[OilChangeCustomOrder] ADD  CONSTRAINT [DF_OilChangeCustomOrder_Labor]  DEFAULT ((10)) FOR [Labor]
GO

ALTER TABLE [dbo].[OilChangeCustomOrder]  WITH CHECK ADD  CONSTRAINT [FK_OilChangeCustomOrder_Car] FOREIGN KEY([CarID])
REFERENCES [dbo].[Car] ([CarID])
GO

ALTER TABLE [dbo].[OilChangeCustomOrder] CHECK CONSTRAINT [FK_OilChangeCustomOrder_Car]
GO

ALTER TABLE [dbo].[OilChangeCustomOrder]  WITH CHECK ADD  CONSTRAINT [FK_OilChangeCustomOrder_Oil] FOREIGN KEY([OilID])
REFERENCES [dbo].[Oil] ([OilID])
GO

ALTER TABLE [dbo].[OilChangeCustomOrder] CHECK CONSTRAINT [FK_OilChangeCustomOrder_Oil]
GO

