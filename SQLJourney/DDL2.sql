USE [MyDatabase]
GO

/****** Object:  Table [dbo].[persons]    Script Date: 09-10-2026 21:47:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[persons](
	[id] [int] NOT NULL,
	[person_name] [varchar](50) NOT NULL,
	[birth_date] [date] NULL,
	[phone] [varchar](15) NOT NULL,
 CONSTRAINT [pk_persons] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


