USE [master]
GO
/****** Object:  Database [bookshopdata]    Script Date: 2/17/2020 3:44:05 PM ******/
CREATE DATABASE [bookshopdata] ON  PRIMARY 
( NAME = N'bookshopdata', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\bookshopdata.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'bookshopdata_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\bookshopdata_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [bookshopdata] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bookshopdata].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bookshopdata] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bookshopdata] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bookshopdata] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bookshopdata] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bookshopdata] SET ARITHABORT OFF 
GO
ALTER DATABASE [bookshopdata] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bookshopdata] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bookshopdata] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bookshopdata] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bookshopdata] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bookshopdata] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bookshopdata] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bookshopdata] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bookshopdata] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bookshopdata] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bookshopdata] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bookshopdata] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bookshopdata] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bookshopdata] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bookshopdata] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bookshopdata] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bookshopdata] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bookshopdata] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bookshopdata] SET  MULTI_USER 
GO
ALTER DATABASE [bookshopdata] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bookshopdata] SET DB_CHAINING OFF 
GO
USE [bookshopdata]
GO
/****** Object:  Table [dbo].[adminlogin]    Script Date: 2/17/2020 3:44:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adminlogin](
	[adminlogid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[adminlogid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bookdetails]    Script Date: 2/17/2020 3:44:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookdetails](
	[bookid] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[author] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[category] [nvarchar](50) NOT NULL,
	[condition] [nvarchar](50) NOT NULL,
	[bookcover] [nvarchar](max) NOT NULL,
	[discount] [int] NULL,
	[language] [nvarchar](50) NULL,
	[location] [nvarchar](50) NULL,
	[age] [int] NULL,
	[sellerid] [int] NULL,
	[dateofposting] [date] NULL,
 CONSTRAINT [PK_bookdetails] PRIMARY KEY CLUSTERED 
(
	[bookid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chat]    Script Date: 2/17/2020 3:44:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chat](
	[chatID] [int] IDENTITY(1,1) NOT NULL,
	[Sender] [varchar](255) NOT NULL,
	[Reciever] [varchar](255) NOT NULL,
	[Message] [varchar](255) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Time] [time](7) NOT NULL,
 CONSTRAINT [PK_chat] PRIMARY KEY CLUSTERED 
(
	[chatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[friends]    Script Date: 2/17/2020 3:44:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[friends](
	[friendsid] [int] IDENTITY(1,1) NOT NULL,
	[sendername] [varchar](255) NOT NULL,
	[recievername] [varchar](255) NOT NULL,
	[senderid] [int] NOT NULL,
	[recieverid] [int] NOT NULL,
 CONSTRAINT [PK_friends] PRIMARY KEY CLUSTERED 
(
	[friendsid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 2/17/2020 3:44:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[logid] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[logid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[register]    Script Date: 2/17/2020 3:44:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[register](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NULL,
 CONSTRAINT [PK_register] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sellerdetails]    Script Date: 2/17/2020 3:44:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sellerdetails](
	[sellerid] [int] NOT NULL,
	[sellername] [nvarchar](50) NOT NULL,
	[selleremail] [nvarchar](50) NOT NULL,
	[sellerphone] [int] NOT NULL,
	[selleraddress] [nvarchar](50) NOT NULL,
	[sellerlocation] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[viewcounter]    Script Date: 2/17/2020 3:44:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[viewcounter](
	[viewcount] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wishlist]    Script Date: 2/17/2020 3:44:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wishlist](
	[wishid] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[bookid] [int] NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [bookshopdata] SET  READ_WRITE 
GO
