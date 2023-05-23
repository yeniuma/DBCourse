USE [master]
GO
CREATE DATABASE [jatekok]
CONTAINMENT = NONE
ON PRIMARY
( NAME = N'jatekok', FILENAME = N'F:\DatabaseCourse\jatekok.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
LOG ON
( NAME = N'jatekok_log', FILENAME = N'F:\DatabaseCourse\jatekok_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [jatekok] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [jatekok].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [jatekok] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [jatekok] SET ANSI_NULLS OFF
GO
ALTER DATABASE [jatekok] SET ANSI_PADDING OFF
GO
ALTER DATABASE [jatekok] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [jatekok] SET ARITHABORT OFF
GO

ALTER DATABASE [jatekok] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [jatekok] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [jatekok] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [jatekok] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [jatekok] SET CURSOR_DEFAULT GLOBAL
GO
ALTER DATABASE [jatekok] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [jatekok] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [jatekok] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [jatekok] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [jatekok] SET DISABLE_BROKER
GO
ALTER DATABASE [jatekok] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [jatekok] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [jatekok] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [jatekok] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [jatekok] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [jatekok] SET READ_COMMITTED_SNAPSHOT OFF

GO
ALTER DATABASE [jatekok] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [jatekok] SET RECOVERY FULL
GO
ALTER DATABASE [jatekok] SET MULTI_USER
GO
ALTER DATABASE [jatekok] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [jatekok] SET DB_CHAINING OFF
GO
ALTER DATABASE [jatekok] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )
GO
ALTER DATABASE [jatekok] SET TARGET_RECOVERY_TIME = 60 SECONDS
GO
ALTER DATABASE [jatekok] SET DELAYED_DURABILITY = DISABLED
GO
EXEC sys.sp_db_vardecimal_storage_format N'jatekok', N'ON'
GO
ALTER DATABASE [jatekok] SET QUERY_STORE = OFF
GO
USE [jatekok]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [eladasok](
[eladottID] [int] NOT NULL,
[vevoID] [int] NOT NULL,
[eladasdatuma] [smalldatetime] NOT NULL,

[szeriaszam] [nvarchar](16) NOT NULL,
CONSTRAINT [PK_eladasok] PRIMARY KEY CLUSTERED
(
[eladottID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [epicgames](
[epicgamesID] [nvarchar](50) NOT NULL,
[szeriaszam] [nvarchar](16) NOT NULL,
[platformnev] [nvarchar](50) NOT NULL,
[eredetiar] [int] NOT NULL,
[akciosar] [int] NULL,
CONSTRAINT [PK_epicgames_1] PRIMARY KEY CLUSTERED
(
[epicgamesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fizetes](

[fizetesID] [tinyint] NOT NULL,
[eladottID] [int] NOT NULL,
[vevoID] [int] NOT NULL,
[nyugtaszam] [int] NOT NULL,
[fizetesmodja] [nvarchar](50) NOT NULL,
CONSTRAINT [PK_fizetes] PRIMARY KEY CLUSTERED
(
[fizetesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [jatek_tulajdonsagok](
[szeriaszam] [nvarchar](16) NOT NULL,
[mufaj] [nvarchar](50) NOT NULL,
[jatektipusa] [nvarchar](50) NOT NULL,
[kiadasiev] [smallint] NOT NULL,
CONSTRAINT [PK_jatek_tulajdonsagok] PRIMARY KEY CLUSTERED
(
[szeriaszam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [jatekok](
[kiado] [nvarchar](50) NOT NULL,
[jateknev] [nvarchar](100) NOT NULL,
[szeriaszam] [nvarchar](16) NOT NULL,
CONSTRAINT [PK_jatekok_1] PRIMARY KEY CLUSTERED
(
[szeriaszam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [munkatarsak](
[munkatarsID] [tinyint] NOT NULL,
[nev] [nvarchar](50) NOT NULL,
[telefonszam] [nchar](12) NOT NULL,
[email] [nvarchar](50) NOT NULL,
CONSTRAINT [PK_munkatarsak] PRIMARY KEY CLUSTERED
(
[munkatarsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON

GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [origin](
[originID] [nvarchar](50) NOT NULL,
[szeriaszam] [nvarchar](16) NOT NULL,
[platformnev] [nvarchar](50) NOT NULL,
[eredetiar] [int] NOT NULL,
[akciosar] [int] NULL,
CONSTRAINT [PK_origin] PRIMARY KEY CLUSTERED
(
[originID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [steam](
[steamID] [nvarchar](50) NOT NULL,
[szeriaszam] [nvarchar](16) NOT NULL,
[platformnev] [nvarchar](50) NOT NULL,
[eredetiar] [int] NOT NULL,
[akciosar] [int] NULL,
CONSTRAINT [PK_steam_1] PRIMARY KEY CLUSTERED
(
[steamID] ASC

)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ticketek](
[ticketID] [int] NOT NULL,
[panasz] [nvarchar](250) NOT NULL,
[vevoID] [int] NOT NULL,
[munkatarsID] [tinyint] NOT NULL,
[teljesitett_e] [bit] NOT NULL,
CONSTRAINT [PK_ticketek] PRIMARY KEY CLUSTERED
(
[ticketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [vevok](
[vevoID] [int] NOT NULL,
[vevonev] [nvarchar](100) NOT NULL,
[email] [nvarchar](50) NULL,
[telefonszam] [nchar](12) NULL,

[iranyitoszam] [nchar](4) NOT NULL,
[telepules] [nvarchar](25) NOT NULL,
[utca] [nchar](50) NOT NULL,
[hazszam] [nvarchar](5) NOT NULL,
CONSTRAINT [PK_vevok] PRIMARY KEY CLUSTERED
(
[vevoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [eladasok] ([eladottID], [vevoID], [eladasdatuma], [szeriaszam]) VALUES (1, 1, CAST(N'2018-02-14T00:00:00' AS SmallDateTime), N'1')
GO
INSERT [eladasok] ([eladottID], [vevoID], [eladasdatuma], [szeriaszam]) VALUES (2, 1, CAST(N'2018-02-14T00:00:00' AS SmallDateTime), N'5')
GO
INSERT [eladasok] ([eladottID], [vevoID], [eladasdatuma], [szeriaszam]) VALUES (3, 1, CAST(N'2018-02-14T00:00:00' AS SmallDateTime), N'8')
GO
INSERT [eladasok] ([eladottID], [vevoID], [eladasdatuma], [szeriaszam]) VALUES (4, 5, CAST(N'2018-02-14T00:00:00' AS SmallDateTime), N'9')
GO
INSERT [eladasok] ([eladottID], [vevoID], [eladasdatuma], [szeriaszam]) VALUES (5, 2, CAST(N'2018-02-15T00:00:00' AS SmallDateTime), N'10')
GO
INSERT [eladasok] ([eladottID], [vevoID], [eladasdatuma], [szeriaszam]) VALUES (6, 3, CAST(N'2018-02-15T00:00:00' AS SmallDateTime), N'2')
GO
INSERT [eladasok] ([eladottID], [vevoID], [eladasdatuma], [szeriaszam]) VALUES (7, 2, CAST(N'2018-02-15T00:00:00' AS SmallDateTime), N'3')
GO
INSERT [eladasok] ([eladottID], [vevoID], [eladasdatuma], [szeriaszam]) VALUES (8, 6, CAST(N'2018-02-16T00:00:00' AS SmallDateTime), N'13')

GO
INSERT [eladasok] ([eladottID], [vevoID], [eladasdatuma], [szeriaszam]) VALUES (9, 7, CAST(N'2018-02-16T00:00:00' AS SmallDateTime), N'13')
GO
INSERT [eladasok] ([eladottID], [vevoID], [eladasdatuma], [szeriaszam]) VALUES (10, 7, CAST(N'2018-02-17T00:00:00' AS SmallDateTime), N'4')
GO
INSERT [eladasok] ([eladottID], [vevoID], [eladasdatuma], [szeriaszam]) VALUES (11, 7, CAST(N'2018-02-18T00:00:00' AS SmallDateTime), N'6')
GO
INSERT [eladasok] ([eladottID], [vevoID], [eladasdatuma], [szeriaszam]) VALUES (12, 4, CAST(N'2018-02-18T00:00:00' AS SmallDateTime), N'12')
GO
INSERT [eladasok] ([eladottID], [vevoID], [eladasdatuma], [szeriaszam]) VALUES (13, 5, CAST(N'2018-02-18T00:00:00' AS SmallDateTime), N'7')
GO
INSERT [eladasok] ([eladottID], [vevoID], [eladasdatuma], [szeriaszam]) VALUES (14, 2, CAST(N'2018-02-18T00:00:00' AS SmallDateTime), N'11')
GO
INSERT [eladasok] ([eladottID], [vevoID], [eladasdatuma], [szeriaszam]) VALUES (15, 1, CAST(N'2018-02-18T00:00:00' AS SmallDateTime), N'10')
GO
INSERT [eladasok] ([eladottID], [vevoID], [eladasdatuma], [szeriaszam]) VALUES (16, 6, CAST(N'2018-02-19T00:00:00' AS SmallDateTime), N'13')
GO
INSERT [epicgames] ([epicgamesID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'1', N'1', N'Epic Games', 20000, 16799)
GO
INSERT [epicgames] ([epicgamesID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'2', N'3', N'Epic Games', 17999, 3980)
GO
INSERT [epicgames] ([epicgamesID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'3', N'5', N'Epic Games', 10490, 5245)
GO

INSERT [epicgames] ([epicgamesID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'4', N'7', N'Epic Games', 18500, 17000)
GO
INSERT [epicgames] ([epicgamesID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'5', N'9', N'Epic Games', 20900, 15675)
GO
INSERT [epicgames] ([epicgamesID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'6', N'11', N'Epic Games', 6600, 2664)
GO
INSERT [epicgames] ([epicgamesID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'7', N'12', N'Epic Games', 19990, 9995)
GO
INSERT [epicgames] ([epicgamesID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'8', N'13', N'Epic Games', 17720, 3425)
GO
INSERT [epicgames] ([epicgamesID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'9', N'14', N'Epic Games', 20730, 13889)
GO
INSERT [fizetes] ([fizetesID], [eladottID], [vevoID], [nyugtaszam], [fizetesmodja]) VALUES (1, 1, 1, 101, N'MasterCard')
GO
INSERT [fizetes] ([fizetesID], [eladottID], [vevoID], [nyugtaszam], [fizetesmodja]) VALUES (2, 2, 1, 102, N'PayPal')
GO
INSERT [fizetes] ([fizetesID], [eladottID], [vevoID], [nyugtaszam], [fizetesmodja]) VALUES (3, 3, 1, 103, N'Maestro')
GO
INSERT [fizetes] ([fizetesID], [eladottID], [vevoID], [nyugtaszam], [fizetesmodja]) VALUES (4, 4, 5, 104, N'PayPal')
GO
INSERT [fizetes] ([fizetesID], [eladottID], [vevoID], [nyugtaszam], [fizetesmodja]) VALUES (5, 5, 2, 105, N'Visa')
GO
INSERT [fizetes] ([fizetesID], [eladottID], [vevoID], [nyugtaszam], [fizetesmodja]) VALUES (6, 6, 3, 106, N'MasterCard')

GO
INSERT [fizetes] ([fizetesID], [eladottID], [vevoID], [nyugtaszam], [fizetesmodja]) VALUES (7, 7, 2, 107, N'Visa')
GO
INSERT [fizetes] ([fizetesID], [eladottID], [vevoID], [nyugtaszam], [fizetesmodja]) VALUES (8, 8, 6, 108, N'Maestro')
GO
INSERT [fizetes] ([fizetesID], [eladottID], [vevoID], [nyugtaszam], [fizetesmodja]) VALUES (9, 9, 7, 109, N'Maestro')
GO
INSERT [fizetes] ([fizetesID], [eladottID], [vevoID], [nyugtaszam], [fizetesmodja]) VALUES (10, 10, 7, 110, N'Visa')
GO
INSERT [fizetes] ([fizetesID], [eladottID], [vevoID], [nyugtaszam], [fizetesmodja]) VALUES (11, 11, 7, 111, N'PayPal')
GO
INSERT [fizetes] ([fizetesID], [eladottID], [vevoID], [nyugtaszam], [fizetesmodja]) VALUES (12, 12, 4, 112, N'Visa')
GO
INSERT [fizetes] ([fizetesID], [eladottID], [vevoID], [nyugtaszam], [fizetesmodja]) VALUES (13, 13, 5, 113, N'MasterCard')
GO
INSERT [fizetes] ([fizetesID], [eladottID], [vevoID], [nyugtaszam], [fizetesmodja]) VALUES (14, 14, 2, 114, N'PayPal')
GO
INSERT [fizetes] ([fizetesID], [eladottID], [vevoID], [nyugtaszam], [fizetesmodja]) VALUES (15, 15, 1, 115, N'Revolut')
GO
INSERT [fizetes] ([fizetesID], [eladottID], [vevoID], [nyugtaszam], [fizetesmodja]) VALUES (16, 16, 6, 116, N'Revolut')
GO
INSERT [jatek_tulajdonsagok] ([szeriaszam], [mufaj], [jatektipusa], [kiadasiev]) VALUES (N'1', N'akci�-szerepj�t�k', N'singleplayer', 2020)
GO

INSERT [jatek_tulajdonsagok] ([szeriaszam], [mufaj], [jatektipusa], [kiadasiev]) VALUES (N'10', N'�letszimul�ci�s j�t�k', N'singleplayer', 2014)
GO
INSERT [jatek_tulajdonsagok] ([szeriaszam], [mufaj], [jatektipusa], [kiadasiev]) VALUES (N'11', N'FPS', N'multiplayer', 2015)
GO
INSERT [jatek_tulajdonsagok] ([szeriaszam], [mufaj], [jatektipusa], [kiadasiev]) VALUES (N'12', N'akci�-kalandj�t�k', N'singleplayer', 2020)
GO
INSERT [jatek_tulajdonsagok] ([szeriaszam], [mufaj], [jatektipusa], [kiadasiev]) VALUES (N'13', N'fantasy-szerepj�t�k', N'singleplayer', 2015)
GO
INSERT [jatek_tulajdonsagok] ([szeriaszam], [mufaj], [jatektipusa], [kiadasiev]) VALUES (N'14', N'akci�-szerepj�t�k', N'singleplayer', 2018)
GO
INSERT [jatek_tulajdonsagok] ([szeriaszam], [mufaj], [jatektipusa], [kiadasiev]) VALUES (N'2', N'akci�-t�l�l�j�t�k', N'singleplayer', 2015)
GO
INSERT [jatek_tulajdonsagok] ([szeriaszam], [mufaj], [jatektipusa], [kiadasiev]) VALUES (N'3', N'akci�-szerepj�t�k', N'singleplayer', 2018)
GO
INSERT [jatek_tulajdonsagok] ([szeriaszam], [mufaj], [jatektipusa], [kiadasiev]) VALUES (N'4', N'sport-szimul�ci�s j�t�k', N'multiplayer', 2020)
GO
INSERT [jatek_tulajdonsagok] ([szeriaszam], [mufaj], [jatektipusa], [kiadasiev]) VALUES (N'5', N'akci�-szerepj�t�k', N'singleplayer', 2013)
GO
INSERT [jatek_tulajdonsagok] ([szeriaszam], [mufaj], [jatektipusa], [kiadasiev]) VALUES (N'6', N'vereked�s j�t�k', N'multiplayer', 2019)
GO
INSERT [jatek_tulajdonsagok] ([szeriaszam], [mufaj], [jatektipusa], [kiadasiev]) VALUES (N'7', N'szerepj�t�k', N'multiplayer', 2021)
GO
INSERT [jatek_tulajdonsagok] ([szeriaszam], [mufaj], [jatektipusa], [kiadasiev]) VALUES (N'8', N'battle-royale', N'multiplayer', 2016)

GO
INSERT [jatek_tulajdonsagok] ([szeriaszam], [mufaj], [jatektipusa], [kiadasiev]) VALUES (N'9', N'szerepj�t�k', N'singleplayer', 2021)
GO
INSERT [jatekok] ([kiado], [jateknev], [szeriaszam]) VALUES (N'CD Projekt Red', N'Cyberpunk 2077', N'1')
GO
INSERT [jatekok] ([kiado], [jateknev], [szeriaszam]) VALUES (N'Electronic Arts', N'The Sims 4', N'10')
GO
INSERT [jatekok] ([kiado], [jateknev], [szeriaszam]) VALUES (N'Ubisoft', N'Tom Clancy''s Rainbow Six Siege', N'11')
GO
INSERT [jatekok] ([kiado], [jateknev], [szeriaszam]) VALUES (N'Ubisoft', N'Watch Dogs: Legion', N'12')
GO
INSERT [jatekok] ([kiado], [jateknev], [szeriaszam]) VALUES (N'CD Projekt Red', N'The Witcher 3', N'13')
GO
INSERT [jatekok] ([kiado], [jateknev], [szeriaszam]) VALUES (N'Rockstar Games', N'Red Dead Redemption 2', N'14')
GO
INSERT [jatekok] ([kiado], [jateknev], [szeriaszam]) VALUES (N'Techland Publishing', N'Dying Light', N'2')
GO
INSERT [jatekok] ([kiado], [jateknev], [szeriaszam]) VALUES (N'Ubisoft', N'Far Cry 5', N'3')
GO
INSERT [jatekok] ([kiado], [jateknev], [szeriaszam]) VALUES (N'Electronic Arts', N'FIFA 21', N'4')
GO
INSERT [jatekok] ([kiado], [jateknev], [szeriaszam]) VALUES (N'Rockstar Games', N'Grand Theft Auto V', N'5')
GO
INSERT [jatekok] ([kiado], [jateknev], [szeriaszam]) VALUES (N'Netherrealm Studios', N'Mortal Kombat 11', N'6')
GO
INSERT [jatekok] ([kiado], [jateknev], [szeriaszam]) VALUES (N'Square Enix', N'Outriders', N'7')

GO
INSERT [jatekok] ([kiado], [jateknev], [szeriaszam]) VALUES (N'PUBG Corporation', N'PlayerUnknown''s Battlegrounds', N'8')
GO
INSERT [jatekok] ([kiado], [jateknev], [szeriaszam]) VALUES (N'IO Interactive', N'SQUARE ENIX Hitman 3', N'9')
GO
INSERT [munkatarsak] ([munkatarsID], [nev], [telefonszam], [email]) VALUES (1, N'Nagy S�ndor', N'+36205865433', N'nagysandor@jatekbolt.hu')
GO
INSERT [munkatarsak] ([munkatarsID], [nev], [telefonszam], [email]) VALUES (2, N'Kiss Petra', N'+36301298724', N'kisspetra@jatekbolt.hu')
GO
INSERT [munkatarsak] ([munkatarsID], [nev], [telefonszam], [email]) VALUES (3, N'Varga �ron', N'+36307218913', N'vargaaron@jatekbolt.hu')
GO
INSERT [munkatarsak] ([munkatarsID], [nev], [telefonszam], [email]) VALUES (4, N'T�r�k �d�m', N'+36608172112', N'torokadam@jatekbolt.hu')
GO
INSERT [origin] ([originID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'1', N'3', N'Origin', 18999, 17000)
GO
INSERT [origin] ([originID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'2', N'4', N'Origin', 9620, 5940)
GO
INSERT [origin] ([originID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'3', N'10', N'Origin', 3550, 2650)
GO
INSERT [origin] ([originID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'4', N'11', N'Origin', 7120, 5550)
GO
INSERT [origin] ([originID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'5', N'13', N'Origin', 9970, 2440)
GO

INSERT [steam] ([steamID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'1', N'1', N'Steam', 21000, 17500)
GO
INSERT [steam] ([steamID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'10', N'11', N'Steam', 7000, 2500)
GO
INSERT [steam] ([steamID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'11', N'13', N'Steam', 9980, 6400)
GO
INSERT [steam] ([steamID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'12', N'14', N'Steam', 21490, 13350)
GO
INSERT [steam] ([steamID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'2', N'2', N'Steam', 11000, 4999)
GO
INSERT [steam] ([steamID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'3', N'3', N'Steam', 18000, 9760)
GO
INSERT [steam] ([steamID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'4', N'4', N'Steam', 19000, 16999)
GO
INSERT [steam] ([steamID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'5', N'5', N'Steam', 9890, 5450)
GO
INSERT [steam] ([steamID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'6', N'6', N'Steam', 14625, 12250)
GO
INSERT [steam] ([steamID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'7', N'7', N'Steam', 21500, 18399)
GO
INSERT [steam] ([steamID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'8', N'8', N'Steam', 9850, 3640)
GO
INSERT [steam] ([steamID], [szeriaszam], [platformnev], [eredetiar], [akciosar]) VALUES (N'9', N'10', N'Steam', 14330, 1719)

GO
INSERT [ticketek] ([ticketID], [panasz], [vevoID], [munkatarsID], [teljesitett_e]) VALUES (1, N'Nem m�k�dik a webshopos fel�let.', 2, 4, 1)
GO
INSERT [ticketek] ([ticketID], [panasz], [vevoID], [munkatarsID], [teljesitett_e]) VALUES (2, N'A weblap �gyf�lszolg�lat r�sz�n tal�lhat� live chat nem el�rhet�.', 4, 1, 1)
GO
INSERT [ticketek] ([ticketID], [panasz], [vevoID], [munkatarsID], [teljesitett_e]) VALUES (3, N'A fizet�s ut�n nem kaptam meg a megv�s�rolt j�t�k k�dj�t.', 5, 2, 1)
GO
INSERT [ticketek] ([ticketID], [panasz], [vevoID], [munkatarsID], [teljesitett_e]) VALUES (4, N'Nem el�rhet� az �gyf�lszolg�lat a nyitvatart�si id�ben.', 6, 3, 1)
GO
INSERT [ticketek] ([ticketID], [panasz], [vevoID], [munkatarsID], [teljesitett_e]) VALUES (5, N'T�bb p�nzt vont le, mint amennyibe a v�s�rolt j�t�k ker�lt.', 1, 1, 1)
GO
INSERT [ticketek] ([ticketID], [panasz], [vevoID], [munkatarsID], [teljesitett_e]) VALUES (6, N'A k�ld�tt j�t�kk�d nem m�k�dik, nem aktiv�lhat�.', 2, 1, 0)
GO
INSERT [ticketek] ([ticketID], [panasz], [vevoID], [munkatarsID], [teljesitett_e]) VALUES (7, N'M�sik j�t�kot kaptam, mint amit vettem.', 7, 4, 0)
GO
INSERT [ticketek] ([ticketID], [panasz], [vevoID], [munkatarsID], [teljesitett_e]) VALUES (8, N'Nem megfelel�en van felt�ntetve az oldalon a The Witcher 3 nev� j�t�k �ra.', 3, 2, 1)
GO
INSERT [ticketek] ([ticketID], [panasz], [vevoID], [munkatarsID], [teljesitett_e]) VALUES (9, N'Rossz �gyf�lszolg�lati telefonsz�m van megadva.', 1, 3, 0)
GO
INSERT [ticketek] ([ticketID], [panasz], [vevoID], [munkatarsID], [teljesitett_e]) VALUES (10, N'Szeretn�m visszak�rni a p�nzemet, nem vagyok megel�gedve a v�s�rolt j�t�k min�s�g�vel.', 4, 1, 0)
GO
INSERT [ticketek] ([ticketID], [panasz], [vevoID], [munkatarsID], [teljesitett_e]) VALUES (11, N'Nem megfelel� �sszeget vont le a k�rty�mr�l a webshopjuk.', 2, 1, 1)
GO

INSERT [vevok] ([vevoID], [vevonev], [email], [telefonszam], [iranyitoszam], [telepules], [utca], [hazszam]) VALUES (1, N'Kov�cs J�nos', N'kovacsjani@gmail.com', NULL, N'9200', N'Mosonmagyar�v�r', N'Szarvas u. ', N'45.')
GO
INSERT [vevok] ([vevoID], [vevonev], [email], [telefonszam], [iranyitoszam], [telepules], [utca], [hazszam]) VALUES (2, N'Kiss J�lia', N'kissjulia22@citromail.hu', NULL, N'2660', N'Ipolysz�g', N'D�v�r u. ', N'23.')
GO
INSERT [vevok] ([vevoID], [vevonev], [email], [telefonszam], [iranyitoszam], [telepules], [utca], [hazszam]) VALUES (3, N'Nagy Ferenc', N'nferi79@gmail.com', N'+36304115662', N'2151', N'F�t', N'Pet�fi u. ', N'56.')
GO
INSERT [vevok] ([vevoID], [vevonev], [email], [telefonszam], [iranyitoszam], [telepules], [utca], [hazszam]) VALUES (4, N'T�th D�vid', N'tothd@freemail.hu', NULL, N'2700', N'Cegl�d', N'H�vir�g u. ', N'11.')
GO
INSERT [vevok] ([vevoID], [vevonev], [email], [telefonszam], [iranyitoszam], [telepules], [utca], [hazszam]) VALUES (5, N'Luk�cs M�ria', N'lukimari@gmail.com', N'+36309105765', N'9023', N'Gy�r', N'Corvin u. ', N'27.')
GO
INSERT [vevok] ([vevoID], [vevonev], [email], [telefonszam], [iranyitoszam], [telepules], [utca], [hazszam]) VALUES (6, N'Guly�s Izabella', N'gulyasiza65@gmail.com', N'+36302575761', N'9030', N'Gy�r', N'P�nzverem u. ', N'72.')
GO
INSERT [vevok] ([vevoID], [vevonev], [email], [telefonszam], [iranyitoszam], [telepules], [utca], [hazszam]) VALUES (7, N'B�r� Martin', N'hubbma@gmail.com', N'+36301545567', N'8263', N'Badacsonyt�rdemic', N'Pet�fi S�ndor u. ', N'2.')
GO
ALTER TABLE [fizetes] ADD CONSTRAINT [IX_fizetes] UNIQUE NONCLUSTERED
(
[nyugtaszam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [eladasok] WITH CHECK ADD CONSTRAINT [FK_eladasok_jatekok] FOREIGN KEY([szeriaszam])

REFERENCES [jatekok] ([szeriaszam])
GO
ALTER TABLE [eladasok] CHECK CONSTRAINT [FK_eladasok_jatekok]
GO
ALTER TABLE [eladasok] WITH CHECK ADD CONSTRAINT [FK_eladasok_vevok] FOREIGN KEY([vevoID])
REFERENCES [vevok] ([vevoID])
GO
ALTER TABLE [eladasok] CHECK CONSTRAINT [FK_eladasok_vevok]
GO
ALTER TABLE [epicgames] WITH CHECK ADD CONSTRAINT [FK_epicgames_jatekok] FOREIGN KEY([szeriaszam])
REFERENCES [jatekok] ([szeriaszam])
GO
ALTER TABLE [epicgames] CHECK CONSTRAINT [FK_epicgames_jatekok]
GO
ALTER TABLE [fizetes] WITH CHECK ADD CONSTRAINT [FK_fizetes_eladasok] FOREIGN KEY([eladottID])
REFERENCES [eladasok] ([eladottID])
GO
ALTER TABLE [fizetes] CHECK CONSTRAINT [FK_fizetes_eladasok]
GO
ALTER TABLE [fizetes] WITH CHECK ADD CONSTRAINT [FK_fizetes_vevok] FOREIGN KEY([vevoID])
REFERENCES [vevok] ([vevoID])
GO
ALTER TABLE [fizetes] CHECK CONSTRAINT [FK_fizetes_vevok]
GO
ALTER TABLE [jatek_tulajdonsagok] WITH CHECK ADD CONSTRAINT [FK_jatek_tulajdonsagok_jatekok] FOREIGN KEY([szeriaszam])
REFERENCES [jatekok] ([szeriaszam])
GO
ALTER TABLE [jatek_tulajdonsagok] CHECK CONSTRAINT [FK_jatek_tulajdonsagok_jatekok]

GO
ALTER TABLE [origin] WITH CHECK ADD CONSTRAINT [FK_origin_jatekok] FOREIGN KEY([szeriaszam])
REFERENCES [jatekok] ([szeriaszam])
GO
ALTER TABLE [origin] CHECK CONSTRAINT [FK_origin_jatekok]
GO
ALTER TABLE [steam] WITH CHECK ADD CONSTRAINT [FK_steam_jatekok] FOREIGN KEY([szeriaszam])
REFERENCES [jatekok] ([szeriaszam])
GO
ALTER TABLE [steam] CHECK CONSTRAINT [FK_steam_jatekok]
GO
ALTER TABLE [ticketek] WITH CHECK ADD CONSTRAINT [FK_ticketek_munkatarsak] FOREIGN KEY([munkatarsID])
REFERENCES [munkatarsak] ([munkatarsID])
GO
ALTER TABLE [ticketek] CHECK CONSTRAINT [FK_ticketek_munkatarsak]
GO
ALTER TABLE [ticketek] WITH CHECK ADD CONSTRAINT [FK_ticketek_vevok] FOREIGN KEY([vevoID])
REFERENCES [vevok] ([vevoID])
GO
ALTER TABLE [ticketek] CHECK CONSTRAINT [FK_ticketek_vevok]
GO
ALTER TABLE [munkatarsak] WITH CHECK ADD CONSTRAINT [CK_munkatarsak_telefonszam] CHECK (([telefonszam] like '[+][3][6][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [munkatarsak] CHECK CONSTRAINT [CK_munkatarsak_telefonszam]
GO
ALTER TABLE [vevok] WITH CHECK ADD CONSTRAINT [CK_vevok_iranyitoszam] CHECK (([iranyitoszam] like '[1-9][0-9][0-9][0-9]' AND CONVERT([smallint],[iranyitoszam])>=(1000) AND CONVERT([smallint],[iranyitoszam])<=(9985)))
GO
ALTER TABLE [vevok] CHECK CONSTRAINT [CK_vevok_iranyitoszam]

GO
ALTER TABLE [vevok] WITH CHECK ADD CONSTRAINT [CK_vevok_telefonszam] CHECK (([telefonszam] like '[+][3][6][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [vevok] CHECK CONSTRAINT [CK_vevok_telefonszam]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/* 1. k�rd�s egy t�bl�s*/
/* SELECT telepules AS 'Telep�l�s'
FROM vevok
ORDER BY telepules ASC */
/* 2.k�rd�s egy t�bl�s*/
/* SELECT COUNT (szeriaszam) AS 'Eladott j�t�kok 2018 febru�rban'
FROM eladasok
WHERE eladasdatuma BETWEEN '02/01/2018' AND '02/28/2018'; */
/* 3.k�rd�s egy t�bl�s*/
/* SELECT TOP 1 kiado AS 'Kiad�' , COUNT (szeriaszam) AS 'J�t�kok sz�ma'
FROM jatekok
GROUP by kiado
ORDER BY 'J�t�kok sz�ma' DESC */
/* 4.k�rd�s k�t t�bl�s*/
/* SELECT TOP 1 vevok.vevonev, COUNT (ticketID) as "Panaszok sz�ma"
FROM ticketek
INNER JOIN vevok ON vevok.vevoID=ticketek.vevoID
GROUP BY vevok.vevonev, ticketek.vevoID

ORDER BY 'Panaszok sz�ma' DESC */
/* 5.k�rd�s h�rom t�bl�s */
/* SELECT jatekok.kiado AS 'Kiad�' , jatekok.jateknev AS 'J�t�k neve', jatek_tulajdonsagok.kiadasiev AS 'Kiad�si �v', jatek_tulajdonsagok.mufaj AS 'M�faj',
jatek_tulajdonsagok.jatektipusa AS 'J�t�kosok sz�ma', origin.eredetiar AS 'Origines eredeti �r', origin.akciosar AS 'Origines akci�s �r'
FROM jatekok
INNER JOIN jatek_tulajdonsagok ON jatekok.szeriaszam=jatek_tulajdonsagok.szeriaszam
INNER JOIN origin ON jatekok.szeriaszam=origin.szeriaszam
ORDER BY 'Kiad�si �v' ASC */
/* 6.k�rd�s k�t t�bl�s */
/* SELECT TOP 1 jatekok.jateknev AS 'J�t�k neve', COUNT(eladasok.szeriaszam) AS 'Elad�sok sz�ma'
FROM jatekok
INNER JOIN eladasok ON jatekok.szeriaszam=eladasok.szeriaszam
GROUP BY jatekok.jateknev
ORDER BY 'Elad�sok sz�ma' DESC */
/* 7.k�rd�s egy t�bl�s*/
/* SELECT SUM(akciosar) AS 'J�t�kok �ssz�rt�ke'
FROM steam */
/* 8.k�rd�s k�t t�bl�s*/
/* SELECT vevok.vevonev, COUNT(fizetes.fizetesmodja) AS 'H�nyszor fizetett vele?', fizetes.fizetesmodja
FROM vevok
INNER JOIN fizetes ON vevok.vevoID=fizetes.vevoID
GROUP BY vevok.vevonev, fizetes.fizetesmodja */
/* 9.k�rd�s n�gy t�bl�s*/
/* SELECT origin.akciosar AS 'Origin', epicgames.akciosar AS 'Epic Games', steam.akciosar AS 'Steam'

FROM jatekok
INNER JOIN origin ON jatekok.szeriaszam=origin.szeriaszam
INNER JOIN steam ON jatekok.szeriaszam=steam.szeriaszam
INNER JOIN epicgames ON jatekok.szeriaszam=epicgames.szeriaszam
WHERE jatekok.jateknev='The Witcher 3' */
/* 10. k�rd�s k�t t�bl�s*/
/* SELECT jatekok.jateknev AS 'J�t�kok neve', epicgames.eredetiar AS 'Eredeti �r', epicgames.akciosar AS 'Akci�s �r',
100 - ((CAST(epicgames.akciosar AS money)/CAST(epicgames.eredetiar AS money))*100) AS 'Kedvezm�ny sz�zal�kban'
FROM epicgames
INNER JOIN jatekok ON jatekok.szeriaszam=epicgames.szeriaszam */
/* 11.k�rd�s k�t t�bl�s*/
/* SELECT TOP 1 munkatarsak.nev,COUNT(ticketek.teljesitett_e) AS 'Teljes�tett ticketek'
FROM munkatarsak
INNER JOIN ticketek ON munkatarsak.munkatarsID=ticketek.munkatarsID
WHERE teljesitett_e= 'True'
GROUP BY munkatarsak.nev
ORDER BY 'Teljes�tett ticketek' DESC */
/* 12.k�rd�s h�rom t�bl�s*/
/* SELECT munkatarsak.nev AS 'Munkat�rs neve', vevok.vevonev AS 'Vev�k neve', ticketek.ticketID 'Ticket sz�ma'
FROM ticketek
INNER JOIN munkatarsak ON munkatarsak.munkatarsID=ticketek.munkatarsID
INNER JOIN vevok ON ticketek.vevoID=vevok.vevoID
WHERE munkatarsak.nev= 'Nagy S�ndor' */
/* 13.k�rd�s k�t t�bl�s*/
/* SELECT jatek_tulajdonsagok.mufaj as 'M�faj', COUNT(eladasok.eladottID) AS 'Elad�sok sz�ma'

FROM jatek_tulajdonsagok
INNER JOIN eladasok ON jatek_tulajdonsagok.szeriaszam=eladasok.szeriaszam
GROUP BY jatek_tulajdonsagok.mufaj
ORDER BY 'Elad�sok sz�ma' DESC */
/* 14.k�rd�s h�rom t�bl�s */
/* SELECT jatekok.kiado AS 'Kiado', jatekok.jateknev AS 'J�t�k neve', jatek_tulajdonsagok.mufaj AS 'M�faj', vevok.vevonev AS 'Vev� neve'
FROM eladasok
INNER JOIN jatekok ON eladasok.szeriaszam=jatekok.szeriaszam
INNER JOIN vevok ON eladasok.vevoID=vevok.vevoID
INNER JOIN jatek_tulajdonsagok ON eladasok.szeriaszam=jatek_tulajdonsagok.szeriaszam
WHERE (vevok.telepules = 'Gy�r' OR vevok.telepules= 'Mosonmagyar�v�r') AND jatek_tulajdonsagok.jatektipusa= 'multiplayer' */
/* 15.k�rd�s h�rom t�bl�s*/
/* SELECT jatekok.jateknev AS 'J�t�kok neve'
FROM jatekok
INNER JOIN jatek_tulajdonsagok ON jatekok.szeriaszam=jatek_tulajdonsagok.szeriaszam
INNER JOIN steam ON jatekok.szeriaszam=steam.szeriaszam
INNER JOIN epicgames ON jatekok.szeriaszam=epicgames.szeriaszam
WHERE jatek_tulajdonsagok.mufaj= 'akci�-szerepj�t�k' */
/* 16. k�rd�s n�gy t�bl�s*/
/* SELECT eladasok.eladasdatuma AS 'Elad�s d�tuma', fizetes.nyugtaszam AS 'Nyugta sz�ma', jatekok.jateknev AS 'J�t�kok neve', jatek_tulajdonsagok.kiadasiev AS 'Kiad�si �v', vevok.vevonev AS 'Vev� neve',
(vevok.iranyitoszam +' '+ vevok.telepules +' '+ vevok.utca +' '+ vevok.hazszam) AS 'Vev� c�me'
FROM eladasok
INNER JOIN jatekok ON eladasok.szeriaszam = jatekok.szeriaszam
INNER JOIN jatek_tulajdonsagok ON eladasok.szeriaszam=jatek_tulajdonsagok.szeriaszam

INNER JOIN vevok ON eladasok.vevoID=vevok.vevoID
INNER JOIN fizetes ON eladasok.eladottID=fizetes.eladottID
WHERE eladasok.eladasdatuma BETWEEN '2018.02.01' AND '2018.02.28'
ORDER BY eladasok.eladasdatuma ASC */
/* 17.k�rd�s n�gyt�bl�s */
/* SELECT jatekok.jateknev AS 'J�t�k neve', steam.akciosar AS 'Steam akci�s �r', origin.akciosar AS 'Origin akci�s �r', epicgames.akciosar AS 'Epic Games akci�s �ra'
FROM jatekok
INNER JOIN steam ON jatekok.szeriaszam=steam.szeriaszam
INNER JOIN origin ON jatekok.szeriaszam=origin.szeriaszam
INNER JOIN epicgames ON jatekok.szeriaszam=epicgames.szeriaszam
WHERE epicgames.akciosar < 10000 AND steam.akciosar < 10000 AND origin.akciosar < 10000 */
/* 18.k�rd�s h�rom t�bl�s*/
/*SELECT jatekok.kiado, jatek_tulajdonsagok.kiadasiev,jatekok.jateknev, jatek_tulajdonsagok.jatektipusa, jatek_tulajdonsagok.mufaj
FROM jatekok
INNER JOIN jatek_tulajdonsagok ON jatekok.szeriaszam=jatek_tulajdonsagok.szeriaszam
LEFT JOIN origin ON jatekok.szeriaszam=origin.szeriaszam
WHERE origin.szeriaszam is NULL
ORDER BY jatekok.kiado ASC */
CREATE PROCEDURE [JatekBentVanE] @JatekN nvarchar(50)
AS
IF @JatekN IN(SELECT jateknev FROM jatekok)
BEGIN
SELECT jatek_tulajdonsagok.mufaj AS 'M�faj', jatek_tulajdonsagok.jatektipusa AS 'J�t�k t�pusa', jatek_tulajdonsagok.kiadasiev AS 'Kiad�si �v'
FROM jatekok INNER JOIN jatek_tulajdonsagok ON jatekok.szeriaszam=jatek_tulajdonsagok.szeriaszam

WHERE @JatekN=jatekok.jateknev
END
ELSE
BEGIN
SELECT 'Nincs ilyen j�t�k az adatb�zisban!' AS 'Elj�r�s eredm�nye'
END
GO
USE [master]
GO
ALTER DATABASE [jatekok] SET READ_WRITE
GO