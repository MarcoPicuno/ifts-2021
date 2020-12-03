USE [master]
GO
/****** Object:  Database [20201203_ricette]    Script Date: 03/12/2020 16:36:08 ******/
CREATE DATABASE [20201203_ricette]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'20201203_ricette', FILENAME = N'C:\RDMBSData\SQLDEV2019\Data\20201203_ricette.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'20201203_ricette_log', FILENAME = N'C:\RDMBSData\SQLDEV2019\Data\20201203_ricette_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [20201203_ricette] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [20201203_ricette].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [20201203_ricette] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [20201203_ricette] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [20201203_ricette] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [20201203_ricette] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [20201203_ricette] SET ARITHABORT OFF 
GO
ALTER DATABASE [20201203_ricette] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [20201203_ricette] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [20201203_ricette] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [20201203_ricette] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [20201203_ricette] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [20201203_ricette] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [20201203_ricette] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [20201203_ricette] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [20201203_ricette] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [20201203_ricette] SET  DISABLE_BROKER 
GO
ALTER DATABASE [20201203_ricette] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [20201203_ricette] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [20201203_ricette] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [20201203_ricette] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [20201203_ricette] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [20201203_ricette] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [20201203_ricette] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [20201203_ricette] SET RECOVERY FULL 
GO
ALTER DATABASE [20201203_ricette] SET  MULTI_USER 
GO
ALTER DATABASE [20201203_ricette] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [20201203_ricette] SET DB_CHAINING OFF 
GO
ALTER DATABASE [20201203_ricette] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [20201203_ricette] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [20201203_ricette] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'20201203_ricette', N'ON'
GO
ALTER DATABASE [20201203_ricette] SET QUERY_STORE = OFF
GO
USE [20201203_ricette]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 03/12/2020 16:36:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[nome_categoria] [varchar](30) NOT NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cuoco]    Script Date: 03/12/2020 16:36:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuoco](
	[id_cuoco] [int] IDENTITY(1,1) NOT NULL,
	[nome_cuoco] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cuoco] PRIMARY KEY CLUSTERED 
(
	[id_cuoco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ingrediente]    Script Date: 03/12/2020 16:36:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ingrediente](
	[id_ingrediente] [int] IDENTITY(1,1) NOT NULL,
	[nome_ingrediente] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ingrediente] PRIMARY KEY CLUSTERED 
