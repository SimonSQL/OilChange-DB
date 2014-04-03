USE [OilChange]
GO

/****** Object:  Table [dbo].[BillPayment]    Script Date: 4/3/2014 1:10:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BillPayment](
	[PaymentID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OilChangeOrderID] [int] NULL,
	[OilChangeCustomOrderID] [int] NULL,
	[PaymentMethod] [nvarchar](20) NULL,
	[Amount] [money] NULL,
	[PaymentDate] [datetime] NULL,
	[CardNumber] [int] NULL,
	[ExpDate] [datetime] NULL,
 CONSTRAINT [PK_BillPayment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[BillPayment]  WITH CHECK ADD  CONSTRAINT [FK_BillPayment_OilChangeCustomOrder] FOREIGN KEY([OilChangeCustomOrderID])
REFERENCES [dbo].[OilChangeCustomOrder] ([OilChangeCustomOrderID])
GO

ALTER TABLE [dbo].[BillPayment] CHECK CONSTRAINT [FK_BillPayment_OilChangeCustomOrder]
GO

ALTER TABLE [dbo].[BillPayment]  WITH CHECK ADD  CONSTRAINT [FK_BillPayment_OilChangeOrder] FOREIGN KEY([OilChangeOrderID])
REFERENCES [dbo].[OilChangeOrder] ([OilChangeOrderID])
GO

ALTER TABLE [dbo].[BillPayment] CHECK CONSTRAINT [FK_BillPayment_OilChangeOrder]
GO

