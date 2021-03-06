USE [master]
GO
/****** Object:  Database [SimaxCrm]    Script Date: 01/04/2021 10:48 PM ******/
CREATE DATABASE [SimaxCrm] ON  PRIMARY 
( NAME = N'SimaxCrm', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\SimaxCrm.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SimaxCrm_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\SimaxCrm_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SimaxCrm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SimaxCrm] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SimaxCrm] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SimaxCrm] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SimaxCrm] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SimaxCrm] SET ARITHABORT OFF 
GO
ALTER DATABASE [SimaxCrm] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SimaxCrm] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SimaxCrm] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SimaxCrm] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SimaxCrm] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SimaxCrm] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SimaxCrm] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SimaxCrm] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SimaxCrm] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SimaxCrm] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SimaxCrm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SimaxCrm] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SimaxCrm] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SimaxCrm] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SimaxCrm] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SimaxCrm] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SimaxCrm] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SimaxCrm] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SimaxCrm] SET  MULTI_USER 
GO
ALTER DATABASE [SimaxCrm] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SimaxCrm] SET DB_CHAINING OFF 
GO
USE [SimaxCrm]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 01/04/2021 10:48 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
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
	[Name] [nvarchar](max) NULL,
	[Tid] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Attachment]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attachment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[LeadId] [int] NOT NULL,
	[FileName] [nvarchar](max) NULL,
	[FilePath] [nvarchar](max) NULL,
	[FormType] [nvarchar](max) NULL,
	[FormId] [int] NOT NULL,
	[FileSize] [bigint] NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Attachment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CallLog]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CallLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[LeadId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[Remarks] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[AlertDate] [datetime2](7) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[InvoiceId] [int] NULL,
 CONSTRAINT [PK_CallLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailSetup]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailSetup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[SmtpServer] [nvarchar](100) NOT NULL,
	[SmtpPort] [int] NOT NULL,
	[UseSsl] [nvarchar](5) NOT NULL,
	[Username] [nvarchar](200) NULL,
	[Password] [nvarchar](200) NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[Tid] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_EmailSetup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[LeadId] [int] NOT NULL,
	[OtherCharges] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[GrandTotal] [decimal](18, 2) NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[OrderStatus] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL DEFAULT ((0.0)),
	[TaxPercent] [decimal](18, 2) NOT NULL DEFAULT ((0.0)),
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InvoiceDetail]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Qty] [decimal](18, 2) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[ActionType] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_InvoiceDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lead]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lead](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[PhoneNumber] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](200) NULL,
	[Address] [nvarchar](200) NULL,
	[City] [nvarchar](200) NULL,
	[State] [nvarchar](200) NULL,
	[Country] [nvarchar](200) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[LeadSourceId] [int] NOT NULL,
	[LeadLanguageId] [int] NOT NULL,
	[LastContact] [datetime2](7) NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[LeadStatus] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[AlertDate] [datetime2](7) NULL,
	[AssignedDate] [datetime2](7) NOT NULL DEFAULT ('0001-01-01T00:00:00.0000000'),
 CONSTRAINT [PK_Lead] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeadAutoAssign]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeadAutoAssign](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[HandleQuery] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_LeadAutoAssign] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeadAutoAssignLog]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeadAutoAssignLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[LeadId] [int] NOT NULL,
	[LeadSourceId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LeadAutoAssignLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeadAutoAssignSourceMapping]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeadAutoAssignSourceMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[LeadAutoAssignId] [int] NOT NULL,
	[LeadSourceId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LeadAutoAssignSourceMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeadLanguage]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeadLanguage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_LeadLanguage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeadRemarks]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeadRemarks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[Status] [nvarchar](200) NULL,
	[Name] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_LeadRemarks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeadSource]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeadSource](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_LeadSource] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeadTag]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeadTag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_LeadTag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeadTagMapping]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeadTagMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[LeadId] [int] NOT NULL,
	[LeadTagId] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_LeadTagMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SystemSetup]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemSetup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[CompanyName] [nvarchar](200) NOT NULL,
	[CompanyAddress] [nvarchar](200) NULL,
	[CompanyContact] [nvarchar](200) NULL,
	[CompanyGstNumber] [nvarchar](200) NULL,
	[Currency] [nvarchar](50) NOT NULL,
	[CurrencySymbol] [nvarchar](50) NOT NULL,
	[CompanyLogo] [nvarchar](200) NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[TaxPercent] [decimal](18, 2) NOT NULL DEFAULT ((0.0)),
 CONSTRAINT [PK_SystemSetup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TeamSlug]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamSlug](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DbName] [nvarchar](200) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_TeamSlug] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Template]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Template](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Type] [int] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[Subject] [nvarchar](max) NULL,
 CONSTRAINT [PK_Template] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLog]    Script Date: 01/04/2021 10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tid] [int] NOT NULL,
	[LeadId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[LogType] [nvarchar](max) NOT NULL,
	[LogText] [nvarchar](max) NULL,
	[LogStatus] [nvarchar](max) NULL,
	[IsSuccess] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[LogRecId] [int] NOT NULL,
 CONSTRAINT [PK_UserLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210327105448_InitTables', N'3.1.5')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'03975777-7ebd-4c60-afff-52be7f2e21fc', N'Account', N'ACCOUNT', N'6c55f636-b5bd-4281-9cb4-3a9a32c01a51')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'102e9425-b085-4ac5-a0c7-1e6a50d9c57e', N'QA', N'QA', N'3ca51b01-8ebc-4bbe-b9e2-a0915a28c943')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3ac97d93-1efb-4cb6-8983-518ed418f4b6', N'Agent', N'AGENT', N'8e5014e2-f747-4e64-82af-79bd9d723da7')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ff9a6b10-3cc0-4e2b-af09-d03e6f9fafb0', N'Admin', N'ADMIN', N'd2df61de-3f72-4d92-a01d-d8a98b1ecf0e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b5a9d5bd-cfc1-4b67-87e8-a681a1ba7594', N'03975777-7ebd-4c60-afff-52be7f2e21fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ddb83d53-bd9c-4c21-a43a-55ad6ee5ee8c', N'102e9425-b085-4ac5-a0c7-1e6a50d9c57e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', N'3ac97d93-1efb-4cb6-8983-518ed418f4b6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'40dc637a-7fbc-40e5-bebd-e6d745184c1c', N'3ac97d93-1efb-4cb6-8983-518ed418f4b6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0534c143-11b5-425c-a9bd-d0fad873b2bc', N'ff9a6b10-3cc0-4e2b-af09-d03e6f9fafb0')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [Tid]) VALUES (N'0534c143-11b5-425c-a9bd-d0fad873b2bc', N'admin@simax.com', N'ADMIN@SIMAX.COM', N'admin@simax.com', N'ADMIN@SIMAX.COM', 0, N'AQAAAAEAACcQAAAAEArwl1keCsqYjlMOHK5okI8CBcdqtDxgNt0qQSPyBZj2kjnSVPY41Hx+z9etQw8yBg==', N'ZR25T4VTFEB26KMDGWFPQ5LGKHO355YR', N'dbf29bef-a4cd-4e5e-9c2a-12a2adaa96be', NULL, 0, 0, NULL, 1, 0, N'SimaxSys.com', 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [Tid]) VALUES (N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', N'agent1@gmail.com', N'AGENT1@GMAIL.COM', N'agent1@gmail.com', N'AGENT1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEC03ilaCA5xfeTddLcpN5i2b2KLoRqFC2pUTcJP0yAkn8FqocBWQzg9XTBXC+5Gd9Q==', N'QRDWHUA55NZT7QNH56XA4F6PIK2M24CR', N'cb1a2d57-15cf-4de6-8809-e5743c5dea9d', NULL, 0, 0, NULL, 1, 0, N'Agent1', 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [Tid]) VALUES (N'40dc637a-7fbc-40e5-bebd-e6d745184c1c', N'agent2@gmail.com', N'AGENT2@GMAIL.COM', N'agent2@gmail.com', N'AGENT2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEB78MT6tBGXQFOAlcBMBpujvcv7LqJBZnU6QHIyLKNFX1iqZFdpgpsbFGPy68D9E/w==', N'774PIZ5B3X5BJ7K2MQB66HCEXZ2RCHHX', N'4a89c97f-ed83-4ba8-8534-b32915778eb0', NULL, 0, 0, NULL, 1, 0, N'agent2', 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [Tid]) VALUES (N'b5a9d5bd-cfc1-4b67-87e8-a681a1ba7594', N'account@gmail.com', N'ACCOUNT@GMAIL.COM', N'account@gmail.com', N'ACCOUNT@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJI0qKYDkCIegP2grHny+4I5JEzkvimME4aaHVOjjhMjeCdmuOdKmfZj4FNF0cLSlQ==', N'WLU7B6MJRM3HFMKSGNJTUQX5EXG4NU2Z', N'5452594c-26c7-482f-ab0e-cba46a54965e', NULL, 0, 0, NULL, 1, 0, N'account', 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [Tid]) VALUES (N'ddb83d53-bd9c-4c21-a43a-55ad6ee5ee8c', N'qa@gmail.com', N'QA@GMAIL.COM', N'qa@gmail.com', N'QA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJE0jFnIH3FP4+/CFNjJPbqMUVF8VW4C1zN3Fu1zmZ2tuNM/Cgh/h10OWBwkfofR3w==', N'45GBDYCF4XW5FZVEGNC7HLR2AO7X7LKI', N'93d18dc4-bb1c-4ed9-8fdc-49c678d0da0a', NULL, 0, 0, NULL, 1, 0, N'Qa', 1)
SET IDENTITY_INSERT [dbo].[CallLog] ON 

INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (2, 1, 7, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', CAST(N'16:46:00' AS Time), CAST(N'16:46:00' AS Time), N'Postpone', N'Plan Postponed', N'as adas d', CAST(N'2021-03-25 16:46:00.0000000' AS DateTime2), CAST(N'2021-03-14 16:46:29.1251194' AS DateTime2), NULL)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (3, 1, 7, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', CAST(N'21:34:00' AS Time), CAST(N'21:37:00' AS Time), N'FollowUp', N'Taking Follow Up', N'zxcx zczx', CAST(N'2021-03-17 13:37:00.0000000' AS DateTime2), CAST(N'2021-03-16 21:37:12.7933632' AS DateTime2), NULL)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (4, 1, 8, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', CAST(N'21:43:00' AS Time), CAST(N'21:43:00' AS Time), N'Converted', N'Booked Payment Awaited', N'asd ad asdsa', NULL, CAST(N'2021-03-17 21:43:51.5220983' AS DateTime2), NULL)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (5, 1, 10, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', CAST(N'21:49:00' AS Time), CAST(N'21:49:00' AS Time), N'FollowUp', N'Package Sent', N'sad asd sad asdasdas dasd as', CAST(N'2021-03-10 13:49:00.0000000' AS DateTime2), CAST(N'2021-03-17 21:49:24.1913031' AS DateTime2), NULL)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (6, 1, 11, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', CAST(N'12:55:00' AS Time), CAST(N'12:55:00' AS Time), N'Closed', N'Query Closed', N'sd sfsdf sd', NULL, CAST(N'2021-03-18 12:55:36.6674277' AS DateTime2), NULL)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (7, 1, 12, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', CAST(N'12:56:00' AS Time), CAST(N'12:56:00' AS Time), N'Closed', N'Repeat Query', N'd fsdfsf', NULL, CAST(N'2021-03-18 12:56:22.5271804' AS DateTime2), NULL)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (8, 1, 12, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', CAST(N'12:56:00' AS Time), CAST(N'12:56:00' AS Time), N'Closed', N'Repeat Query', N'd fsdfsf', NULL, CAST(N'2021-03-18 12:56:22.5436807' AS DateTime2), NULL)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (9, 1, 11, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', CAST(N'13:06:00' AS Time), CAST(N'13:06:00' AS Time), N'Reopen', N'Approached Again', N'sd sddasdas da', NULL, CAST(N'2021-03-18 13:06:13.5506104' AS DateTime2), NULL)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (10, 1, 12, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', CAST(N'13:07:00' AS Time), CAST(N'13:07:00' AS Time), N'Reopen', N'Approached Again', N'sd asdas', NULL, CAST(N'2021-03-18 13:07:55.9886199' AS DateTime2), NULL)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (11, 1, 15, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', CAST(N'17:42:00' AS Time), CAST(N'17:43:00' AS Time), N'Closed', N'Not Responding', N'dsfsdfsdf', NULL, CAST(N'2021-03-23 17:43:13.0659175' AS DateTime2), NULL)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (12, 1, 8, N'b5a9d5bd-cfc1-4b67-87e8-a681a1ba7594', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Invoice', N'Pending', N'payment verified', NULL, CAST(N'2021-03-27 11:48:16.3679283' AS DateTime2), 3)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (13, 1, 8, N'b5a9d5bd-cfc1-4b67-87e8-a681a1ba7594', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Invoice', N'Pending', N'payment verified', NULL, CAST(N'2021-03-27 11:49:17.3570245' AS DateTime2), 3)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (14, 1, 8, N'b5a9d5bd-cfc1-4b67-87e8-a681a1ba7594', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Invoice', N'Approved', N'Payment Verified', NULL, CAST(N'2021-03-27 11:50:04.4571078' AS DateTime2), 3)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (15, 1, 8, N'b5a9d5bd-cfc1-4b67-87e8-a681a1ba7594', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Invoice', N'Rejected', N'Invalid data', NULL, CAST(N'2021-03-27 11:50:31.3170857' AS DateTime2), 5)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (16, 1, 8, N'b5a9d5bd-cfc1-4b67-87e8-a681a1ba7594', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Invoice', N'Rejected', N'sdsad asd as', NULL, CAST(N'2021-03-27 12:04:42.5372503' AS DateTime2), 3)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (17, 1, 8, N'b5a9d5bd-cfc1-4b67-87e8-a681a1ba7594', CAST(N'12:35:20.0968961' AS Time), CAST(N'12:35:20.0968345' AS Time), N'Invoice', N'Approved', N'asd asdasds', NULL, CAST(N'2021-03-27 12:35:20.0964578' AS DateTime2), 4)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (18, 1, 10, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', CAST(N'16:03:00' AS Time), CAST(N'16:03:00' AS Time), N'Postpone', N'Plan Postponed', N'sdf sdf dsf', CAST(N'2021-03-25 20:03:00.0000000' AS DateTime2), CAST(N'2021-03-27 16:03:26.8139630' AS DateTime2), NULL)
INSERT [dbo].[CallLog] ([Id], [Tid], [LeadId], [UserId], [StartTime], [EndTime], [Status], [Remarks], [Message], [AlertDate], [CreatedDate], [InvoiceId]) VALUES (19, 1, 8, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', CAST(N'21:47:00' AS Time), CAST(N'21:48:00' AS Time), N'FollowUp', N'Taking Follow Up', N'zszdd cdscz', CAST(N'2021-04-08 12:50:00.0000000' AS DateTime2), CAST(N'2021-04-01 21:48:01.0091261' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[CallLog] OFF
SET IDENTITY_INSERT [dbo].[EmailSetup] ON 

INSERT [dbo].[EmailSetup] ([Id], [Email], [SmtpServer], [SmtpPort], [UseSsl], [Username], [Password], [Status], [CreatedDate], [UpdatedDate], [Tid]) VALUES (1, N'qa@gmail.com', N'smtp.gmail.com', 25, N'Yes', N'asd sadsa', N'sdsdasdasd', 1, CAST(N'2021-03-16 22:32:11.6295951' AS DateTime2), NULL, 1)
SET IDENTITY_INSERT [dbo].[EmailSetup] OFF
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([Id], [Tid], [LeadId], [OtherCharges], [TotalAmount], [DiscountAmount], [GrandTotal], [Remarks], [OrderStatus], [CreatedDate], [UpdatedDate], [TaxAmount], [TaxPercent]) VALUES (3, 1, 8, CAST(20.00 AS Decimal(18, 2)), CAST(560.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(670.80 AS Decimal(18, 2)), N'xcvxcv cx', 0, CAST(N'2021-03-24 12:16:12.5945340' AS DateTime2), CAST(N'2021-03-28 20:01:22.1722317' AS DateTime2), CAST(100.80 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)))
INSERT [dbo].[Invoice] ([Id], [Tid], [LeadId], [OtherCharges], [TotalAmount], [DiscountAmount], [GrandTotal], [Remarks], [OrderStatus], [CreatedDate], [UpdatedDate], [TaxAmount], [TaxPercent]) VALUES (4, 1, 8, CAST(0.00 AS Decimal(18, 2)), CAST(560.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(560.00 AS Decimal(18, 2)), N'sdsdsd', 1, CAST(N'2021-03-24 12:18:26.2861737' AS DateTime2), CAST(N'2021-03-27 12:38:38.2633378' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)))
INSERT [dbo].[Invoice] ([Id], [Tid], [LeadId], [OtherCharges], [TotalAmount], [DiscountAmount], [GrandTotal], [Remarks], [OrderStatus], [CreatedDate], [UpdatedDate], [TaxAmount], [TaxPercent]) VALUES (5, 1, 8, CAST(60.00 AS Decimal(18, 2)), CAST(1700.00 AS Decimal(18, 2)), CAST(501.00 AS Decimal(18, 2)), CAST(1565.00 AS Decimal(18, 2)), N'test tytytyt', 2, CAST(N'2021-03-24 15:20:51.5712454' AS DateTime2), CAST(N'2021-03-25 16:27:45.4465120' AS DateTime2), CAST(306.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Invoice] OFF
SET IDENTITY_INSERT [dbo].[InvoiceDetail] ON 

INSERT [dbo].[InvoiceDetail] ([Id], [Tid], [InvoiceId], [ProductId], [Price], [Qty], [Amount], [CreatedDate], [UpdatedDate], [ActionType]) VALUES (1, 1, 3, 2, CAST(220.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(440.00 AS Decimal(18, 2)), CAST(N'2021-03-24 12:16:13.0602947' AS DateTime2), CAST(N'2021-03-28 20:01:22.1916605' AS DateTime2), 2)
INSERT [dbo].[InvoiceDetail] ([Id], [Tid], [InvoiceId], [ProductId], [Price], [Qty], [Amount], [CreatedDate], [UpdatedDate], [ActionType]) VALUES (2, 1, 3, 1, CAST(120.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), CAST(N'2021-03-24 12:16:15.3171011' AS DateTime2), CAST(N'2021-03-28 20:01:22.1957204' AS DateTime2), 2)
INSERT [dbo].[InvoiceDetail] ([Id], [Tid], [InvoiceId], [ProductId], [Price], [Qty], [Amount], [CreatedDate], [UpdatedDate], [ActionType]) VALUES (3, 1, 4, 2, CAST(220.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(440.00 AS Decimal(18, 2)), CAST(N'2021-03-24 12:18:26.5536923' AS DateTime2), CAST(N'2021-03-27 12:38:38.4612088' AS DateTime2), 2)
INSERT [dbo].[InvoiceDetail] ([Id], [Tid], [InvoiceId], [ProductId], [Price], [Qty], [Amount], [CreatedDate], [UpdatedDate], [ActionType]) VALUES (4, 1, 4, 1, CAST(120.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), CAST(N'2021-03-24 12:18:26.6079439' AS DateTime2), CAST(N'2021-03-27 12:38:38.5017132' AS DateTime2), 2)
INSERT [dbo].[InvoiceDetail] ([Id], [Tid], [InvoiceId], [ProductId], [Price], [Qty], [Amount], [CreatedDate], [UpdatedDate], [ActionType]) VALUES (6, 1, 5, 1, CAST(120.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(360.00 AS Decimal(18, 2)), CAST(N'2021-03-24 15:20:51.8818748' AS DateTime2), CAST(N'2021-03-25 16:27:45.4631802' AS DateTime2), 2)
INSERT [dbo].[InvoiceDetail] ([Id], [Tid], [InvoiceId], [ProductId], [Price], [Qty], [Amount], [CreatedDate], [UpdatedDate], [ActionType]) VALUES (7, 1, 5, 2, CAST(220.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(1100.00 AS Decimal(18, 2)), CAST(N'2021-03-24 16:08:24.0210974' AS DateTime2), CAST(N'2021-03-25 16:27:45.4735250' AS DateTime2), 2)
INSERT [dbo].[InvoiceDetail] ([Id], [Tid], [InvoiceId], [ProductId], [Price], [Qty], [Amount], [CreatedDate], [UpdatedDate], [ActionType]) VALUES (8, 1, 5, 1, CAST(120.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(240.00 AS Decimal(18, 2)), CAST(N'2021-03-25 16:27:45.4818816' AS DateTime2), NULL, 1)
SET IDENTITY_INSERT [dbo].[InvoiceDetail] OFF
SET IDENTITY_INSERT [dbo].[Lead] ON 

INSERT [dbo].[Lead] ([Id], [Tid], [Name], [PhoneNumber], [Email], [Address], [City], [State], [Country], [PostalCode], [LeadSourceId], [LeadLanguageId], [LastContact], [UserId], [LeadStatus], [CreatedDate], [UpdatedDate], [AlertDate], [AssignedDate]) VALUES (7, 1, N'Amanda', N'323123232', N'ssddas@sasdas.com', N'sad askdjsakdjask', N'sdsds1', N'sdsf11', N'ddsdsd', N'32434', 2, 1, CAST(N'2021-03-16 21:37:13.2785873' AS DateTime2), N'40dc637a-7fbc-40e5-bebd-e6d745184c1c', N'FollowUp', CAST(N'2021-03-11 22:07:02.9587593' AS DateTime2), CAST(N'2021-03-16 21:44:25.2830539' AS DateTime2), CAST(N'2021-03-17 13:37:00.0000000' AS DateTime2), CAST(N'2021-03-18 16:46:16.8298471' AS DateTime2))
INSERT [dbo].[Lead] ([Id], [Tid], [Name], [PhoneNumber], [Email], [Address], [City], [State], [Country], [PostalCode], [LeadSourceId], [LeadLanguageId], [LastContact], [UserId], [LeadStatus], [CreatedDate], [UpdatedDate], [AlertDate], [AssignedDate]) VALUES (8, 1, N'Jasmine', N'5656565656', N'qa@gmail.com', NULL, NULL, NULL, NULL, NULL, 3, 2, CAST(N'2021-04-01 21:48:01.2954247' AS DateTime2), N'40dc637a-7fbc-40e5-bebd-e6d745184c1c', N'FollowUp', CAST(N'2021-03-17 20:37:43.4822340' AS DateTime2), NULL, CAST(N'2021-04-08 12:50:00.0000000' AS DateTime2), CAST(N'2021-03-18 16:46:16.9404157' AS DateTime2))
INSERT [dbo].[Lead] ([Id], [Tid], [Name], [PhoneNumber], [Email], [Address], [City], [State], [Country], [PostalCode], [LeadSourceId], [LeadLanguageId], [LastContact], [UserId], [LeadStatus], [CreatedDate], [UpdatedDate], [AlertDate], [AssignedDate]) VALUES (9, 1, N'Anna', N'2332323232', N'qa@gmail.com', NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', N'NewLead', CAST(N'2021-03-17 20:45:30.3017408' AS DateTime2), NULL, NULL, CAST(N'2021-03-17 21:42:59.5070000' AS DateTime2))
INSERT [dbo].[Lead] ([Id], [Tid], [Name], [PhoneNumber], [Email], [Address], [City], [State], [Country], [PostalCode], [LeadSourceId], [LeadLanguageId], [LastContact], [UserId], [LeadStatus], [CreatedDate], [UpdatedDate], [AlertDate], [AssignedDate]) VALUES (10, 1, N'Joan', N'2332323232', N'qa@gmail.com', NULL, NULL, NULL, NULL, NULL, 2, 2, CAST(N'2021-03-27 16:03:26.9975528' AS DateTime2), N'40dc637a-7fbc-40e5-bebd-e6d745184c1c', N'Postpone', CAST(N'2021-03-17 20:48:27.3622673' AS DateTime2), NULL, CAST(N'2021-03-25 20:03:00.0000000' AS DateTime2), CAST(N'2021-03-18 16:47:59.7730780' AS DateTime2))
INSERT [dbo].[Lead] ([Id], [Tid], [Name], [PhoneNumber], [Email], [Address], [City], [State], [Country], [PostalCode], [LeadSourceId], [LeadLanguageId], [LastContact], [UserId], [LeadStatus], [CreatedDate], [UpdatedDate], [AlertDate], [AssignedDate]) VALUES (11, 1, N'Julia
', N'2323232323', N'agent1@gmail.com', NULL, NULL, NULL, NULL, NULL, 2, 2, CAST(N'2021-03-18 13:06:13.6987097' AS DateTime2), N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', N'Reopen', CAST(N'2021-03-17 20:49:19.3286768' AS DateTime2), NULL, NULL, CAST(N'2021-03-17 21:42:59.5070000' AS DateTime2))
INSERT [dbo].[Lead] ([Id], [Tid], [Name], [PhoneNumber], [Email], [Address], [City], [State], [Country], [PostalCode], [LeadSourceId], [LeadLanguageId], [LastContact], [UserId], [LeadStatus], [CreatedDate], [UpdatedDate], [AlertDate], [AssignedDate]) VALUES (12, 1, N'Megan', N'1234567890', N'sdsdsd@dsdsd.com', NULL, NULL, NULL, NULL, NULL, 2, 1, CAST(N'2021-03-18 13:07:56.1398341' AS DateTime2), N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', N'Reopen', CAST(N'2021-03-17 20:50:16.8910515' AS DateTime2), NULL, NULL, CAST(N'2021-03-18 13:07:56.1400059' AS DateTime2))
INSERT [dbo].[Lead] ([Id], [Tid], [Name], [PhoneNumber], [Email], [Address], [City], [State], [Country], [PostalCode], [LeadSourceId], [LeadLanguageId], [LastContact], [UserId], [LeadStatus], [CreatedDate], [UpdatedDate], [AlertDate], [AssignedDate]) VALUES (13, 1, N'sadsa', N'23232', N'qa@gmail.com', NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', N'NewLead', CAST(N'2021-03-17 20:51:29.7289666' AS DateTime2), NULL, NULL, CAST(N'2021-03-17 21:42:59.5070000' AS DateTime2))
INSERT [dbo].[Lead] ([Id], [Tid], [Name], [PhoneNumber], [Email], [Address], [City], [State], [Country], [PostalCode], [LeadSourceId], [LeadLanguageId], [LastContact], [UserId], [LeadStatus], [CreatedDate], [UpdatedDate], [AlertDate], [AssignedDate]) VALUES (14, 1, N'Michelle', N'56565656', N'agent1@gmail.com', NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, N'40dc637a-7fbc-40e5-bebd-e6d745184c1c', N'NewLead', CAST(N'2021-03-17 20:55:24.4280811' AS DateTime2), NULL, NULL, CAST(N'2021-03-17 21:42:59.5070000' AS DateTime2))
INSERT [dbo].[Lead] ([Id], [Tid], [Name], [PhoneNumber], [Email], [Address], [City], [State], [Country], [PostalCode], [LeadSourceId], [LeadLanguageId], [LastContact], [UserId], [LeadStatus], [CreatedDate], [UpdatedDate], [AlertDate], [AssignedDate]) VALUES (15, 1, N'Sarah', N'56565656121212', N'qa1212@gmail.com', NULL, NULL, NULL, NULL, NULL, 3, 1, CAST(N'2021-03-23 17:43:13.6254719' AS DateTime2), N'40dc637a-7fbc-40e5-bebd-e6d745184c1c', N'Closed', CAST(N'2021-03-17 21:15:34.8388603' AS DateTime2), NULL, NULL, CAST(N'2021-03-17 21:42:59.5070000' AS DateTime2))
INSERT [dbo].[Lead] ([Id], [Tid], [Name], [PhoneNumber], [Email], [Address], [City], [State], [Country], [PostalCode], [LeadSourceId], [LeadLanguageId], [LastContact], [UserId], [LeadStatus], [CreatedDate], [UpdatedDate], [AlertDate], [AssignedDate]) VALUES (16, 1, N'Natalie', N'5656565612121221', N'qa121211@gmail.com', NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', N'NewLead', CAST(N'2021-03-17 21:18:36.7592625' AS DateTime2), NULL, NULL, CAST(N'2021-03-17 21:42:59.5070000' AS DateTime2))
INSERT [dbo].[Lead] ([Id], [Tid], [Name], [PhoneNumber], [Email], [Address], [City], [State], [Country], [PostalCode], [LeadSourceId], [LeadLanguageId], [LastContact], [UserId], [LeadStatus], [CreatedDate], [UpdatedDate], [AlertDate], [AssignedDate]) VALUES (17, 1, N'Stephanie', N'565656562232323', N'admin@wewewe.com', NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', N'NewLead', CAST(N'2021-03-17 21:21:55.9573554' AS DateTime2), NULL, NULL, CAST(N'2021-03-17 21:42:59.5070000' AS DateTime2))
INSERT [dbo].[Lead] ([Id], [Tid], [Name], [PhoneNumber], [Email], [Address], [City], [State], [Country], [PostalCode], [LeadSourceId], [LeadLanguageId], [LastContact], [UserId], [LeadStatus], [CreatedDate], [UpdatedDate], [AlertDate], [AssignedDate]) VALUES (18, 1, N'Rose', N'565656562232323111', N'admin1545@wewewe.com', NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', N'NewLead', CAST(N'2021-03-17 21:23:06.2140466' AS DateTime2), NULL, NULL, CAST(N'2021-03-17 21:42:59.5070000' AS DateTime2))
INSERT [dbo].[Lead] ([Id], [Tid], [Name], [PhoneNumber], [Email], [Address], [City], [State], [Country], [PostalCode], [LeadSourceId], [LeadLanguageId], [LastContact], [UserId], [LeadStatus], [CreatedDate], [UpdatedDate], [AlertDate], [AssignedDate]) VALUES (19, 1, N'Vanessa', N'123456789022222', N'admin@sdsdsdsdsd.com', NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, N'40dc637a-7fbc-40e5-bebd-e6d745184c1c', N'NewLead', CAST(N'2021-03-17 21:26:12.5293958' AS DateTime2), NULL, NULL, CAST(N'2021-03-17 21:42:59.5070000' AS DateTime2))
INSERT [dbo].[Lead] ([Id], [Tid], [Name], [PhoneNumber], [Email], [Address], [City], [State], [Country], [PostalCode], [LeadSourceId], [LeadLanguageId], [LastContact], [UserId], [LeadStatus], [CreatedDate], [UpdatedDate], [AlertDate], [AssignedDate]) VALUES (20, 1, N'Victoria', N'12345678902222211', N'admi111n@sdsdsdsdsd.com', NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, N'40dc637a-7fbc-40e5-bebd-e6d745184c1c', N'NewLead', CAST(N'2021-03-17 21:27:20.3676284' AS DateTime2), NULL, NULL, CAST(N'2021-03-17 21:42:59.5070000' AS DateTime2))
INSERT [dbo].[Lead] ([Id], [Tid], [Name], [PhoneNumber], [Email], [Address], [City], [State], [Country], [PostalCode], [LeadSourceId], [LeadLanguageId], [LastContact], [UserId], [LeadStatus], [CreatedDate], [UpdatedDate], [AlertDate], [AssignedDate]) VALUES (23, 0, N'Wanda', N'89898989', N'sdsds@sdsd.com', NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', N'NewLead', CAST(N'2021-03-30 12:21:30.3155990' AS DateTime2), NULL, NULL, CAST(N'2021-03-30 12:21:30.3156388' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Lead] OFF
SET IDENTITY_INSERT [dbo].[LeadAutoAssign] ON 

INSERT [dbo].[LeadAutoAssign] ([Id], [Tid], [HandleQuery], [UserId], [Status], [CreatedDate], [UpdatedDate]) VALUES (1, 1, 5, N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', 1, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'2021-03-17 16:28:02.3747541' AS DateTime2))
INSERT [dbo].[LeadAutoAssign] ([Id], [Tid], [HandleQuery], [UserId], [Status], [CreatedDate], [UpdatedDate]) VALUES (2, 1, 2, N'40dc637a-7fbc-40e5-bebd-e6d745184c1c', 1, CAST(N'2021-03-17 20:35:55.5448835' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[LeadAutoAssign] OFF
SET IDENTITY_INSERT [dbo].[LeadAutoAssignLog] ON 

INSERT [dbo].[LeadAutoAssignLog] ([Id], [Tid], [LeadId], [LeadSourceId], [UserId], [CreatedDate]) VALUES (2, 1, 10, 2, N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', CAST(N'2021-03-17 20:54:38.1100000' AS DateTime2))
INSERT [dbo].[LeadAutoAssignLog] ([Id], [Tid], [LeadId], [LeadSourceId], [UserId], [CreatedDate]) VALUES (3, 1, 11, 2, N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', CAST(N'2021-03-17 20:54:38.1100000' AS DateTime2))
INSERT [dbo].[LeadAutoAssignLog] ([Id], [Tid], [LeadId], [LeadSourceId], [UserId], [CreatedDate]) VALUES (4, 1, 12, 2, N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', CAST(N'2021-03-17 20:54:38.1100000' AS DateTime2))
INSERT [dbo].[LeadAutoAssignLog] ([Id], [Tid], [LeadId], [LeadSourceId], [UserId], [CreatedDate]) VALUES (5, 1, 13, 2, N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', CAST(N'2021-03-17 20:54:38.1100000' AS DateTime2))
INSERT [dbo].[LeadAutoAssignLog] ([Id], [Tid], [LeadId], [LeadSourceId], [UserId], [CreatedDate]) VALUES (6, 1, 14, 3, N'40dc637a-7fbc-40e5-bebd-e6d745184c1c', CAST(N'2021-03-17 20:55:24.8145021' AS DateTime2))
INSERT [dbo].[LeadAutoAssignLog] ([Id], [Tid], [LeadId], [LeadSourceId], [UserId], [CreatedDate]) VALUES (7, 1, 15, 3, N'40dc637a-7fbc-40e5-bebd-e6d745184c1c', CAST(N'2021-03-17 21:15:35.1366468' AS DateTime2))
INSERT [dbo].[LeadAutoAssignLog] ([Id], [Tid], [LeadId], [LeadSourceId], [UserId], [CreatedDate]) VALUES (8, 1, 16, 3, N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', CAST(N'2021-03-17 21:18:37.1197307' AS DateTime2))
INSERT [dbo].[LeadAutoAssignLog] ([Id], [Tid], [LeadId], [LeadSourceId], [UserId], [CreatedDate]) VALUES (9, 0, 23, 3, N'3f80f5e5-ba3b-4fa4-b8ee-040157092784', CAST(N'2021-03-30 12:21:30.6937516' AS DateTime2))
SET IDENTITY_INSERT [dbo].[LeadAutoAssignLog] OFF
SET IDENTITY_INSERT [dbo].[LeadAutoAssignSourceMapping] ON 

INSERT [dbo].[LeadAutoAssignSourceMapping] ([Id], [Tid], [LeadAutoAssignId], [LeadSourceId], [CreatedDate]) VALUES (3, 1, 1, 3, CAST(N'2021-03-17 16:28:02.5166750' AS DateTime2))
INSERT [dbo].[LeadAutoAssignSourceMapping] ([Id], [Tid], [LeadAutoAssignId], [LeadSourceId], [CreatedDate]) VALUES (4, 1, 1, 2, CAST(N'2021-03-17 16:28:02.5726158' AS DateTime2))
INSERT [dbo].[LeadAutoAssignSourceMapping] ([Id], [Tid], [LeadAutoAssignId], [LeadSourceId], [CreatedDate]) VALUES (5, 1, 2, 3, CAST(N'2021-03-17 20:35:55.8689583' AS DateTime2))
SET IDENTITY_INSERT [dbo].[LeadAutoAssignSourceMapping] OFF
SET IDENTITY_INSERT [dbo].[LeadLanguage] ON 

INSERT [dbo].[LeadLanguage] ([Id], [Tid], [Name], [Status], [CreatedDate], [UpdatedDate]) VALUES (1, 1, N'English', 1, CAST(N'2021-03-04 17:12:00.5953651' AS DateTime2), NULL)
INSERT [dbo].[LeadLanguage] ([Id], [Tid], [Name], [Status], [CreatedDate], [UpdatedDate]) VALUES (2, 1, N'Hindi', 1, CAST(N'2021-03-04 17:12:37.5222688' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[LeadLanguage] OFF
SET IDENTITY_INSERT [dbo].[LeadRemarks] ON 

INSERT [dbo].[LeadRemarks] ([Id], [Tid], [Status], [Name], [CreatedDate], [UpdatedDate]) VALUES (1, 1, N'FollowUp', N'Taking Follow Up', CAST(N'2021-03-13 21:11:31.2905819' AS DateTime2), NULL)
INSERT [dbo].[LeadRemarks] ([Id], [Tid], [Status], [Name], [CreatedDate], [UpdatedDate]) VALUES (2, 1, N'FollowUp', N'Package Sent', CAST(N'2021-03-13 21:11:55.4717876' AS DateTime2), NULL)
INSERT [dbo].[LeadRemarks] ([Id], [Tid], [Status], [Name], [CreatedDate], [UpdatedDate]) VALUES (3, 1, N'FollowUp', N'Call Back', CAST(N'2021-03-13 21:12:12.1946566' AS DateTime2), NULL)
INSERT [dbo].[LeadRemarks] ([Id], [Tid], [Status], [Name], [CreatedDate], [UpdatedDate]) VALUES (4, 1, N'Closed', N'Query Closed', CAST(N'2021-03-13 21:12:41.4089583' AS DateTime2), NULL)
INSERT [dbo].[LeadRemarks] ([Id], [Tid], [Status], [Name], [CreatedDate], [UpdatedDate]) VALUES (5, 1, N'Closed', N'Not Responding', CAST(N'2021-03-13 21:13:13.6800044' AS DateTime2), NULL)
INSERT [dbo].[LeadRemarks] ([Id], [Tid], [Status], [Name], [CreatedDate], [UpdatedDate]) VALUES (6, 1, N'Closed', N'Repeat Query', CAST(N'2021-03-13 21:13:26.8615369' AS DateTime2), NULL)
INSERT [dbo].[LeadRemarks] ([Id], [Tid], [Status], [Name], [CreatedDate], [UpdatedDate]) VALUES (7, 1, N'Closed', N'Fake Query', CAST(N'2021-03-13 21:13:46.2773987' AS DateTime2), NULL)
INSERT [dbo].[LeadRemarks] ([Id], [Tid], [Status], [Name], [CreatedDate], [UpdatedDate]) VALUES (8, 1, N'Closed', N'Low Budget', CAST(N'2021-03-13 21:14:02.5133811' AS DateTime2), NULL)
INSERT [dbo].[LeadRemarks] ([Id], [Tid], [Status], [Name], [CreatedDate], [UpdatedDate]) VALUES (9, 1, N'Comment', N'Call Done', CAST(N'2021-03-13 21:14:35.6193710' AS DateTime2), NULL)
INSERT [dbo].[LeadRemarks] ([Id], [Tid], [Status], [Name], [CreatedDate], [UpdatedDate]) VALUES (10, 1, N'Comment', N'Working In Process', CAST(N'2021-03-13 21:15:10.2606844' AS DateTime2), NULL)
INSERT [dbo].[LeadRemarks] ([Id], [Tid], [Status], [Name], [CreatedDate], [UpdatedDate]) VALUES (11, 1, N'Converted', N'Booked Payment Awaited', CAST(N'2021-03-13 21:15:48.7323857' AS DateTime2), NULL)
INSERT [dbo].[LeadRemarks] ([Id], [Tid], [Status], [Name], [CreatedDate], [UpdatedDate]) VALUES (12, 1, N'Converted', N'Booked Payment Received ', CAST(N'2021-03-13 21:16:04.3154158' AS DateTime2), NULL)
INSERT [dbo].[LeadRemarks] ([Id], [Tid], [Status], [Name], [CreatedDate], [UpdatedDate]) VALUES (13, 1, N'Postpone', N'Plan Postponed', CAST(N'2021-03-13 21:16:55.9020746' AS DateTime2), NULL)
INSERT [dbo].[LeadRemarks] ([Id], [Tid], [Status], [Name], [CreatedDate], [UpdatedDate]) VALUES (14, 1, N'Reopen', N'Approached Again', CAST(N'2021-03-18 13:03:37.2987383' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[LeadRemarks] OFF
SET IDENTITY_INSERT [dbo].[LeadSource] ON 

INSERT [dbo].[LeadSource] ([Id], [Tid], [Name], [Status], [CreatedDate], [UpdatedDate]) VALUES (1, 1, N'Youtube', 1, CAST(N'2021-03-04 17:12:55.5390120' AS DateTime2), NULL)
INSERT [dbo].[LeadSource] ([Id], [Tid], [Name], [Status], [CreatedDate], [UpdatedDate]) VALUES (2, 1, N'Facebook', 1, CAST(N'2021-03-04 17:13:06.7875403' AS DateTime2), NULL)
INSERT [dbo].[LeadSource] ([Id], [Tid], [Name], [Status], [CreatedDate], [UpdatedDate]) VALUES (3, 1, N'Website', 1, CAST(N'2021-03-04 17:13:19.8048409' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[LeadSource] OFF
SET IDENTITY_INSERT [dbo].[LeadTag] ON 

INSERT [dbo].[LeadTag] ([Id], [Tid], [Name], [Status], [CreatedDate], [UpdatedDate]) VALUES (6, 1, N'Low Budget', 1, CAST(N'2021-03-11 12:04:53.0919212' AS DateTime2), NULL)
INSERT [dbo].[LeadTag] ([Id], [Tid], [Name], [Status], [CreatedDate], [UpdatedDate]) VALUES (7, 1, N'High Budget', 1, CAST(N'2021-03-11 12:05:03.2368368' AS DateTime2), NULL)
INSERT [dbo].[LeadTag] ([Id], [Tid], [Name], [Status], [CreatedDate], [UpdatedDate]) VALUES (8, 1, N'Low Priority', 1, CAST(N'2021-03-11 12:05:19.5888517' AS DateTime2), NULL)
INSERT [dbo].[LeadTag] ([Id], [Tid], [Name], [Status], [CreatedDate], [UpdatedDate]) VALUES (9, 1, N'High Priority', 1, CAST(N'2021-03-11 12:05:33.2114540' AS DateTime2), NULL)
INSERT [dbo].[LeadTag] ([Id], [Tid], [Name], [Status], [CreatedDate], [UpdatedDate]) VALUES (10, 1, N'VIP', 1, CAST(N'2021-03-11 12:05:43.7464921' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[LeadTag] OFF
SET IDENTITY_INSERT [dbo].[LeadTagMapping] ON 

INSERT [dbo].[LeadTagMapping] ([Id], [Tid], [LeadId], [LeadTagId], [Status], [CreatedDate], [UpdatedDate]) VALUES (24, 1, 7, 9, 1, CAST(N'2021-03-16 21:44:25.5444447' AS DateTime2), NULL)
INSERT [dbo].[LeadTagMapping] ([Id], [Tid], [LeadId], [LeadTagId], [Status], [CreatedDate], [UpdatedDate]) VALUES (25, 1, 7, 8, 1, CAST(N'2021-03-16 21:44:25.5815988' AS DateTime2), NULL)
INSERT [dbo].[LeadTagMapping] ([Id], [Tid], [LeadId], [LeadTagId], [Status], [CreatedDate], [UpdatedDate]) VALUES (26, 1, 7, 7, 1, CAST(N'2021-03-16 21:44:25.5934395' AS DateTime2), NULL)
INSERT [dbo].[LeadTagMapping] ([Id], [Tid], [LeadId], [LeadTagId], [Status], [CreatedDate], [UpdatedDate]) VALUES (27, 1, 8, 9, 1, CAST(N'2021-03-17 20:37:43.7837715' AS DateTime2), NULL)
INSERT [dbo].[LeadTagMapping] ([Id], [Tid], [LeadId], [LeadTagId], [Status], [CreatedDate], [UpdatedDate]) VALUES (28, 1, 10, 9, 1, CAST(N'2021-03-17 20:48:45.3384766' AS DateTime2), NULL)
INSERT [dbo].[LeadTagMapping] ([Id], [Tid], [LeadId], [LeadTagId], [Status], [CreatedDate], [UpdatedDate]) VALUES (29, 1, 11, 6, 1, CAST(N'2021-03-17 20:49:19.3603726' AS DateTime2), NULL)
INSERT [dbo].[LeadTagMapping] ([Id], [Tid], [LeadId], [LeadTagId], [Status], [CreatedDate], [UpdatedDate]) VALUES (30, 1, 12, 10, 1, CAST(N'2021-03-17 20:50:16.9032546' AS DateTime2), NULL)
INSERT [dbo].[LeadTagMapping] ([Id], [Tid], [LeadId], [LeadTagId], [Status], [CreatedDate], [UpdatedDate]) VALUES (31, 1, 13, 9, 1, CAST(N'2021-03-17 20:51:29.7719314' AS DateTime2), NULL)
INSERT [dbo].[LeadTagMapping] ([Id], [Tid], [LeadId], [LeadTagId], [Status], [CreatedDate], [UpdatedDate]) VALUES (32, 1, 14, 9, 1, CAST(N'2021-03-17 20:55:24.8301031' AS DateTime2), NULL)
INSERT [dbo].[LeadTagMapping] ([Id], [Tid], [LeadId], [LeadTagId], [Status], [CreatedDate], [UpdatedDate]) VALUES (33, 1, 15, 8, 1, CAST(N'2021-03-17 21:15:35.1522046' AS DateTime2), NULL)
INSERT [dbo].[LeadTagMapping] ([Id], [Tid], [LeadId], [LeadTagId], [Status], [CreatedDate], [UpdatedDate]) VALUES (34, 1, 15, 7, 1, CAST(N'2021-03-17 21:15:35.1848256' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[LeadTagMapping] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Tid], [Name], [Description], [Price], [Status], [CreatedDate], [UpdatedDate]) VALUES (1, 1, N'Product1', NULL, CAST(120.00 AS Decimal(18, 2)), 1, CAST(N'2021-03-21 17:14:24.5294357' AS DateTime2), NULL)
INSERT [dbo].[Product] ([Id], [Tid], [Name], [Description], [Price], [Status], [CreatedDate], [UpdatedDate]) VALUES (2, 1, N'Product 2', NULL, CAST(220.00 AS Decimal(18, 2)), 1, CAST(N'2021-03-21 17:14:40.6460782' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[SystemSetup] ON 

INSERT [dbo].[SystemSetup] ([Id], [Tid], [CompanyName], [CompanyAddress], [CompanyContact], [CompanyGstNumber], [Currency], [CurrencySymbol], [CompanyLogo], [Status], [CreatedDate], [UpdatedDate], [TaxPercent]) VALUES (1, 1, N'Simax Pvt Ltd', N'News Test Address', N'9876543210', N'VAT232323232', N'Doller', N'$', N'Uploads/CompanyLogo/132610528727722814.png', 1, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'2021-03-24 15:17:52.7883037' AS DateTime2), CAST(18.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[SystemSetup] OFF
SET IDENTITY_INSERT [dbo].[TeamSlug] ON 

INSERT [dbo].[TeamSlug] ([Id], [Name], [DbName], [Status], [CreatedDate], [UpdatedDate]) VALUES (1, N'SimaxSys.com', N'SimaxCrmTest1', 1, CAST(N'2021-03-04 13:16:47.1654165' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[TeamSlug] OFF
SET IDENTITY_INSERT [dbo].[Template] ON 

INSERT [dbo].[Template] ([Id], [Tid], [Name], [Type], [Text], [Status], [CreatedDate], [UpdatedDate], [Subject]) VALUES (2, 1, N'Test SMS 2', 1, N'dsf jsdfksjdkfjsdfdsf sdfsdf sdf @Name@ fsd fsfsdf sdf sdf dsf ds@Address@  @State@vg dg dfgfdgfg', 1, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'2021-03-15 17:55:25.9042395' AS DateTime2), NULL)
INSERT [dbo].[Template] ([Id], [Tid], [Name], [Type], [Text], [Status], [CreatedDate], [UpdatedDate], [Subject]) VALUES (3, 1, N'Email Test', 2, N'<p>&nbsp;sdfkd<strong>sjf s</strong>df sd@Name@ @Id@ @Email@</p>

<p>fsd fsd fsdf</p>

<p>sdf dsf sd@PhoneNumber@1122</p>
', 1, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'2021-03-16 22:38:25.0249077' AS DateTime2), N'Text Email Subject')
SET IDENTITY_INSERT [dbo].[Template] OFF
SET IDENTITY_INSERT [dbo].[UserLog] ON 

INSERT [dbo].[UserLog] ([Id], [Tid], [LeadId], [UserId], [LogType], [LogText], [LogStatus], [IsSuccess], [CreatedDate], [LogRecId]) VALUES (3, 1, 7, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', N'Email', N'<p>&nbsp;sdfkd<strong>sjf s</strong>df sddassa 7 ssddas@sasdas.com</p>

<p>fsd fsd fsdf</p>

<p>sdf dsf sd3231232321122</p>
', N'Not Configured', 0, CAST(N'2021-03-16 21:26:19.7483838' AS DateTime2), 3)
INSERT [dbo].[UserLog] ([Id], [Tid], [LeadId], [UserId], [LogType], [LogText], [LogStatus], [IsSuccess], [CreatedDate], [LogRecId]) VALUES (4, 1, 7, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', N'SMS', N'dsf jsdfksjdkfjsdfdsf sdfsdf sdf dassa fsd fsfsdf sdf sdf dsf dssad askdjsakdjask  sdsf1vg dg dfgfdgfg', N'Not Configured', 0, CAST(N'2021-03-16 21:36:04.7064654' AS DateTime2), 2)
INSERT [dbo].[UserLog] ([Id], [Tid], [LeadId], [UserId], [LogType], [LogText], [LogStatus], [IsSuccess], [CreatedDate], [LogRecId]) VALUES (5, 1, 7, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', N'Email', N'<p>&nbsp;sdfkd<strong>sjf s</strong>df sddassa 7 ssddas@sasdas.com</p>

<p>fsd fsd fsdf</p>

<p>sdf dsf sd3231232321122</p>
', N'Failure sending mail.', 0, CAST(N'2021-03-16 22:55:11.1191456' AS DateTime2), 3)
INSERT [dbo].[UserLog] ([Id], [Tid], [LeadId], [UserId], [LogType], [LogText], [LogStatus], [IsSuccess], [CreatedDate], [LogRecId]) VALUES (6, 1, 7, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', N'Email', N'<p>&nbsp;sdfkd<strong>sjf s</strong>df sddassa 7 ssddas@sasdas.com</p>

<p>fsd fsd fsdf</p>

<p>sdf dsf sd3231232321122</p>
', N'Failure sending mail.', 0, CAST(N'2021-03-16 22:55:23.9775448' AS DateTime2), 3)
INSERT [dbo].[UserLog] ([Id], [Tid], [LeadId], [UserId], [LogType], [LogText], [LogStatus], [IsSuccess], [CreatedDate], [LogRecId]) VALUES (7, 1, 7, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', N'SMS', N'dsf jsdfksjdkfjsdfdsf sdfsdf sdf dassa fsd fsfsdf sdf sdf dsf dssad askdjsakdjask  sdsf11vg dg dfgfdgfg', N'api not configured', 0, CAST(N'2021-03-16 22:55:26.2823337' AS DateTime2), 2)
INSERT [dbo].[UserLog] ([Id], [Tid], [LeadId], [UserId], [LogType], [LogText], [LogStatus], [IsSuccess], [CreatedDate], [LogRecId]) VALUES (8, 1, 7, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', N'SMS', N'dsf jsdfksjdkfjsdfdsf sdfsdf sdf dassa fsd fsfsdf sdf sdf dsf dssad askdjsakdjask  sdsf11vg dg dfgfdgfg', N'api not configured', 0, CAST(N'2021-03-16 22:55:31.6755000' AS DateTime2), 2)
INSERT [dbo].[UserLog] ([Id], [Tid], [LeadId], [UserId], [LogType], [LogText], [LogStatus], [IsSuccess], [CreatedDate], [LogRecId]) VALUES (9, 1, 7, N'0534c143-11b5-425c-a9bd-d0fad873b2bc', N'SMS', N'<p>&nbsp;sdfkd<strong>sjf s</strong>df sddassa 7 ssddas@sasdas.com</p>

<p>fsd fsd fsdf</p>

<p>sdf dsf sd3231232321122</p>
', N'api not configured', 0, CAST(N'2021-03-16 23:01:07.3710531' AS DateTime2), 2)
SET IDENTITY_INSERT [dbo].[UserLog] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 01/04/2021 10:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 01/04/2021 10:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Attachment_LeadId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_Attachment_LeadId] ON [dbo].[Attachment]
(
	[LeadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CallLog_LeadId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_CallLog_LeadId] ON [dbo].[CallLog]
(
	[LeadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CallLog_UserId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_CallLog_UserId] ON [dbo].[CallLog]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Invoice_LeadId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_Invoice_LeadId] ON [dbo].[Invoice]
(
	[LeadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvoiceDetail_InvoiceId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_InvoiceDetail_InvoiceId] ON [dbo].[InvoiceDetail]
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Lead_LeadLanguageId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_Lead_LeadLanguageId] ON [dbo].[Lead]
(
	[LeadLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Lead_LeadSourceId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_Lead_LeadSourceId] ON [dbo].[Lead]
(
	[LeadSourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Lead_UserId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_Lead_UserId] ON [dbo].[Lead]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LeadAutoAssign_UserId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_LeadAutoAssign_UserId] ON [dbo].[LeadAutoAssign]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LeadAutoAssignLog_LeadId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_LeadAutoAssignLog_LeadId] ON [dbo].[LeadAutoAssignLog]
(
	[LeadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LeadAutoAssignLog_LeadSourceId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_LeadAutoAssignLog_LeadSourceId] ON [dbo].[LeadAutoAssignLog]
(
	[LeadSourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LeadAutoAssignLog_UserId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_LeadAutoAssignLog_UserId] ON [dbo].[LeadAutoAssignLog]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LeadAutoAssignSourceMapping_LeadAutoAssignId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_LeadAutoAssignSourceMapping_LeadAutoAssignId] ON [dbo].[LeadAutoAssignSourceMapping]
(
	[LeadAutoAssignId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LeadAutoAssignSourceMapping_LeadSourceId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_LeadAutoAssignSourceMapping_LeadSourceId] ON [dbo].[LeadAutoAssignSourceMapping]
(
	[LeadSourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LeadTagMapping_LeadId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_LeadTagMapping_LeadId] ON [dbo].[LeadTagMapping]
(
	[LeadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LeadTagMapping_LeadTagId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_LeadTagMapping_LeadTagId] ON [dbo].[LeadTagMapping]
(
	[LeadTagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserLog_LeadId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserLog_LeadId] ON [dbo].[UserLog]
(
	[LeadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserLog_UserId]    Script Date: 01/04/2021 10:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserLog_UserId] ON [dbo].[UserLog]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Attachment]  WITH CHECK ADD  CONSTRAINT [FK_Attachment_Lead_LeadId] FOREIGN KEY([LeadId])
REFERENCES [dbo].[Lead] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Attachment] CHECK CONSTRAINT [FK_Attachment_Lead_LeadId]
GO
ALTER TABLE [dbo].[CallLog]  WITH CHECK ADD  CONSTRAINT [FK_CallLog_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CallLog] CHECK CONSTRAINT [FK_CallLog_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CallLog]  WITH CHECK ADD  CONSTRAINT [FK_CallLog_Lead_LeadId] FOREIGN KEY([LeadId])
REFERENCES [dbo].[Lead] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CallLog] CHECK CONSTRAINT [FK_CallLog_Lead_LeadId]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Lead_LeadId] FOREIGN KEY([LeadId])
REFERENCES [dbo].[Lead] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Lead_LeadId]
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetail_Invoice_InvoiceId] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoice] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FK_InvoiceDetail_Invoice_InvoiceId]
GO
ALTER TABLE [dbo].[Lead]  WITH CHECK ADD  CONSTRAINT [FK_Lead_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Lead] CHECK CONSTRAINT [FK_Lead_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Lead]  WITH CHECK ADD  CONSTRAINT [FK_Lead_LeadLanguage_LeadLanguageId] FOREIGN KEY([LeadLanguageId])
REFERENCES [dbo].[LeadLanguage] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Lead] CHECK CONSTRAINT [FK_Lead_LeadLanguage_LeadLanguageId]
GO
ALTER TABLE [dbo].[Lead]  WITH CHECK ADD  CONSTRAINT [FK_Lead_LeadSource_LeadSourceId] FOREIGN KEY([LeadSourceId])
REFERENCES [dbo].[LeadSource] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Lead] CHECK CONSTRAINT [FK_Lead_LeadSource_LeadSourceId]
GO
ALTER TABLE [dbo].[LeadAutoAssign]  WITH CHECK ADD  CONSTRAINT [FK_LeadAutoAssign_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeadAutoAssign] CHECK CONSTRAINT [FK_LeadAutoAssign_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[LeadAutoAssignLog]  WITH CHECK ADD  CONSTRAINT [FK_LeadAutoAssignLog_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[LeadAutoAssignLog] CHECK CONSTRAINT [FK_LeadAutoAssignLog_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[LeadAutoAssignLog]  WITH CHECK ADD  CONSTRAINT [FK_LeadAutoAssignLog_Lead_LeadId] FOREIGN KEY([LeadId])
REFERENCES [dbo].[Lead] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeadAutoAssignLog] CHECK CONSTRAINT [FK_LeadAutoAssignLog_Lead_LeadId]
GO
ALTER TABLE [dbo].[LeadAutoAssignLog]  WITH CHECK ADD  CONSTRAINT [FK_LeadAutoAssignLog_LeadSource_LeadSourceId] FOREIGN KEY([LeadSourceId])
REFERENCES [dbo].[LeadSource] ([Id])
GO
ALTER TABLE [dbo].[LeadAutoAssignLog] CHECK CONSTRAINT [FK_LeadAutoAssignLog_LeadSource_LeadSourceId]
GO
ALTER TABLE [dbo].[LeadAutoAssignSourceMapping]  WITH CHECK ADD  CONSTRAINT [FK_LeadAutoAssignSourceMapping_LeadAutoAssign_LeadAutoAssignId] FOREIGN KEY([LeadAutoAssignId])
REFERENCES [dbo].[LeadAutoAssign] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeadAutoAssignSourceMapping] CHECK CONSTRAINT [FK_LeadAutoAssignSourceMapping_LeadAutoAssign_LeadAutoAssignId]
GO
ALTER TABLE [dbo].[LeadAutoAssignSourceMapping]  WITH CHECK ADD  CONSTRAINT [FK_LeadAutoAssignSourceMapping_LeadSource_LeadSourceId] FOREIGN KEY([LeadSourceId])
REFERENCES [dbo].[LeadSource] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeadAutoAssignSourceMapping] CHECK CONSTRAINT [FK_LeadAutoAssignSourceMapping_LeadSource_LeadSourceId]
GO
ALTER TABLE [dbo].[LeadTagMapping]  WITH CHECK ADD  CONSTRAINT [FK_LeadTagMapping_Lead_LeadId] FOREIGN KEY([LeadId])
REFERENCES [dbo].[Lead] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeadTagMapping] CHECK CONSTRAINT [FK_LeadTagMapping_Lead_LeadId]
GO
ALTER TABLE [dbo].[LeadTagMapping]  WITH CHECK ADD  CONSTRAINT [FK_LeadTagMapping_LeadTag_LeadTagId] FOREIGN KEY([LeadTagId])
REFERENCES [dbo].[LeadTag] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeadTagMapping] CHECK CONSTRAINT [FK_LeadTagMapping_LeadTag_LeadTagId]
GO
ALTER TABLE [dbo].[UserLog]  WITH CHECK ADD  CONSTRAINT [FK_UserLog_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserLog] CHECK CONSTRAINT [FK_UserLog_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UserLog]  WITH CHECK ADD  CONSTRAINT [FK_UserLog_Lead_LeadId] FOREIGN KEY([LeadId])
REFERENCES [dbo].[Lead] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLog] CHECK CONSTRAINT [FK_UserLog_Lead_LeadId]
GO
USE [master]
GO
ALTER DATABASE [SimaxCrm] SET  READ_WRITE 
GO
