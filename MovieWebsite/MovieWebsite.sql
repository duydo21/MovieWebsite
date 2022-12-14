USE [master]
GO
/****** Object:  Database [DUYPRJ_Project_Final]    Script Date: 21/07/2022 10:13:18 ******/
CREATE DATABASE [DUYPRJ_Project_Final]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DUYPRJ_Project_Final', FILENAME = N'D:\dbi\MSSQL15.SQLEXPRESS\MSSQL\DATA\DUYPRJ_Project_Final.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DUYPRJ_Project_Final_log', FILENAME = N'D:\dbi\MSSQL15.SQLEXPRESS\MSSQL\DATA\DUYPRJ_Project_Final_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DUYPRJ_Project_Final].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET ARITHABORT OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET  MULTI_USER 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET QUERY_STORE = OFF
GO
USE [DUYPRJ_Project_Final]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 21/07/2022 10:13:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](20) NOT NULL,
	[password] [varchar](20) NULL,
	[name] [varchar](50) NULL,
	[mail] [varchar](50) NULL,
	[phone] [varchar](20) NULL,
	[typeofaccount] [int] NULL,
	[accBalance] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 21/07/2022 10:13:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 21/07/2022 10:13:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[movieid] [nvarchar](20) NOT NULL,
	[isle] [bit] NULL,
	[moviename] [nvarchar](500) NULL,
	[publishyear] [nvarchar](20) NULL,
	[Duration] [float] NULL,
	[country] [nvarchar](20) NULL,
	[poster] [nvarchar](100) NULL,
	[film] [nvarchar](100) NULL,
	[content] [nvarchar](4000) NULL,
	[movieowner] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[movieid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie-Category]    Script Date: 21/07/2022 10:13:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie-Category](
	[movieid] [nvarchar](20) NOT NULL,
	[cid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC,
	[movieid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [name], [mail], [phone], [typeofaccount], [accBalance]) VALUES (N'duy', N'duy123', N'do van duy', N'asd@gmail.com', N'0816788886', 1, 0)
INSERT [dbo].[Account] ([username], [password], [name], [mail], [phone], [typeofaccount], [accBalance]) VALUES (N'nam', N'nam123', N'Nam xau trai', N'a@gmail.com', N'0987654321', 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'Kinh di')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'Vien tuong')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'Hai')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Hanh dong')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (5, N'Tam ly - Tinh cam')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (6, N'Anime')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (7, N'Tai lieu')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'aot', 0, N'Attack on Titan', N'2014', 20, N'Japan', N'images/FilmPoster/attack on titan.jpg', NULL, N'After his hometown is destroyed and his mother is killed, young Eren Jaeger vows to cleanse the earth of the giant humanoid Titans that have brought humanity to the brink of extinction.', N'Pixar')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'bm', 1, N'Batman: The dark knight rise', N'2017', 190, N'America', N'images/FilmPoster/The dark knight rise.jpg', NULL, N'Eight years after the Joker''s reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City from the brutal guerrilla terrorist Bane.', N'DC')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'bmvspm', 1, N'Batman vs Superman: Dawn of justice', N'2018', 230, N'America', N'images/FilmPoster/Batman_V_Superman_Dawn_Of_Justice.jpg', NULL, N'Fearing that the actions of Superman are left unchecked, Batman takes on the Man of Steel, while the world wrestles with what kind of a hero it really needs.', N'DC')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'bntb', 1, N'Beauty and the Beast', N'2020', 120, N'China', N'images/FilmPoster/beauty and the beast.jpg', NULL, N'A selfish Prince is cursed to become a monster for the rest of his life, unless he learns to fall in love with a beautiful young woman he keeps prisoner.', N'Disney')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'cm', 1, N'Captain Marvel', N'2019', 150, N'America', N'images/FilmPoster/captain Marvel.jpeg', NULL, N'Carol Danvers becomes one of the universe''s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.', N'Marvel')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'drstr', 1, N'Dr Strange: Multiverse of Madness', N'2020', 140, N'America', N'images/FilmPoster/multiverse of madness.jpeg', NULL, N'Doctor Strange teams up with a mysterious teenage girl from his dreams who can travel across multiverses, to battle multiple threats, including other-universe versions of himself, which threaten to wipe out millions across the multiverse. They seek help from Wanda the Scarlet Witch, Wong and others.', N'Marvel')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'eg', 1, N'Avengers: End game', N'2019', 150, N'America', N'images/FilmPoster/endgame.jpg', NULL, N'After the devastating events of Avengers: Cuộc Chiến Vô Cực (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos'' actions and restore balance to the universe.', N'Marvel')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'grsby', 1, N'Anh em nhà Grimsby', N'2017', 100, N'Korea', N'images/FilmPoster/anh em nha Grimsby.jpg', NULL, N'A new assignment forces a top spy to team up with his football hooligan brother', N'Columbia Pictures')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'gvk', 1, N'Kong vs Gozilla', N'2019', 123, N'America', N'images/FilmPoster/gozilla vs kong.jpg', N'qwe', N'The epic next chapter in the cinematic Monsterverse pits two of the greatest icons in motion picture history against each other--the fearsome Godzilla and the mighty Kong--with humanity caught in the balance.', N'Paramount Pictures')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'irm3', 1, N'Iron man 3', N'2021', 180, N'America', N'images/FilmPoster/Iron man 3.jpg', NULL, N'When Tony Stark''s world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.', N'Marvel')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'jjk', 0, N'Jujutsu kaisen', N'2018', 20, N'Japan', N'images/FilmPoster/jujutsu kaisen.jpg', NULL, N'A boy swallows a cursed talisman - the finger of a demon - and becomes cursed himself. He enters a shaman''s school to be able to locate the demon''s other body parts and thus exorcise himself.', N'Sony')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'jl', 1, N'Justice League', N'2022', 170, N'America', N'images/FilmPoster/Justice laegue.jpg', NULL, N'Fueled by his restored faith in humanity and inspired by Superman''s selfless act, Bruce Wayne enlists the help of his new-found ally, Diana Prince, to face an even greater enemy.', N'DC')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'jw', 1, N'John Wick', N'2015', 90, N'China', N'images/FilmPoster/John Wick.jpg', NULL, N'An ex-hit-man comes out of retirement to track down the gangsters that killed his dog and took everything from him.', N'20th Century Fox')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'kny', 0, N'Kimetsu no yaiba', N'2016', 20, N'Japan', N'images/FilmPoster/kimetsu no yaiba.jpg', NULL, N'A family is attacked by demons and only two members survive - Tanjiro and his sister Nezuko, who is turning into a demon slowly. Tanjiro sets out to become a demon slayer to avenge his family and cure his sister.', N'Dream Works')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'mb', 1, N'Mắt biếc', N'2020', 130, N'Vietnam', N'images/FilmPoster/Mắt biếc.jpg', NULL, N'Đi qua những đau khổ và phản bội, mối tình đơn phương của Ngạn dành cho cô bạn thân thời thơ ấu Hà Lan kéo dài cả một thế hệ trong bộ phim siêu lãng mạn này.', N'Paramount Pictures')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'mk', 1, N'Maika', N'2021', 120, N'Korea', N'images/FilmPoster/Maika.jpg', NULL, N'After a meteor falls to earth, 8-year-old Hung meets an alien girl from the planet Maika, searching for her lost friend. The alien helps Hung make new friends and heal a broken heart. But danger lurks everywhere.', N'Disney')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'opm', 0, N'One punch man', N'2016', 20, N'Japan', N'images/FilmPoster/one punch man.jpg', NULL, N'The story of Saitama, a hero that does it just for fun & can defeat his enemies with a single punch.', N'Universal Pictures')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'pl', 1, N'Pele', N'2020', 180, N'China', N'images/FilmPoster/Pele.jpg', NULL, N'Pele''s meteoric rise from the slums of Sao Paulo to leading Brazil to its first World Cup victory at the age of 17 is chronicled in this biographical drama.', N'Warner Bros')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'prs', 1, N'Parasite', N'2019', 110, N'Korea', N'images/FilmPoster/parasite.jpg', NULL, N'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.', N'Paramount Pictures')
INSERT [dbo].[Movie] ([movieid], [isle], [moviename], [publishyear], [Duration], [country], [poster], [film], [content], [movieowner]) VALUES (N'wm', 1, N'Wonder woman', N'2019', 190, N'America', N'images/FilmPoster/wonder woman.jpg', NULL, N'When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.', N'DC')
GO
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'bm', 2)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'bmvspm', 2)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'cm', 2)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'drstr', 2)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'eg', 2)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'irm3', 2)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'mk', 2)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'opm', 2)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'wm', 2)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'grsby', 3)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'jjk', 4)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'jw', 4)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'kny', 4)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'kny', 5)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'mb', 5)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'mk', 5)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'aot', 6)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'jjk', 6)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'kny', 6)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'opm', 6)
INSERT [dbo].[Movie-Category] ([movieid], [cid]) VALUES (N'pl', 7)
GO
ALTER TABLE [dbo].[Movie-Category]  WITH CHECK ADD FOREIGN KEY([movieid])
REFERENCES [dbo].[Movie] ([movieid])
GO
ALTER TABLE [dbo].[Movie-Category]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Category] ([cid])
GO
USE [master]
GO
ALTER DATABASE [DUYPRJ_Project_Final] SET  READ_WRITE 
GO
