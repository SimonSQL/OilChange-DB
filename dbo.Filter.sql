USE [OilChange]
GO

/****** Object:  Table [dbo].[Filter]    Script Date: 4/3/2014 1:11:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Filter](
	[FilterID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PartNumber] [nchar](10) NULL,
	[Name] [nvarchar](20) NULL,
	[Price] [money] NULL,
	[QtyStock] [int] NULL,
 CONSTRAINT [PK_Filter] PRIMARY KEY CLUSTERED 
(
	[FilterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

