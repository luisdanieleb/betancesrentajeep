
/****** Nombre: Luis Daniel Betances Matricula:13-EIIN-1-148 Seccion:0541 ******/

USE [master]
GO
/****** Object:  Database [BentancesrentajeepDb]    Script Date: 17/08/2018 21:06:41 ******/
CREATE DATABASE [BentancesrentajeepDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BentancesrentajeepDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BentancesrentajeepDb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BentancesrentajeepDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BentancesrentajeepDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BentancesrentajeepDb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BentancesrentajeepDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BentancesrentajeepDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BentancesrentajeepDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BentancesrentajeepDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BentancesrentajeepDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BentancesrentajeepDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BentancesrentajeepDb] SET  MULTI_USER 
GO
ALTER DATABASE [BentancesrentajeepDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BentancesrentajeepDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BentancesrentajeepDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BentancesrentajeepDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BentancesrentajeepDb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BentancesrentajeepDb]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 17/08/2018 21:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientes](
	[IDcliente] [int] NULL,
	[nombre] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[telefono] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JEEPETA]    Script Date: 17/08/2018 21:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JEEPETA](
	[ID Jeep] [int] NULL,
	[color] [varchar](50) NULL,
	[marca] [varchar](50) NULL,
	[trans] [varchar](50) NULL,
	[neumaticos] [varchar](50) NULL,
	[ano] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JEEPETARENTADA]    Script Date: 17/08/2018 21:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JEEPETARENTADA](
	[IDCLIENTE] [int] NULL,
	[IDJEEP] [int] NULL,
	[FECHADEENTREGA] [varchar](50) NULL,
	[FECHADEVOLUCION] [varchar](50) NULL,
	[MONTODEPOSITADO] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[clientes] ([IDcliente], [nombre], [direccion], [telefono]) VALUES (1, N'Jose Baez', N'C/Sanchez km:22', N'809-898-7034')
INSERT [dbo].[clientes] ([IDcliente], [nombre], [direccion], [telefono]) VALUES (2, N'Susana Reyes', N'C/San Agustin#4', N'809-803-2826')
INSERT [dbo].[clientes] ([IDcliente], [nombre], [direccion], [telefono]) VALUES (3, N'Rodolfo Arias', N'C/Los posos#46', N'809-886-9008')
INSERT [dbo].[clientes] ([IDcliente], [nombre], [direccion], [telefono]) VALUES (4, N'Nashla Diaz', N'C/San Antonio #67', N'809-301-5467')
INSERT [dbo].[clientes] ([IDcliente], [nombre], [direccion], [telefono]) VALUES (5, N'Ivan Juarez', N'Av. Independencia #123', N'809-793-4427')
INSERT [dbo].[clientes] ([IDcliente], [nombre], [direccion], [telefono]) VALUES (6, N'Dominga Rosario', N'Av. 27 de febrero #211', N'809-221-0965')
INSERT [dbo].[clientes] ([IDcliente], [nombre], [direccion], [telefono]) VALUES (7, N'Luisa Tavarez ', N'Av. Prolongacion #201', N'809-345-8897')
INSERT [dbo].[clientes] ([IDcliente], [nombre], [direccion], [telefono]) VALUES (8, N'Yoan Heredia', N'Av.Nunez de Caceres #278', N'809-662-0921')
INSERT [dbo].[clientes] ([IDcliente], [nombre], [direccion], [telefono]) VALUES (9, N'Deisy Ovalle', N'C/Duarte #78', N'829-567-0982')
INSERT [dbo].[clientes] ([IDcliente], [nombre], [direccion], [telefono]) VALUES (10, N'Ruth Robeau', N'C/El sol #45', N'809-411-0234')
INSERT [dbo].[JEEPETA] ([ID Jeep], [color], [marca], [trans], [neumaticos], [ano]) VALUES (1, N'Blanco', N'Kia', N'Mecanica ', N'Nuevo', N'2012')
INSERT [dbo].[JEEPETA] ([ID Jeep], [color], [marca], [trans], [neumaticos], [ano]) VALUES (2, N'Rojo', N'Ford', N'Automatica', N'Medio Uso', N'2013')
INSERT [dbo].[JEEPETA] ([ID Jeep], [color], [marca], [trans], [neumaticos], [ano]) VALUES (3, N'Amarillo', N'Toyota', N'Automatica ', N'Nuevo ', N'2010')
INSERT [dbo].[JEEPETA] ([ID Jeep], [color], [marca], [trans], [neumaticos], [ano]) VALUES (4, N'Azul', N'Mazda', N'Automatica', N'Nuevo ', N'2014')
INSERT [dbo].[JEEPETA] ([ID Jeep], [color], [marca], [trans], [neumaticos], [ano]) VALUES (5, N'Negro', N'Lexus ', N'Automatica ', N'Nuevo', N'2008')
INSERT [dbo].[JEEPETA] ([ID Jeep], [color], [marca], [trans], [neumaticos], [ano]) VALUES (6, N'Rosado', N'Infinity ', N'Mecanica ', N'Usados', N'2017')
INSERT [dbo].[JEEPETA] ([ID Jeep], [color], [marca], [trans], [neumaticos], [ano]) VALUES (7, N'Morada', N'Honda', N'Mecanica ', N'Usada', N'2011')
INSERT [dbo].[JEEPETA] ([ID Jeep], [color], [marca], [trans], [neumaticos], [ano]) VALUES (8, N'Naranja ', N'Mitsubishi', N'Automatica ', N'Nuevo ', N'2012')
INSERT [dbo].[JEEPETA] ([ID Jeep], [color], [marca], [trans], [neumaticos], [ano]) VALUES (9, N'Marron', N'Acura', N'Mecanica ', N'Nuevo', N'2018')
INSERT [dbo].[JEEPETA] ([ID Jeep], [color], [marca], [trans], [neumaticos], [ano]) VALUES (10, N'Verde', N'Nissan', N'Automatica', N'Nuevo', N'2019')
INSERT [dbo].[JEEPETARENTADA] ([IDCLIENTE], [IDJEEP], [FECHADEENTREGA], [FECHADEVOLUCION], [MONTODEPOSITADO]) VALUES (1, 1, N'10-Agosto-2018', N'20-Agosto-2018', N'5,000')
INSERT [dbo].[JEEPETARENTADA] ([IDCLIENTE], [IDJEEP], [FECHADEENTREGA], [FECHADEVOLUCION], [MONTODEPOSITADO]) VALUES (2, 2, N'12-Septiembre-2018', N'22-Septiembre-2018', N'3,000')
INSERT [dbo].[JEEPETARENTADA] ([IDCLIENTE], [IDJEEP], [FECHADEENTREGA], [FECHADEVOLUCION], [MONTODEPOSITADO]) VALUES (3, 3, N'13-Mayo-2018', N'30-Mayo-2018', N'2,000')
INSERT [dbo].[JEEPETARENTADA] ([IDCLIENTE], [IDJEEP], [FECHADEENTREGA], [FECHADEVOLUCION], [MONTODEPOSITADO]) VALUES (4, 4, N'15-Enero-2001', N'22-Enero-2001', N'1,500')
INSERT [dbo].[JEEPETARENTADA] ([IDCLIENTE], [IDJEEP], [FECHADEENTREGA], [FECHADEVOLUCION], [MONTODEPOSITADO]) VALUES (5, 5, N'02-Febrero-2009', N'28-Febrero-2009', N'6,000')
INSERT [dbo].[JEEPETARENTADA] ([IDCLIENTE], [IDJEEP], [FECHADEENTREGA], [FECHADEVOLUCION], [MONTODEPOSITADO]) VALUES (6, 6, N'01-Marzo-2002', N'16-Marzo-2002', N'7,000')
INSERT [dbo].[JEEPETARENTADA] ([IDCLIENTE], [IDJEEP], [FECHADEENTREGA], [FECHADEVOLUCION], [MONTODEPOSITADO]) VALUES (7, 7, N'09-Noviembre-2004', N'21-Noviembre-2004', N'3,500')
INSERT [dbo].[JEEPETARENTADA] ([IDCLIENTE], [IDJEEP], [FECHADEENTREGA], [FECHADEVOLUCION], [MONTODEPOSITADO]) VALUES (8, 8, N'02-Diciembre', N'19-Diciembre', N'7,200')
INSERT [dbo].[JEEPETARENTADA] ([IDCLIENTE], [IDJEEP], [FECHADEENTREGA], [FECHADEVOLUCION], [MONTODEPOSITADO]) VALUES (9, 9, N'22-Octubre-2017', N'18-Noviembre-2018', N'30,000')
INSERT [dbo].[JEEPETARENTADA] ([IDCLIENTE], [IDJEEP], [FECHADEENTREGA], [FECHADEVOLUCION], [MONTODEPOSITADO]) VALUES (10, 10, N'11-Julio-2003', N'30-Julio-2003', N'4,000')
USE [master]
GO
ALTER DATABASE [BentancesrentajeepDb] SET  READ_WRITE 
GO