(
	[id_ingrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[istruzione]    Script Date: 03/12/2020 16:36:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[istruzione](
	[id_istruzione] [int] IDENTITY(1,1) NOT NULL,
	[istruzione] [varchar](1000) NOT NULL,
	[numero_passo] [int] NOT NULL,
	[tempo] [float] NULL,
	[unita_misura_tempo] [varchar](5) NULL,
	[id_ricetta] [int] NOT NULL,
 CONSTRAINT [PK_istruzione] PRIMARY KEY CLUSTERED 
(
	[id_istruzione] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ricetta]    Script Date: 03/12/2020 16:36:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ricetta](
	[id_ricetta] [int] IDENTITY(1,1) NOT NULL,
	[nome_ricetta] [varchar](100) NOT NULL,
	[difficolta] [int] NULL,
	[id_categoria] [int] NOT NULL,
	[id_cuoco] [int] NOT NULL,
 CONSTRAINT [PK_ricetta] PRIMARY KEY CLUSTERED 
(
	[id_ricetta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ricetta_ingrediente]    Script Date: 03/12/2020 16:36:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ricetta_ingrediente](
	[id_ricetta] [int] NOT NULL,
	[id_ingrediente] [int] NOT NULL,
	[quantita] [float] NOT NULL,
	[unita_misura] [varchar](5) NOT NULL,
 CONSTRAINT [PK_ricetta_ingrediente] PRIMARY KEY CLUSTERED 
(
	[id_ricetta] ASC,
	[id_ingrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ricetta_ingrediente_istruzione]    Script Date: 03/12/2020 16:36:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ricetta_ingrediente_istruzione](
	[id_ricetta] [int] NOT NULL,
	[id_ingrediente] [int] NOT NULL,
	[id_istruzione] [int] NOT NULL,
	[parte_ingrediente] [varchar](100) NULL,
	[quantita] [float] NULL,
	[unita_misura] [varchar](5) NULL,
 CONSTRAINT [PK_ricetta_ingrediente_istruzione] PRIMARY KEY CLUSTERED 
(
	[id_ricetta] ASC,
	[id_ingrediente] ASC,
	[id_istruzione] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[categoria] ON 

INSERT [dbo].[categoria] ([id_categoria], [nome_categoria]) VALUES (1, N'Primi')
INSERT [dbo].[categoria] ([id_categoria], [nome_categoria]) VALUES (2, N'Secondi')
INSERT [dbo].[categoria] ([id_categoria], [nome_categoria]) VALUES (3, N'Dolci')
INSERT [dbo].[categoria] ([id_categoria], [nome_categoria]) VALUES (4, N'Contorni')
INSERT [dbo].[categoria] ([id_categoria], [nome_categoria]) VALUES (5, N'Antipasti')
INSERT [dbo].[categoria] ([id_categoria], [nome_categoria]) VALUES (6, N'Condimenti')
SET IDENTITY_INSERT [dbo].[categoria] OFF
SET IDENTITY_INSERT [dbo].[cuoco] ON 

INSERT [dbo].[cuoco] ([id_cuoco], [nome_cuoco]) VALUES (1, N'Andrea C.')
INSERT [dbo].[cuoco] ([id_cuoco], [nome_cuoco]) VALUES (2, N'Mario R.')
SET IDENTITY_INSERT [dbo].[cuoco] OFF
SET IDENTITY_INSERT [dbo].[ingrediente] ON 

INSERT [dbo].[ingrediente] ([id_ingrediente], [nome_ingrediente]) VALUES (1, N'Mascarpone')
INSERT [dbo].[ingrediente] ([id_ingrediente], [nome_ingrediente]) VALUES (2, N'Uovo')
INSERT [dbo].[ingrediente] ([id_ingrediente], [nome_ingrediente]) VALUES (3, N'Caffè')
INSERT [dbo].[ingrediente] ([id_ingrediente], [nome_ingrediente]) VALUES (4, N'Zucchero')
INSERT [dbo].[ingrediente] ([id_ingrediente], [nome_ingrediente]) VALUES (5, N'Cacao')
INSERT [dbo].[ingrediente] ([id_ingrediente], [nome_ingrediente]) VALUES (6, N'Savoiardi')
SET IDENTITY_INSERT [dbo].[ingrediente] OFF
SET IDENTITY_INSERT [dbo].[istruzione] ON 

INSERT [dbo].[istruzione] ([id_istruzione], [istruzione], [numero_passo], [tempo], [unita_misura_tempo], [id_ricetta]) VALUES (1, N'Unire i tuoli d''uovo con metà dello zucchero e sbattere con lo sbattitore', 1, 10, N'min', 1)
INSERT [dbo].[istruzione] ([id_istruzione], [istruzione], [numero_passo], [tempo], [unita_misura_tempo], [id_ricetta]) VALUES (2, N'Montare a neve gli albumi', 3, 15, N'min', 1)
INSERT [dbo].[istruzione] ([id_istruzione], [istruzione], [numero_passo], [tempo], [unita_misura_tempo], [id_ricetta]) VALUES (4, N'Unire il mascarpone alla crema ottenuta al punto precedente', 2, 5, N'min', 1)
SET IDENTITY_INSERT [dbo].[istruzione] OFF
SET IDENTITY_INSERT [dbo].[ricetta] ON 

INSERT [dbo].[ricetta] ([id_ricetta], [nome_ricetta], [difficolta], [id_categoria], [id_cuoco]) VALUES (1, N'Tiramisù', 3, 3, 1)
INSERT [dbo].[ricetta] ([id_ricetta], [nome_ricetta], [difficolta], [id_categoria], [id_cuoco]) VALUES (2, N'Zabaione', 1, 3, 2)
INSERT [dbo].[ricetta] ([id_ricetta], [nome_ricetta], [difficolta], [id_categoria], [id_cuoco]) VALUES (3, N'Spaghetti alla carbonara', 2, 1, 1)
INSERT [dbo].[ricetta] ([id_ricetta], [nome_ricetta], [difficolta], [id_categoria], [id_cuoco]) VALUES (4, N'Pesto', 4, 6, 2)
SET IDENTITY_INSERT [dbo].[ricetta] OFF
INSERT [dbo].[ricetta_ingrediente] ([id_ricetta], [id_ingrediente], [quantita], [unita_misura]) VALUES (1, 1, 500, N'gr')
INSERT [dbo].[ricetta_ingrediente] ([id_ricetta], [id_ingrediente], [quantita], [unita_misura]) VALUES (1, 2, 4, N'n.')
INSERT [dbo].[ricetta_ingrediente] ([id_ricetta], [id_ingrediente], [quantita], [unita_misura]) VALUES (1, 3, 1, N'tazza')
INSERT [dbo].[ricetta_ingrediente] ([id_ricetta], [id_ingrediente], [quantita], [unita_misura]) VALUES (1, 4, 100, N'gr')
INSERT [dbo].[ricetta_ingrediente] ([id_ricetta], [id_ingrediente], [quantita], [unita_misura]) VALUES (1, 5, 10, N'gr')
INSERT [dbo].[ricetta_ingrediente] ([id_ricetta], [id_ingrediente], [quantita], [unita_misura]) VALUES (1, 6, 300, N'gr')
INSERT [dbo].[ricetta_ingrediente_istruzione] ([id_ricetta], [id_ingrediente], [id_istruzione], [parte_ingrediente], [quantita], [unita_misura]) VALUES (1, 2, 1, N'tuorlo', 4, N'n.')
INSERT [dbo].[ricetta_ingrediente_istruzione] ([id_ricetta], [id_ingrediente], [id_istruzione], [parte_ingrediente], [quantita], [unita_misura]) VALUES (1, 2, 2, N'albume', 4, N'n.')
INSERT [dbo].[ricetta_ingrediente_istruzione] ([id_ricetta], [id_ingrediente], [id_istruzione], [parte_ingrediente], [quantita], [unita_misura]) VALUES (1, 4, 1, NULL, 50, N'gr')
ALTER TABLE [dbo].[istruzione]  WITH CHECK ADD  CONSTRAINT [FK_istruzione_ricetta] FOREIGN KEY([id_ricetta])
REFERENCES [dbo].[ricetta] ([id_ricetta])
GO
ALTER TABLE [dbo].[istruzione] CHECK CONSTRAINT [FK_istruzione_ricetta]
GO
ALTER TABLE [dbo].[ricetta]  WITH CHECK ADD  CONSTRAINT [FK_ricetta_categoria] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[categoria] ([id_categoria])
GO
ALTER TABLE [dbo].[ricetta] CHECK CONSTRAINT [FK_ricetta_categoria]
GO
ALTER TABLE [dbo].[ricetta]  WITH CHECK ADD  CONSTRAINT [FK_ricetta_cuoco] FOREIGN KEY([id_cuoco])
REFERENCES [dbo].[cuoco] ([id_cuoco])
GO
ALTER TABLE [dbo].[ricetta] CHECK CONSTRAINT [FK_ricetta_cuoco]
GO
ALTER TABLE [dbo].[ricetta_ingrediente]  WITH CHECK ADD  CONSTRAINT [FK_ricetta_ingrediente_ingrediente] FOREIGN KEY([id_ingrediente])
REFERENCES [dbo].[ingrediente] ([id_ingrediente])
GO
ALTER TABLE [dbo].[ricetta_ingrediente] CHECK CONSTRAINT [FK_ricetta_ingrediente_ingrediente]
GO
ALTER TABLE [dbo].[ricetta_ingrediente]  WITH CHECK ADD  CONSTRAINT [FK_ricetta_ingrediente_ricetta] FOREIGN KEY([id_ricetta])
REFERENCES [dbo].[ricetta] ([id_ricetta])
GO
ALTER TABLE [dbo].[ricetta_ingrediente] CHECK CONSTRAINT [FK_ricetta_ingrediente_ricetta]
GO
ALTER TABLE [dbo].[ricetta_ingrediente_istruzione]  WITH CHECK ADD  CONSTRAINT [FK_ricetta_ingrediente_istruzione_istruzione] FOREIGN KEY([id_istruzione])
REFERENCES [dbo].[istruzione] ([id_istruzione])
GO
ALTER TABLE [dbo].[ricetta_ingrediente_istruzione] CHECK CONSTRAINT [FK_ricetta_ingrediente_istruzione_istruzione]
GO
ALTER TABLE [dbo].[ricetta_ingrediente_istruzione]  WITH CHECK ADD  CONSTRAINT [FK_ricetta_ingrediente_istruzione_ricetta_ingrediente] FOREIGN KEY([id_ricetta], [id_ingrediente])
REFERENCES [dbo].[ricetta_ingrediente] ([id_ricetta], [id_ingrediente])
GO
ALTER TABLE [dbo].[ricetta_ingrediente_istruzione] CHECK CONSTRAINT [FK_ricetta_ingrediente_istruzione_ricetta_ingrediente]
GO
USE [master]
GO
ALTER DATABASE [20201203_ricette] SET  READ_WRITE 
GO
