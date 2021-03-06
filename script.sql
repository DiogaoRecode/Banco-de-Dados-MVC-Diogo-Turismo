USE [master]
GO
/****** Object:  Database [DiogoTurismo]    Script Date: 19/12/2021 04:46:41 ******/
CREATE DATABASE [DiogoTurismo]  /*Ola*/
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DiogoTurismo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVERDEV2019\MSSQL\DATA\DiogoTurismo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DiogoTurismo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVERDEV2019\MSSQL\DATA\DiogoTurismo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DiogoTurismo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DiogoTurismo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DiogoTurismo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DiogoTurismo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DiogoTurismo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DiogoTurismo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DiogoTurismo] SET ARITHABORT OFF 
GO
ALTER DATABASE [DiogoTurismo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DiogoTurismo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DiogoTurismo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DiogoTurismo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DiogoTurismo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DiogoTurismo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DiogoTurismo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DiogoTurismo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DiogoTurismo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DiogoTurismo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DiogoTurismo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DiogoTurismo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DiogoTurismo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DiogoTurismo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DiogoTurismo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DiogoTurismo] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DiogoTurismo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DiogoTurismo] SET RECOVERY FULL 
GO
ALTER DATABASE [DiogoTurismo] SET  MULTI_USER 
GO
ALTER DATABASE [DiogoTurismo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DiogoTurismo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DiogoTurismo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DiogoTurismo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DiogoTurismo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DiogoTurismo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DiogoTurismo', N'ON'
GO
ALTER DATABASE [DiogoTurismo] SET QUERY_STORE = OFF
GO
USE [DiogoTurismo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 19/12/2021 04:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cadastro]    Script Date: 19/12/2021 04:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cadastro](
	[Id_cadastro] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NOT NULL,
	[Cpf] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Telefone] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cadastro] PRIMARY KEY CLUSTERED 
(
	[Id_cadastro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destino]    Script Date: 19/12/2021 04:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destino](
	[Id_destino] [int] IDENTITY(1,1) NOT NULL,
	[Cidade_destino] [nvarchar](max) NOT NULL,
	[Cidade_origem] [nvarchar](max) NULL,
 CONSTRAINT [PK_Destino] PRIMARY KEY CLUSTERED 
(
	[Id_destino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passagens]    Script Date: 19/12/2021 04:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passagens](
	[Id_passagem] [int] IDENTITY(1,1) NOT NULL,
	[Numero_passaporte] [nvarchar](max) NOT NULL,
	[Data_saida] [nvarchar](max) NULL,
	[Data_chegada] [nvarchar](max) NULL,
	[Horario_saida] [nvarchar](max) NULL,
	[Horario_chegada] [nvarchar](max) NULL,
	[CadastroId_cadastro] [int] NOT NULL,
	[DestinoId_destino] [int] NOT NULL,
 CONSTRAINT [PK_Passagens] PRIMARY KEY CLUSTERED 
(
	[Id_passagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Passagens_CadastroId_cadastro]    Script Date: 19/12/2021 04:46:42 ******/
CREATE NONCLUSTERED INDEX [IX_Passagens_CadastroId_cadastro] ON [dbo].[Passagens]
(
	[CadastroId_cadastro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Passagens_DestinoId_destino]    Script Date: 19/12/2021 04:46:42 ******/
CREATE NONCLUSTERED INDEX [IX_Passagens_DestinoId_destino] ON [dbo].[Passagens]
(
	[DestinoId_destino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Passagens]  WITH CHECK ADD  CONSTRAINT [FK_Passagens_Cadastro_CadastroId_cadastro] FOREIGN KEY([CadastroId_cadastro])
REFERENCES [dbo].[Cadastro] ([Id_cadastro])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Passagens] CHECK CONSTRAINT [FK_Passagens_Cadastro_CadastroId_cadastro]
GO
ALTER TABLE [dbo].[Passagens]  WITH CHECK ADD  CONSTRAINT [FK_Passagens_Destino_DestinoId_destino] FOREIGN KEY([DestinoId_destino])
REFERENCES [dbo].[Destino] ([Id_destino])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Passagens] CHECK CONSTRAINT [FK_Passagens_Destino_DestinoId_destino]
GO
USE [master]
GO
ALTER DATABASE [DiogoTurismo] SET  READ_WRITE 
GO
