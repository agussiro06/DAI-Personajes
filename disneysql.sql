USE [master]
GO
/****** Object:  Database [disney]    Script Date: 26/4/2023 10:37:38 ******/
CREATE DATABASE [disney]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'disney', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\disney.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'disney_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\disney_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [disney] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [disney].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [disney] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [disney] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [disney] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [disney] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [disney] SET ARITHABORT OFF 
GO
ALTER DATABASE [disney] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [disney] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [disney] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [disney] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [disney] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [disney] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [disney] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [disney] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [disney] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [disney] SET  DISABLE_BROKER 
GO
ALTER DATABASE [disney] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [disney] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [disney] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [disney] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [disney] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [disney] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [disney] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [disney] SET RECOVERY FULL 
GO
ALTER DATABASE [disney] SET  MULTI_USER 
GO
ALTER DATABASE [disney] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [disney] SET DB_CHAINING OFF 
GO
ALTER DATABASE [disney] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [disney] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [disney] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'disney', N'ON'
GO
ALTER DATABASE [disney] SET QUERY_STORE = OFF
GO
USE [disney]
GO
/****** Object:  User [alumno]    Script Date: 26/4/2023 10:37:38 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Pelicula o serie]    Script Date: 26/4/2023 10:37:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pelicula o serie](
	[id] [int] NOT NULL,
	[imagen] [varchar](max) NOT NULL,
	[titulo] [varchar](max) NOT NULL,
	[fecha de creación] [date] NOT NULL,
	[clasificación] [int] NOT NULL,
	[personajes asociados] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Pelicula o serie] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personaje]    Script Date: 26/4/2023 10:37:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personaje](
	[id] [int] NOT NULL,
	[imagen] [varchar](max) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[edad] [int] NOT NULL,
	[peso] [varchar](50) NOT NULL,
	[historia] [varchar](max) NOT NULL,
	[Peliculas o series asociadas] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Personaje] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (1, N'https://historiasdelceluloide.elcomercio.es/wp-content/uploads/2014/05/Blancanieves-cartel.jpg', N'Blancanieves y los siete enanitos', CAST(N'1937-12-21' AS Date), 7, N'Blancanieves')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (2, N'https://static.wikia.nocookie.net/disney/images/2/26/PinochoDisney.jpg/revision/latest?cb=20160201132010&path-prefix=es', N'Pinocho', CAST(N'1940-02-23' AS Date), 7, N'Pinocho')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (3, N'https://upload.wikimedia.org/wikipedia/en/thumb/1/12/Fantasia-poster-1940.jpg/220px-Fantasia-poster-1940.jpg', N'Fantasía', CAST(N'1941-09-19' AS Date), 7, N'Mickey')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (4, N'https://cdn.shopify.com/s/files/1/1416/8662/products/dumbo_1941_r1976_original_film_art_5000x.jpg?v=1586526783', N'Dumbo', CAST(N'1941-10-31' AS Date), 7, N'Dumbo')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (5, N'https://static.wikia.nocookie.net/disney/images/4/47/Bambi_Walt_Disney.jpg/revision/latest?cb=20210808191619&path-prefix=es', N'Bambi', CAST(N'1942-04-12' AS Date), 7, N'Bambi')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (6, N'https://pics.filmaffinity.com/Saludos_Amigos-896468428-large.jpg', N'Saludos amigos!', CAST(N'1942-08-17' AS Date), 6, N'Donald el pato, Goofy y Jose Carioca')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (7, N'https://pics.filmaffinity.com/Los_tres_caballeros-427815233-large.jpg', N'Los tres caballeros', CAST(N'1944-12-14' AS Date), 6, N'Donald el pato, Jose Carioca y Panchito')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (8, N'https://pics.filmaffinity.com/M_sica_maestro-410496823-large.jpg', N'Musica maestro', CAST(N'1946-04-13' AS Date), 6, N'Ninguno')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (9, N'https://static.wikia.nocookie.net/doblaje/images/7/79/Diversionyfantasia.jpg/revision/latest/thumbnail/width/360/height/450?cb=20230417230803&path-prefix=es', N'	Diversión y fantasía', CAST(N'1947-08-20' AS Date), 6, N'Pepe el grillo, Donald el pato, Mickey y Goofy')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (10, N'https://m.media-amazon.com/images/I/51HRX55QVPL._SY445_.jpg', N'Ritmo y melodía', CAST(N'1948-05-20' AS Date), 6, N'Ninguno')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (11, N'https://m.media-amazon.com/images/M/MV5BNjAzZDA2MWItZDdjMi00NTBlLTg5OTItYWQ1YTA1NGNiMGVhL2ltYWdlXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_.jpg', N'	Dos personajes fabulosos', CAST(N'1949-09-28' AS Date), 7, N'Ninguno')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (12, N'https://static.wikia.nocookie.net/wiki-doblaje-espana/images/4/4c/La_Cenicienta_portada.png/revision/latest?cb=20220719132023&path-prefix=es', N'La cenicienta', CAST(N'1950-02-08' AS Date), 7, N'Cenicienta')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (13, N'https://pictures.abebooks.com/isbn/9780717289097-es.jpg', N'Alicia en el País de las Maravillas', CAST(N'1951-07-21' AS Date), 7, N'Alicia')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (14, N'https://static.wikia.nocookie.net/dhadas/images/e/e1/Peter-pan-disney-poster-cartel-6.jpg/revision/latest?cb=20150522221945&path-prefix=es', N'Peter Pan', CAST(N'1953-01-20' AS Date), 7, N'Peter Pan')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (15, N'https://pics.filmaffinity.com/La_dama_y_el_vagabundo-250469560-large.jpg', N'	La Dama y el Vagabundo', CAST(N'1955-06-15' AS Date), 7, N'La dama y el vagabundo')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (16, N'https://static.wikia.nocookie.net/doblaje/images/8/86/16f.jpg/revision/latest?cb=20141017002229&path-prefix=es', N'La Bella Durmiente	', CAST(N'1959-01-22' AS Date), 7, N'Aurora y el principe')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (17, N'https://www.lavanguardia.com/peliculas-series/images/movie/poster/1961/1/w1280/wny5QtN4D9KYRaW3jDCNMSCQ8gc.jpg', N'101 Dálmatas	', CAST(N'1961-01-18' AS Date), 7, N'Cruella de Vil')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (18, N'https://static.wikia.nocookie.net/doblaje/images/6/6c/La_Espada_En_La_Piedra.jpg/revision/latest?cb=20100920210712&path-prefix=es', N'	La espada en la piedra', CAST(N'1963-12-18' AS Date), 7, N'Arturo y Merlin')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (19, N'https://images.cdn2.buscalibre.com/fit-in/360x360/73/4e/734e52e46f619e298449c4529847ecfe.jpg', N'El Libro de la Selva	', CAST(N'1967-10-11' AS Date), 7, N'Bagheera, la pantera, y Baloo')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (20, N'https://larepublica.cronosmedia.glr.pe/migration/images/5QJKTIUUTBB7VEMKQOKFOMWVY4.jpg', N'Los Aristogatos	', CAST(N'1970-12-17' AS Date), 7, N'Gatos')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (21, N'https://pics.filmaffinity.com/Robin_Hood-724329334-large.jpg', N'Robin Hood	', CAST(N'1973-11-01' AS Date), 7, N'Robin Hood y Juan')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (22, N'https://static.wikia.nocookie.net/doblaje/images/6/65/The_Many_Adventures_of_Winnie_the_Pooh_%281977%29.jpg/revision/latest?cb=20100924183036&path-prefix=es', N'Las aventuras de Winnie the Pooh', CAST(N'1977-03-04' AS Date), 7, N'Winnie y tigger')
GO
INSERT [dbo].[Personaje] ([id], [imagen], [nombre], [edad], [peso], [historia], [Peliculas o series asociadas]) VALUES (1, N'mickey.jpg', N'mickey', 19, N'100', N'Micky es un pato', N'Micky 1')
GO
USE [master]
GO
ALTER DATABASE [disney] SET  READ_WRITE 
GO
