USE [TimesEF]
GO

-- MsSql ReadModel

CREATE TABLE [dbo].[ReadModel-Entry] (
	[Competitor] [nvarchar](50) NOT NULL,
	[TimeInMillis] [int] NOT NULL,
	[Discipline] [nvarchar](50) NOT NULL,
	[AggregateId] [nvarchar](50) NOT NULL,
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_ReadModel-Entry_1] PRIMARY KEY CLUSTERED 
(
	[AggregateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];
GO

CREATE TABLE [dbo].[ReadModel-Competition](
	[AggregateId] [nvarchar](50) NOT NULL,
	[Competitionname] [nchar](50) NOT NULL,
	[Username] [nchar](50) NOT NULL,
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_ReadModel-Competition] PRIMARY KEY CLUSTERED 
(
	[AggregateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- EntityFramework ReadModel

CREATE TABLE [dbo].[Competitions](
	[Id] [nvarchar](50) NOT NULL,
	[Competitionname] [nchar](50) NOT NULL,
	[Username] [nchar](50) NOT NULL,
	[Version] [bigint] NOT NULL,
 CONSTRAINT [PK_Competitions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Entries](
	[Competitor] [nvarchar](50) NOT NULL,
	[TimeInMillis] [int] NOT NULL,
	[Discipline] [nvarchar](50) NOT NULL,
	[Id] [nvarchar](50) NOT NULL,
	[Version] [bigint] NOT NULL,
 CONSTRAINT [PK_Entries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
