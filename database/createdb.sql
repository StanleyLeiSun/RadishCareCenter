USE [master]
GO
/****** Object:  Database [radishlog]    Script Date: 2/16/2018 6:10:37 PM ******/
CREATE DATABASE [radishlog]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [radishlog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [radishlog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [radishlog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [radishlog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [radishlog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [radishlog] SET ARITHABORT OFF 
GO
ALTER DATABASE [radishlog] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [radishlog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [radishlog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [radishlog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [radishlog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [radishlog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [radishlog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [radishlog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [radishlog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [radishlog] SET  ENABLE_BROKER 
GO
ALTER DATABASE [radishlog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [radishlog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [radishlog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [radishlog] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [radishlog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [radishlog] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [radishlog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [radishlog] SET RECOVERY FULL 
GO
ALTER DATABASE [radishlog] SET  MULTI_USER 
GO
ALTER DATABASE [radishlog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [radishlog] SET DB_CHAINING OFF 
GO
USE [radishlog]
GO
/****** Object:  User [rluser]    Script Date: 2/16/2018 6:10:37 PM ******/
CREATE USER [rluser] FOR LOGIN [rluser] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [rluser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [rluser]
GO
/****** Object:  Table [dbo].[Actions]    Script Date: 2/16/2018 6:10:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actions](
	[ActionID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[ActionType] [nchar](10) NOT NULL,
	[FromUser] [nvarchar](max) NULL,
	[ActionDetail] [nvarchar](max) NULL,
	[ActionStatus] [nchar](10) NULL
)

GO
/****** Object:  Table [dbo].[RawMsg]    Script Date: 2/16/2018 6:10:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RawMsg](
	[MsgID] [bigint] IDENTITY(1,1) NOT NULL,
	[TimeStamp] [datetime2](7) NOT NULL,
	[RawMsg] [nvarchar](max) NULL,
	[FromUser] [nvarchar](max) NULL,
	[ToUser] [nvarchar](max) NULL,
	[MsgType] [nvarchar](35) NULL
)

GO
USE [master]
GO
ALTER DATABASE [radishlog] SET  READ_WRITE 
GO
