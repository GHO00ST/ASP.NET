USE [master]
GO
/****** Object:  Database [projekt_albumy]    Script Date: 04.02.2021 10:33:24 ******/
CREATE DATABASE [projekt_albumy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'projekt_albumy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\projekt_albumy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'projekt_albumy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\projekt_albumy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [projekt_albumy] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [projekt_albumy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [projekt_albumy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [projekt_albumy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [projekt_albumy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [projekt_albumy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [projekt_albumy] SET ARITHABORT OFF 
GO
ALTER DATABASE [projekt_albumy] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [projekt_albumy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [projekt_albumy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [projekt_albumy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [projekt_albumy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [projekt_albumy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [projekt_albumy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [projekt_albumy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [projekt_albumy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [projekt_albumy] SET  ENABLE_BROKER 
GO
ALTER DATABASE [projekt_albumy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [projekt_albumy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [projekt_albumy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [projekt_albumy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [projekt_albumy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [projekt_albumy] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [projekt_albumy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [projekt_albumy] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [projekt_albumy] SET  MULTI_USER 
GO
ALTER DATABASE [projekt_albumy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [projekt_albumy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [projekt_albumy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [projekt_albumy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [projekt_albumy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [projekt_albumy] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [projekt_albumy] SET QUERY_STORE = OFF
GO
USE [projekt_albumy]
GO
/****** Object:  Schema [Identity]    Script Date: 04.02.2021 10:33:24 ******/
CREATE SCHEMA [Identity]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 04.02.2021 10:33:24 ******/
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
/****** Object:  Table [Identity].[Albums]    Script Date: 04.02.2021 10:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[Albums](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Year] [datetime2](7) NOT NULL,
	[BandsId] [int] NOT NULL,
	[MusicTypesId] [int] NOT NULL,
 CONSTRAINT [PK_Albums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Identity].[Artists]    Script Date: 04.02.2021 10:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[Artists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BandsId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
 CONSTRAINT [PK_Artists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Identity].[AspNetUsers]    Script Date: 04.02.2021 10:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[UsernameChangeLimit] [int] NOT NULL,
	[ProfilePicture] [varbinary](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Identity].[Bands]    Script Date: 04.02.2021 10:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[Bands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Bands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Identity].[MusicTypes]    Script Date: 04.02.2021 10:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[MusicTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_MusicTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Identity].[Role]    Script Date: 04.02.2021 10:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[Role](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Identity].[RoleClaims]    Script Date: 04.02.2021 10:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Identity].[User]    Script Date: 04.02.2021 10:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[User](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Identity].[UserClaims]    Script Date: 04.02.2021 10:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Identity].[UserLogins]    Script Date: 04.02.2021 10:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Identity].[UserRoles]    Script Date: 04.02.2021 10:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[UserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Identity].[UserTokens]    Script Date: 04.02.2021 10:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[UserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210128125342_Renamed Identity Table Names', N'3.1.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210128130149_Added Custom Properties', N'3.1.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210128133222_Added Custom Properties1', N'3.1.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210128142451_przed rolami', N'3.1.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210204082730_FinalVersion', N'3.1.11')
GO
SET IDENTITY_INSERT [Identity].[Albums] ON 

INSERT [Identity].[Albums] ([Id], [Name], [Year], [BandsId], [MusicTypesId]) VALUES (1, N'Black Fall', CAST(N'2013-10-31T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [Identity].[Albums] ([Id], [Name], [Year], [BandsId], [MusicTypesId]) VALUES (2, N'Love Story', CAST(N'2015-04-21T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [Identity].[Albums] ([Id], [Name], [Year], [BandsId], [MusicTypesId]) VALUES (3, N'Infinite', CAST(N'1996-11-12T00:00:00.0000000' AS DateTime2), 2, 1)
INSERT [Identity].[Albums] ([Id], [Name], [Year], [BandsId], [MusicTypesId]) VALUES (4, N'The Slim Shady LP', CAST(N'1999-02-23T00:00:00.0000000' AS DateTime2), 2, 1)
INSERT [Identity].[Albums] ([Id], [Name], [Year], [BandsId], [MusicTypesId]) VALUES (5, N'Gazing at the Moonlight', CAST(N'2009-10-27T00:00:00.0000000' AS DateTime2), 3, 1)
INSERT [Identity].[Albums] ([Id], [Name], [Year], [BandsId], [MusicTypesId]) VALUES (6, N'Raw', CAST(N'2010-11-19T00:00:00.0000000' AS DateTime2), 3, 1)
INSERT [Identity].[Albums] ([Id], [Name], [Year], [BandsId], [MusicTypesId]) VALUES (7, N'Metallica', CAST(N'1991-08-12T00:00:00.0000000' AS DateTime2), 4, 2)
INSERT [Identity].[Albums] ([Id], [Name], [Year], [BandsId], [MusicTypesId]) VALUES (8, N'Load', CAST(N'1996-06-03T00:00:00.0000000' AS DateTime2), 4, 2)
INSERT [Identity].[Albums] ([Id], [Name], [Year], [BandsId], [MusicTypesId]) VALUES (9, N'ABC', CAST(N'2021-02-04T10:31:00.0000000' AS DateTime2), 5, 3)
SET IDENTITY_INSERT [Identity].[Albums] OFF
GO
SET IDENTITY_INSERT [Identity].[Artists] ON 

INSERT [Identity].[Artists] ([Id], [BandsId], [Name], [Surname]) VALUES (1, 1, N'Fefe', N'Dobson')
INSERT [Identity].[Artists] ([Id], [BandsId], [Name], [Surname]) VALUES (2, 2, N'Marshall', N'Mathers')
INSERT [Identity].[Artists] ([Id], [BandsId], [Name], [Surname]) VALUES (3, 3, N'Marcus', N'Hopson')
INSERT [Identity].[Artists] ([Id], [BandsId], [Name], [Surname]) VALUES (4, 4, N'James', N'Hetfield')
INSERT [Identity].[Artists] ([Id], [BandsId], [Name], [Surname]) VALUES (5, 4, N'Lars', N'Ulrich')
INSERT [Identity].[Artists] ([Id], [BandsId], [Name], [Surname]) VALUES (6, 4, N'Kirk', N'Hammett')
INSERT [Identity].[Artists] ([Id], [BandsId], [Name], [Surname]) VALUES (7, 4, N'Robert', N'Trujillo')
INSERT [Identity].[Artists] ([Id], [BandsId], [Name], [Surname]) VALUES (8, 4, N'Cliff', N'Burton')
INSERT [Identity].[Artists] ([Id], [BandsId], [Name], [Surname]) VALUES (9, 4, N'Jason', N'Newsted')
INSERT [Identity].[Artists] ([Id], [BandsId], [Name], [Surname]) VALUES (10, 4, N'Dave', N'Mustaine')
INSERT [Identity].[Artists] ([Id], [BandsId], [Name], [Surname]) VALUES (11, 4, N'Ron', N'McGovney')
INSERT [Identity].[Artists] ([Id], [BandsId], [Name], [Surname]) VALUES (12, 4, N'Bob', N'Rock')
INSERT [Identity].[Artists] ([Id], [BandsId], [Name], [Surname]) VALUES (13, 5, N'Gypsy', N'King')
SET IDENTITY_INSERT [Identity].[Artists] OFF
GO
INSERT [Identity].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [UsernameChangeLimit], [ProfilePicture]) VALUES (N'251f245d-0b86-4a72-a486-a35fa2e8ec96', N'user1', N'USER1', N'user1@test.pl', N'USER1@TEST.PL', 0, N'AQAAAAEAACcQAAAAEOBsWumPP2KyBpht4DFU2Q0U616B8j3tbeqEkwe6PKaEVKLVcg0jdCWW8FznBn/oDQ==', N'K54ROVMJXKRPDVTBOS2JV4B4G5RD5PQZ', N'98320f5a-96ce-40d0-8ce1-6162131b163c', NULL, 0, 0, NULL, 1, 0, N'user1', N'user1', 10, NULL)
INSERT [Identity].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [UsernameChangeLimit], [ProfilePicture]) VALUES (N'5aae3f0e-eb5b-4fdf-ae69-35d6500421c5', N'superadmin', N'SUPERADMIN', N'superadmin@gmail.com', N'SUPERADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEK94HFnLYnIP0kS57ynDa73xrrAqdq7g5Auz+Tw5xftxowwwCB/EmZR7GH3tHu0WoQ==', N'FKZHXS46AX2ASH33I22AZ4GFTWFJJNAS', N'e7c65550-d349-4058-b120-2aacc1b029d4', NULL, 1, 0, NULL, 1, 0, N'Łukasz', N'Łukasik', 10, NULL)
INSERT [Identity].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [UsernameChangeLimit], [ProfilePicture]) VALUES (N'655d0268-ee89-4e6f-8389-021ad0ab4f0c', N'admin', N'ADMIN', N'admin@test.pl', N'ADMIN@TEST.PL', 0, N'AQAAAAEAACcQAAAAEGaWvZKGofTe0cuOWhDU882PkdALBeNoJb1yJb6o/oVNlMVaXcQ1l20xoiDrwRfzsA==', N'INLHL57LMHENNWKZA66KK4G3I4UX2X4K', N'ea949b1e-acd5-497a-8170-bc86fe81defc', NULL, 0, 0, NULL, 1, 0, N'admin', N'admin', 10, NULL)
INSERT [Identity].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [UsernameChangeLimit], [ProfilePicture]) VALUES (N'6788dd3d-29fd-4545-ad03-8353781c9166', N'user2', N'USER2', N'user2@test.pl', N'USER2@TEST.PL', 0, N'AQAAAAEAACcQAAAAEGCreTuE00VI3oWpjzypPvllQIzk0t+1IFnuFTtsa0SizgpDBcZHQVCRg8bq1flWiQ==', N'RMH3UQQFXVEADPQNMFPVSWLLNO34SLL2', N'c60f7201-ee8e-4b99-8541-9384e759e245', NULL, 0, 0, NULL, 1, 0, N'user2', N'user2', 10, NULL)
GO
SET IDENTITY_INSERT [Identity].[Bands] ON 

INSERT [Identity].[Bands] ([Id], [Name]) VALUES (1, N'Yelawolf')
INSERT [Identity].[Bands] ([Id], [Name]) VALUES (2, N'Eminem')
INSERT [Identity].[Bands] ([Id], [Name]) VALUES (3, N'Hopsin')
INSERT [Identity].[Bands] ([Id], [Name]) VALUES (4, N'Metallica')
INSERT [Identity].[Bands] ([Id], [Name]) VALUES (5, N'GypsyKing')
SET IDENTITY_INSERT [Identity].[Bands] OFF
GO
SET IDENTITY_INSERT [Identity].[MusicTypes] ON 

INSERT [Identity].[MusicTypes] ([Id], [Name]) VALUES (1, N'Rap')
INSERT [Identity].[MusicTypes] ([Id], [Name]) VALUES (2, N'Heavy Metal')
INSERT [Identity].[MusicTypes] ([Id], [Name]) VALUES (3, N'Muzyka Rozrywkowa')
SET IDENTITY_INSERT [Identity].[MusicTypes] OFF
GO
INSERT [Identity].[Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'230389c1-aad7-4401-9a4f-3259f78a93da', N'SuperAdmin', N'SUPERADMIN', N'5bb05f78-0f71-452d-bf7f-1d559e05efd0')
INSERT [Identity].[Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b2ad7b9d-110e-4040-ba4a-5a665605d2dc', N'Moderator', N'MODERATOR', N'f7a88eef-aada-4ea9-b596-3052ea6a9c51')
INSERT [Identity].[Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'bc9d5ada-decc-455e-b450-617c7062f16e', N'Basic', N'BASIC', N'f9ec1705-7314-4aaa-b33e-ee85daa2f316')
INSERT [Identity].[Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f7f4ea71-325c-443a-b563-1fbb6711e304', N'Admin', N'ADMIN', N'728f4784-3f04-425d-b9bf-faaaa9f1f189')
GO
INSERT [Identity].[UserRoles] ([UserId], [RoleId]) VALUES (N'5aae3f0e-eb5b-4fdf-ae69-35d6500421c5', N'230389c1-aad7-4401-9a4f-3259f78a93da')
INSERT [Identity].[UserRoles] ([UserId], [RoleId]) VALUES (N'251f245d-0b86-4a72-a486-a35fa2e8ec96', N'b2ad7b9d-110e-4040-ba4a-5a665605d2dc')
INSERT [Identity].[UserRoles] ([UserId], [RoleId]) VALUES (N'5aae3f0e-eb5b-4fdf-ae69-35d6500421c5', N'b2ad7b9d-110e-4040-ba4a-5a665605d2dc')
INSERT [Identity].[UserRoles] ([UserId], [RoleId]) VALUES (N'655d0268-ee89-4e6f-8389-021ad0ab4f0c', N'b2ad7b9d-110e-4040-ba4a-5a665605d2dc')
INSERT [Identity].[UserRoles] ([UserId], [RoleId]) VALUES (N'251f245d-0b86-4a72-a486-a35fa2e8ec96', N'bc9d5ada-decc-455e-b450-617c7062f16e')
INSERT [Identity].[UserRoles] ([UserId], [RoleId]) VALUES (N'5aae3f0e-eb5b-4fdf-ae69-35d6500421c5', N'bc9d5ada-decc-455e-b450-617c7062f16e')
INSERT [Identity].[UserRoles] ([UserId], [RoleId]) VALUES (N'655d0268-ee89-4e6f-8389-021ad0ab4f0c', N'bc9d5ada-decc-455e-b450-617c7062f16e')
INSERT [Identity].[UserRoles] ([UserId], [RoleId]) VALUES (N'6788dd3d-29fd-4545-ad03-8353781c9166', N'bc9d5ada-decc-455e-b450-617c7062f16e')
INSERT [Identity].[UserRoles] ([UserId], [RoleId]) VALUES (N'5aae3f0e-eb5b-4fdf-ae69-35d6500421c5', N'f7f4ea71-325c-443a-b563-1fbb6711e304')
INSERT [Identity].[UserRoles] ([UserId], [RoleId]) VALUES (N'655d0268-ee89-4e6f-8389-021ad0ab4f0c', N'f7f4ea71-325c-443a-b563-1fbb6711e304')
GO
/****** Object:  Index [IX_Albums_BandsId]    Script Date: 04.02.2021 10:33:24 ******/
CREATE NONCLUSTERED INDEX [IX_Albums_BandsId] ON [Identity].[Albums]
(
	[BandsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Albums_MusicTypesId]    Script Date: 04.02.2021 10:33:24 ******/
CREATE NONCLUSTERED INDEX [IX_Albums_MusicTypesId] ON [Identity].[Albums]
(
	[MusicTypesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Artists_BandsId]    Script Date: 04.02.2021 10:33:24 ******/
CREATE NONCLUSTERED INDEX [IX_Artists_BandsId] ON [Identity].[Artists]
(
	[BandsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 04.02.2021 10:33:24 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [Identity].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 04.02.2021 10:33:24 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [Identity].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 04.02.2021 10:33:24 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [Identity].[Role]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleClaims_RoleId]    Script Date: 04.02.2021 10:33:24 ******/
CREATE NONCLUSTERED INDEX [IX_RoleClaims_RoleId] ON [Identity].[RoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserClaims_UserId]    Script Date: 04.02.2021 10:33:24 ******/
CREATE NONCLUSTERED INDEX [IX_UserClaims_UserId] ON [Identity].[UserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserLogins_UserId]    Script Date: 04.02.2021 10:33:24 ******/
CREATE NONCLUSTERED INDEX [IX_UserLogins_UserId] ON [Identity].[UserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserRoles_RoleId]    Script Date: 04.02.2021 10:33:24 ******/
CREATE NONCLUSTERED INDEX [IX_UserRoles_RoleId] ON [Identity].[UserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [Identity].[Albums]  WITH CHECK ADD  CONSTRAINT [FK_Albums_Bands_BandsId] FOREIGN KEY([BandsId])
REFERENCES [Identity].[Bands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Identity].[Albums] CHECK CONSTRAINT [FK_Albums_Bands_BandsId]
GO
ALTER TABLE [Identity].[Albums]  WITH CHECK ADD  CONSTRAINT [FK_Albums_MusicTypes_MusicTypesId] FOREIGN KEY([MusicTypesId])
REFERENCES [Identity].[MusicTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Identity].[Albums] CHECK CONSTRAINT [FK_Albums_MusicTypes_MusicTypesId]
GO
ALTER TABLE [Identity].[Artists]  WITH CHECK ADD  CONSTRAINT [FK_Artists_Bands_BandsId] FOREIGN KEY([BandsId])
REFERENCES [Identity].[Bands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Identity].[Artists] CHECK CONSTRAINT [FK_Artists_Bands_BandsId]
GO
ALTER TABLE [Identity].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [Identity].[Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Identity].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Role_RoleId]
GO
ALTER TABLE [Identity].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [Identity].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Identity].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [Identity].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [Identity].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Identity].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [Identity].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [Identity].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Identity].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [Identity].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [Identity].[Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Identity].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Role_RoleId]
GO
ALTER TABLE [Identity].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [Identity].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Identity].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [projekt_albumy] SET  READ_WRITE 
GO
