USE [master]
GO
/****** Object:  Database [Merceira]    Script Date: 20/10/2023 08:46:14 ******/
CREATE DATABASE [Merceira]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Merceira', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS2019\MSSQL\DATA\Merceira.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Merceira_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS2019\MSSQL\DATA\Merceira_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Merceira] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Merceira].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Merceira] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Merceira] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Merceira] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Merceira] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Merceira] SET ARITHABORT OFF 
GO
ALTER DATABASE [Merceira] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Merceira] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Merceira] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Merceira] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Merceira] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Merceira] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Merceira] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Merceira] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Merceira] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Merceira] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Merceira] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Merceira] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Merceira] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Merceira] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Merceira] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Merceira] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Merceira] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Merceira] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Merceira] SET  MULTI_USER 
GO
ALTER DATABASE [Merceira] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Merceira] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Merceira] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Merceira] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Merceira] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Merceira] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Merceira] SET QUERY_STORE = OFF
GO
USE [Merceira]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 20/10/2023 08:46:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] NOT NULL,
	[Nome] [varchar](150) NULL,
	[Fone] [nchar](15) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 20/10/2023 08:46:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produto](
	[Id] [int] NOT NULL,
	[Nome] [nchar](150) NULL,
	[Preco] [float] NULL,
	[Estoque] [float] NULL,
 CONSTRAINT [PK_Produto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 20/10/2023 08:46:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] NOT NULL,
	[Nome] [varchar](150) NULL,
	[NomeUsuario] [varchar](50) NULL,
	[Senha] [nchar](50) NULL,
	[Ativo] [bit] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Merceira] SET  READ_WRITE 
GO
