USE [master]
GO
/****** Object:  Database [Test]    Script Date: 05/09/2014 18:38:39 ******/
CREATE DATABASE [Test] ON  PRIMARY 
( NAME = N'Test', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Test.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Test_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Test_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Test] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Test] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Test] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Test] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Test] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Test] SET ARITHABORT OFF
GO
ALTER DATABASE [Test] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Test] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Test] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Test] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Test] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Test] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Test] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Test] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Test] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Test] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Test] SET  DISABLE_BROKER
GO
ALTER DATABASE [Test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Test] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Test] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Test] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Test] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Test] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Test] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Test] SET  READ_WRITE
GO
ALTER DATABASE [Test] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Test] SET  MULTI_USER
GO
ALTER DATABASE [Test] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Test] SET DB_CHAINING OFF
GO
USE [Test]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 05/09/2014 18:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UID] [nchar](20) NOT NULL,
	[Name] [nchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMAGES]    Script Date: 05/09/2014 18:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IMAGES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](100) NULL,
	[SIZE] [int] NULL,
	[URL] [varchar](256) NULL,
	[CREATEDDATE] [datetime] NULL,
 CONSTRAINT [IMAGES_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPerson]    Script Date: 05/09/2014 18:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPerson](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[FatherName] [varchar](50) NULL,
	[MotherName] [varchar](50) NULL,
	[Age] [int] NOT NULL,
	[Gender] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_tblPerson] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLocation]    Script Date: 05/09/2014 18:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLocation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Code] [nchar](10) NOT NULL,
	[ParentID] [int] NULL,
	[Type] [int] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tblLocation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblClass]    Script Date: 05/09/2014 18:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblClass](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAddress]    Script Date: 05/09/2014 18:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAddress](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HouseNo] [nchar](10) NOT NULL,
	[Locality] [varchar](50) NOT NULL,
	[City] [nchar](10) NOT NULL,
	[District] [nchar](10) NOT NULL,
	[State] [nchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nchar](10) NOT NULL,
 CONSTRAINT [PK_tblAddress] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 05/09/2014 18:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RollNo] [nchar](10) NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[FatherName] [nchar](50) NOT NULL,
	[Class] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 05/09/2014 18:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](50) NULL,
	[DEPARTMENT] [varchar](50) NULL,
	[PhotoID] [int] NOT NULL,
 CONSTRAINT [PK_EMPLOYEE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStudent]    Script Date: 05/09/2014 18:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStudent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_tblStudent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[uspGetEmployees]    Script Date: 05/09/2014 18:38:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspGetEmployees]
@PageSize INT,
@PageIndex INT,
@EmpCount INT OUT
AS
BEGIN
	DECLARE @LOWERBOUND INT,
			@UPPERBOUND INT
			
	SELECT @LOWERBOUND = @PageIndex * @PageSize + 1
	SELECT @UPPERBOUND = @LOWERBOUND + @PageSize - 1
	
	DECLARE @TT TABLE
	(
		ID INT IDENTITY(1,1),
		EMPID INT,
		NAME VARCHAR(50),
		DEPARTMENT VARCHAR(50)
	)
	
	INSERT INTO @TT(EMPID,NAME,DEPARTMENT)
	SELECT ID,NAME,DEPARTMENT FROM EMPLOYEE
	
	SET @EmpCount = @@ROWCOUNT
	
	SELECT * FROM @TT
	WHERE ID BETWEEN @LOWERBOUND AND @UPPERBOUND
END
GO
/****** Object:  StoredProcedure [dbo].[uspGetAllEmployees]    Script Date: 05/09/2014 18:38:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspGetAllEmployees]
AS
BEGIN
	SELECT * FROM EMPLOYEE
END
GO
/****** Object:  Default [DF_Class_Active]    Script Date: 05/09/2014 18:38:40 ******/
ALTER TABLE [dbo].[Class] ADD  CONSTRAINT [DF_Class_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_tblPerson_Active]    Script Date: 05/09/2014 18:38:40 ******/
ALTER TABLE [dbo].[tblPerson] ADD  CONSTRAINT [DF_tblPerson_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_tblClass_Active]    Script Date: 05/09/2014 18:38:40 ******/
ALTER TABLE [dbo].[tblClass] ADD  CONSTRAINT [DF_tblClass_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_Student_Active]    Script Date: 05/09/2014 18:38:40 ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_EMPLOYEE_PhotoID]    Script Date: 05/09/2014 18:38:40 ******/
ALTER TABLE [dbo].[EMPLOYEE] ADD  CONSTRAINT [DF_EMPLOYEE_PhotoID]  DEFAULT ((1)) FOR [PhotoID]
GO
/****** Object:  Default [DF_tblStudent_Active]    Script Date: 05/09/2014 18:38:40 ******/
ALTER TABLE [dbo].[tblStudent] ADD  CONSTRAINT [DF_tblStudent_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  ForeignKey [FK_Student_Class]    Script Date: 05/09/2014 18:38:40 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Class] FOREIGN KEY([Class])
REFERENCES [dbo].[Class] ([ID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Class]
GO
/****** Object:  ForeignKey [FK_EMPLOYEE_IMAGES]    Script Date: 05/09/2014 18:38:40 ******/
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [FK_EMPLOYEE_IMAGES] FOREIGN KEY([ID])
REFERENCES [dbo].[IMAGES] ([ID])
GO
ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [FK_EMPLOYEE_IMAGES]
GO
/****** Object:  ForeignKey [FK_tblStudent_tblAddress]    Script Date: 05/09/2014 18:38:40 ******/
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD  CONSTRAINT [FK_tblStudent_tblAddress] FOREIGN KEY([AddressID])
REFERENCES [dbo].[tblAddress] ([ID])
GO
ALTER TABLE [dbo].[tblStudent] CHECK CONSTRAINT [FK_tblStudent_tblAddress]
GO
