USE [master]
GO
/****** Object:  Database [Cirk]    Script Date: 12.03.2024 15:54:56 ******/
CREATE DATABASE [Cirk]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cirk', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Cirk.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Cirk_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Cirk_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Cirk] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cirk].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cirk] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cirk] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cirk] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cirk] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cirk] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cirk] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cirk] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cirk] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cirk] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cirk] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cirk] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cirk] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cirk] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cirk] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cirk] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cirk] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cirk] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cirk] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cirk] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cirk] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cirk] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cirk] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cirk] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cirk] SET  MULTI_USER 
GO
ALTER DATABASE [Cirk] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cirk] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cirk] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cirk] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cirk] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Cirk] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Cirk] SET QUERY_STORE = ON
GO
ALTER DATABASE [Cirk] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Cirk]
GO
/****** Object:  Table [dbo].[Animal]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animal](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ID_Type] [int] NULL,
	[Age] [int] NULL,
	[ID_Gender] [int] NULL,
	[Weight] [int] NULL,
	[FoodPreference] [nvarchar](max) NULL,
	[CareRecommendations] [nvarchar](max) NULL,
	[ID_Trainer] [int] NULL,
 CONSTRAINT [PK_Animal] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnimalType]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnimalType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_AnimalType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Applicationn]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applicationn](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Artist] [int] NULL,
	[Comment] [nvarchar](max) NULL,
	[DoneOrNo] [bit] NULL,
 CONSTRAINT [PK_Applicationn] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cabinet]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cabinet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[ID_Worker] [int] NULL,
 CONSTRAINT [PK_Cabinet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cage]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Animal] [int] NULL,
 CONSTRAINT [PK_Cage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostumeDept]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostumeDept](
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CostumeDept] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DressingRoom]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DressingRoom](
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_DressingRoom] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](7) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfomance]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfomance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ID_Type] [int] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Perfomance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfomance_Report1]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfomance_Report1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Perfomance1] [int] NULL,
	[ID_Report1] [int] NULL,
 CONSTRAINT [PK_Perfomance_Report1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfomance_Report2]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfomance_Report2](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Perfomance2] [int] NULL,
	[ID_Report2] [int] NULL,
 CONSTRAINT [PK_Perfomance_Report2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerfomanceType]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerfomanceType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[Prepayment] [decimal](19, 4) NULL,
	[Company] [nvarchar](50) NULL,
 CONSTRAINT [PK_PerfomanceType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report1]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Profit] [decimal](19, 4) NULL,
	[Expenses] [decimal](19, 4) NULL,
	[ID_Type] [nchar](10) NULL,
	[Month] [nvarchar](50) NULL,
	[Year] [int] NULL,
 CONSTRAINT [PK_Report1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report2]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report2](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Month] [nvarchar](50) NULL,
	[Year] [int] NULL,
 CONSTRAINT [PK_Report2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taskk]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taskk](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ServiceStaff] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[DoneOrNo] [bit] NULL,
	[DateTime] [datetime] NULL,
 CONSTRAINT [PK_Taskk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timetable]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timetable](
	[ID] [int] NOT NULL,
	[ID_Perfomance] [int] NULL,
	[ID_Artist] [int] NULL,
	[time] [time](7) NULL,
 CONSTRAINT [PK_Timetable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfArtist]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfArtist](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](12) NULL,
	[AmountOfPerf] [int] NULL,
 CONSTRAINT [PK_TypeOfArtist] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 12.03.2024 15:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](30) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Patronymic] [nvarchar](30) NOT NULL,
	[DateOfBirth] [datetime] NULL,
	[ID_Position] [int] NOT NULL,
	[Phone] [nvarchar](11) NULL,
	[ID_TypeOfArtist] [int] NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Photo] [varbinary](max) NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Animal] ON 

INSERT [dbo].[Animal] ([ID], [Name], [ID_Type], [Age], [ID_Gender], [Weight], [FoodPreference], [CareRecommendations], [ID_Trainer]) VALUES (3, N'Elephant', 2, 15, 2, 1500, N'Hay', N'Provide water regularly', 4)
INSERT [dbo].[Animal] ([ID], [Name], [ID_Type], [Age], [ID_Gender], [Weight], [FoodPreference], [CareRecommendations], [ID_Trainer]) VALUES (4, N'12', 1, 12, 1, 12, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Animal] OFF
GO
SET IDENTITY_INSERT [dbo].[AnimalType] ON 

INSERT [dbo].[AnimalType] ([ID], [Type]) VALUES (1, N'Mammals')
INSERT [dbo].[AnimalType] ([ID], [Type]) VALUES (2, N'Reptiles')
INSERT [dbo].[AnimalType] ([ID], [Type]) VALUES (3, N'Mammals')
INSERT [dbo].[AnimalType] ([ID], [Type]) VALUES (4, N'Reptiles')
SET IDENTITY_INSERT [dbo].[AnimalType] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([ID], [Name]) VALUES (1, N'Male')
INSERT [dbo].[Gender] ([ID], [Name]) VALUES (2, N'Female')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Perfomance] ON 

INSERT [dbo].[Perfomance] ([ID], [Name], [ID_Type], [Date]) VALUES (3, N'Circus Show', 1, CAST(N'2024-12-15T20:00:00.000' AS DateTime))
INSERT [dbo].[Perfomance] ([ID], [Name], [ID_Type], [Date]) VALUES (4, N'Magic Performance', 2, CAST(N'2024-12-20T18:30:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Perfomance] OFF
GO
SET IDENTITY_INSERT [dbo].[PerfomanceType] ON 

INSERT [dbo].[PerfomanceType] ([ID], [Name], [Prepayment], [Company]) VALUES (1, N'Circus    ', CAST(500.0000 AS Decimal(19, 4)), N'ABC Circus')
INSERT [dbo].[PerfomanceType] ([ID], [Name], [Prepayment], [Company]) VALUES (2, N'Magic Show', CAST(300.0000 AS Decimal(19, 4)), N'XYZ Entertainment')
SET IDENTITY_INSERT [dbo].[PerfomanceType] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([ID], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Position] ([ID], [Name]) VALUES (2, N'Artist')
INSERT [dbo].[Position] ([ID], [Name]) VALUES (3, N'Treiner')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
INSERT [dbo].[Timetable] ([ID], [ID_Perfomance], [ID_Artist], [time]) VALUES (1, 3, 3, CAST(N'15:00:00' AS Time))
INSERT [dbo].[Timetable] ([ID], [ID_Perfomance], [ID_Artist], [time]) VALUES (2, 4, 4, CAST(N'18:30:00' AS Time))
GO
SET IDENTITY_INSERT [dbo].[TypeOfArtist] ON 

INSERT [dbo].[TypeOfArtist] ([ID], [Name], [AmountOfPerf]) VALUES (1, N'Singer      ', 10)
INSERT [dbo].[TypeOfArtist] ([ID], [Name], [AmountOfPerf]) VALUES (2, N'Dancer      ', 15)
SET IDENTITY_INSERT [dbo].[TypeOfArtist] OFF
GO
SET IDENTITY_INSERT [dbo].[Worker] ON 

INSERT [dbo].[Worker] ([ID], [Surname], [Name], [Patronymic], [DateOfBirth], [ID_Position], [Phone], [ID_TypeOfArtist], [Login], [Password], [Photo]) VALUES (2, N'Smith', N'John', N'Doe', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'1234567890', 2, N'john.smith', N'password123', NULL)
INSERT [dbo].[Worker] ([ID], [Surname], [Name], [Patronymic], [DateOfBirth], [ID_Position], [Phone], [ID_TypeOfArtist], [Login], [Password], [Photo]) VALUES (3, N'Johnson', N'Alice', N'Smith', CAST(N'2002-02-02T00:00:00.000' AS DateTime), 2, N'9876543210', 1, N'alice.johnson', N'pass1234', NULL)
INSERT [dbo].[Worker] ([ID], [Surname], [Name], [Patronymic], [DateOfBirth], [ID_Position], [Phone], [ID_TypeOfArtist], [Login], [Password], [Photo]) VALUES (4, N'123', N'123', N'123', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 2, N'21341341', NULL, N'1', N'1', NULL)
INSERT [dbo].[Worker] ([ID], [Surname], [Name], [Patronymic], [DateOfBirth], [ID_Position], [Phone], [ID_TypeOfArtist], [Login], [Password], [Photo]) VALUES (5, N'Alan', N'John', N'Doe', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 3, N'1234567890', 2, N'john.smith', N'password123', NULL)
SET IDENTITY_INSERT [dbo].[Worker] OFF
GO
/****** Object:  Index [IX_FK_Animal_AnimalType]    Script Date: 12.03.2024 15:54:57 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Animal_AnimalType] ON [dbo].[Animal]
(
	[ID_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Animal_Gender]    Script Date: 12.03.2024 15:54:57 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Animal_Gender] ON [dbo].[Animal]
(
	[ID_Gender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Application_Worker]    Script Date: 12.03.2024 15:54:57 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Application_Worker] ON [dbo].[Applicationn]
(
	[ID_Artist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Cabinet_Worker]    Script Date: 12.03.2024 15:54:57 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Cabinet_Worker] ON [dbo].[Cabinet]
(
	[ID_Worker] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Cage_Animal]    Script Date: 12.03.2024 15:54:57 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Cage_Animal] ON [dbo].[Cage]
(
	[ID_Animal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Perfomance_PerfomanceType]    Script Date: 12.03.2024 15:54:57 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Perfomance_PerfomanceType] ON [dbo].[Perfomance]
(
	[ID_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Perfomance_Report1_Perfomance]    Script Date: 12.03.2024 15:54:57 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Perfomance_Report1_Perfomance] ON [dbo].[Perfomance_Report1]
(
	[ID_Perfomance1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Perfomance_Report1_Report11]    Script Date: 12.03.2024 15:54:57 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Perfomance_Report1_Report11] ON [dbo].[Perfomance_Report1]
(
	[ID_Report1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Perfomance_Report2_Perfomance]    Script Date: 12.03.2024 15:54:57 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Perfomance_Report2_Perfomance] ON [dbo].[Perfomance_Report2]
(
	[ID_Perfomance2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Perfomance_Report2_Report21]    Script Date: 12.03.2024 15:54:57 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Perfomance_Report2_Report21] ON [dbo].[Perfomance_Report2]
(
	[ID_Report2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Task_Worker]    Script Date: 12.03.2024 15:54:57 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Task_Worker] ON [dbo].[Taskk]
(
	[ID_ServiceStaff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Timetable_Perfomance]    Script Date: 12.03.2024 15:54:57 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Timetable_Perfomance] ON [dbo].[Timetable]
(
	[ID_Perfomance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Timetable_Worker]    Script Date: 12.03.2024 15:54:57 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Timetable_Worker] ON [dbo].[Timetable]
(
	[ID_Artist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Worker_To_Position]    Script Date: 12.03.2024 15:54:57 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Worker_To_Position] ON [dbo].[Worker]
(
	[ID_Position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Worker_TypeOfArtist]    Script Date: 12.03.2024 15:54:57 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Worker_TypeOfArtist] ON [dbo].[Worker]
(
	[ID_TypeOfArtist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_AnimalType] FOREIGN KEY([ID_Type])
REFERENCES [dbo].[AnimalType] ([ID])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_AnimalType]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Gender] FOREIGN KEY([ID_Gender])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Gender]
GO
ALTER TABLE [dbo].[Applicationn]  WITH CHECK ADD  CONSTRAINT [FK_Application_Worker] FOREIGN KEY([ID_Artist])
REFERENCES [dbo].[Worker] ([ID])
GO
ALTER TABLE [dbo].[Applicationn] CHECK CONSTRAINT [FK_Application_Worker]
GO
ALTER TABLE [dbo].[Cabinet]  WITH CHECK ADD  CONSTRAINT [FK_Cabinet_Worker] FOREIGN KEY([ID_Worker])
REFERENCES [dbo].[Worker] ([ID])
GO
ALTER TABLE [dbo].[Cabinet] CHECK CONSTRAINT [FK_Cabinet_Worker]
GO
ALTER TABLE [dbo].[Cage]  WITH CHECK ADD  CONSTRAINT [FK_Cage_Animal] FOREIGN KEY([ID_Animal])
REFERENCES [dbo].[Animal] ([ID])
GO
ALTER TABLE [dbo].[Cage] CHECK CONSTRAINT [FK_Cage_Animal]
GO
ALTER TABLE [dbo].[Perfomance]  WITH CHECK ADD  CONSTRAINT [FK_Perfomance_PerfomanceType] FOREIGN KEY([ID_Type])
REFERENCES [dbo].[PerfomanceType] ([ID])
GO
ALTER TABLE [dbo].[Perfomance] CHECK CONSTRAINT [FK_Perfomance_PerfomanceType]
GO
ALTER TABLE [dbo].[Perfomance_Report1]  WITH CHECK ADD  CONSTRAINT [FK_Perfomance_Report1_Perfomance] FOREIGN KEY([ID_Perfomance1])
REFERENCES [dbo].[Perfomance] ([ID])
GO
ALTER TABLE [dbo].[Perfomance_Report1] CHECK CONSTRAINT [FK_Perfomance_Report1_Perfomance]
GO
ALTER TABLE [dbo].[Perfomance_Report1]  WITH CHECK ADD  CONSTRAINT [FK_Perfomance_Report1_Report11] FOREIGN KEY([ID_Report1])
REFERENCES [dbo].[Report1] ([ID])
GO
ALTER TABLE [dbo].[Perfomance_Report1] CHECK CONSTRAINT [FK_Perfomance_Report1_Report11]
GO
ALTER TABLE [dbo].[Perfomance_Report2]  WITH CHECK ADD  CONSTRAINT [FK_Perfomance_Report2_Perfomance] FOREIGN KEY([ID_Perfomance2])
REFERENCES [dbo].[Perfomance] ([ID])
GO
ALTER TABLE [dbo].[Perfomance_Report2] CHECK CONSTRAINT [FK_Perfomance_Report2_Perfomance]
GO
ALTER TABLE [dbo].[Perfomance_Report2]  WITH CHECK ADD  CONSTRAINT [FK_Perfomance_Report2_Report21] FOREIGN KEY([ID_Report2])
REFERENCES [dbo].[Report2] ([ID])
GO
ALTER TABLE [dbo].[Perfomance_Report2] CHECK CONSTRAINT [FK_Perfomance_Report2_Report21]
GO
ALTER TABLE [dbo].[Taskk]  WITH CHECK ADD  CONSTRAINT [FK_Task_Worker] FOREIGN KEY([ID_ServiceStaff])
REFERENCES [dbo].[Worker] ([ID])
GO
ALTER TABLE [dbo].[Taskk] CHECK CONSTRAINT [FK_Task_Worker]
GO
ALTER TABLE [dbo].[Timetable]  WITH CHECK ADD  CONSTRAINT [FK_Timetable_Perfomance] FOREIGN KEY([ID_Perfomance])
REFERENCES [dbo].[Perfomance] ([ID])
GO
ALTER TABLE [dbo].[Timetable] CHECK CONSTRAINT [FK_Timetable_Perfomance]
GO
ALTER TABLE [dbo].[Timetable]  WITH CHECK ADD  CONSTRAINT [FK_Timetable_Worker] FOREIGN KEY([ID_Artist])
REFERENCES [dbo].[Worker] ([ID])
GO
ALTER TABLE [dbo].[Timetable] CHECK CONSTRAINT [FK_Timetable_Worker]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_To_Position] FOREIGN KEY([ID_Position])
REFERENCES [dbo].[Position] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_To_Position]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_TypeOfArtist] FOREIGN KEY([ID_TypeOfArtist])
REFERENCES [dbo].[TypeOfArtist] ([ID])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_TypeOfArtist]
GO
USE [master]
GO
ALTER DATABASE [Cirk] SET  READ_WRITE 
GO
