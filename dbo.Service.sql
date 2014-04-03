USE [OilChange]
GO

/****** Object:  Table [dbo].[ServiceList]    Script Date: 4/3/2014 12:34:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ServiceList](
	[ServiceID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Package] [nvarchar](20) NULL,
	[Price] [money] NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_ServiceList] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

