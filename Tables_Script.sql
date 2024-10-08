USE [TestDb]
GO
/****** Object:  Table [dbo].[deptt]    Script Date: 14-08-2024 12.32.07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deptt](
	[id] [int] NOT NULL,
	[name] [varchar](20) NULL,
	[budget] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emp]    Script Date: 14-08-2024 12.32.07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emp](
	[code] [int] NOT NULL,
	[name] [varchar](20) NULL,
	[deptid] [int] NULL,
	[salary] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prog]    Script Date: 14-08-2024 12.32.07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prog](
	[name1] [varchar](30) NOT NULL,
	[dob] [date] NULL,
	[doj] [date] NULL,
	[gender] [varchar](1) NULL,
	[prof1] [varchar](30) NULL,
	[prof2] [varchar](30) NULL,
	[sal] [int] NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_prog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[soft]    Script Date: 14-08-2024 12.32.07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[soft](
	[name1] [varchar](30) NULL,
	[title] [varchar](30) NULL,
	[devin] [varchar](30) NULL,
	[scost] [decimal](7, 2) NULL,
	[ccost] [int] NULL,
	[sold] [int] NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_soft] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[study]    Script Date: 14-08-2024 12.32.07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[study](
	[name1] [varchar](30) NULL,
	[splace] [varchar](30) NULL,
	[cource] [varchar](30) NULL,
	[ccost] [int] NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_study] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[deptt] ([id], [name], [budget]) VALUES (10, N'Sales', 50000.0000)
INSERT [dbo].[deptt] ([id], [name], [budget]) VALUES (11, N'Marketing', 40000.0000)
INSERT [dbo].[deptt] ([id], [name], [budget]) VALUES (12, N'Finance', 78000.0000)
INSERT [dbo].[deptt] ([id], [name], [budget]) VALUES (13, N'Security', 90000.0000)
INSERT [dbo].[deptt] ([id], [name], [budget]) VALUES (14, N'Finance', 55000.0000)
INSERT [dbo].[deptt] ([id], [name], [budget]) VALUES (15, N'Transport', 35000.0000)
GO
INSERT [dbo].[emp] ([code], [name], [deptid], [salary]) VALUES (100, N'Krishna', 10, 60000.0000)
INSERT [dbo].[emp] ([code], [name], [deptid], [salary]) VALUES (101, N'Mohan', 10, 26000.0000)
INSERT [dbo].[emp] ([code], [name], [deptid], [salary]) VALUES (102, N'John', 11, 75000.0000)
INSERT [dbo].[emp] ([code], [name], [deptid], [salary]) VALUES (103, N'Suresh', 11, 60000.0000)
INSERT [dbo].[emp] ([code], [name], [deptid], [salary]) VALUES (104, N'Sita', 12, 75000.0000)
INSERT [dbo].[emp] ([code], [name], [deptid], [salary]) VALUES (105, N'Gita', 13, 89000.0000)
INSERT [dbo].[emp] ([code], [name], [deptid], [salary]) VALUES (106, N'Ramesh', 12, 67000.0000)
INSERT [dbo].[emp] ([code], [name], [deptid], [salary]) VALUES (107, N'Altaf', 13, 125000.0000)
INSERT [dbo].[emp] ([code], [name], [deptid], [salary]) VALUES (108, N'Anand', 14, 75000.0000)
GO
INSERT [dbo].[prog] ([name1], [dob], [doj], [gender], [prof1], [prof2], [sal], [id]) VALUES (N'ANAND', CAST(N'1966-04-21' AS Date), CAST(N'1992-04-21' AS Date), N'M', N'PASCAL', N'BASIC', 3200, 1)
INSERT [dbo].[prog] ([name1], [dob], [doj], [gender], [prof1], [prof2], [sal], [id]) VALUES (N'ALTAF', CAST(N'1964-07-02' AS Date), CAST(N'1990-11-13' AS Date), N'M', N'CLIPPER', N'COBOL', 2800, 2)
INSERT [dbo].[prog] ([name1], [dob], [doj], [gender], [prof1], [prof2], [sal], [id]) VALUES (N'JAGADESH', CAST(N'1970-10-06' AS Date), CAST(N'1994-10-04' AS Date), N'M', N'ORACLE', N'JAVA', 4100, 3)
INSERT [dbo].[prog] ([name1], [dob], [doj], [gender], [prof1], [prof2], [sal], [id]) VALUES (N'JULIANA', CAST(N'1968-01-31' AS Date), CAST(N'1990-04-21' AS Date), N'F', N'COBOL', N'DBASE', 3000, 4)
INSERT [dbo].[prog] ([name1], [dob], [doj], [gender], [prof1], [prof2], [sal], [id]) VALUES (N'KAMALA', CAST(N'1968-10-30' AS Date), CAST(N'1992-01-02' AS Date), N'F', N'C', N'DBASE', 2900, 5)
INSERT [dbo].[prog] ([name1], [dob], [doj], [gender], [prof1], [prof2], [sal], [id]) VALUES (N'MARY', CAST(N'1970-06-24' AS Date), CAST(N'1991-02-01' AS Date), N'F', N'C++', N'ORACLE', 4500, 6)
INSERT [dbo].[prog] ([name1], [dob], [doj], [gender], [prof1], [prof2], [sal], [id]) VALUES (N'NELSON', CAST(N'1965-09-11' AS Date), CAST(N'1989-10-11' AS Date), N'M', N'COBOL', N'DBASE', 2500, 7)
INSERT [dbo].[prog] ([name1], [dob], [doj], [gender], [prof1], [prof2], [sal], [id]) VALUES (N'PATRICK', CAST(N'1965-11-19' AS Date), CAST(N'1990-04-21' AS Date), N'M', N'PASCAL', N'CLIPPER', 2800, 8)
INSERT [dbo].[prog] ([name1], [dob], [doj], [gender], [prof1], [prof2], [sal], [id]) VALUES (N'QADIR', CAST(N'1965-08-31' AS Date), CAST(N'1993-04-21' AS Date), N'M', N'ASSEMBLY', N'C', 3000, 9)
INSERT [dbo].[prog] ([name1], [dob], [doj], [gender], [prof1], [prof2], [sal], [id]) VALUES (N'RAMESH', CAST(N'1967-05-03' AS Date), CAST(N'1991-02-28' AS Date), N'M', N'PASCAL', N'DBASE', 3200, 10)
INSERT [dbo].[prog] ([name1], [dob], [doj], [gender], [prof1], [prof2], [sal], [id]) VALUES (N'REBECCA', CAST(N'1967-01-01' AS Date), CAST(N'1990-12-01' AS Date), N'F', N'BASIC', N'COBOL', 2500, 11)
INSERT [dbo].[prog] ([name1], [dob], [doj], [gender], [prof1], [prof2], [sal], [id]) VALUES (N'REMITHA', CAST(N'1980-04-19' AS Date), CAST(N'1998-04-20' AS Date), N'F', N'C', N'ASSEMBLY', 3600, 12)
INSERT [dbo].[prog] ([name1], [dob], [doj], [gender], [prof1], [prof2], [sal], [id]) VALUES (N'REVATHI', CAST(N'1969-12-02' AS Date), CAST(N'1992-01-02' AS Date), N'F', N'PASCAL', N'BASIC', 3700, 13)
INSERT [dbo].[prog] ([name1], [dob], [doj], [gender], [prof1], [prof2], [sal], [id]) VALUES (N'VIJAYA', CAST(N'1965-12-14' AS Date), CAST(N'1992-05-02' AS Date), N'F', N'FOXPRO', N'C', 3500, 14)
GO
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'ANAND', N'PAR', N'BASIC', CAST(399.95 AS Decimal(7, 2)), 6000, 43, 1)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'ANAND', N'VTP', N'PASCAL', CAST(7500.00 AS Decimal(7, 2)), 10000, 9, 2)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'JAGADESH', N'SLU', N'JAVA', CAST(800.00 AS Decimal(7, 2)), 7500, 10, 3)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'JAGADESH', N'SM', N'ORACLE', CAST(3000.00 AS Decimal(7, 2)), 12000, 14, 4)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'JULIANA', N'IC', N'COBOL', CAST(3000.00 AS Decimal(7, 2)), 3500, 0, 5)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'KAMALA', N'PP', N'DBASE', CAST(9000.00 AS Decimal(7, 2)), 20000, 7, 6)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'MARY', N'FA', N'ORACLE', CAST(18000.00 AS Decimal(7, 2)), 85000, 4, 7)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'MARY', N'CG', N'C', CAST(4500.00 AS Decimal(7, 2)), 20000, 23, 8)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'MARY', N'RM', N'C++', CAST(300.00 AS Decimal(7, 2)), 1200, 84, 9)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'PATRICK', N'GE', N'PASCAL', CAST(750.00 AS Decimal(7, 2)), 5000, 112, 10)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'QADIR', N'BA', N'ASSEMBLY', CAST(499.95 AS Decimal(7, 2)), 530, 114, 11)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'QADIR', N'VC', N'C', CAST(1900.00 AS Decimal(7, 2)), 3400, 21, 12)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'RAMESH', N'HM', N'DBASE', CAST(12000.00 AS Decimal(7, 2)), 35000, 4, 13)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'RAMESH', N'DL', N'PASCAL', CAST(99.95 AS Decimal(7, 2)), 4500, 73, 14)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'REMITHA', N'PCU', N'C', CAST(725.00 AS Decimal(7, 2)), 5000, 51, 15)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'REMITHA', N'THP', N'ASSEMBLY', CAST(2500.00 AS Decimal(7, 2)), 6000, 6, 16)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'REVATHI', N'HM', N'PASCAL', CAST(1100.00 AS Decimal(7, 2)), 75000, 2, 17)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'REVATHI', N'QM', N'BASIC', CAST(3200.00 AS Decimal(7, 2)), 2100, 15, 18)
INSERT [dbo].[soft] ([name1], [title], [devin], [scost], [ccost], [sold], [id]) VALUES (N'VIJAYA', N'IE', N'C', CAST(900.00 AS Decimal(7, 2)), 700, 6, 19)
GO
INSERT [dbo].[study] ([name1], [splace], [cource], [ccost], [id]) VALUES (N'ANAND', N'SABHARI', N'DCA', 4500, 1)
INSERT [dbo].[study] ([name1], [splace], [cource], [ccost], [id]) VALUES (N'ALTAF', N'CCIT', N'DCA', 7200, 2)
INSERT [dbo].[study] ([name1], [splace], [cource], [ccost], [id]) VALUES (N'JAGADESH', N'SSIL', N'DCA', 3500, 3)
INSERT [dbo].[study] ([name1], [splace], [cource], [ccost], [id]) VALUES (N'JULIANA', N'BITS', N'DCA', 22000, 4)
INSERT [dbo].[study] ([name1], [splace], [cource], [ccost], [id]) VALUES (N'KAMALA', N'PRAGATHI', N'DCP', 5000, 5)
INSERT [dbo].[study] ([name1], [splace], [cource], [ccost], [id]) VALUES (N'MARY', N'SABHARI', N'PGDCA', 4500, 6)
INSERT [dbo].[study] ([name1], [splace], [cource], [ccost], [id]) VALUES (N'NELSON', N'PRAGATHI', N'DAP', 6200, 7)
INSERT [dbo].[study] ([name1], [splace], [cource], [ccost], [id]) VALUES (N'PATRICK', N'PRAGATHI', N'DCAP', 5200, 8)
INSERT [dbo].[study] ([name1], [splace], [cource], [ccost], [id]) VALUES (N'QADIR', N'APPLE', N'HDCP', 14000, 9)
INSERT [dbo].[study] ([name1], [splace], [cource], [ccost], [id]) VALUES (N'RAMESH', N'SABHARI', N'PGDCA', 4500, 10)
INSERT [dbo].[study] ([name1], [splace], [cource], [ccost], [id]) VALUES (N'REBECCA', N'BRILLIANT', N'DCA&P', 11000, 11)
INSERT [dbo].[study] ([name1], [splace], [cource], [ccost], [id]) VALUES (N'REMITHA', N'BDPS', N'DCS', 6000, 12)
INSERT [dbo].[study] ([name1], [splace], [cource], [ccost], [id]) VALUES (N'REVATHI', N'SABHARI', N'DAP', 5000, 13)
INSERT [dbo].[study] ([name1], [splace], [cource], [ccost], [id]) VALUES (N'VIJAYA', N'BDPS', N'DCA', 48000, 14)
GO
ALTER TABLE [dbo].[emp]  WITH CHECK ADD FOREIGN KEY([deptid])
REFERENCES [dbo].[deptt] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
