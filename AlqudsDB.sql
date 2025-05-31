USE [master]
GO

/****** Object:  Database [Alquds_Center]    Script Date: 27/04/2025 11:25:50 „ ******/
CREATE DATABASE [Alquds_Center]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Alquds_Center', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Alquds_Center.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Alquds_Center_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Alquds_Center_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

USE [Alquds_Center]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 27/04/2025 11:27:10 „ ******/
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
/****** Object:  Table [dbo].[AcademicYear]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicYear](
	[AcademicYearID] [int] IDENTITY(1,1) NOT NULL,
	[AcademicYear] [nvarchar](50) NULL,
	[DateOfBeginYear] [date] NULL,
	[DateOfEndYear] [date] NULL,
	[IsActive] [bit] NULL,
	[StudentRegistrationSuspensionDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[AcademicYearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[PasswordHash] [varchar](255) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[Email] [varchar](100) NULL,
	[Phone] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivitiesImages]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivitiesImages](
	[ActivityImageID] [int] IDENTITY(1,1) NOT NULL,
	[ExpenseID] [int] NOT NULL,
	[ImageURL] [nvarchar](200) NOT NULL,
	[Caption] [nvarchar](200) NULL,
	[UploadedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ActivityImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnnualReport]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnnualReport](
	[AnnualReportID] [int] IDENTITY(1,1) NOT NULL,
	[MemorizeFrom] [nvarchar](100) NULL,
	[MemorizeTo] [nvarchar](100) NULL,
	[ReviewFrom] [nvarchar](100) NULL,
	[ReviewTo] [nvarchar](100) NULL,
	[MemorizeAndReviewDegree] [int] NULL,
	[StudentID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AnnualReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CenterAnnualReport]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CenterAnnualReport](
	[CenterAnnualReportID] [int] IDENTITY(1,1) NOT NULL,
	[AcademicYearID] [int] NULL,
	[TotalStudents] [int] NULL,
	[NewStudents] [int] NULL,
	[GraduatedStudents] [int] NULL,
	[TotalTeachers] [int] NULL,
	[TotalHalaqat] [int] NULL,
	[EventsCount] [int] NULL,
	[Achievements] [nvarchar](500) NULL,
	[Challenges] [nvarchar](500) NULL,
	[Recommendations] [nvarchar](500) NULL,
	[CreatedBy] [int] NULL,
	[CreatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[CenterAnnualReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyEvaluation]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyEvaluation](
	[DailyEvaluationID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[AttendanceStatus] [varchar](50) NOT NULL,
	[MemorizeScore] [float] NULL,
	[ReviewScore] [float] NULL,
	[TotalScore] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[DailyEvaluationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyMemorizePlan]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyMemorizePlan](
	[DailyMemorizePlanID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Day] [nvarchar](100) NULL,
	[Surah] [nvarchar](100) NULL,
	[Amount] [nvarchar](100) NULL,
	[MemorizePlanID] [int] NULL,
	[FromPage] [int] NULL,
	[ToPage] [int] NULL,
 CONSTRAINT [PK__DailyMem__3A6DFC41A7AA1B5A] PRIMARY KEY CLUSTERED 
(
	[DailyMemorizePlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyReviewPlan]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyReviewPlan](
	[DailyReviewPlanID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Surah] [nvarchar](100) NULL,
	[Amount] [nvarchar](100) NULL,
	[ReviewPlanID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DailyReviewPlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Expenses]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expenses](
	[ExpenseID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[Date] [date] NOT NULL,
	[AcademicYearID] [int] NULL,
	[Description] [nvarchar](250) NULL,
	[IsActivity] [bit] NULL,
	[Notes] [nvarchar](1500) NULL,
	[PaidBy] [int] NULL,
 CONSTRAINT [PK__Expenses__1445CFF380CDB9B2] PRIMARY KEY CLUSTERED 
(
	[ExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinalExam]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinalExam](
	[FinalExamID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[MemorizeScore] [float] NULL,
	[ReviewScore] [float] NULL,
	[TotalScore] [float] NULL,
	[Notes] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[FinalExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinancialSummary]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialSummary](
	[FinancialSummaryID] [int] IDENTITY(1,1) NOT NULL,
	[AcademicYearID] [int] NULL,
	[TotalSupport] [decimal](10, 2) NULL,
	[TotalExpenses] [decimal](10, 2) NULL,
	[Balance] [decimal](10, 2) NULL,
	[CreatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[FinancialSummaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinancialSupport]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialSupport](
	[FinancialSupportID] [int] IDENTITY(1,1) NOT NULL,
	[SupporterName] [nvarchar](100) NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[Date] [date] NOT NULL,
	[AcademicYearID] [int] NULL,
	[Notes] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[FinancialSupportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Halaqa]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Halaqa](
	[HalaqaID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Period] [nvarchar](50) NOT NULL,
	[TeacherID] [int] NULL,
	[AcademicYearID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[HalaqaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HalaqaManhaj]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HalaqaManhaj](
	[HalaqaManhajID] [int] IDENTITY(1,1) NOT NULL,
	[HalaqaID] [int] NULL,
	[ManhajID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[HalaqaManhajID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manhaj]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manhaj](
	[ManhajID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[URL] [nvarchar](200) NULL,
	[Picture] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ManhajID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemorizationPath]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemorizationPath](
	[PathID] [int] IDENTITY(1,1) NOT NULL,
	[MemorizeFrom] [nvarchar](100) NULL,
	[MemorizeTo] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[PathID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemorizePlan]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemorizePlan](
	[MemorizePlanID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[BeginPage] [int] NULL,
	[DailyAmount] [float] NULL,
	[StudentID] [int] NULL,
 CONSTRAINT [PK__Memorize__55932346E4191A0A] PRIMARY KEY CLUSTERED 
(
	[MemorizePlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonthlyExam]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonthlyExam](
	[MonthlyExamID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[MemorizeScore] [float] NULL,
	[ReviewScore] [float] NULL,
	[TotalScore] [float] NULL,
	[Notes] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[MonthlyExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parents]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parents](
	[ParentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[MobileNumber] [nvarchar](20) NULL,
	[PhoneNumber] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ParentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Path_Halaqa_Relationship]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Path_Halaqa_Relationship](
	[PathHalaqaID] [int] IDENTITY(1,1) NOT NULL,
	[PathID] [int] NOT NULL,
	[HalaqaID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathHalaqaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReviewPlan]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReviewPlan](
	[ReviewPlanID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[BeginningOfMemorizing] [nvarchar](100) NULL,
	[AmountOfDelayMemorization] [nvarchar](100) NULL,
	[StudentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReviewPlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleAccount]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleAccount](
	[RoleAccountID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[TeacherID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[BirthDate] [date] NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[Address] [nvarchar](200) NULL,
	[BeginOfMemorize] [nvarchar](100) NULL,
	[MemorizationQuorum] [nvarchar](100) NULL,
	[CurrentEducationalLevel] [nvarchar](100) NULL,
	[EducationalQualification] [nvarchar](100) NULL,
	[HalaqaID] [int] NOT NULL,
	[ParentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[BirthDate] [date] NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[Address] [nvarchar](200) NULL,
	[Job] [nvarchar](100) NULL,
	[PassportNumber] [nvarchar](50) NULL,
	[IDNumber] [nvarchar](50) NOT NULL,
	[EducationalQualification] [nvarchar](100) NULL,
	[Experience] [nvarchar](100) NULL,
	[Courses] [nvarchar](200) NULL,
	[MaritalStatus] [nvarchar](50) NULL,
	[IsAdministrator] [bit] NOT NULL,
	[IsMojaz] [bit] NOT NULL,
	[AmountOfMemorization] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeacherAttendance]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherAttendance](
	[TeacherAttendanceID] [int] IDENTITY(1,1) NOT NULL,
	[TeacherID] [int] NULL,
	[Date] [date] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[RecordedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TeacherAttendanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TermReport]    Script Date: 27/04/2025 11:27:10 „ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TermReport](
	[TermReportID] [int] IDENTITY(1,1) NOT NULL,
	[Term] [nvarchar](50) NULL,
	[MonthlyResult] [nvarchar](50) NULL,
	[TermResult] [nvarchar](50) NULL,
	[TotalResult] [nvarchar](50) NULL,
	[Notes] [nvarchar](200) NULL,
	[StudentID] [int] NOT NULL,
	[MemorizeFrom] [nvarchar](50) NOT NULL,
	[MemorizeTo] [nvarchar](50) NOT NULL,
	[ReviewFrom] [nvarchar](50) NOT NULL,
	[ReviewTo] [nvarchar](50) NOT NULL,
	[MemorizeDegree] [float] NOT NULL,
	[ReviewDegree] [float] NOT NULL,
	[TotalDegree] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TermReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AcademicYear] ON 

INSERT [dbo].[AcademicYear] ([AcademicYearID], [AcademicYear], [DateOfBeginYear], [DateOfEndYear], [IsActive], [StudentRegistrationSuspensionDate]) VALUES (1, N'2024-2025', CAST(N'2024-09-01' AS Date), CAST(N'2025-06-30' AS Date), 1, CAST(N'2024-10-15' AS Date))
SET IDENTITY_INSERT [dbo].[AcademicYear] OFF
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (1, N'admin1', N'pass123', N'›«ÿ„… ⁄·Ì „Õ„œ', N'fatima.ali@example.com', N'771234567')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (2, N'teacher1', N'pass456', N'ŒœÌÃ… ⁄„— ⁄»œ«··Â', N'khadija.omar@example.com', N'772345678')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (3, N'teacher2', N'pass789', N'⁄«∆‘… Œ«·œ ÌÊ”›', N'aisha.khalid@example.com', N'773456789')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (4, N'admin2', N'pass101', N'—ﬁÌ… ”⁄Ìœ ≈»—«ÂÌ„', N'ruqaya.saeed@example.com', N'774567890')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (5, N'teacher3', N'pass112', N'„—Ì„ Õ”‰ ≈”„«⁄Ì·', N'maryam.hassan@example.com', N'775678901')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (6, N'teacher4', N'pass131', N'√”„«¡ Õ”Ì‰ √Õ„œ', N'asmaa.hussein@example.com', N'776789012')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (7, N'admin3', N'pass141', N'“Ì‰» „Õ„Êœ „Õ„œ', N'zainab.mahmoud@example.com', N'777890123')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (8, N'teacher5', N'pass151', N'Õ›’… ”«„Ì ⁄„—', N'hafsa.sami@example.com', N'778901234')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (9, N'teacher6', N'pass161', N'”„Ì… √‰Ê— ⁄»œ«··Â', N'sumaya.anwar@example.com', N'779012345')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (10, N'admin4', N'pass171', N'√„ ﬂ·ÀÊ„ Ì«”— ÌÊ”›', N'omkulthum.yasser@example.com', N'770123456')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (11, N'teacher7', N'pass181', N'ÃÊÌ—Ì… ﬂ—Ì„ ≈»—«ÂÌ„', N'juwayriya.karim@example.com', N'771234568')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (12, N'teacher8', N'pass191', N'’›Ì… ‰»Ì· ≈”„«⁄Ì·', N'safiya.nabil@example.com', N'772345679')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (13, N'teacher9', N'pass212', N'Â‰œ √„Ãœ „Õ„œ', N'hind.amjad@example.com', N'774567891')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (14, N'teacher10', N'pass222', N'ÀÊÌ»… »Â«¡ ⁄„—', N'thuwayba.baha@example.com', N'775678902')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (15, N'teacher11', N'pass242', N'‰«∆·… ‘ÊﬁÌ ÌÊ”›', N'naila.shawqi@example.com', N'777890124')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (16, N'teacher12', N'pass252', N'·Ì·Ï —‘Ìœ ≈»—«ÂÌ„', N'layla.rashid@example.com', N'778901235')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (17, N'teacher13', N'pass272', N'—„·… ›ƒ«œ √Õ„œ', N'ramla.fuad@example.com', N'770123457')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (18, N'teacher14', N'pass282', N'”⁄«œ Ã„«· „Õ„œ', N'suad.jamal@example.com', N'771234569')
INSERT [dbo].[Account] ([AccountID], [Username], [PasswordHash], [FullName], [Email], [Phone]) VALUES (19, N'teacher15', N'pass303', N'≈Ì„«‰ ‰«œ— ⁄»œ«··Â', N'iman.nader@example.com', N'773456781')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[ActivitiesImages] ON 

INSERT [dbo].[ActivitiesImages] ([ActivityImageID], [ExpenseID], [ImageURL], [Caption], [UploadedAt]) VALUES (1, 1, N'/images/uploads/Resources/img1.jpg', N' œ‘Ì‰ «›  «Õ —Ê÷… „—ﬂ“ «·ﬁœ”', CAST(N'2025-01-15' AS Date))
INSERT [dbo].[ActivitiesImages] ([ActivityImageID], [ExpenseID], [ImageURL], [Caption], [UploadedAt]) VALUES (2, 2, N'/images/uploads/Resources/img2.jpg', N'ÌÊ„ «·”—œ «·‘Â—Ì · À»Ì  «·„Õ›ÊŸ', CAST(N'2025-02-28' AS Date))
INSERT [dbo].[ActivitiesImages] ([ActivityImageID], [ExpenseID], [ImageURL], [Caption], [UploadedAt]) VALUES (3, 2, N'/images/uploads/Resources/img4.jpg', N'ÌÊ„ «·”—œ «·‘Â—Ì · À»Ì  «·„Õ›ÊŸ', CAST(N'2025-02-28' AS Date))
INSERT [dbo].[ActivitiesImages] ([ActivityImageID], [ExpenseID], [ImageURL], [Caption], [UploadedAt]) VALUES (4, 2, N'/images/uploads/Resources/img5.jpg', N'ÌÊ„ «·”—œ «·‘Â—Ì · À»Ì  «·„Õ›ÊŸ', CAST(N'2025-02-28' AS Date))
INSERT [dbo].[ActivitiesImages] ([ActivityImageID], [ExpenseID], [ImageURL], [Caption], [UploadedAt]) VALUES (5, 3, N'/images/uploads/Resources/img3.jpg', N'«·„‘«—ﬂ… ›Ì «·ﬁÌ«œ… «· —»ÊÌ…', CAST(N'2025-03-02' AS Date))
SET IDENTITY_INSERT [dbo].[ActivitiesImages] OFF
GO
SET IDENTITY_INSERT [dbo].[CenterAnnualReport] ON 

INSERT [dbo].[CenterAnnualReport] ([CenterAnnualReportID], [AcademicYearID], [TotalStudents], [NewStudents], [GraduatedStudents], [TotalTeachers], [TotalHalaqat], [EventsCount], [Achievements], [Challenges], [Recommendations], [CreatedBy], [CreatedAt]) VALUES (1, 1, 60, 10, 5, 15, 20, 3, N' Õ”‰ „·ÕÊŸ ›Ì „” ÊÏ «·ÿ·«»°  ‰ŸÌ„ ›⁄«·Ì«  ‰«ÃÕ….', N'‰ﬁ’ ›Ì «·„Ê«—œ «·„«œÌ…° ’⁄Ê»… ›Ì «” ﬁÿ«» „⁄·„Ì‰ Ãœœ.', N' Ê›Ì— „Ì“«‰Ì… ≈÷«›Ì…°  ‰ŸÌ„ œÊ—«   œ—Ì»Ì… ··„⁄·„Ì‰.', 1, CAST(N'2024-12-20' AS Date))
SET IDENTITY_INSERT [dbo].[CenterAnnualReport] OFF
GO
SET IDENTITY_INSERT [dbo].[DailyEvaluation] ON 

INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (1002, 3, CAST(N'2025-04-18' AS Date), N'Õ«÷—', 2, 1, 3.5)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (1003, 13, CAST(N'2025-04-18' AS Date), N'„ √Œ—', 2, 0, 2)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (1004, 23, CAST(N'2025-04-18' AS Date), N'Õ«÷—', 1, 1, 2.5)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (1005, 33, CAST(N'2025-04-18' AS Date), N'Õ«÷—', 2, 1, 3.5)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (1006, 43, CAST(N'2025-04-18' AS Date), N'Õ«÷—', 1, 1, 2.5)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (1007, 53, CAST(N'2025-04-18' AS Date), N'€«∆»', NULL, NULL, 0)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (2002, 3, CAST(N'2025-04-05' AS Date), N'Õ«÷—', 2, 1, 3.5)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (2003, 13, CAST(N'2025-04-05' AS Date), N'„ √Œ—', 2, 0, 2)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (2004, 23, CAST(N'2025-04-05' AS Date), N'Õ«÷—', 1, 1, 2.5)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (2005, 33, CAST(N'2025-04-05' AS Date), N'Õ«÷—', 2, 1, 3.5)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (2006, 43, CAST(N'2025-04-05' AS Date), N'Õ«÷—', 1, 1, 2.5)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (2007, 53, CAST(N'2025-04-05' AS Date), N'€«∆»', NULL, NULL, 0)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (3002, 3, CAST(N'2025-04-25' AS Date), N'Õ«÷—', NULL, NULL, 0.5)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (3003, 13, CAST(N'2025-04-25' AS Date), N'Õ«÷—', NULL, NULL, 0.5)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (3004, 23, CAST(N'2025-04-25' AS Date), N'Õ«÷—', NULL, NULL, 0.5)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (3005, 33, CAST(N'2025-04-25' AS Date), N'Õ«÷—', NULL, NULL, 0.5)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (3006, 43, CAST(N'2025-04-25' AS Date), N'Õ«÷—', NULL, NULL, 0.5)
INSERT [dbo].[DailyEvaluation] ([DailyEvaluationID], [StudentID], [Date], [AttendanceStatus], [MemorizeScore], [ReviewScore], [TotalScore]) VALUES (3007, 53, CAST(N'2025-04-25' AS Date), N'Õ«÷—', NULL, NULL, 0.5)
SET IDENTITY_INSERT [dbo].[DailyEvaluation] OFF
GO
SET IDENTITY_INSERT [dbo].[DailyMemorizePlan] ON 

INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5858, CAST(N'2024-09-01' AS Date), N'«·√Õœ', N'«·›« Õ…', N'’›Õ… 1', 1009, 1, 1)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5859, CAST(N'2024-09-02' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 2', 1009, 2, 2)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5860, CAST(N'2024-09-03' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 3', 1009, 3, 3)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5861, CAST(N'2024-09-04' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 4', 1009, 4, 4)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5862, CAST(N'2024-09-05' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 5', 1009, 5, 5)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5863, CAST(N'2024-09-07' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 6', 1009, 6, 6)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5864, CAST(N'2024-09-08' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 7', 1009, 7, 7)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5865, CAST(N'2024-09-09' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 8', 1009, 8, 8)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5866, CAST(N'2024-09-10' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 9', 1009, 9, 9)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5867, CAST(N'2024-09-11' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 10', 1009, 10, 10)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5868, CAST(N'2024-09-12' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 11', 1009, 11, 11)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5869, CAST(N'2024-09-14' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 12', 1009, 12, 12)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5870, CAST(N'2024-09-15' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 13', 1009, 13, 13)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5871, CAST(N'2024-09-16' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 14', 1009, 14, 14)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5872, CAST(N'2024-09-17' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 15', 1009, 15, 15)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5873, CAST(N'2024-09-18' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 16', 1009, 16, 16)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5874, CAST(N'2024-09-19' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 17', 1009, 17, 17)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5875, CAST(N'2024-09-21' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 18', 1009, 18, 18)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5876, CAST(N'2024-09-22' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 19', 1009, 19, 19)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5877, CAST(N'2024-09-23' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 20', 1009, 20, 20)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5878, CAST(N'2024-09-24' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 21', 1009, 21, 21)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5879, CAST(N'2024-09-25' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 22', 1009, 22, 22)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5880, CAST(N'2024-09-26' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 23', 1009, 23, 23)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5881, CAST(N'2024-09-28' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 24', 1009, 24, 24)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5882, CAST(N'2024-09-29' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 25', 1009, 25, 25)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5883, CAST(N'2024-09-30' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 26', 1009, 26, 26)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5884, CAST(N'2024-10-01' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 27', 1009, 27, 27)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5885, CAST(N'2024-10-02' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 28', 1009, 28, 28)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5886, CAST(N'2024-10-03' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 29', 1009, 29, 29)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5887, CAST(N'2024-10-05' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 30', 1009, 30, 30)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5888, CAST(N'2024-10-06' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 31', 1009, 31, 31)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5889, CAST(N'2024-10-07' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 32', 1009, 32, 32)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5890, CAST(N'2024-10-08' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 33', 1009, 33, 33)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5891, CAST(N'2024-10-09' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 34', 1009, 34, 34)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5892, CAST(N'2024-10-10' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 35', 1009, 35, 35)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5893, CAST(N'2024-10-12' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 36', 1009, 36, 36)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5894, CAST(N'2024-10-13' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 37', 1009, 37, 37)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5895, CAST(N'2024-10-14' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 38', 1009, 38, 38)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5896, CAST(N'2024-10-15' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 39', 1009, 39, 39)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5897, CAST(N'2024-10-16' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 40', 1009, 40, 40)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5898, CAST(N'2024-10-17' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 41', 1009, 41, 41)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5899, CAST(N'2024-10-19' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 42', 1009, 42, 42)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5900, CAST(N'2024-10-20' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 43', 1009, 43, 43)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5901, CAST(N'2024-10-21' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 44', 1009, 44, 44)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5902, CAST(N'2024-10-22' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 45', 1009, 45, 45)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5903, CAST(N'2024-10-23' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 46', 1009, 46, 46)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5904, CAST(N'2024-10-24' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 47', 1009, 47, 47)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5905, CAST(N'2024-10-26' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 48', 1009, 48, 48)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5906, CAST(N'2024-10-27' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 49', 1009, 49, 49)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5907, CAST(N'2024-10-28' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 50', 1009, 50, 50)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5908, CAST(N'2024-10-29' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 51', 1009, 51, 51)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5909, CAST(N'2024-10-30' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 52', 1009, 52, 52)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5910, CAST(N'2024-10-31' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'’›Õ… 53', 1009, 53, 53)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5911, CAST(N'2024-11-02' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'’›Õ… 54', 1009, 54, 54)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5912, CAST(N'2024-11-03' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'’›Õ… 55', 1009, 55, 55)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5913, CAST(N'2024-11-04' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 56', 1009, 56, 56)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5914, CAST(N'2024-11-05' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 57', 1009, 57, 57)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5915, CAST(N'2024-11-06' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 58', 1009, 58, 58)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5916, CAST(N'2024-11-07' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'’›Õ… 59', 1009, 59, 59)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5917, CAST(N'2024-11-09' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'’›Õ… 60', 1009, 60, 60)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5918, CAST(N'2024-11-10' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'’›Õ… 61', 1009, 61, 61)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5919, CAST(N'2024-11-11' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 62', 1009, 62, 62)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5920, CAST(N'2024-11-12' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 63', 1009, 63, 63)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5921, CAST(N'2024-11-13' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 64', 1009, 64, 64)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5922, CAST(N'2024-11-14' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'’›Õ… 65', 1009, 65, 65)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5923, CAST(N'2024-11-16' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'’›Õ… 66', 1009, 66, 66)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5924, CAST(N'2024-11-17' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'’›Õ… 67', 1009, 67, 67)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5925, CAST(N'2024-11-18' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 68', 1009, 68, 68)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5926, CAST(N'2024-11-19' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 69', 1009, 69, 69)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5927, CAST(N'2024-11-20' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 70', 1009, 70, 70)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5928, CAST(N'2024-11-21' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'’›Õ… 71', 1009, 71, 71)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5929, CAST(N'2024-11-23' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'’›Õ… 72', 1009, 72, 72)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5930, CAST(N'2024-11-24' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'’›Õ… 73', 1009, 73, 73)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5931, CAST(N'2024-11-25' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 74', 1009, 74, 74)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5932, CAST(N'2024-11-26' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 75', 1009, 75, 75)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5933, CAST(N'2024-11-27' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 76', 1009, 76, 76)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5934, CAST(N'2024-11-28' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 77', 1009, 77, 77)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5935, CAST(N'2024-11-30' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 78', 1009, 78, 78)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5936, CAST(N'2024-12-01' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 79', 1009, 79, 79)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5937, CAST(N'2024-12-02' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 80', 1009, 80, 80)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5938, CAST(N'2024-12-03' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 81', 1009, 81, 81)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5939, CAST(N'2024-12-04' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'’›Õ… 82', 1009, 82, 82)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5940, CAST(N'2024-12-05' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 83', 1009, 83, 83)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5941, CAST(N'2024-12-07' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 84', 1009, 84, 84)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5942, CAST(N'2024-12-08' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 85', 1009, 85, 85)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5943, CAST(N'2024-12-09' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 86', 1009, 86, 86)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5944, CAST(N'2024-12-10' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 87', 1009, 87, 87)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5945, CAST(N'2024-12-11' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'’›Õ… 88', 1009, 88, 88)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5946, CAST(N'2024-12-12' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 89', 1009, 89, 89)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5947, CAST(N'2024-12-14' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 90', 1009, 90, 90)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5948, CAST(N'2024-12-15' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 91', 1009, 91, 91)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5949, CAST(N'2024-12-16' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 92', 1009, 92, 92)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5950, CAST(N'2024-12-17' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 93', 1009, 93, 93)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5951, CAST(N'2024-12-18' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'’›Õ… 94', 1009, 94, 94)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5952, CAST(N'2024-12-19' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 95', 1009, 95, 95)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5953, CAST(N'2024-12-21' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 96', 1009, 96, 96)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5954, CAST(N'2024-12-22' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 97', 1009, 97, 97)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5955, CAST(N'2024-12-23' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 98', 1009, 98, 98)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5956, CAST(N'2024-12-24' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 99', 1009, 99, 99)
GO
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5957, CAST(N'2024-12-25' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'’›Õ… 100', 1009, 100, 100)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5958, CAST(N'2024-12-26' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 101', 1009, 101, 101)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5959, CAST(N'2024-12-28' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 102', 1009, 102, 102)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5960, CAST(N'2024-12-29' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 103', 1009, 103, 103)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5961, CAST(N'2024-12-30' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 104', 1009, 104, 104)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5962, CAST(N'2024-12-31' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 105', 1009, 105, 105)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5963, CAST(N'2025-01-01' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡/«·„«∆œ…', N'’›Õ… 106', 1009, 106, 106)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5964, CAST(N'2025-01-02' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'’›Õ… 107', 1009, 107, 107)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5965, CAST(N'2025-01-04' AS Date), N'«·”» ', N'«·„«∆œ…', N'’›Õ… 108', 1009, 108, 108)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5966, CAST(N'2025-01-05' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'’›Õ… 109', 1009, 109, 109)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5967, CAST(N'2025-01-06' AS Date), N'«·«À‰Ì‰', N'«·„«∆œ…', N'’›Õ… 110', 1009, 110, 110)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5968, CAST(N'2025-01-07' AS Date), N'«·À·«À«¡', N'«·„«∆œ…', N'’›Õ… 111', 1009, 111, 111)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5969, CAST(N'2025-01-08' AS Date), N'«·√—»⁄«¡', N'«·„«∆œ…', N'’›Õ… 112', 1009, 112, 112)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5970, CAST(N'2025-01-09' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'’›Õ… 113', 1009, 113, 113)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5971, CAST(N'2025-01-11' AS Date), N'«·”» ', N'«·„«∆œ…', N'’›Õ… 114', 1009, 114, 114)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5972, CAST(N'2025-01-12' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'’›Õ… 115', 1009, 115, 115)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5973, CAST(N'2025-01-13' AS Date), N'«·«À‰Ì‰', N'«·„«∆œ…', N'’›Õ… 116', 1009, 116, 116)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5974, CAST(N'2025-01-14' AS Date), N'«·À·«À«¡', N'«·„«∆œ…', N'’›Õ… 117', 1009, 117, 117)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5975, CAST(N'2025-01-15' AS Date), N'«·√—»⁄«¡', N'«·„«∆œ…', N'’›Õ… 118', 1009, 118, 118)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5976, CAST(N'2025-01-16' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'’›Õ… 119', 1009, 119, 119)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5977, CAST(N'2025-01-18' AS Date), N'«·”» ', N'«·„«∆œ…', N'’›Õ… 120', 1009, 120, 120)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5978, CAST(N'2025-01-19' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'’›Õ… 121', 1009, 121, 121)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5979, CAST(N'2025-01-20' AS Date), N'«·«À‰Ì‰', N'«·„«∆œ…', N'’›Õ… 122', 1009, 122, 122)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5980, CAST(N'2025-01-21' AS Date), N'«·À·«À«¡', N'«·„«∆œ…', N'’›Õ… 123', 1009, 123, 123)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5981, CAST(N'2025-01-22' AS Date), N'«·√—»⁄«¡', N'«·„«∆œ…', N'’›Õ… 124', 1009, 124, 124)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5982, CAST(N'2025-01-23' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'’›Õ… 125', 1009, 125, 125)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5983, CAST(N'2025-01-25' AS Date), N'«·”» ', N'«·„«∆œ…', N'’›Õ… 126', 1009, 126, 126)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5984, CAST(N'2025-01-26' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'’›Õ… 127', 1009, 127, 127)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5985, CAST(N'2025-01-27' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'’›Õ… 128', 1009, 128, 128)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5986, CAST(N'2025-01-28' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'’›Õ… 129', 1009, 129, 129)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5987, CAST(N'2025-01-29' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'’›Õ… 130', 1009, 130, 130)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5988, CAST(N'2025-01-30' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'’›Õ… 131', 1009, 131, 131)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5989, CAST(N'2025-02-01' AS Date), N'«·”» ', N'«·√‰⁄«„', N'’›Õ… 132', 1009, 132, 132)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5990, CAST(N'2025-02-02' AS Date), N'«·√Õœ', N'«·√‰⁄«„', N'’›Õ… 133', 1009, 133, 133)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5991, CAST(N'2025-02-03' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'’›Õ… 134', 1009, 134, 134)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5992, CAST(N'2025-02-04' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'’›Õ… 135', 1009, 135, 135)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5993, CAST(N'2025-02-05' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'’›Õ… 136', 1009, 136, 136)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5994, CAST(N'2025-02-06' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'’›Õ… 137', 1009, 137, 137)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5995, CAST(N'2025-02-08' AS Date), N'«·”» ', N'«·√‰⁄«„', N'’›Õ… 138', 1009, 138, 138)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5996, CAST(N'2025-02-09' AS Date), N'«·√Õœ', N'«·√‰⁄«„', N'’›Õ… 139', 1009, 139, 139)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5997, CAST(N'2025-02-10' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'’›Õ… 140', 1009, 140, 140)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5998, CAST(N'2025-02-11' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'’›Õ… 141', 1009, 141, 141)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (5999, CAST(N'2025-02-12' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'’›Õ… 142', 1009, 142, 142)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6000, CAST(N'2025-02-13' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'’›Õ… 143', 1009, 143, 143)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6001, CAST(N'2025-02-15' AS Date), N'«·”» ', N'«·√‰⁄«„', N'’›Õ… 144', 1009, 144, 144)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6002, CAST(N'2025-02-16' AS Date), N'«·√Õœ', N'«·√‰⁄«„', N'’›Õ… 145', 1009, 145, 145)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6003, CAST(N'2025-02-17' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'’›Õ… 146', 1009, 146, 146)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6004, CAST(N'2025-02-18' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'’›Õ… 147', 1009, 147, 147)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6005, CAST(N'2025-02-19' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'’›Õ… 148', 1009, 148, 148)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6006, CAST(N'2025-02-20' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'’›Õ… 149', 1009, 149, 149)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6007, CAST(N'2025-02-22' AS Date), N'«·”» ', N'«·√‰⁄«„', N'’›Õ… 150', 1009, 150, 150)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6008, CAST(N'2025-02-23' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 151', 1009, 151, 151)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6009, CAST(N'2025-02-24' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 152', 1009, 152, 152)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6010, CAST(N'2025-02-25' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'’›Õ… 153', 1009, 153, 153)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6011, CAST(N'2025-02-26' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'’›Õ… 154', 1009, 154, 154)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6012, CAST(N'2025-02-27' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'’›Õ… 155', 1009, 155, 155)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6013, CAST(N'2025-03-01' AS Date), N'«·”» ', N'«·√⁄—«›', N'’›Õ… 156', 1009, 156, 156)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6014, CAST(N'2025-03-02' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 157', 1009, 157, 157)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6015, CAST(N'2025-03-03' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 158', 1009, 158, 158)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6016, CAST(N'2025-03-04' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'’›Õ… 159', 1009, 159, 159)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6017, CAST(N'2025-03-05' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'’›Õ… 160', 1009, 160, 160)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6018, CAST(N'2025-03-06' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'’›Õ… 161', 1009, 161, 161)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6019, CAST(N'2025-03-08' AS Date), N'«·”» ', N'«·√⁄—«›', N'’›Õ… 162', 1009, 162, 162)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6020, CAST(N'2025-03-09' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 163', 1009, 163, 163)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6021, CAST(N'2025-03-10' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 164', 1009, 164, 164)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6022, CAST(N'2025-03-11' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'’›Õ… 165', 1009, 165, 165)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6023, CAST(N'2025-03-12' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'’›Õ… 166', 1009, 166, 166)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6024, CAST(N'2025-03-13' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'’›Õ… 167', 1009, 167, 167)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6025, CAST(N'2025-03-15' AS Date), N'«·”» ', N'«·√⁄—«›', N'’›Õ… 168', 1009, 168, 168)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6026, CAST(N'2025-03-16' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 169', 1009, 169, 169)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6027, CAST(N'2025-03-17' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 170', 1009, 170, 170)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6028, CAST(N'2025-03-18' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'’›Õ… 171', 1009, 171, 171)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6029, CAST(N'2025-03-19' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'’›Õ… 172', 1009, 172, 172)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6030, CAST(N'2025-03-20' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'’›Õ… 173', 1009, 173, 173)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6031, CAST(N'2025-03-22' AS Date), N'«·”» ', N'«·√⁄—«›', N'’›Õ… 174', 1009, 174, 174)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6032, CAST(N'2025-03-23' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 175', 1009, 175, 175)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6033, CAST(N'2025-03-24' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 176', 1009, 176, 176)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6034, CAST(N'2025-03-25' AS Date), N'«·À·«À«¡', N'«·√‰›«·', N'’›Õ… 177', 1009, 177, 177)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6035, CAST(N'2025-03-26' AS Date), N'«·√—»⁄«¡', N'«·√‰›«·', N'’›Õ… 178', 1009, 178, 178)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6036, CAST(N'2025-03-27' AS Date), N'«·Œ„Ì”', N'«·√‰›«·', N'’›Õ… 179', 1009, 179, 179)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6037, CAST(N'2025-03-29' AS Date), N'«·”» ', N'«·√‰›«·', N'’›Õ… 180', 1009, 180, 180)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6038, CAST(N'2025-03-30' AS Date), N'«·√Õœ', N'«·√‰›«·', N'’›Õ… 181', 1009, 181, 181)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6039, CAST(N'2025-03-31' AS Date), N'«·«À‰Ì‰', N'«·√‰›«·', N'’›Õ… 182', 1009, 182, 182)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6040, CAST(N'2025-04-01' AS Date), N'«·À·«À«¡', N'«·√‰›«·', N'’›Õ… 183', 1009, 183, 183)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6041, CAST(N'2025-04-02' AS Date), N'«·√—»⁄«¡', N'«·√‰›«·', N'’›Õ… 184', 1009, 184, 184)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6042, CAST(N'2025-04-03' AS Date), N'«·Œ„Ì”', N'«·√‰›«·', N'’›Õ… 185', 1009, 185, 185)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6043, CAST(N'2025-04-05' AS Date), N'«·”» ', N'«·√‰›«·', N'’›Õ… 186', 1009, 186, 186)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6044, CAST(N'2025-04-06' AS Date), N'«·√Õœ', N'«· Ê»…', N'’›Õ… 187', 1009, 187, 187)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6045, CAST(N'2025-04-07' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'’›Õ… 188', 1009, 188, 188)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6046, CAST(N'2025-04-08' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'’›Õ… 189', 1009, 189, 189)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6047, CAST(N'2025-04-09' AS Date), N'«·√—»⁄«¡', N'«· Ê»…', N'’›Õ… 190', 1009, 190, 190)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6048, CAST(N'2025-04-10' AS Date), N'«·Œ„Ì”', N'«· Ê»…', N'’›Õ… 191', 1009, 191, 191)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6049, CAST(N'2025-04-12' AS Date), N'«·”» ', N'«· Ê»…', N'’›Õ… 192', 1009, 192, 192)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6050, CAST(N'2025-04-13' AS Date), N'«·√Õœ', N'«· Ê»…', N'’›Õ… 193', 1009, 193, 193)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6051, CAST(N'2025-04-14' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'’›Õ… 194', 1009, 194, 194)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6052, CAST(N'2025-04-15' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'’›Õ… 195', 1009, 195, 195)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6053, CAST(N'2025-04-16' AS Date), N'«·√—»⁄«¡', N'«· Ê»…', N'’›Õ… 196', 1009, 196, 196)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6054, CAST(N'2025-04-17' AS Date), N'«·Œ„Ì”', N'«· Ê»…', N'’›Õ… 197', 1009, 197, 197)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6055, CAST(N'2025-04-19' AS Date), N'«·”» ', N'«· Ê»…', N'’›Õ… 198', 1009, 198, 198)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6056, CAST(N'2025-04-20' AS Date), N'«·√Õœ', N'«· Ê»…', N'’›Õ… 199', 1009, 199, 199)
GO
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6057, CAST(N'2025-04-21' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'’›Õ… 200', 1009, 200, 200)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6058, CAST(N'2025-04-22' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'’›Õ… 201', 1009, 201, 201)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6059, CAST(N'2025-04-23' AS Date), N'«·√—»⁄«¡', N'«· Ê»…', N'’›Õ… 202', 1009, 202, 202)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6060, CAST(N'2025-04-24' AS Date), N'«·Œ„Ì”', N'«· Ê»…', N'’›Õ… 203', 1009, 203, 203)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6061, CAST(N'2025-04-26' AS Date), N'«·”» ', N'«· Ê»…', N'’›Õ… 204', 1009, 204, 204)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6062, CAST(N'2025-04-27' AS Date), N'«·√Õœ', N'«· Ê»…', N'’›Õ… 205', 1009, 205, 205)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6063, CAST(N'2025-04-28' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'’›Õ… 206', 1009, 206, 206)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6064, CAST(N'2025-04-29' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'’›Õ… 207', 1009, 207, 207)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6065, CAST(N'2025-04-30' AS Date), N'«·√—»⁄«¡', N'ÌÊ‰”', N'’›Õ… 208', 1009, 208, 208)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6066, CAST(N'2025-05-01' AS Date), N'«·Œ„Ì”', N'ÌÊ‰”', N'’›Õ… 209', 1009, 209, 209)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6067, CAST(N'2025-05-03' AS Date), N'«·”» ', N'ÌÊ‰”', N'’›Õ… 210', 1009, 210, 210)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6068, CAST(N'2025-05-04' AS Date), N'«·√Õœ', N'ÌÊ‰”', N'’›Õ… 211', 1009, 211, 211)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6069, CAST(N'2025-05-05' AS Date), N'«·«À‰Ì‰', N'ÌÊ‰”', N'’›Õ… 212', 1009, 212, 212)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6070, CAST(N'2025-05-06' AS Date), N'«·À·«À«¡', N'ÌÊ‰”', N'’›Õ… 213', 1009, 213, 213)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6071, CAST(N'2025-05-07' AS Date), N'«·√—»⁄«¡', N'ÌÊ‰”', N'’›Õ… 214', 1009, 214, 214)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6072, CAST(N'2025-05-08' AS Date), N'«·Œ„Ì”', N'ÌÊ‰”', N'’›Õ… 215', 1009, 215, 215)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6073, CAST(N'2025-05-10' AS Date), N'«·”» ', N'ÌÊ‰”', N'’›Õ… 216', 1009, 216, 216)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6074, CAST(N'2025-05-11' AS Date), N'«·√Õœ', N'ÌÊ‰”', N'’›Õ… 217', 1009, 217, 217)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6075, CAST(N'2025-05-12' AS Date), N'«·«À‰Ì‰', N'ÌÊ‰”', N'’›Õ… 218', 1009, 218, 218)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6076, CAST(N'2025-05-13' AS Date), N'«·À·«À«¡', N'ÌÊ‰”', N'’›Õ… 219', 1009, 219, 219)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6077, CAST(N'2025-05-14' AS Date), N'«·√—»⁄«¡', N'ÌÊ‰”', N'’›Õ… 220', 1009, 220, 220)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6078, CAST(N'2025-05-15' AS Date), N'«·Œ„Ì”', N'ÌÊ‰” / ÂÊœ', N'’›Õ… 221', 1009, 221, 221)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6079, CAST(N'2025-05-17' AS Date), N'«·”» ', N'ÂÊœ', N'’›Õ… 222', 1009, 222, 222)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6080, CAST(N'2025-05-18' AS Date), N'«·√Õœ', N'ÂÊœ', N'’›Õ… 223', 1009, 223, 223)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6081, CAST(N'2025-05-19' AS Date), N'«·«À‰Ì‰', N'ÂÊœ', N'’›Õ… 224', 1009, 224, 224)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6082, CAST(N'2025-05-20' AS Date), N'«·À·«À«¡', N'ÂÊœ', N'’›Õ… 225', 1009, 225, 225)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6083, CAST(N'2025-05-21' AS Date), N'«·√—»⁄«¡', N'ÂÊœ', N'’›Õ… 226', 1009, 226, 226)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6084, CAST(N'2025-05-22' AS Date), N'«·Œ„Ì”', N'ÂÊœ', N'’›Õ… 227', 1009, 227, 227)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6085, CAST(N'2025-05-24' AS Date), N'«·”» ', N'ÂÊœ', N'’›Õ… 228', 1009, 228, 228)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6086, CAST(N'2025-05-25' AS Date), N'«·√Õœ', N'ÂÊœ', N'’›Õ… 229', 1009, 229, 229)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6087, CAST(N'2025-05-26' AS Date), N'«·«À‰Ì‰', N'ÂÊœ', N'’›Õ… 230', 1009, 230, 230)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6088, CAST(N'2025-05-27' AS Date), N'«·À·«À«¡', N'ÂÊœ', N'’›Õ… 231', 1009, 231, 231)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6089, CAST(N'2025-05-28' AS Date), N'«·√—»⁄«¡', N'ÂÊœ', N'’›Õ… 232', 1009, 232, 232)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6090, CAST(N'2025-05-29' AS Date), N'«·Œ„Ì”', N'ÂÊœ', N'’›Õ… 233', 1009, 233, 233)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6091, CAST(N'2025-05-31' AS Date), N'«·”» ', N'ÂÊœ', N'’›Õ… 234', 1009, 234, 234)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6092, CAST(N'2025-06-01' AS Date), N'«·√Õœ', N'ÂÊœ / ÌÊ”›', N'’›Õ… 235', 1009, 235, 235)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6093, CAST(N'2025-06-02' AS Date), N'«·«À‰Ì‰', N'ÌÊ”›', N'’›Õ… 236', 1009, 236, 236)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6094, CAST(N'2025-06-03' AS Date), N'«·À·«À«¡', N'ÌÊ”›', N'’›Õ… 237', 1009, 237, 237)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6095, CAST(N'2025-06-04' AS Date), N'«·√—»⁄«¡', N'ÌÊ”›', N'’›Õ… 238', 1009, 238, 238)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6096, CAST(N'2025-06-05' AS Date), N'«·Œ„Ì”', N'ÌÊ”›', N'’›Õ… 239', 1009, 239, 239)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6097, CAST(N'2025-06-07' AS Date), N'«·”» ', N'ÌÊ”›', N'’›Õ… 240', 1009, 240, 240)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6098, CAST(N'2025-06-08' AS Date), N'«·√Õœ', N'ÌÊ”›', N'’›Õ… 241', 1009, 241, 241)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6099, CAST(N'2025-06-09' AS Date), N'«·«À‰Ì‰', N'ÌÊ”›', N'’›Õ… 242', 1009, 242, 242)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6100, CAST(N'2025-06-10' AS Date), N'«·À·«À«¡', N'ÌÊ”›', N'’›Õ… 243', 1009, 243, 243)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6101, CAST(N'2025-06-11' AS Date), N'«·√—»⁄«¡', N'ÌÊ”›', N'’›Õ… 244', 1009, 244, 244)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6102, CAST(N'2025-06-12' AS Date), N'«·Œ„Ì”', N'ÌÊ”›', N'’›Õ… 245', 1009, 245, 245)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6103, CAST(N'2025-06-14' AS Date), N'«·”» ', N'ÌÊ”›', N'’›Õ… 246', 1009, 246, 246)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6104, CAST(N'2025-06-15' AS Date), N'«·√Õœ', N'ÌÊ”›', N'’›Õ… 247', 1009, 247, 247)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6105, CAST(N'2025-06-16' AS Date), N'«·«À‰Ì‰', N'ÌÊ”›', N'’›Õ… 248', 1009, 248, 248)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6106, CAST(N'2025-06-17' AS Date), N'«·À·«À«¡', N'«·—⁄œ', N'’›Õ… 249', 1009, 249, 249)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6107, CAST(N'2025-06-18' AS Date), N'«·√—»⁄«¡', N'«·—⁄œ', N'’›Õ… 250', 1009, 250, 250)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6108, CAST(N'2025-06-19' AS Date), N'«·Œ„Ì”', N'«·—⁄œ', N'’›Õ… 251', 1009, 251, 251)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6109, CAST(N'2025-06-21' AS Date), N'«·”» ', N'«·—⁄œ', N'’›Õ… 252', 1009, 252, 252)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6110, CAST(N'2025-06-22' AS Date), N'«·√Õœ', N'«·—⁄œ', N'’›Õ… 253', 1009, 253, 253)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6111, CAST(N'2025-06-23' AS Date), N'«·«À‰Ì‰', N'«·—⁄œ', N'’›Õ… 254', 1009, 254, 254)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6112, CAST(N'2025-06-24' AS Date), N'«·À·«À«¡', N'«·—⁄œ / ≈»—«ÂÌ„', N'’›Õ… 255', 1009, 255, 255)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6113, CAST(N'2025-06-25' AS Date), N'«·√—»⁄«¡', N'≈»—«ÂÌ„', N'’›Õ… 256', 1009, 256, 256)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6114, CAST(N'2025-06-26' AS Date), N'«·Œ„Ì”', N'≈»—«ÂÌ„', N'’›Õ… 257', 1009, 257, 257)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6115, CAST(N'2025-06-28' AS Date), N'«·”» ', N'≈»—«ÂÌ„', N'’›Õ… 258', 1009, 258, 258)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6116, CAST(N'2025-06-29' AS Date), N'«·√Õœ', N'≈»—«ÂÌ„', N'’›Õ… 259', 1009, 259, 259)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6117, CAST(N'2025-06-30' AS Date), N'«·«À‰Ì‰', N'≈»—«ÂÌ„', N'’›Õ… 260', 1009, 260, 260)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6378, CAST(N'2024-09-01' AS Date), N'«·√Õœ', N'«·›« Õ…', N'’›Õ… 1', 1011, 1, 1)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6379, CAST(N'2024-09-02' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 2', 1011, 2, 2)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6380, CAST(N'2024-09-03' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 3', 1011, 3, 3)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6381, CAST(N'2024-09-04' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 4', 1011, 4, 4)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6382, CAST(N'2024-09-05' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 5', 1011, 5, 5)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6383, CAST(N'2024-09-07' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 6', 1011, 6, 6)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6384, CAST(N'2024-09-08' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 7', 1011, 7, 7)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6385, CAST(N'2024-09-09' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 8', 1011, 8, 8)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6386, CAST(N'2024-09-10' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 9', 1011, 9, 9)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6387, CAST(N'2024-09-11' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 10', 1011, 10, 10)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6388, CAST(N'2024-09-12' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 11', 1011, 11, 11)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6389, CAST(N'2024-09-14' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 12', 1011, 12, 12)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6390, CAST(N'2024-09-15' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 13', 1011, 13, 13)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6391, CAST(N'2024-09-16' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 14', 1011, 14, 14)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6392, CAST(N'2024-09-17' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 15', 1011, 15, 15)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6393, CAST(N'2024-09-18' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 16', 1011, 16, 16)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6394, CAST(N'2024-09-19' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 17', 1011, 17, 17)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6395, CAST(N'2024-09-21' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 18', 1011, 18, 18)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6396, CAST(N'2024-09-22' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 19', 1011, 19, 19)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6397, CAST(N'2024-09-23' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 20', 1011, 20, 20)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6398, CAST(N'2024-09-24' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 21', 1011, 21, 21)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6399, CAST(N'2024-09-25' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 22', 1011, 22, 22)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6400, CAST(N'2024-09-26' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 23', 1011, 23, 23)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6401, CAST(N'2024-09-28' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 24', 1011, 24, 24)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6402, CAST(N'2024-09-29' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 25', 1011, 25, 25)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6403, CAST(N'2024-09-30' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 26', 1011, 26, 26)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6404, CAST(N'2024-10-01' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 27', 1011, 27, 27)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6405, CAST(N'2024-10-02' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 28', 1011, 28, 28)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6406, CAST(N'2024-10-03' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 29', 1011, 29, 29)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6407, CAST(N'2024-10-05' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 30', 1011, 30, 30)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6408, CAST(N'2024-10-06' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 31', 1011, 31, 31)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6409, CAST(N'2024-10-07' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 32', 1011, 32, 32)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6410, CAST(N'2024-10-08' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 33', 1011, 33, 33)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6411, CAST(N'2024-10-09' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 34', 1011, 34, 34)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6412, CAST(N'2024-10-10' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 35', 1011, 35, 35)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6413, CAST(N'2024-10-12' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 36', 1011, 36, 36)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6414, CAST(N'2024-10-13' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 37', 1011, 37, 37)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6415, CAST(N'2024-10-14' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 38', 1011, 38, 38)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6416, CAST(N'2024-10-15' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 39', 1011, 39, 39)
GO
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6417, CAST(N'2024-10-16' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 40', 1011, 40, 40)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6418, CAST(N'2024-10-17' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 41', 1011, 41, 41)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6419, CAST(N'2024-10-19' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 42', 1011, 42, 42)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6420, CAST(N'2024-10-20' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 43', 1011, 43, 43)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6421, CAST(N'2024-10-21' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 44', 1011, 44, 44)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6422, CAST(N'2024-10-22' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 45', 1011, 45, 45)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6423, CAST(N'2024-10-23' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 46', 1011, 46, 46)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6424, CAST(N'2024-10-24' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 47', 1011, 47, 47)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6425, CAST(N'2024-10-26' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 48', 1011, 48, 48)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6426, CAST(N'2024-10-27' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 49', 1011, 49, 49)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6427, CAST(N'2024-10-28' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 50', 1011, 50, 50)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6428, CAST(N'2024-10-29' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 51', 1011, 51, 51)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6429, CAST(N'2024-10-30' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 52', 1011, 52, 52)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6430, CAST(N'2024-10-31' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'’›Õ… 53', 1011, 53, 53)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6431, CAST(N'2024-11-02' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'’›Õ… 54', 1011, 54, 54)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6432, CAST(N'2024-11-03' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'’›Õ… 55', 1011, 55, 55)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6433, CAST(N'2024-11-04' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 56', 1011, 56, 56)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6434, CAST(N'2024-11-05' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 57', 1011, 57, 57)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6435, CAST(N'2024-11-06' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 58', 1011, 58, 58)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6436, CAST(N'2024-11-07' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'’›Õ… 59', 1011, 59, 59)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6437, CAST(N'2024-11-09' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'’›Õ… 60', 1011, 60, 60)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6438, CAST(N'2024-11-10' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'’›Õ… 61', 1011, 61, 61)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6439, CAST(N'2024-11-11' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 62', 1011, 62, 62)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6440, CAST(N'2024-11-12' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 63', 1011, 63, 63)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6441, CAST(N'2024-11-13' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 64', 1011, 64, 64)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6442, CAST(N'2024-11-14' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'’›Õ… 65', 1011, 65, 65)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6443, CAST(N'2024-11-16' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'’›Õ… 66', 1011, 66, 66)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6444, CAST(N'2024-11-17' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'’›Õ… 67', 1011, 67, 67)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6445, CAST(N'2024-11-18' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 68', 1011, 68, 68)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6446, CAST(N'2024-11-19' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 69', 1011, 69, 69)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6447, CAST(N'2024-11-20' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 70', 1011, 70, 70)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6448, CAST(N'2024-11-21' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'’›Õ… 71', 1011, 71, 71)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6449, CAST(N'2024-11-23' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'’›Õ… 72', 1011, 72, 72)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6450, CAST(N'2024-11-24' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'’›Õ… 73', 1011, 73, 73)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6451, CAST(N'2024-11-25' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 74', 1011, 74, 74)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6452, CAST(N'2024-11-26' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 75', 1011, 75, 75)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6453, CAST(N'2024-11-27' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 76', 1011, 76, 76)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6454, CAST(N'2024-11-28' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 77', 1011, 77, 77)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6455, CAST(N'2024-11-30' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 78', 1011, 78, 78)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6456, CAST(N'2024-12-01' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 79', 1011, 79, 79)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6457, CAST(N'2024-12-02' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 80', 1011, 80, 80)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6458, CAST(N'2024-12-03' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 81', 1011, 81, 81)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6459, CAST(N'2024-12-04' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'’›Õ… 82', 1011, 82, 82)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6460, CAST(N'2024-12-05' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 83', 1011, 83, 83)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6461, CAST(N'2024-12-07' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 84', 1011, 84, 84)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6462, CAST(N'2024-12-08' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 85', 1011, 85, 85)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6463, CAST(N'2024-12-09' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 86', 1011, 86, 86)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6464, CAST(N'2024-12-10' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 87', 1011, 87, 87)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6465, CAST(N'2024-12-11' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'’›Õ… 88', 1011, 88, 88)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6466, CAST(N'2024-12-12' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 89', 1011, 89, 89)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6467, CAST(N'2024-12-14' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 90', 1011, 90, 90)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6468, CAST(N'2024-12-15' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 91', 1011, 91, 91)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6469, CAST(N'2024-12-16' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 92', 1011, 92, 92)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6470, CAST(N'2024-12-17' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 93', 1011, 93, 93)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6471, CAST(N'2024-12-18' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'’›Õ… 94', 1011, 94, 94)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6472, CAST(N'2024-12-19' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 95', 1011, 95, 95)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6473, CAST(N'2024-12-21' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 96', 1011, 96, 96)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6474, CAST(N'2024-12-22' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 97', 1011, 97, 97)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6475, CAST(N'2024-12-23' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 98', 1011, 98, 98)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6476, CAST(N'2024-12-24' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 99', 1011, 99, 99)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6477, CAST(N'2024-12-25' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'’›Õ… 100', 1011, 100, 100)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6478, CAST(N'2024-12-26' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 101', 1011, 101, 101)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6479, CAST(N'2024-12-28' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 102', 1011, 102, 102)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6480, CAST(N'2024-12-29' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 103', 1011, 103, 103)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6481, CAST(N'2024-12-30' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 104', 1011, 104, 104)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6482, CAST(N'2024-12-31' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 105', 1011, 105, 105)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6483, CAST(N'2025-01-01' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡/«·„«∆œ…', N'’›Õ… 106', 1011, 106, 106)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6484, CAST(N'2025-01-02' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'’›Õ… 107', 1011, 107, 107)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6485, CAST(N'2025-01-04' AS Date), N'«·”» ', N'«·„«∆œ…', N'’›Õ… 108', 1011, 108, 108)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6486, CAST(N'2025-01-05' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'’›Õ… 109', 1011, 109, 109)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6487, CAST(N'2025-01-06' AS Date), N'«·«À‰Ì‰', N'«·„«∆œ…', N'’›Õ… 110', 1011, 110, 110)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6488, CAST(N'2025-01-07' AS Date), N'«·À·«À«¡', N'«·„«∆œ…', N'’›Õ… 111', 1011, 111, 111)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6489, CAST(N'2025-01-08' AS Date), N'«·√—»⁄«¡', N'«·„«∆œ…', N'’›Õ… 112', 1011, 112, 112)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6490, CAST(N'2025-01-09' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'’›Õ… 113', 1011, 113, 113)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6491, CAST(N'2025-01-11' AS Date), N'«·”» ', N'«·„«∆œ…', N'’›Õ… 114', 1011, 114, 114)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6492, CAST(N'2025-01-12' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'’›Õ… 115', 1011, 115, 115)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6493, CAST(N'2025-01-13' AS Date), N'«·«À‰Ì‰', N'«·„«∆œ…', N'’›Õ… 116', 1011, 116, 116)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6494, CAST(N'2025-01-14' AS Date), N'«·À·«À«¡', N'«·„«∆œ…', N'’›Õ… 117', 1011, 117, 117)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6495, CAST(N'2025-01-15' AS Date), N'«·√—»⁄«¡', N'«·„«∆œ…', N'’›Õ… 118', 1011, 118, 118)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6496, CAST(N'2025-01-16' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'’›Õ… 119', 1011, 119, 119)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6497, CAST(N'2025-01-18' AS Date), N'«·”» ', N'«·„«∆œ…', N'’›Õ… 120', 1011, 120, 120)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6498, CAST(N'2025-01-19' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'’›Õ… 121', 1011, 121, 121)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6499, CAST(N'2025-01-20' AS Date), N'«·«À‰Ì‰', N'«·„«∆œ…', N'’›Õ… 122', 1011, 122, 122)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6500, CAST(N'2025-01-21' AS Date), N'«·À·«À«¡', N'«·„«∆œ…', N'’›Õ… 123', 1011, 123, 123)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6501, CAST(N'2025-01-22' AS Date), N'«·√—»⁄«¡', N'«·„«∆œ…', N'’›Õ… 124', 1011, 124, 124)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6502, CAST(N'2025-01-23' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'’›Õ… 125', 1011, 125, 125)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6503, CAST(N'2025-01-25' AS Date), N'«·”» ', N'«·„«∆œ…', N'’›Õ… 126', 1011, 126, 126)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6504, CAST(N'2025-01-26' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'’›Õ… 127', 1011, 127, 127)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6505, CAST(N'2025-01-27' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'’›Õ… 128', 1011, 128, 128)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6506, CAST(N'2025-01-28' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'’›Õ… 129', 1011, 129, 129)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6507, CAST(N'2025-01-29' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'’›Õ… 130', 1011, 130, 130)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6508, CAST(N'2025-01-30' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'’›Õ… 131', 1011, 131, 131)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6509, CAST(N'2025-02-01' AS Date), N'«·”» ', N'«·√‰⁄«„', N'’›Õ… 132', 1011, 132, 132)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6510, CAST(N'2025-02-02' AS Date), N'«·√Õœ', N'«·√‰⁄«„', N'’›Õ… 133', 1011, 133, 133)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6511, CAST(N'2025-02-03' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'’›Õ… 134', 1011, 134, 134)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6512, CAST(N'2025-02-04' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'’›Õ… 135', 1011, 135, 135)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6513, CAST(N'2025-02-05' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'’›Õ… 136', 1011, 136, 136)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6514, CAST(N'2025-02-06' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'’›Õ… 137', 1011, 137, 137)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6515, CAST(N'2025-02-08' AS Date), N'«·”» ', N'«·√‰⁄«„', N'’›Õ… 138', 1011, 138, 138)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6516, CAST(N'2025-02-09' AS Date), N'«·√Õœ', N'«·√‰⁄«„', N'’›Õ… 139', 1011, 139, 139)
GO
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6517, CAST(N'2025-02-10' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'’›Õ… 140', 1011, 140, 140)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6518, CAST(N'2025-02-11' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'’›Õ… 141', 1011, 141, 141)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6519, CAST(N'2025-02-12' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'’›Õ… 142', 1011, 142, 142)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6520, CAST(N'2025-02-13' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'’›Õ… 143', 1011, 143, 143)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6521, CAST(N'2025-02-15' AS Date), N'«·”» ', N'«·√‰⁄«„', N'’›Õ… 144', 1011, 144, 144)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6522, CAST(N'2025-02-16' AS Date), N'«·√Õœ', N'«·√‰⁄«„', N'’›Õ… 145', 1011, 145, 145)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6523, CAST(N'2025-02-17' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'’›Õ… 146', 1011, 146, 146)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6524, CAST(N'2025-02-18' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'’›Õ… 147', 1011, 147, 147)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6525, CAST(N'2025-02-19' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'’›Õ… 148', 1011, 148, 148)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6526, CAST(N'2025-02-20' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'’›Õ… 149', 1011, 149, 149)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6527, CAST(N'2025-02-22' AS Date), N'«·”» ', N'«·√‰⁄«„', N'’›Õ… 150', 1011, 150, 150)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6528, CAST(N'2025-02-23' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 151', 1011, 151, 151)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6529, CAST(N'2025-02-24' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 152', 1011, 152, 152)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6530, CAST(N'2025-02-25' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'’›Õ… 153', 1011, 153, 153)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6531, CAST(N'2025-02-26' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'’›Õ… 154', 1011, 154, 154)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6532, CAST(N'2025-02-27' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'’›Õ… 155', 1011, 155, 155)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6533, CAST(N'2025-03-01' AS Date), N'«·”» ', N'«·√⁄—«›', N'’›Õ… 156', 1011, 156, 156)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6534, CAST(N'2025-03-02' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 157', 1011, 157, 157)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6535, CAST(N'2025-03-03' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 158', 1011, 158, 158)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6536, CAST(N'2025-03-04' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'’›Õ… 159', 1011, 159, 159)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6537, CAST(N'2025-03-05' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'’›Õ… 160', 1011, 160, 160)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6538, CAST(N'2025-03-06' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'’›Õ… 161', 1011, 161, 161)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6539, CAST(N'2025-03-08' AS Date), N'«·”» ', N'«·√⁄—«›', N'’›Õ… 162', 1011, 162, 162)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6540, CAST(N'2025-03-09' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 163', 1011, 163, 163)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6541, CAST(N'2025-03-10' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 164', 1011, 164, 164)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6542, CAST(N'2025-03-11' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'’›Õ… 165', 1011, 165, 165)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6543, CAST(N'2025-03-12' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'’›Õ… 166', 1011, 166, 166)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6544, CAST(N'2025-03-13' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'’›Õ… 167', 1011, 167, 167)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6545, CAST(N'2025-03-15' AS Date), N'«·”» ', N'«·√⁄—«›', N'’›Õ… 168', 1011, 168, 168)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6546, CAST(N'2025-03-16' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 169', 1011, 169, 169)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6547, CAST(N'2025-03-17' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 170', 1011, 170, 170)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6548, CAST(N'2025-03-18' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'’›Õ… 171', 1011, 171, 171)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6549, CAST(N'2025-03-19' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'’›Õ… 172', 1011, 172, 172)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6550, CAST(N'2025-03-20' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'’›Õ… 173', 1011, 173, 173)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6551, CAST(N'2025-03-22' AS Date), N'«·”» ', N'«·√⁄—«›', N'’›Õ… 174', 1011, 174, 174)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6552, CAST(N'2025-03-23' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 175', 1011, 175, 175)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6553, CAST(N'2025-03-24' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 176', 1011, 176, 176)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6554, CAST(N'2025-03-25' AS Date), N'«·À·«À«¡', N'«·√‰›«·', N'’›Õ… 177', 1011, 177, 177)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6555, CAST(N'2025-03-26' AS Date), N'«·√—»⁄«¡', N'«·√‰›«·', N'’›Õ… 178', 1011, 178, 178)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6556, CAST(N'2025-03-27' AS Date), N'«·Œ„Ì”', N'«·√‰›«·', N'’›Õ… 179', 1011, 179, 179)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6557, CAST(N'2025-03-29' AS Date), N'«·”» ', N'«·√‰›«·', N'’›Õ… 180', 1011, 180, 180)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6558, CAST(N'2025-03-30' AS Date), N'«·√Õœ', N'«·√‰›«·', N'’›Õ… 181', 1011, 181, 181)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6559, CAST(N'2025-03-31' AS Date), N'«·«À‰Ì‰', N'«·√‰›«·', N'’›Õ… 182', 1011, 182, 182)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6560, CAST(N'2025-04-01' AS Date), N'«·À·«À«¡', N'«·√‰›«·', N'’›Õ… 183', 1011, 183, 183)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6561, CAST(N'2025-04-02' AS Date), N'«·√—»⁄«¡', N'«·√‰›«·', N'’›Õ… 184', 1011, 184, 184)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6562, CAST(N'2025-04-03' AS Date), N'«·Œ„Ì”', N'«·√‰›«·', N'’›Õ… 185', 1011, 185, 185)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6563, CAST(N'2025-04-05' AS Date), N'«·”» ', N'«·√‰›«·', N'’›Õ… 186', 1011, 186, 186)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6564, CAST(N'2025-04-06' AS Date), N'«·√Õœ', N'«· Ê»…', N'’›Õ… 187', 1011, 187, 187)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6565, CAST(N'2025-04-07' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'’›Õ… 188', 1011, 188, 188)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6566, CAST(N'2025-04-08' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'’›Õ… 189', 1011, 189, 189)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6567, CAST(N'2025-04-09' AS Date), N'«·√—»⁄«¡', N'«· Ê»…', N'’›Õ… 190', 1011, 190, 190)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6568, CAST(N'2025-04-10' AS Date), N'«·Œ„Ì”', N'«· Ê»…', N'’›Õ… 191', 1011, 191, 191)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6569, CAST(N'2025-04-12' AS Date), N'«·”» ', N'«· Ê»…', N'’›Õ… 192', 1011, 192, 192)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6570, CAST(N'2025-04-13' AS Date), N'«·√Õœ', N'«· Ê»…', N'’›Õ… 193', 1011, 193, 193)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6571, CAST(N'2025-04-14' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'’›Õ… 194', 1011, 194, 194)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6572, CAST(N'2025-04-15' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'’›Õ… 195', 1011, 195, 195)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6573, CAST(N'2025-04-16' AS Date), N'«·√—»⁄«¡', N'«· Ê»…', N'’›Õ… 196', 1011, 196, 196)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6574, CAST(N'2025-04-17' AS Date), N'«·Œ„Ì”', N'«· Ê»…', N'’›Õ… 197', 1011, 197, 197)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6575, CAST(N'2025-04-19' AS Date), N'«·”» ', N'«· Ê»…', N'’›Õ… 198', 1011, 198, 198)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6576, CAST(N'2025-04-20' AS Date), N'«·√Õœ', N'«· Ê»…', N'’›Õ… 199', 1011, 199, 199)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6577, CAST(N'2025-04-21' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'’›Õ… 200', 1011, 200, 200)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6578, CAST(N'2025-04-22' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'’›Õ… 201', 1011, 201, 201)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6579, CAST(N'2025-04-23' AS Date), N'«·√—»⁄«¡', N'«· Ê»…', N'’›Õ… 202', 1011, 202, 202)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6580, CAST(N'2025-04-24' AS Date), N'«·Œ„Ì”', N'«· Ê»…', N'’›Õ… 203', 1011, 203, 203)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6581, CAST(N'2025-04-26' AS Date), N'«·”» ', N'«· Ê»…', N'’›Õ… 204', 1011, 204, 204)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6582, CAST(N'2025-04-27' AS Date), N'«·√Õœ', N'«· Ê»…', N'’›Õ… 205', 1011, 205, 205)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6583, CAST(N'2025-04-28' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'’›Õ… 206', 1011, 206, 206)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6584, CAST(N'2025-04-29' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'’›Õ… 207', 1011, 207, 207)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6585, CAST(N'2025-04-30' AS Date), N'«·√—»⁄«¡', N'ÌÊ‰”', N'’›Õ… 208', 1011, 208, 208)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6586, CAST(N'2025-05-01' AS Date), N'«·Œ„Ì”', N'ÌÊ‰”', N'’›Õ… 209', 1011, 209, 209)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6587, CAST(N'2025-05-03' AS Date), N'«·”» ', N'ÌÊ‰”', N'’›Õ… 210', 1011, 210, 210)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6588, CAST(N'2025-05-04' AS Date), N'«·√Õœ', N'ÌÊ‰”', N'’›Õ… 211', 1011, 211, 211)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6589, CAST(N'2025-05-05' AS Date), N'«·«À‰Ì‰', N'ÌÊ‰”', N'’›Õ… 212', 1011, 212, 212)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6590, CAST(N'2025-05-06' AS Date), N'«·À·«À«¡', N'ÌÊ‰”', N'’›Õ… 213', 1011, 213, 213)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6591, CAST(N'2025-05-07' AS Date), N'«·√—»⁄«¡', N'ÌÊ‰”', N'’›Õ… 214', 1011, 214, 214)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6592, CAST(N'2025-05-08' AS Date), N'«·Œ„Ì”', N'ÌÊ‰”', N'’›Õ… 215', 1011, 215, 215)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6593, CAST(N'2025-05-10' AS Date), N'«·”» ', N'ÌÊ‰”', N'’›Õ… 216', 1011, 216, 216)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6594, CAST(N'2025-05-11' AS Date), N'«·√Õœ', N'ÌÊ‰”', N'’›Õ… 217', 1011, 217, 217)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6595, CAST(N'2025-05-12' AS Date), N'«·«À‰Ì‰', N'ÌÊ‰”', N'’›Õ… 218', 1011, 218, 218)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6596, CAST(N'2025-05-13' AS Date), N'«·À·«À«¡', N'ÌÊ‰”', N'’›Õ… 219', 1011, 219, 219)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6597, CAST(N'2025-05-14' AS Date), N'«·√—»⁄«¡', N'ÌÊ‰”', N'’›Õ… 220', 1011, 220, 220)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6598, CAST(N'2025-05-15' AS Date), N'«·Œ„Ì”', N'ÌÊ‰” / ÂÊœ', N'’›Õ… 221', 1011, 221, 221)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6599, CAST(N'2025-05-17' AS Date), N'«·”» ', N'ÂÊœ', N'’›Õ… 222', 1011, 222, 222)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6600, CAST(N'2025-05-18' AS Date), N'«·√Õœ', N'ÂÊœ', N'’›Õ… 223', 1011, 223, 223)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6601, CAST(N'2025-05-19' AS Date), N'«·«À‰Ì‰', N'ÂÊœ', N'’›Õ… 224', 1011, 224, 224)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6602, CAST(N'2025-05-20' AS Date), N'«·À·«À«¡', N'ÂÊœ', N'’›Õ… 225', 1011, 225, 225)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6603, CAST(N'2025-05-21' AS Date), N'«·√—»⁄«¡', N'ÂÊœ', N'’›Õ… 226', 1011, 226, 226)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6604, CAST(N'2025-05-22' AS Date), N'«·Œ„Ì”', N'ÂÊœ', N'’›Õ… 227', 1011, 227, 227)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6605, CAST(N'2025-05-24' AS Date), N'«·”» ', N'ÂÊœ', N'’›Õ… 228', 1011, 228, 228)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6606, CAST(N'2025-05-25' AS Date), N'«·√Õœ', N'ÂÊœ', N'’›Õ… 229', 1011, 229, 229)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6607, CAST(N'2025-05-26' AS Date), N'«·«À‰Ì‰', N'ÂÊœ', N'’›Õ… 230', 1011, 230, 230)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6608, CAST(N'2025-05-27' AS Date), N'«·À·«À«¡', N'ÂÊœ', N'’›Õ… 231', 1011, 231, 231)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6609, CAST(N'2025-05-28' AS Date), N'«·√—»⁄«¡', N'ÂÊœ', N'’›Õ… 232', 1011, 232, 232)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6610, CAST(N'2025-05-29' AS Date), N'«·Œ„Ì”', N'ÂÊœ', N'’›Õ… 233', 1011, 233, 233)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6611, CAST(N'2025-05-31' AS Date), N'«·”» ', N'ÂÊœ', N'’›Õ… 234', 1011, 234, 234)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6612, CAST(N'2025-06-01' AS Date), N'«·√Õœ', N'ÂÊœ / ÌÊ”›', N'’›Õ… 235', 1011, 235, 235)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6613, CAST(N'2025-06-02' AS Date), N'«·«À‰Ì‰', N'ÌÊ”›', N'’›Õ… 236', 1011, 236, 236)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6614, CAST(N'2025-06-03' AS Date), N'«·À·«À«¡', N'ÌÊ”›', N'’›Õ… 237', 1011, 237, 237)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6615, CAST(N'2025-06-04' AS Date), N'«·√—»⁄«¡', N'ÌÊ”›', N'’›Õ… 238', 1011, 238, 238)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6616, CAST(N'2025-06-05' AS Date), N'«·Œ„Ì”', N'ÌÊ”›', N'’›Õ… 239', 1011, 239, 239)
GO
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6617, CAST(N'2025-06-07' AS Date), N'«·”» ', N'ÌÊ”›', N'’›Õ… 240', 1011, 240, 240)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6618, CAST(N'2025-06-08' AS Date), N'«·√Õœ', N'ÌÊ”›', N'’›Õ… 241', 1011, 241, 241)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6619, CAST(N'2025-06-09' AS Date), N'«·«À‰Ì‰', N'ÌÊ”›', N'’›Õ… 242', 1011, 242, 242)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6620, CAST(N'2025-06-10' AS Date), N'«·À·«À«¡', N'ÌÊ”›', N'’›Õ… 243', 1011, 243, 243)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6621, CAST(N'2025-06-11' AS Date), N'«·√—»⁄«¡', N'ÌÊ”›', N'’›Õ… 244', 1011, 244, 244)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6622, CAST(N'2025-06-12' AS Date), N'«·Œ„Ì”', N'ÌÊ”›', N'’›Õ… 245', 1011, 245, 245)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6623, CAST(N'2025-06-14' AS Date), N'«·”» ', N'ÌÊ”›', N'’›Õ… 246', 1011, 246, 246)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6624, CAST(N'2025-06-15' AS Date), N'«·√Õœ', N'ÌÊ”›', N'’›Õ… 247', 1011, 247, 247)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6625, CAST(N'2025-06-16' AS Date), N'«·«À‰Ì‰', N'ÌÊ”›', N'’›Õ… 248', 1011, 248, 248)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6626, CAST(N'2025-06-17' AS Date), N'«·À·«À«¡', N'«·—⁄œ', N'’›Õ… 249', 1011, 249, 249)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6627, CAST(N'2025-06-18' AS Date), N'«·√—»⁄«¡', N'«·—⁄œ', N'’›Õ… 250', 1011, 250, 250)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6628, CAST(N'2025-06-19' AS Date), N'«·Œ„Ì”', N'«·—⁄œ', N'’›Õ… 251', 1011, 251, 251)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6629, CAST(N'2025-06-21' AS Date), N'«·”» ', N'«·—⁄œ', N'’›Õ… 252', 1011, 252, 252)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6630, CAST(N'2025-06-22' AS Date), N'«·√Õœ', N'«·—⁄œ', N'’›Õ… 253', 1011, 253, 253)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6631, CAST(N'2025-06-23' AS Date), N'«·«À‰Ì‰', N'«·—⁄œ', N'’›Õ… 254', 1011, 254, 254)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6632, CAST(N'2025-06-24' AS Date), N'«·À·«À«¡', N'«·—⁄œ / ≈»—«ÂÌ„', N'’›Õ… 255', 1011, 255, 255)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6633, CAST(N'2025-06-25' AS Date), N'«·√—»⁄«¡', N'≈»—«ÂÌ„', N'’›Õ… 256', 1011, 256, 256)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6634, CAST(N'2025-06-26' AS Date), N'«·Œ„Ì”', N'≈»—«ÂÌ„', N'’›Õ… 257', 1011, 257, 257)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6635, CAST(N'2025-06-28' AS Date), N'«·”» ', N'≈»—«ÂÌ„', N'’›Õ… 258', 1011, 258, 258)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6636, CAST(N'2025-06-29' AS Date), N'«·√Õœ', N'≈»—«ÂÌ„', N'’›Õ… 259', 1011, 259, 259)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6637, CAST(N'2025-06-30' AS Date), N'«·«À‰Ì‰', N'≈»—«ÂÌ„', N'’›Õ… 260', 1011, 260, 260)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6638, CAST(N'2024-09-01' AS Date), N'«·√Õœ', N'«·›« Õ…', N'„‰ ’›Õ… 1 ≈·Ï 2', 1012, 1, 2)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6639, CAST(N'2024-09-02' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'„‰ ’›Õ… 3 ≈·Ï 4', 1012, 3, 4)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6640, CAST(N'2024-09-03' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'„‰ ’›Õ… 5 ≈·Ï 6', 1012, 5, 6)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6641, CAST(N'2024-09-04' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'„‰ ’›Õ… 7 ≈·Ï 8', 1012, 7, 8)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6642, CAST(N'2024-09-05' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'„‰ ’›Õ… 9 ≈·Ï 10', 1012, 9, 10)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6643, CAST(N'2024-09-07' AS Date), N'«·”» ', N'«·»ﬁ—…', N'„‰ ’›Õ… 11 ≈·Ï 12', 1012, 11, 12)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6644, CAST(N'2024-09-08' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'„‰ ’›Õ… 13 ≈·Ï 14', 1012, 13, 14)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6645, CAST(N'2024-09-09' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'„‰ ’›Õ… 15 ≈·Ï 16', 1012, 15, 16)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6646, CAST(N'2024-09-10' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'„‰ ’›Õ… 17 ≈·Ï 18', 1012, 17, 18)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6647, CAST(N'2024-09-11' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'„‰ ’›Õ… 19 ≈·Ï 20', 1012, 19, 20)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6648, CAST(N'2024-09-12' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'„‰ ’›Õ… 21 ≈·Ï 22', 1012, 21, 22)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6649, CAST(N'2024-09-14' AS Date), N'«·”» ', N'«·»ﬁ—…', N'„‰ ’›Õ… 23 ≈·Ï 24', 1012, 23, 24)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6650, CAST(N'2024-09-15' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'„‰ ’›Õ… 25 ≈·Ï 26', 1012, 25, 26)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6651, CAST(N'2024-09-16' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'„‰ ’›Õ… 27 ≈·Ï 28', 1012, 27, 28)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6652, CAST(N'2024-09-17' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'„‰ ’›Õ… 29 ≈·Ï 30', 1012, 29, 30)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6653, CAST(N'2024-09-18' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'„‰ ’›Õ… 31 ≈·Ï 32', 1012, 31, 32)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6654, CAST(N'2024-09-19' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'„‰ ’›Õ… 33 ≈·Ï 34', 1012, 33, 34)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6655, CAST(N'2024-09-21' AS Date), N'«·”» ', N'«·»ﬁ—…', N'„‰ ’›Õ… 35 ≈·Ï 36', 1012, 35, 36)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6656, CAST(N'2024-09-22' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'„‰ ’›Õ… 37 ≈·Ï 38', 1012, 37, 38)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6657, CAST(N'2024-09-23' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'„‰ ’›Õ… 39 ≈·Ï 40', 1012, 39, 40)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6658, CAST(N'2024-09-24' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'„‰ ’›Õ… 41 ≈·Ï 42', 1012, 41, 42)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6659, CAST(N'2024-09-25' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'„‰ ’›Õ… 43 ≈·Ï 44', 1012, 43, 44)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6660, CAST(N'2024-09-26' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'„‰ ’›Õ… 45 ≈·Ï 46', 1012, 45, 46)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6661, CAST(N'2024-09-28' AS Date), N'«·”» ', N'«·»ﬁ—…', N'„‰ ’›Õ… 47 ≈·Ï 48', 1012, 47, 48)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6662, CAST(N'2024-09-29' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'„‰ ’›Õ… 49 ≈·Ï 50', 1012, 49, 50)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6663, CAST(N'2024-09-30' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 51 ≈·Ï 52', 1012, 51, 52)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6664, CAST(N'2024-10-01' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 53 ≈·Ï 54', 1012, 53, 54)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6665, CAST(N'2024-10-02' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 55 ≈·Ï 56', 1012, 55, 56)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6666, CAST(N'2024-10-03' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 57 ≈·Ï 58', 1012, 57, 58)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6667, CAST(N'2024-10-05' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 59 ≈·Ï 60', 1012, 59, 60)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6668, CAST(N'2024-10-06' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 61 ≈·Ï 62', 1012, 61, 62)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6669, CAST(N'2024-10-07' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 63 ≈·Ï 64', 1012, 63, 64)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6670, CAST(N'2024-10-08' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 65 ≈·Ï 66', 1012, 65, 66)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6671, CAST(N'2024-10-09' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 67 ≈·Ï 68', 1012, 67, 68)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6672, CAST(N'2024-10-10' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 69 ≈·Ï 70', 1012, 69, 70)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6673, CAST(N'2024-10-12' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 71 ≈·Ï 72', 1012, 71, 72)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6674, CAST(N'2024-10-13' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 73 ≈·Ï 74', 1012, 73, 74)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6675, CAST(N'2024-10-14' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 75 ≈·Ï 76', 1012, 75, 76)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6676, CAST(N'2024-10-15' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'„‰ ’›Õ… 77 ≈·Ï 78', 1012, 77, 78)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6677, CAST(N'2024-10-16' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'„‰ ’›Õ… 79 ≈·Ï 80', 1012, 79, 80)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6678, CAST(N'2024-10-17' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'„‰ ’›Õ… 81 ≈·Ï 82', 1012, 81, 82)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6679, CAST(N'2024-10-19' AS Date), N'«·”» ', N'«·‰”«¡', N'„‰ ’›Õ… 83 ≈·Ï 84', 1012, 83, 84)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6680, CAST(N'2024-10-20' AS Date), N'«·√Õœ', N'«·‰”«¡', N'„‰ ’›Õ… 85 ≈·Ï 86', 1012, 85, 86)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6681, CAST(N'2024-10-21' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'„‰ ’›Õ… 87 ≈·Ï 88', 1012, 87, 88)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6682, CAST(N'2024-10-22' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'„‰ ’›Õ… 89 ≈·Ï 90', 1012, 89, 90)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6683, CAST(N'2024-10-23' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'„‰ ’›Õ… 91 ≈·Ï 92', 1012, 91, 92)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6684, CAST(N'2024-10-24' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'„‰ ’›Õ… 93 ≈·Ï 94', 1012, 93, 94)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6685, CAST(N'2024-10-26' AS Date), N'«·”» ', N'«·‰”«¡', N'„‰ ’›Õ… 95 ≈·Ï 96', 1012, 95, 96)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6686, CAST(N'2024-10-27' AS Date), N'«·√Õœ', N'«·‰”«¡', N'„‰ ’›Õ… 97 ≈·Ï 98', 1012, 97, 98)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6687, CAST(N'2024-10-28' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'„‰ ’›Õ… 99 ≈·Ï 100', 1012, 99, 100)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6688, CAST(N'2024-10-29' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'„‰ ’›Õ… 101 ≈·Ï 102', 1012, 101, 102)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6689, CAST(N'2024-10-30' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'„‰ ’›Õ… 103 ≈·Ï 104', 1012, 103, 104)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6690, CAST(N'2024-10-31' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'„‰ ’›Õ… 105 ≈·Ï 106', 1012, 105, 106)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6691, CAST(N'2024-11-02' AS Date), N'«·”» ', N'«·„«∆œ…', N'„‰ ’›Õ… 107 ≈·Ï 108', 1012, 107, 108)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6692, CAST(N'2024-11-03' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'„‰ ’›Õ… 109 ≈·Ï 110', 1012, 109, 110)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6693, CAST(N'2024-11-04' AS Date), N'«·«À‰Ì‰', N'«·„«∆œ…', N'„‰ ’›Õ… 111 ≈·Ï 112', 1012, 111, 112)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6694, CAST(N'2024-11-05' AS Date), N'«·À·«À«¡', N'«·„«∆œ…', N'„‰ ’›Õ… 113 ≈·Ï 114', 1012, 113, 114)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6695, CAST(N'2024-11-06' AS Date), N'«·√—»⁄«¡', N'«·„«∆œ…', N'„‰ ’›Õ… 115 ≈·Ï 116', 1012, 115, 116)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6696, CAST(N'2024-11-07' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'„‰ ’›Õ… 117 ≈·Ï 118', 1012, 117, 118)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6697, CAST(N'2024-11-09' AS Date), N'«·”» ', N'«·„«∆œ…', N'„‰ ’›Õ… 119 ≈·Ï 120', 1012, 119, 120)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6698, CAST(N'2024-11-10' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'„‰ ’›Õ… 121 ≈·Ï 122', 1012, 121, 122)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6699, CAST(N'2024-11-11' AS Date), N'«·«À‰Ì‰', N'«·„«∆œ…', N'„‰ ’›Õ… 123 ≈·Ï 124', 1012, 123, 124)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6700, CAST(N'2024-11-12' AS Date), N'«·À·«À«¡', N'«·„«∆œ…', N'„‰ ’›Õ… 125 ≈·Ï 126', 1012, 125, 126)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6701, CAST(N'2024-11-13' AS Date), N'«·√—»⁄«¡', N'«·„«∆œ…', N'„‰ ’›Õ… 127 ≈·Ï 128', 1012, 127, 128)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6702, CAST(N'2024-11-14' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'„‰ ’›Õ… 129 ≈·Ï 130', 1012, 129, 130)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6703, CAST(N'2024-11-16' AS Date), N'«·”» ', N'«·√‰⁄«„', N'„‰ ’›Õ… 131 ≈·Ï 132', 1012, 131, 132)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6704, CAST(N'2024-11-17' AS Date), N'«·√Õœ', N'«·√‰⁄«„', N'„‰ ’›Õ… 133 ≈·Ï 134', 1012, 133, 134)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6705, CAST(N'2024-11-18' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'„‰ ’›Õ… 135 ≈·Ï 136', 1012, 135, 136)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6706, CAST(N'2024-11-19' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'„‰ ’›Õ… 137 ≈·Ï 138', 1012, 137, 138)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6707, CAST(N'2024-11-20' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'„‰ ’›Õ… 139 ≈·Ï 140', 1012, 139, 140)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6708, CAST(N'2024-11-21' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'„‰ ’›Õ… 141 ≈·Ï 142', 1012, 141, 142)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6709, CAST(N'2024-11-23' AS Date), N'«·”» ', N'«·√‰⁄«„', N'„‰ ’›Õ… 143 ≈·Ï 144', 1012, 143, 144)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6710, CAST(N'2024-11-24' AS Date), N'«·√Õœ', N'«·√‰⁄«„', N'„‰ ’›Õ… 145 ≈·Ï 146', 1012, 145, 146)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6711, CAST(N'2024-11-25' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'„‰ ’›Õ… 147 ≈·Ï 148', 1012, 147, 148)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6712, CAST(N'2024-11-26' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'„‰ ’›Õ… 149 ≈·Ï 150', 1012, 149, 150)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6713, CAST(N'2024-11-27' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'„‰ ’›Õ… 151 ≈·Ï 152', 1012, 151, 152)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6714, CAST(N'2024-11-28' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'„‰ ’›Õ… 153 ≈·Ï 154', 1012, 153, 154)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6715, CAST(N'2024-11-30' AS Date), N'«·”» ', N'«·√⁄—«›', N'„‰ ’›Õ… 155 ≈·Ï 156', 1012, 155, 156)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6716, CAST(N'2024-12-01' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'„‰ ’›Õ… 157 ≈·Ï 158', 1012, 157, 158)
GO
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6717, CAST(N'2024-12-02' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'„‰ ’›Õ… 159 ≈·Ï 160', 1012, 159, 160)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6718, CAST(N'2024-12-03' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'„‰ ’›Õ… 161 ≈·Ï 162', 1012, 161, 162)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6719, CAST(N'2024-12-04' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'„‰ ’›Õ… 163 ≈·Ï 164', 1012, 163, 164)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6720, CAST(N'2024-12-05' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'„‰ ’›Õ… 165 ≈·Ï 166', 1012, 165, 166)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6721, CAST(N'2024-12-07' AS Date), N'«·”» ', N'«·√⁄—«›', N'„‰ ’›Õ… 167 ≈·Ï 168', 1012, 167, 168)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6722, CAST(N'2024-12-08' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'„‰ ’›Õ… 169 ≈·Ï 170', 1012, 169, 170)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6723, CAST(N'2024-12-09' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'„‰ ’›Õ… 171 ≈·Ï 172', 1012, 171, 172)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6724, CAST(N'2024-12-10' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'„‰ ’›Õ… 173 ≈·Ï 174', 1012, 173, 174)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6725, CAST(N'2024-12-11' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'„‰ ’›Õ… 175 ≈·Ï 176', 1012, 175, 176)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6726, CAST(N'2024-12-12' AS Date), N'«·Œ„Ì”', N'«·√‰›«·', N'„‰ ’›Õ… 177 ≈·Ï 178', 1012, 177, 178)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6727, CAST(N'2024-12-14' AS Date), N'«·”» ', N'«·√‰›«·', N'„‰ ’›Õ… 179 ≈·Ï 180', 1012, 179, 180)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6728, CAST(N'2024-12-15' AS Date), N'«·√Õœ', N'«·√‰›«·', N'„‰ ’›Õ… 181 ≈·Ï 182', 1012, 181, 182)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6729, CAST(N'2024-12-16' AS Date), N'«·«À‰Ì‰', N'«·√‰›«·', N'„‰ ’›Õ… 183 ≈·Ï 184', 1012, 183, 184)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6730, CAST(N'2024-12-17' AS Date), N'«·À·«À«¡', N'«·√‰›«·', N'„‰ ’›Õ… 185 ≈·Ï 186', 1012, 185, 186)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6731, CAST(N'2024-12-18' AS Date), N'«·√—»⁄«¡', N'«· Ê»…', N'„‰ ’›Õ… 187 ≈·Ï 188', 1012, 187, 188)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6732, CAST(N'2024-12-19' AS Date), N'«·Œ„Ì”', N'«· Ê»…', N'„‰ ’›Õ… 189 ≈·Ï 190', 1012, 189, 190)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6733, CAST(N'2024-12-21' AS Date), N'«·”» ', N'«· Ê»…', N'„‰ ’›Õ… 191 ≈·Ï 192', 1012, 191, 192)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6734, CAST(N'2024-12-22' AS Date), N'«·√Õœ', N'«· Ê»…', N'„‰ ’›Õ… 193 ≈·Ï 194', 1012, 193, 194)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6735, CAST(N'2024-12-23' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'„‰ ’›Õ… 195 ≈·Ï 196', 1012, 195, 196)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6736, CAST(N'2024-12-24' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'„‰ ’›Õ… 197 ≈·Ï 198', 1012, 197, 198)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6737, CAST(N'2024-12-25' AS Date), N'«·√—»⁄«¡', N'«· Ê»…', N'„‰ ’›Õ… 199 ≈·Ï 200', 1012, 199, 200)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6738, CAST(N'2024-12-26' AS Date), N'«·Œ„Ì”', N'«· Ê»…', N'„‰ ’›Õ… 201 ≈·Ï 202', 1012, 201, 202)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6739, CAST(N'2024-12-28' AS Date), N'«·”» ', N'«· Ê»…', N'„‰ ’›Õ… 203 ≈·Ï 204', 1012, 203, 204)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6740, CAST(N'2024-12-29' AS Date), N'«·√Õœ', N'«· Ê»…', N'„‰ ’›Õ… 205 ≈·Ï 206', 1012, 205, 206)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6741, CAST(N'2024-12-30' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'„‰ ’›Õ… 207 ≈·Ï 208', 1012, 207, 208)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6742, CAST(N'2024-12-31' AS Date), N'«·À·«À«¡', N'ÌÊ‰”', N'„‰ ’›Õ… 209 ≈·Ï 210', 1012, 209, 210)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6743, CAST(N'2025-01-01' AS Date), N'«·√—»⁄«¡', N'ÌÊ‰”', N'„‰ ’›Õ… 211 ≈·Ï 212', 1012, 211, 212)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6744, CAST(N'2025-01-02' AS Date), N'«·Œ„Ì”', N'ÌÊ‰”', N'„‰ ’›Õ… 213 ≈·Ï 214', 1012, 213, 214)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6745, CAST(N'2025-01-04' AS Date), N'«·”» ', N'ÌÊ‰”', N'„‰ ’›Õ… 215 ≈·Ï 216', 1012, 215, 216)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6746, CAST(N'2025-01-05' AS Date), N'«·√Õœ', N'ÌÊ‰”', N'„‰ ’›Õ… 217 ≈·Ï 218', 1012, 217, 218)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6747, CAST(N'2025-01-06' AS Date), N'«·«À‰Ì‰', N'ÌÊ‰”', N'„‰ ’›Õ… 219 ≈·Ï 220', 1012, 219, 220)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6748, CAST(N'2025-01-07' AS Date), N'«·À·«À«¡', N'ÌÊ‰” / ÂÊœ', N'„‰ ’›Õ… 221 ≈·Ï 222', 1012, 221, 222)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6749, CAST(N'2025-01-08' AS Date), N'«·√—»⁄«¡', N'ÂÊœ', N'„‰ ’›Õ… 223 ≈·Ï 224', 1012, 223, 224)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6750, CAST(N'2025-01-09' AS Date), N'«·Œ„Ì”', N'ÂÊœ', N'„‰ ’›Õ… 225 ≈·Ï 226', 1012, 225, 226)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6751, CAST(N'2025-01-11' AS Date), N'«·”» ', N'ÂÊœ', N'„‰ ’›Õ… 227 ≈·Ï 228', 1012, 227, 228)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6752, CAST(N'2025-01-12' AS Date), N'«·√Õœ', N'ÂÊœ', N'„‰ ’›Õ… 229 ≈·Ï 230', 1012, 229, 230)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6753, CAST(N'2025-01-13' AS Date), N'«·«À‰Ì‰', N'ÂÊœ', N'„‰ ’›Õ… 231 ≈·Ï 232', 1012, 231, 232)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6754, CAST(N'2025-01-14' AS Date), N'«·À·«À«¡', N'ÂÊœ', N'„‰ ’›Õ… 233 ≈·Ï 234', 1012, 233, 234)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6755, CAST(N'2025-01-15' AS Date), N'«·√—»⁄«¡', N'ÂÊœ / ÌÊ”›', N'„‰ ’›Õ… 235 ≈·Ï 236', 1012, 235, 236)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6756, CAST(N'2025-01-16' AS Date), N'«·Œ„Ì”', N'ÌÊ”›', N'„‰ ’›Õ… 237 ≈·Ï 238', 1012, 237, 238)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6757, CAST(N'2025-01-18' AS Date), N'«·”» ', N'ÌÊ”›', N'„‰ ’›Õ… 239 ≈·Ï 240', 1012, 239, 240)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6758, CAST(N'2025-01-19' AS Date), N'«·√Õœ', N'ÌÊ”›', N'„‰ ’›Õ… 241 ≈·Ï 242', 1012, 241, 242)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6759, CAST(N'2025-01-20' AS Date), N'«·«À‰Ì‰', N'ÌÊ”›', N'„‰ ’›Õ… 243 ≈·Ï 244', 1012, 243, 244)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6760, CAST(N'2025-01-21' AS Date), N'«·À·«À«¡', N'ÌÊ”›', N'„‰ ’›Õ… 245 ≈·Ï 246', 1012, 245, 246)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6761, CAST(N'2025-01-22' AS Date), N'«·√—»⁄«¡', N'ÌÊ”›', N'„‰ ’›Õ… 247 ≈·Ï 248', 1012, 247, 248)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6762, CAST(N'2025-01-23' AS Date), N'«·Œ„Ì”', N'«·—⁄œ', N'„‰ ’›Õ… 249 ≈·Ï 250', 1012, 249, 250)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6763, CAST(N'2025-01-25' AS Date), N'«·”» ', N'«·—⁄œ', N'„‰ ’›Õ… 251 ≈·Ï 252', 1012, 251, 252)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6764, CAST(N'2025-01-26' AS Date), N'«·√Õœ', N'«·—⁄œ', N'„‰ ’›Õ… 253 ≈·Ï 254', 1012, 253, 254)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6765, CAST(N'2025-01-27' AS Date), N'«·«À‰Ì‰', N'«·—⁄œ / ≈»—«ÂÌ„', N'„‰ ’›Õ… 255 ≈·Ï 256', 1012, 255, 256)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6766, CAST(N'2025-01-28' AS Date), N'«·À·«À«¡', N'≈»—«ÂÌ„', N'„‰ ’›Õ… 257 ≈·Ï 258', 1012, 257, 258)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6767, CAST(N'2025-01-29' AS Date), N'«·√—»⁄«¡', N'≈»—«ÂÌ„', N'„‰ ’›Õ… 259 ≈·Ï 260', 1012, 259, 260)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6768, CAST(N'2025-01-30' AS Date), N'«·Œ„Ì”', N'≈»—«ÂÌ„', N'„‰ ’›Õ… 261 ≈·Ï 262', 1012, 261, 262)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6769, CAST(N'2025-02-01' AS Date), N'«·”» ', N'«·ÕÃ—', N'„‰ ’›Õ… 263 ≈·Ï 264', 1012, 263, 264)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6770, CAST(N'2025-02-02' AS Date), N'«·√Õœ', N'«·ÕÃ—', N'„‰ ’›Õ… 265 ≈·Ï 266', 1012, 265, 266)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6771, CAST(N'2025-02-03' AS Date), N'«·«À‰Ì‰', N'«·‰Õ·', N'„‰ ’›Õ… 267 ≈·Ï 268', 1012, 267, 268)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6772, CAST(N'2025-02-04' AS Date), N'«·À·«À«¡', N'«·‰Õ·', N'„‰ ’›Õ… 269 ≈·Ï 270', 1012, 269, 270)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6773, CAST(N'2025-02-05' AS Date), N'«·√—»⁄«¡', N'«·‰Õ·', N'„‰ ’›Õ… 271 ≈·Ï 272', 1012, 271, 272)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6774, CAST(N'2025-02-06' AS Date), N'«·Œ„Ì”', N'«·‰Õ·', N'„‰ ’›Õ… 273 ≈·Ï 274', 1012, 273, 274)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6775, CAST(N'2025-02-08' AS Date), N'«·”» ', N'«·‰Õ·', N'„‰ ’›Õ… 275 ≈·Ï 276', 1012, 275, 276)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6776, CAST(N'2025-02-09' AS Date), N'«·√Õœ', N'«·‰Õ·', N'„‰ ’›Õ… 277 ≈·Ï 278', 1012, 277, 278)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6777, CAST(N'2025-02-10' AS Date), N'«·«À‰Ì‰', N'«·‰Õ·', N'„‰ ’›Õ… 279 ≈·Ï 280', 1012, 279, 280)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6778, CAST(N'2025-02-11' AS Date), N'«·À·«À«¡', N'«·‰Õ·', N'„‰ ’›Õ… 281 ≈·Ï 282', 1012, 281, 282)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6779, CAST(N'2025-02-12' AS Date), N'«·√—»⁄«¡', N'«·≈”—«¡', N'„‰ ’›Õ… 283 ≈·Ï 284', 1012, 283, 284)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6780, CAST(N'2025-02-13' AS Date), N'«·Œ„Ì”', N'«·≈”—«¡', N'„‰ ’›Õ… 285 ≈·Ï 286', 1012, 285, 286)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6781, CAST(N'2025-02-15' AS Date), N'«·”» ', N'«·≈”—«¡', N'„‰ ’›Õ… 287 ≈·Ï 288', 1012, 287, 288)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6782, CAST(N'2025-02-16' AS Date), N'«·√Õœ', N'«·≈”—«¡', N'„‰ ’›Õ… 289 ≈·Ï 290', 1012, 289, 290)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6783, CAST(N'2025-02-17' AS Date), N'«·«À‰Ì‰', N'«·≈”—«¡', N'„‰ ’›Õ… 291 ≈·Ï 292', 1012, 291, 292)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6784, CAST(N'2025-02-18' AS Date), N'«·À·«À«¡', N'«·≈”—«¡ / «·ﬂÂ›', N'„‰ ’›Õ… 293 ≈·Ï 294', 1012, 293, 294)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6785, CAST(N'2025-02-19' AS Date), N'«·√—»⁄«¡', N'«·ﬂÂ›', N'„‰ ’›Õ… 295 ≈·Ï 296', 1012, 295, 296)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6786, CAST(N'2025-02-20' AS Date), N'«·Œ„Ì”', N'«·ﬂÂ›', N'„‰ ’›Õ… 297 ≈·Ï 298', 1012, 297, 298)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6787, CAST(N'2025-02-22' AS Date), N'«·”» ', N'«·ﬂÂ›', N'„‰ ’›Õ… 299 ≈·Ï 300', 1012, 299, 300)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6788, CAST(N'2025-02-23' AS Date), N'«·√Õœ', N'«·ﬂÂ›', N'„‰ ’›Õ… 301 ≈·Ï 302', 1012, 301, 302)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6789, CAST(N'2025-02-24' AS Date), N'«·«À‰Ì‰', N'«·ﬂÂ›', N'„‰ ’›Õ… 303 ≈·Ï 304', 1012, 303, 304)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6790, CAST(N'2025-02-25' AS Date), N'«·À·«À«¡', N'„—Ì„', N'„‰ ’›Õ… 305 ≈·Ï 306', 1012, 305, 306)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6791, CAST(N'2025-02-26' AS Date), N'«·√—»⁄«¡', N'„—Ì„', N'„‰ ’›Õ… 307 ≈·Ï 308', 1012, 307, 308)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6792, CAST(N'2025-02-27' AS Date), N'«·Œ„Ì”', N'„—Ì„', N'„‰ ’›Õ… 309 ≈·Ï 310', 1012, 309, 310)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6793, CAST(N'2025-03-01' AS Date), N'«·”» ', N'„—Ì„', N'„‰ ’›Õ… 311 ≈·Ï 312', 1012, 311, 312)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6794, CAST(N'2025-03-02' AS Date), N'«·√Õœ', N'ÿÂ', N'„‰ ’›Õ… 313 ≈·Ï 314', 1012, 313, 314)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6795, CAST(N'2025-03-03' AS Date), N'«·«À‰Ì‰', N'ÿÂ', N'„‰ ’›Õ… 315 ≈·Ï 316', 1012, 315, 316)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6796, CAST(N'2025-03-04' AS Date), N'«·À·«À«¡', N'ÿÂ', N'„‰ ’›Õ… 317 ≈·Ï 318', 1012, 317, 318)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6797, CAST(N'2025-03-05' AS Date), N'«·√—»⁄«¡', N'ÿÂ', N'„‰ ’›Õ… 319 ≈·Ï 320', 1012, 319, 320)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6798, CAST(N'2025-03-06' AS Date), N'«·Œ„Ì”', N'ÿÂ', N'„‰ ’›Õ… 321 ≈·Ï 322', 1012, 321, 322)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6799, CAST(N'2025-03-08' AS Date), N'«·”» ', N'«·√‰»Ì«¡', N'„‰ ’›Õ… 323 ≈·Ï 324', 1012, 323, 324)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6800, CAST(N'2025-03-09' AS Date), N'«·√Õœ', N'«·√‰»Ì«¡', N'„‰ ’›Õ… 325 ≈·Ï 326', 1012, 325, 326)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6801, CAST(N'2025-03-10' AS Date), N'«·«À‰Ì‰', N'«·√‰»Ì«¡', N'„‰ ’›Õ… 327 ≈·Ï 328', 1012, 327, 328)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6802, CAST(N'2025-03-11' AS Date), N'«·À·«À«¡', N'«·√‰»Ì«¡', N'„‰ ’›Õ… 329 ≈·Ï 330', 1012, 329, 330)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6803, CAST(N'2025-03-12' AS Date), N'«·√—»⁄«¡', N'«·√‰»Ì«¡', N'„‰ ’›Õ… 331 ≈·Ï 332', 1012, 331, 332)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6804, CAST(N'2025-03-13' AS Date), N'«·Œ„Ì”', N'«·ÕÃ', N'„‰ ’›Õ… 333 ≈·Ï 334', 1012, 333, 334)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6805, CAST(N'2025-03-15' AS Date), N'«·”» ', N'«·ÕÃ', N'„‰ ’›Õ… 335 ≈·Ï 336', 1012, 335, 336)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6806, CAST(N'2025-03-16' AS Date), N'«·√Õœ', N'«·ÕÃ', N'„‰ ’›Õ… 337 ≈·Ï 338', 1012, 337, 338)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6807, CAST(N'2025-03-17' AS Date), N'«·«À‰Ì‰', N'«·ÕÃ', N'„‰ ’›Õ… 339 ≈·Ï 340', 1012, 339, 340)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6808, CAST(N'2025-03-18' AS Date), N'«·À·«À«¡', N'«·ÕÃ', N'„‰ ’›Õ… 341 ≈·Ï 342', 1012, 341, 342)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6809, CAST(N'2025-03-19' AS Date), N'«·√—»⁄«¡', N'«·„ƒ„‰Ê‰', N'„‰ ’›Õ… 343 ≈·Ï 344', 1012, 343, 344)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6810, CAST(N'2025-03-20' AS Date), N'«·Œ„Ì”', N'«·„ƒ„‰Ê‰', N'„‰ ’›Õ… 345 ≈·Ï 346', 1012, 345, 346)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6811, CAST(N'2025-03-22' AS Date), N'«·”» ', N'«·„ƒ„‰Ê‰', N'„‰ ’›Õ… 347 ≈·Ï 348', 1012, 347, 348)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6812, CAST(N'2025-03-23' AS Date), N'«·√Õœ', N'«·„ƒ„‰Ê‰', N'„‰ ’›Õ… 349 ≈·Ï 350', 1012, 349, 350)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6813, CAST(N'2025-03-24' AS Date), N'«·«À‰Ì‰', N'«·‰Ê—', N'„‰ ’›Õ… 351 ≈·Ï 352', 1012, 351, 352)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6814, CAST(N'2025-03-25' AS Date), N'«·À·«À«¡', N'«·‰Ê—', N'„‰ ’›Õ… 353 ≈·Ï 354', 1012, 353, 354)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6815, CAST(N'2025-03-26' AS Date), N'«·√—»⁄«¡', N'«·‰Ê—', N'„‰ ’›Õ… 355 ≈·Ï 356', 1012, 355, 356)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6816, CAST(N'2025-03-27' AS Date), N'«·Œ„Ì”', N'«·‰Ê—', N'„‰ ’›Õ… 357 ≈·Ï 358', 1012, 357, 358)
GO
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6817, CAST(N'2025-03-29' AS Date), N'«·”» ', N'«·‰Ê— / «·›—ﬁ«‰', N'„‰ ’›Õ… 359 ≈·Ï 360', 1012, 359, 360)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6818, CAST(N'2025-03-30' AS Date), N'«·√Õœ', N'«·›—ﬁ«‰', N'„‰ ’›Õ… 361 ≈·Ï 362', 1012, 361, 362)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6819, CAST(N'2025-03-31' AS Date), N'«·«À‰Ì‰', N'«·›—ﬁ«‰', N'„‰ ’›Õ… 363 ≈·Ï 364', 1012, 363, 364)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6820, CAST(N'2025-04-01' AS Date), N'«·À·«À«¡', N'«·›—ﬁ«‰', N'„‰ ’›Õ… 365 ≈·Ï 366', 1012, 365, 366)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6821, CAST(N'2025-04-02' AS Date), N'«·√—»⁄«¡', N'«·‘⁄—«¡', N'„‰ ’›Õ… 367 ≈·Ï 368', 1012, 367, 368)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6822, CAST(N'2025-04-03' AS Date), N'«·Œ„Ì”', N'«·‘⁄—«¡', N'„‰ ’›Õ… 369 ≈·Ï 370', 1012, 369, 370)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6823, CAST(N'2025-04-05' AS Date), N'«·”» ', N'«·‘⁄—«¡', N'„‰ ’›Õ… 371 ≈·Ï 372', 1012, 371, 372)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6824, CAST(N'2025-04-06' AS Date), N'«·√Õœ', N'«·‘⁄—«¡', N'„‰ ’›Õ… 373 ≈·Ï 374', 1012, 373, 374)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6825, CAST(N'2025-04-07' AS Date), N'«·«À‰Ì‰', N'«·‘⁄—«¡', N'„‰ ’›Õ… 375 ≈·Ï 376', 1012, 375, 376)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6826, CAST(N'2025-04-08' AS Date), N'«·À·«À«¡', N'«·‰„·', N'„‰ ’›Õ… 377 ≈·Ï 378', 1012, 377, 378)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6827, CAST(N'2025-04-09' AS Date), N'«·√—»⁄«¡', N'«·‰„·', N'„‰ ’›Õ… 379 ≈·Ï 380', 1012, 379, 380)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6828, CAST(N'2025-04-10' AS Date), N'«·Œ„Ì”', N'«·‰„·', N'„‰ ’›Õ… 381 ≈·Ï 382', 1012, 381, 382)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6829, CAST(N'2025-04-12' AS Date), N'«·”» ', N'«·‰„·', N'„‰ ’›Õ… 383 ≈·Ï 384', 1012, 383, 384)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6830, CAST(N'2025-04-13' AS Date), N'«·√Õœ', N'«·‰„· / «·ﬁ’’', N'„‰ ’›Õ… 385 ≈·Ï 386', 1012, 385, 386)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6831, CAST(N'2025-04-14' AS Date), N'«·«À‰Ì‰', N'«·ﬁ’’', N'„‰ ’›Õ… 387 ≈·Ï 388', 1012, 387, 388)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6832, CAST(N'2025-04-15' AS Date), N'«·À·«À«¡', N'«·ﬁ’’', N'„‰ ’›Õ… 389 ≈·Ï 390', 1012, 389, 390)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6833, CAST(N'2025-04-16' AS Date), N'«·√—»⁄«¡', N'«·ﬁ’’', N'„‰ ’›Õ… 391 ≈·Ï 392', 1012, 391, 392)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6834, CAST(N'2025-04-17' AS Date), N'«·Œ„Ì”', N'«·ﬁ’’', N'„‰ ’›Õ… 393 ≈·Ï 394', 1012, 393, 394)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6835, CAST(N'2025-04-19' AS Date), N'«·”» ', N'«·ﬁ’’', N'„‰ ’›Õ… 395 ≈·Ï 396', 1012, 395, 396)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6836, CAST(N'2025-04-20' AS Date), N'«·√Õœ', N'«·⁄‰ﬂ»Ê ', N'„‰ ’›Õ… 397 ≈·Ï 398', 1012, 397, 398)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6837, CAST(N'2025-04-21' AS Date), N'«·«À‰Ì‰', N'«·⁄‰ﬂ»Ê ', N'„‰ ’›Õ… 399 ≈·Ï 400', 1012, 399, 400)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6838, CAST(N'2025-04-22' AS Date), N'«·À·«À«¡', N'«·⁄‰ﬂ»Ê ', N'„‰ ’›Õ… 401 ≈·Ï 402', 1012, 401, 402)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6839, CAST(N'2025-04-23' AS Date), N'«·√—»⁄«¡', N'«·⁄‰ﬂ»Ê ', N'„‰ ’›Õ… 403 ≈·Ï 404', 1012, 403, 404)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6840, CAST(N'2025-04-24' AS Date), N'«·Œ„Ì”', N'«·—Ê„', N'„‰ ’›Õ… 405 ≈·Ï 406', 1012, 405, 406)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6841, CAST(N'2025-04-26' AS Date), N'«·”» ', N'«·—Ê„', N'„‰ ’›Õ… 407 ≈·Ï 408', 1012, 407, 408)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6842, CAST(N'2025-04-27' AS Date), N'«·√Õœ', N'«·—Ê„', N'„‰ ’›Õ… 409 ≈·Ï 410', 1012, 409, 410)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6843, CAST(N'2025-04-28' AS Date), N'«·«À‰Ì‰', N'·ﬁ„«‰', N'„‰ ’›Õ… 411 ≈·Ï 412', 1012, 411, 412)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6844, CAST(N'2025-04-29' AS Date), N'«·À·«À«¡', N'·ﬁ„«‰', N'„‰ ’›Õ… 413 ≈·Ï 414', 1012, 413, 414)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6845, CAST(N'2025-04-30' AS Date), N'«·√—»⁄«¡', N'«·”Ãœ…', N'„‰ ’›Õ… 415 ≈·Ï 416', 1012, 415, 416)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6846, CAST(N'2025-05-01' AS Date), N'«·Œ„Ì”', N'«·”Ãœ…', N'„‰ ’›Õ… 417 ≈·Ï 418', 1012, 417, 418)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6847, CAST(N'2025-05-03' AS Date), N'«·”» ', N'«·«Õ“«»', N'„‰ ’›Õ… 419 ≈·Ï 420', 1012, 419, 420)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6848, CAST(N'2025-05-04' AS Date), N'«·√Õœ', N'«·«Õ“«»', N'„‰ ’›Õ… 421 ≈·Ï 422', 1012, 421, 422)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6849, CAST(N'2025-05-05' AS Date), N'«·«À‰Ì‰', N'«·«Õ“«»', N'„‰ ’›Õ… 423 ≈·Ï 424', 1012, 423, 424)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6850, CAST(N'2025-05-06' AS Date), N'«·À·«À«¡', N'«·«Õ“«»', N'„‰ ’›Õ… 425 ≈·Ï 426', 1012, 425, 426)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6851, CAST(N'2025-05-07' AS Date), N'«·√—»⁄«¡', N'«·«Õ“«»', N'„‰ ’›Õ… 427 ≈·Ï 428', 1012, 427, 428)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6852, CAST(N'2025-05-08' AS Date), N'«·Œ„Ì”', N'”»√', N'„‰ ’›Õ… 429 ≈·Ï 430', 1012, 429, 430)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6853, CAST(N'2025-05-10' AS Date), N'«·”» ', N'”»√', N'„‰ ’›Õ… 431 ≈·Ï 432', 1012, 431, 432)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6854, CAST(N'2025-05-11' AS Date), N'«·√Õœ', N'”»√', N'„‰ ’›Õ… 433 ≈·Ï 434', 1012, 433, 434)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6855, CAST(N'2025-05-12' AS Date), N'«·«À‰Ì‰', N'›«ÿ—', N'„‰ ’›Õ… 435 ≈·Ï 436', 1012, 435, 436)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6856, CAST(N'2025-05-13' AS Date), N'«·À·«À«¡', N'›«ÿ—', N'„‰ ’›Õ… 437 ≈·Ï 438', 1012, 437, 438)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6857, CAST(N'2025-05-14' AS Date), N'«·√—»⁄«¡', N'›«ÿ—', N'„‰ ’›Õ… 439 ≈·Ï 440', 1012, 439, 440)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6858, CAST(N'2025-05-15' AS Date), N'«·Œ„Ì”', N'Ì”', N'„‰ ’›Õ… 441 ≈·Ï 442', 1012, 441, 442)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6859, CAST(N'2025-05-17' AS Date), N'«·”» ', N'Ì”', N'„‰ ’›Õ… 443 ≈·Ï 444', 1012, 443, 444)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6860, CAST(N'2025-05-18' AS Date), N'«·√Õœ', N'Ì”', N'„‰ ’›Õ… 445 ≈·Ï 446', 1012, 445, 446)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6861, CAST(N'2025-05-19' AS Date), N'«·«À‰Ì‰', N'«·’«›« ', N'„‰ ’›Õ… 447 ≈·Ï 448', 1012, 447, 448)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6862, CAST(N'2025-05-20' AS Date), N'«·À·«À«¡', N'«·’«›« ', N'„‰ ’›Õ… 449 ≈·Ï 450', 1012, 449, 450)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6863, CAST(N'2025-05-21' AS Date), N'«·√—»⁄«¡', N'«·’«›« ', N'„‰ ’›Õ… 451 ≈·Ï 452', 1012, 451, 452)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6864, CAST(N'2025-05-22' AS Date), N'«·Œ„Ì”', N'’', N'„‰ ’›Õ… 453 ≈·Ï 454', 1012, 453, 454)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6865, CAST(N'2025-05-24' AS Date), N'«·”» ', N'’', N'„‰ ’›Õ… 455 ≈·Ï 456', 1012, 455, 456)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6866, CAST(N'2025-05-25' AS Date), N'«·√Õœ', N'’', N'„‰ ’›Õ… 457 ≈·Ï 458', 1012, 457, 458)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6867, CAST(N'2025-05-26' AS Date), N'«·«À‰Ì‰', N'«·“„—', N'„‰ ’›Õ… 459 ≈·Ï 460', 1012, 459, 460)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6868, CAST(N'2025-05-27' AS Date), N'«·À·«À«¡', N'«·“„—', N'„‰ ’›Õ… 461 ≈·Ï 462', 1012, 461, 462)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6869, CAST(N'2025-05-28' AS Date), N'«·√—»⁄«¡', N'«·“„—', N'„‰ ’›Õ… 463 ≈·Ï 464', 1012, 463, 464)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6870, CAST(N'2025-05-29' AS Date), N'«·Œ„Ì”', N'«·“„—', N'„‰ ’›Õ… 465 ≈·Ï 466', 1012, 465, 466)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6871, CAST(N'2025-05-31' AS Date), N'«·”» ', N'«·“„— / €«›—', N'„‰ ’›Õ… 467 ≈·Ï 468', 1012, 467, 468)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6872, CAST(N'2025-06-01' AS Date), N'«·√Õœ', N'€«›—', N'„‰ ’›Õ… 469 ≈·Ï 470', 1012, 469, 470)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6873, CAST(N'2025-06-02' AS Date), N'«·«À‰Ì‰', N'€«›—', N'„‰ ’›Õ… 471 ≈·Ï 472', 1012, 471, 472)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6874, CAST(N'2025-06-03' AS Date), N'«·À·«À«¡', N'€«›—', N'„‰ ’›Õ… 473 ≈·Ï 474', 1012, 473, 474)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6875, CAST(N'2025-06-04' AS Date), N'«·√—»⁄«¡', N'€«›—', N'„‰ ’›Õ… 475 ≈·Ï 476', 1012, 475, 476)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6876, CAST(N'2025-06-05' AS Date), N'«·Œ„Ì”', N'›’· ', N'„‰ ’›Õ… 477 ≈·Ï 478', 1012, 477, 478)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6877, CAST(N'2025-06-07' AS Date), N'«·”» ', N'›’· ', N'„‰ ’›Õ… 479 ≈·Ï 480', 1012, 479, 480)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6878, CAST(N'2025-06-08' AS Date), N'«·√Õœ', N'›’· ', N'„‰ ’›Õ… 481 ≈·Ï 482', 1012, 481, 482)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6879, CAST(N'2025-06-09' AS Date), N'«·«À‰Ì‰', N'«·‘Ê—Ï', N'„‰ ’›Õ… 483 ≈·Ï 484', 1012, 483, 484)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6880, CAST(N'2025-06-10' AS Date), N'«·À·«À«¡', N'«·‘Ê—Ï', N'„‰ ’›Õ… 485 ≈·Ï 486', 1012, 485, 486)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6881, CAST(N'2025-06-11' AS Date), N'«·√—»⁄«¡', N'«·‘Ê—Ï', N'„‰ ’›Õ… 487 ≈·Ï 488', 1012, 487, 488)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6882, CAST(N'2025-06-12' AS Date), N'«·Œ„Ì”', N'«·‘Ê—Ï / «·“Œ—›', N'„‰ ’›Õ… 489 ≈·Ï 490', 1012, 489, 490)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6883, CAST(N'2025-06-14' AS Date), N'«·”» ', N'«·“Œ—›', N'„‰ ’›Õ… 491 ≈·Ï 492', 1012, 491, 492)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6884, CAST(N'2025-06-15' AS Date), N'«·√Õœ', N'«·“Œ—›', N'„‰ ’›Õ… 493 ≈·Ï 494', 1012, 493, 494)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6885, CAST(N'2025-06-16' AS Date), N'«·«À‰Ì‰', N'«·“Œ—›', N'„‰ ’›Õ… 495 ≈·Ï 496', 1012, 495, 496)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6886, CAST(N'2025-06-17' AS Date), N'«·À·«À«¡', N'«·œŒ«‰', N'„‰ ’›Õ… 497 ≈·Ï 498', 1012, 497, 498)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6887, CAST(N'2025-06-18' AS Date), N'«·√—»⁄«¡', N'«·Ã«ÀÌ…', N'„‰ ’›Õ… 499 ≈·Ï 500', 1012, 499, 500)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6888, CAST(N'2025-06-19' AS Date), N'«·Œ„Ì”', N'«·Ã«ÀÌ…', N'„‰ ’›Õ… 501 ≈·Ï 502', 1012, 501, 502)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6889, CAST(N'2025-06-21' AS Date), N'«·”» ', N'«·√Õﬁ«›', N'„‰ ’›Õ… 503 ≈·Ï 504', 1012, 503, 504)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6890, CAST(N'2025-06-22' AS Date), N'«·√Õœ', N'«·√Õﬁ«›', N'„‰ ’›Õ… 505 ≈·Ï 506', 1012, 505, 506)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6891, CAST(N'2025-06-23' AS Date), N'«·«À‰Ì‰', N'„Õ„œ', N'„‰ ’›Õ… 507 ≈·Ï 508', 1012, 507, 508)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6892, CAST(N'2025-06-24' AS Date), N'«·À·«À«¡', N'„Õ„œ', N'„‰ ’›Õ… 509 ≈·Ï 510', 1012, 509, 510)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6893, CAST(N'2025-06-25' AS Date), N'«·√—»⁄«¡', N'«·› Õ', N'„‰ ’›Õ… 511 ≈·Ï 512', 1012, 511, 512)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6894, CAST(N'2025-06-26' AS Date), N'«·Œ„Ì”', N'«·› Õ', N'„‰ ’›Õ… 513 ≈·Ï 514', 1012, 513, 514)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6895, CAST(N'2025-06-28' AS Date), N'«·”» ', N'«·› Õ / «·ÕÃ—« ', N'„‰ ’›Õ… 515 ≈·Ï 516', 1012, 515, 516)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6896, CAST(N'2025-06-29' AS Date), N'«·√Õœ', N'«·ÕÃ—« ', N'„‰ ’›Õ… 517 ≈·Ï 518', 1012, 517, 518)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (6897, CAST(N'2025-06-30' AS Date), N'«·«À‰Ì‰', N'ﬁ', N'„‰ ’›Õ… 519 ≈·Ï 520', 1012, 519, 520)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8001, CAST(N'2024-09-01' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'„‰ ’›Õ… 31 ≈·Ï 34', 2010, 31, 34)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8002, CAST(N'2024-09-02' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'„‰ ’›Õ… 35 ≈·Ï 38', 2010, 35, 38)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8003, CAST(N'2024-09-03' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'„‰ ’›Õ… 39 ≈·Ï 42', 2010, 39, 42)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8004, CAST(N'2024-09-04' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'„‰ ’›Õ… 43 ≈·Ï 46', 2010, 43, 46)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8005, CAST(N'2024-09-05' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'„‰ ’›Õ… 47 ≈·Ï 50', 2010, 47, 50)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8006, CAST(N'2024-09-07' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 51 ≈·Ï 54', 2010, 51, 54)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8007, CAST(N'2024-09-08' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 55 ≈·Ï 58', 2010, 55, 58)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8008, CAST(N'2024-09-09' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 59 ≈·Ï 62', 2010, 59, 62)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8009, CAST(N'2024-09-10' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 63 ≈·Ï 66', 2010, 63, 66)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8010, CAST(N'2024-09-11' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 67 ≈·Ï 70', 2010, 67, 70)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8011, CAST(N'2024-09-12' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 71 ≈·Ï 74', 2010, 71, 74)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8012, CAST(N'2024-09-14' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'„‰ ’›Õ… 75 ≈·Ï 78', 2010, 75, 78)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8013, CAST(N'2024-09-15' AS Date), N'«·√Õœ', N'«·‰”«¡', N'„‰ ’›Õ… 79 ≈·Ï 82', 2010, 79, 82)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8014, CAST(N'2024-09-16' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'„‰ ’›Õ… 83 ≈·Ï 86', 2010, 83, 86)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8015, CAST(N'2024-09-17' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'„‰ ’›Õ… 87 ≈·Ï 90', 2010, 87, 90)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8016, CAST(N'2024-09-18' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'„‰ ’›Õ… 91 ≈·Ï 94', 2010, 91, 94)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8017, CAST(N'2024-09-19' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'„‰ ’›Õ… 95 ≈·Ï 98', 2010, 95, 98)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8018, CAST(N'2024-09-21' AS Date), N'«·”» ', N'«·‰”«¡', N'„‰ ’›Õ… 99 ≈·Ï 102', 2010, 99, 102)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8019, CAST(N'2024-09-22' AS Date), N'«·√Õœ', N'«·‰”«¡', N'„‰ ’›Õ… 103 ≈·Ï 106', 2010, 103, 106)
GO
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8020, CAST(N'2024-09-23' AS Date), N'«·«À‰Ì‰', N'«·„«∆œ…', N'„‰ ’›Õ… 107 ≈·Ï 110', 2010, 107, 110)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8021, CAST(N'2024-09-24' AS Date), N'«·À·«À«¡', N'«·„«∆œ…', N'„‰ ’›Õ… 111 ≈·Ï 114', 2010, 111, 114)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8022, CAST(N'2024-09-25' AS Date), N'«·√—»⁄«¡', N'«·„«∆œ…', N'„‰ ’›Õ… 115 ≈·Ï 118', 2010, 115, 118)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8023, CAST(N'2024-09-26' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'„‰ ’›Õ… 119 ≈·Ï 122', 2010, 119, 122)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8024, CAST(N'2024-09-28' AS Date), N'«·”» ', N'«·„«∆œ…', N'„‰ ’›Õ… 123 ≈·Ï 126', 2010, 123, 126)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8025, CAST(N'2024-09-29' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'„‰ ’›Õ… 127 ≈·Ï 130', 2010, 127, 130)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8026, CAST(N'2024-09-30' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'„‰ ’›Õ… 131 ≈·Ï 134', 2010, 131, 134)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8027, CAST(N'2024-10-01' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'„‰ ’›Õ… 135 ≈·Ï 138', 2010, 135, 138)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8028, CAST(N'2024-10-02' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'„‰ ’›Õ… 139 ≈·Ï 142', 2010, 139, 142)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8029, CAST(N'2024-10-03' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'„‰ ’›Õ… 143 ≈·Ï 146', 2010, 143, 146)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8030, CAST(N'2024-10-05' AS Date), N'«·”» ', N'«·√‰⁄«„', N'„‰ ’›Õ… 147 ≈·Ï 150', 2010, 147, 150)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8031, CAST(N'2024-10-06' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'„‰ ’›Õ… 151 ≈·Ï 154', 2010, 151, 154)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8032, CAST(N'2024-10-07' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'„‰ ’›Õ… 155 ≈·Ï 158', 2010, 155, 158)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8033, CAST(N'2024-10-08' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'„‰ ’›Õ… 159 ≈·Ï 162', 2010, 159, 162)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8034, CAST(N'2024-10-09' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'„‰ ’›Õ… 163 ≈·Ï 166', 2010, 163, 166)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8035, CAST(N'2024-10-10' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'„‰ ’›Õ… 167 ≈·Ï 170', 2010, 167, 170)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8036, CAST(N'2024-10-12' AS Date), N'«·”» ', N'«·√⁄—«›', N'„‰ ’›Õ… 171 ≈·Ï 174', 2010, 171, 174)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8037, CAST(N'2024-10-13' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'„‰ ’›Õ… 175 ≈·Ï 178', 2010, 175, 178)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8038, CAST(N'2024-10-14' AS Date), N'«·«À‰Ì‰', N'«·√‰›«·', N'„‰ ’›Õ… 179 ≈·Ï 182', 2010, 179, 182)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8039, CAST(N'2024-10-15' AS Date), N'«·À·«À«¡', N'«·√‰›«·', N'„‰ ’›Õ… 183 ≈·Ï 186', 2010, 183, 186)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8040, CAST(N'2024-10-16' AS Date), N'«·√—»⁄«¡', N'«· Ê»…', N'„‰ ’›Õ… 187 ≈·Ï 190', 2010, 187, 190)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8041, CAST(N'2024-10-17' AS Date), N'«·Œ„Ì”', N'«· Ê»…', N'„‰ ’›Õ… 191 ≈·Ï 194', 2010, 191, 194)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8042, CAST(N'2024-10-19' AS Date), N'«·”» ', N'«· Ê»…', N'„‰ ’›Õ… 195 ≈·Ï 198', 2010, 195, 198)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8043, CAST(N'2024-10-20' AS Date), N'«·√Õœ', N'«· Ê»…', N'„‰ ’›Õ… 199 ≈·Ï 202', 2010, 199, 202)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8044, CAST(N'2024-10-21' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'„‰ ’›Õ… 203 ≈·Ï 206', 2010, 203, 206)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8045, CAST(N'2024-10-22' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'„‰ ’›Õ… 207 ≈·Ï 210', 2010, 207, 210)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8046, CAST(N'2024-10-23' AS Date), N'«·√—»⁄«¡', N'ÌÊ‰”', N'„‰ ’›Õ… 211 ≈·Ï 214', 2010, 211, 214)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8047, CAST(N'2024-10-24' AS Date), N'«·Œ„Ì”', N'ÌÊ‰”', N'„‰ ’›Õ… 215 ≈·Ï 218', 2010, 215, 218)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8048, CAST(N'2024-10-26' AS Date), N'«·”» ', N'ÌÊ‰”', N'„‰ ’›Õ… 219 ≈·Ï 222', 2010, 219, 222)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8049, CAST(N'2024-10-27' AS Date), N'«·√Õœ', N'ÂÊœ', N'„‰ ’›Õ… 223 ≈·Ï 226', 2010, 223, 226)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8050, CAST(N'2024-10-28' AS Date), N'«·«À‰Ì‰', N'ÂÊœ', N'„‰ ’›Õ… 227 ≈·Ï 230', 2010, 227, 230)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8051, CAST(N'2024-10-29' AS Date), N'«·À·«À«¡', N'ÂÊœ', N'„‰ ’›Õ… 231 ≈·Ï 234', 2010, 231, 234)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8052, CAST(N'2024-10-30' AS Date), N'«·√—»⁄«¡', N'ÂÊœ / ÌÊ”›', N'„‰ ’›Õ… 235 ≈·Ï 238', 2010, 235, 238)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8053, CAST(N'2024-10-31' AS Date), N'«·Œ„Ì”', N'ÌÊ”›', N'„‰ ’›Õ… 239 ≈·Ï 242', 2010, 239, 242)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8054, CAST(N'2024-11-02' AS Date), N'«·”» ', N'ÌÊ”›', N'„‰ ’›Õ… 243 ≈·Ï 246', 2010, 243, 246)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8055, CAST(N'2024-11-03' AS Date), N'«·√Õœ', N'ÌÊ”›', N'„‰ ’›Õ… 247 ≈·Ï 250', 2010, 247, 250)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8056, CAST(N'2024-11-04' AS Date), N'«·«À‰Ì‰', N'«·—⁄œ', N'„‰ ’›Õ… 251 ≈·Ï 254', 2010, 251, 254)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8057, CAST(N'2024-11-05' AS Date), N'«·À·«À«¡', N'«·—⁄œ / ≈»—«ÂÌ„', N'„‰ ’›Õ… 255 ≈·Ï 258', 2010, 255, 258)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8058, CAST(N'2024-11-06' AS Date), N'«·√—»⁄«¡', N'≈»—«ÂÌ„', N'„‰ ’›Õ… 259 ≈·Ï 262', 2010, 259, 262)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8059, CAST(N'2024-11-07' AS Date), N'«·Œ„Ì”', N'«·ÕÃ—', N'„‰ ’›Õ… 263 ≈·Ï 266', 2010, 263, 266)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8060, CAST(N'2024-11-09' AS Date), N'«·”» ', N'«·‰Õ·', N'„‰ ’›Õ… 267 ≈·Ï 270', 2010, 267, 270)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8061, CAST(N'2024-11-10' AS Date), N'«·√Õœ', N'«·‰Õ·', N'„‰ ’›Õ… 271 ≈·Ï 274', 2010, 271, 274)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8062, CAST(N'2024-11-11' AS Date), N'«·«À‰Ì‰', N'«·‰Õ·', N'„‰ ’›Õ… 275 ≈·Ï 278', 2010, 275, 278)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8063, CAST(N'2024-11-12' AS Date), N'«·À·«À«¡', N'«·‰Õ·', N'„‰ ’›Õ… 279 ≈·Ï 282', 2010, 279, 282)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8064, CAST(N'2024-11-13' AS Date), N'«·√—»⁄«¡', N'«·≈”—«¡', N'„‰ ’›Õ… 283 ≈·Ï 286', 2010, 283, 286)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8065, CAST(N'2024-11-14' AS Date), N'«·Œ„Ì”', N'«·≈”—«¡', N'„‰ ’›Õ… 287 ≈·Ï 290', 2010, 287, 290)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8066, CAST(N'2024-11-16' AS Date), N'«·”» ', N'«·≈”—«¡', N'„‰ ’›Õ… 291 ≈·Ï 294', 2010, 291, 294)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8067, CAST(N'2024-11-17' AS Date), N'«·√Õœ', N'«·ﬂÂ›', N'„‰ ’›Õ… 295 ≈·Ï 298', 2010, 295, 298)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8068, CAST(N'2024-11-18' AS Date), N'«·«À‰Ì‰', N'«·ﬂÂ›', N'„‰ ’›Õ… 299 ≈·Ï 302', 2010, 299, 302)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8069, CAST(N'2024-11-19' AS Date), N'«·À·«À«¡', N'«·ﬂÂ›', N'„‰ ’›Õ… 303 ≈·Ï 306', 2010, 303, 306)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8070, CAST(N'2024-11-20' AS Date), N'«·√—»⁄«¡', N'„—Ì„', N'„‰ ’›Õ… 307 ≈·Ï 310', 2010, 307, 310)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8071, CAST(N'2024-11-21' AS Date), N'«·Œ„Ì”', N'„—Ì„', N'„‰ ’›Õ… 311 ≈·Ï 314', 2010, 311, 314)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8072, CAST(N'2024-11-23' AS Date), N'«·”» ', N'ÿÂ', N'„‰ ’›Õ… 315 ≈·Ï 318', 2010, 315, 318)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8073, CAST(N'2024-11-24' AS Date), N'«·√Õœ', N'ÿÂ', N'„‰ ’›Õ… 319 ≈·Ï 322', 2010, 319, 322)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8074, CAST(N'2024-11-25' AS Date), N'«·«À‰Ì‰', N'«·√‰»Ì«¡', N'„‰ ’›Õ… 323 ≈·Ï 326', 2010, 323, 326)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8075, CAST(N'2024-11-26' AS Date), N'«·À·«À«¡', N'«·√‰»Ì«¡', N'„‰ ’›Õ… 327 ≈·Ï 330', 2010, 327, 330)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8076, CAST(N'2024-11-27' AS Date), N'«·√—»⁄«¡', N'«·√‰»Ì«¡', N'„‰ ’›Õ… 331 ≈·Ï 334', 2010, 331, 334)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8077, CAST(N'2024-11-28' AS Date), N'«·Œ„Ì”', N'«·ÕÃ', N'„‰ ’›Õ… 335 ≈·Ï 338', 2010, 335, 338)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8078, CAST(N'2024-11-30' AS Date), N'«·”» ', N'«·ÕÃ', N'„‰ ’›Õ… 339 ≈·Ï 342', 2010, 339, 342)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8079, CAST(N'2024-12-01' AS Date), N'«·√Õœ', N'«·„ƒ„‰Ê‰', N'„‰ ’›Õ… 343 ≈·Ï 346', 2010, 343, 346)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8080, CAST(N'2024-12-02' AS Date), N'«·«À‰Ì‰', N'«·„ƒ„‰Ê‰', N'„‰ ’›Õ… 347 ≈·Ï 350', 2010, 347, 350)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8081, CAST(N'2024-12-03' AS Date), N'«·À·«À«¡', N'«·‰Ê—', N'„‰ ’›Õ… 351 ≈·Ï 354', 2010, 351, 354)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8082, CAST(N'2024-12-04' AS Date), N'«·√—»⁄«¡', N'«·‰Ê—', N'„‰ ’›Õ… 355 ≈·Ï 358', 2010, 355, 358)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8083, CAST(N'2024-12-05' AS Date), N'«·Œ„Ì”', N'«·‰Ê— / «·›—ﬁ«‰', N'„‰ ’›Õ… 359 ≈·Ï 362', 2010, 359, 362)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8084, CAST(N'2024-12-07' AS Date), N'«·”» ', N'«·›—ﬁ«‰', N'„‰ ’›Õ… 363 ≈·Ï 366', 2010, 363, 366)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8085, CAST(N'2024-12-08' AS Date), N'«·√Õœ', N'«·‘⁄—«¡', N'„‰ ’›Õ… 367 ≈·Ï 370', 2010, 367, 370)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8086, CAST(N'2024-12-09' AS Date), N'«·«À‰Ì‰', N'«·‘⁄—«¡', N'„‰ ’›Õ… 371 ≈·Ï 374', 2010, 371, 374)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8087, CAST(N'2024-12-10' AS Date), N'«·À·«À«¡', N'«·‘⁄—«¡', N'„‰ ’›Õ… 375 ≈·Ï 378', 2010, 375, 378)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8088, CAST(N'2024-12-11' AS Date), N'«·√—»⁄«¡', N'«·‰„·', N'„‰ ’›Õ… 379 ≈·Ï 382', 2010, 379, 382)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8089, CAST(N'2024-12-12' AS Date), N'«·Œ„Ì”', N'«·‰„·', N'„‰ ’›Õ… 383 ≈·Ï 386', 2010, 383, 386)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8090, CAST(N'2024-12-14' AS Date), N'«·”» ', N'«·ﬁ’’', N'„‰ ’›Õ… 387 ≈·Ï 390', 2010, 387, 390)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8091, CAST(N'2024-12-15' AS Date), N'«·√Õœ', N'«·ﬁ’’', N'„‰ ’›Õ… 391 ≈·Ï 394', 2010, 391, 394)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8092, CAST(N'2024-12-16' AS Date), N'«·«À‰Ì‰', N'«·ﬁ’’', N'„‰ ’›Õ… 395 ≈·Ï 398', 2010, 395, 398)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8093, CAST(N'2024-12-17' AS Date), N'«·À·«À«¡', N'«·⁄‰ﬂ»Ê ', N'„‰ ’›Õ… 399 ≈·Ï 402', 2010, 399, 402)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8094, CAST(N'2024-12-18' AS Date), N'«·√—»⁄«¡', N'«·⁄‰ﬂ»Ê ', N'„‰ ’›Õ… 403 ≈·Ï 406', 2010, 403, 406)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8095, CAST(N'2024-12-19' AS Date), N'«·Œ„Ì”', N'«·—Ê„', N'„‰ ’›Õ… 407 ≈·Ï 410', 2010, 407, 410)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8096, CAST(N'2024-12-21' AS Date), N'«·”» ', N'·ﬁ„«‰', N'„‰ ’›Õ… 411 ≈·Ï 414', 2010, 411, 414)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8097, CAST(N'2024-12-22' AS Date), N'«·√Õœ', N'«·”Ãœ…', N'„‰ ’›Õ… 415 ≈·Ï 418', 2010, 415, 418)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8098, CAST(N'2024-12-23' AS Date), N'«·«À‰Ì‰', N'«·«Õ“«»', N'„‰ ’›Õ… 419 ≈·Ï 422', 2010, 419, 422)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8099, CAST(N'2024-12-24' AS Date), N'«·À·«À«¡', N'«·«Õ“«»', N'„‰ ’›Õ… 423 ≈·Ï 426', 2010, 423, 426)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8100, CAST(N'2024-12-25' AS Date), N'«·√—»⁄«¡', N'«·«Õ“«»', N'„‰ ’›Õ… 427 ≈·Ï 430', 2010, 427, 430)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8101, CAST(N'2024-12-26' AS Date), N'«·Œ„Ì”', N'”»√', N'„‰ ’›Õ… 431 ≈·Ï 434', 2010, 431, 434)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8102, CAST(N'2024-12-28' AS Date), N'«·”» ', N'›«ÿ—', N'„‰ ’›Õ… 435 ≈·Ï 438', 2010, 435, 438)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8103, CAST(N'2024-12-29' AS Date), N'«·√Õœ', N'›«ÿ—', N'„‰ ’›Õ… 439 ≈·Ï 442', 2010, 439, 442)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8104, CAST(N'2024-12-30' AS Date), N'«·«À‰Ì‰', N'Ì”', N'„‰ ’›Õ… 443 ≈·Ï 446', 2010, 443, 446)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8105, CAST(N'2024-12-31' AS Date), N'«·À·«À«¡', N'«·’«›« ', N'„‰ ’›Õ… 447 ≈·Ï 450', 2010, 447, 450)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8106, CAST(N'2025-01-01' AS Date), N'«·√—»⁄«¡', N'«·’«›« ', N'„‰ ’›Õ… 451 ≈·Ï 454', 2010, 451, 454)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8107, CAST(N'2025-01-02' AS Date), N'«·Œ„Ì”', N'’', N'„‰ ’›Õ… 455 ≈·Ï 458', 2010, 455, 458)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8108, CAST(N'2025-01-04' AS Date), N'«·”» ', N'«·“„—', N'„‰ ’›Õ… 459 ≈·Ï 462', 2010, 459, 462)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8109, CAST(N'2025-01-05' AS Date), N'«·√Õœ', N'«·“„—', N'„‰ ’›Õ… 463 ≈·Ï 466', 2010, 463, 466)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8110, CAST(N'2025-01-06' AS Date), N'«·«À‰Ì‰', N'«·“„— / €«›—', N'„‰ ’›Õ… 467 ≈·Ï 470', 2010, 467, 470)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8111, CAST(N'2025-01-07' AS Date), N'«·À·«À«¡', N'€«›—', N'„‰ ’›Õ… 471 ≈·Ï 474', 2010, 471, 474)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8112, CAST(N'2025-01-08' AS Date), N'«·√—»⁄«¡', N'€«›—', N'„‰ ’›Õ… 475 ≈·Ï 478', 2010, 475, 478)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8113, CAST(N'2025-01-09' AS Date), N'«·Œ„Ì”', N'›’· ', N'„‰ ’›Õ… 479 ≈·Ï 482', 2010, 479, 482)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8114, CAST(N'2025-01-11' AS Date), N'«·”» ', N'«·‘Ê—Ï', N'„‰ ’›Õ… 483 ≈·Ï 486', 2010, 483, 486)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8115, CAST(N'2025-01-12' AS Date), N'«·√Õœ', N'«·‘Ê—Ï', N'„‰ ’›Õ… 487 ≈·Ï 490', 2010, 487, 490)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8116, CAST(N'2025-01-13' AS Date), N'«·«À‰Ì‰', N'«·“Œ—›', N'„‰ ’›Õ… 491 ≈·Ï 494', 2010, 491, 494)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8117, CAST(N'2025-01-14' AS Date), N'«·À·«À«¡', N'«·“Œ—›', N'„‰ ’›Õ… 495 ≈·Ï 498', 2010, 495, 498)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8118, CAST(N'2025-01-15' AS Date), N'«·√—»⁄«¡', N'«·Ã«ÀÌ…', N'„‰ ’›Õ… 499 ≈·Ï 502', 2010, 499, 502)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8119, CAST(N'2025-01-16' AS Date), N'«·Œ„Ì”', N'«·√Õﬁ«›', N'„‰ ’›Õ… 503 ≈·Ï 506', 2010, 503, 506)
GO
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8120, CAST(N'2025-01-18' AS Date), N'«·”» ', N'„Õ„œ', N'„‰ ’›Õ… 507 ≈·Ï 510', 2010, 507, 510)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8121, CAST(N'2025-01-19' AS Date), N'«·√Õœ', N'«·› Õ', N'„‰ ’›Õ… 511 ≈·Ï 514', 2010, 511, 514)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8122, CAST(N'2025-01-20' AS Date), N'«·«À‰Ì‰', N'«·› Õ / «·ÕÃ—« ', N'„‰ ’›Õ… 515 ≈·Ï 518', 2010, 515, 518)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8123, CAST(N'2025-01-21' AS Date), N'«·À·«À«¡', N'ﬁ', N'„‰ ’›Õ… 519 ≈·Ï 522', 2010, 519, 522)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8124, CAST(N'2025-01-22' AS Date), N'«·√—»⁄«¡', N'«·–«—Ì«  / «·ÿÊ—', N'„‰ ’›Õ… 523 ≈·Ï 526', 2010, 523, 526)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8125, CAST(N'2025-01-23' AS Date), N'«·Œ„Ì”', N'«·‰Ã„', N'„‰ ’›Õ… 527 ≈·Ï 530', 2010, 527, 530)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8126, CAST(N'2025-01-25' AS Date), N'«·”» ', N'«·ﬁ„— / «·—Õ„‰', N'„‰ ’›Õ… 531 ≈·Ï 534', 2010, 531, 534)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8127, CAST(N'2025-01-26' AS Date), N'«·√Õœ', N'«·Ê«ﬁ⁄…', N'„‰ ’›Õ… 535 ≈·Ï 538', 2010, 535, 538)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8128, CAST(N'2025-01-27' AS Date), N'«·«À‰Ì‰', N'«·ÕœÌœ', N'„‰ ’›Õ… 539 ≈·Ï 542', 2010, 539, 542)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8129, CAST(N'2025-01-28' AS Date), N'«·À·«À«¡', N'«·„Ã«œ·…', N'„‰ ’›Õ… 543 ≈·Ï 546', 2010, 543, 546)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8130, CAST(N'2025-01-29' AS Date), N'«·√—»⁄«¡', N'«·Õ‘—', N'„‰ ’›Õ… 547 ≈·Ï 550', 2010, 547, 550)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8131, CAST(N'2025-01-30' AS Date), N'«·Œ„Ì”', N'«·„„ Õ‰… / «·’›', N'„‰ ’›Õ… 551 ≈·Ï 554', 2010, 551, 554)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8132, CAST(N'2025-02-01' AS Date), N'«·”» ', N'«·„‰«›ﬁÊ‰', N'„‰ ’›Õ… 555 ≈·Ï 558', 2010, 555, 558)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8133, CAST(N'2025-02-02' AS Date), N'«·√Õœ', N'«·ÿ·«ﬁ', N'„‰ ’›Õ… 559 ≈·Ï 562', 2010, 559, 562)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8134, CAST(N'2025-02-03' AS Date), N'«·«À‰Ì‰', N'«·„·ﬂ', N'„‰ ’›Õ… 563 ≈·Ï 566', 2010, 563, 566)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8135, CAST(N'2025-02-04' AS Date), N'«·À·«À«¡', N'«·Õ«ﬁ…', N'„‰ ’›Õ… 567 ≈·Ï 570', 2010, 567, 570)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8136, CAST(N'2025-02-05' AS Date), N'«·√—»⁄«¡', N'‰ÊÕ', N'„‰ ’›Õ… 571 ≈·Ï 574', 2010, 571, 574)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8137, CAST(N'2025-02-06' AS Date), N'«·Œ„Ì”', N'«·„“„· / «·„œÀ—', N'„‰ ’›Õ… 575 ≈·Ï 578', 2010, 575, 578)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8138, CAST(N'2025-02-08' AS Date), N'«·”» ', N'«·«‰”«‰', N'„‰ ’›Õ… 579 ≈·Ï 582', 2010, 579, 582)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8139, CAST(N'2025-02-09' AS Date), N'«·√Õœ', N'«·‰»√ / «·‰«“⁄« ', N'„‰ ’›Õ… 583 ≈·Ï 586', 2010, 583, 586)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8140, CAST(N'2025-02-10' AS Date), N'«·«À‰Ì‰', N'«·«‰›ÿ«— / «·„ÿ››Ì‰', N'„‰ ’›Õ… 587 ≈·Ï 590', 2010, 587, 590)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8141, CAST(N'2025-02-11' AS Date), N'«·À·«À«¡', N'«·ÿ«—ﬁ / «·√⁄·Ï', N'„‰ ’›Õ… 591 ≈·Ï 594', 2010, 591, 594)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8142, CAST(N'2025-02-12' AS Date), N'«·√—»⁄«¡', N'«·‘„” / «··Ì·', N'„‰ ’›Õ… 595 ≈·Ï 598', 2010, 595, 598)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8143, CAST(N'2025-02-13' AS Date), N'«·Œ„Ì”', N'«·“·“·… / «·⁄«œÌ« ', N'„‰ ’›Õ… 599 ≈·Ï 602', 2010, 599, 602)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8144, CAST(N'2025-02-15' AS Date), N'«·”» ', N'«·ﬂ«›—Ê‰ / «·‰’— / «·„”œ', N'„‰ ’›Õ… 603 ≈·Ï 606', 2010, 603, 606)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8145, CAST(N'2024-09-01' AS Date), N'«·√Õœ', N'«·›« Õ…', N'’›Õ… 1', 2011, 1, 1)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8146, CAST(N'2024-09-02' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 2', 2011, 2, 2)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8147, CAST(N'2024-09-03' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 3', 2011, 3, 3)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8148, CAST(N'2024-09-04' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 4', 2011, 4, 4)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8149, CAST(N'2024-09-05' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 5', 2011, 5, 5)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8150, CAST(N'2024-09-07' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 6', 2011, 6, 6)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8151, CAST(N'2024-09-08' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 7', 2011, 7, 7)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8152, CAST(N'2024-09-09' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 8', 2011, 8, 8)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8153, CAST(N'2024-09-10' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 9', 2011, 9, 9)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8154, CAST(N'2024-09-11' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 10', 2011, 10, 10)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8155, CAST(N'2024-09-12' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 11', 2011, 11, 11)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8156, CAST(N'2024-09-14' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 12', 2011, 12, 12)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8157, CAST(N'2024-09-15' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 13', 2011, 13, 13)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8158, CAST(N'2024-09-16' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 14', 2011, 14, 14)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8159, CAST(N'2024-09-17' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 15', 2011, 15, 15)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8160, CAST(N'2024-09-18' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 16', 2011, 16, 16)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8161, CAST(N'2024-09-19' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 17', 2011, 17, 17)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8162, CAST(N'2024-09-21' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 18', 2011, 18, 18)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8163, CAST(N'2024-09-22' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 19', 2011, 19, 19)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8164, CAST(N'2024-09-23' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 20', 2011, 20, 20)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8165, CAST(N'2024-09-24' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 21', 2011, 21, 21)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8166, CAST(N'2024-09-25' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 22', 2011, 22, 22)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8167, CAST(N'2024-09-26' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 23', 2011, 23, 23)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8168, CAST(N'2024-09-28' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 24', 2011, 24, 24)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8169, CAST(N'2024-09-29' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 25', 2011, 25, 25)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8170, CAST(N'2024-09-30' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 26', 2011, 26, 26)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8171, CAST(N'2024-10-01' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 27', 2011, 27, 27)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8172, CAST(N'2024-10-02' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 28', 2011, 28, 28)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8173, CAST(N'2024-10-03' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 29', 2011, 29, 29)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8174, CAST(N'2024-10-05' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 30', 2011, 30, 30)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8175, CAST(N'2024-10-06' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 31', 2011, 31, 31)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8176, CAST(N'2024-10-07' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 32', 2011, 32, 32)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8177, CAST(N'2024-10-08' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 33', 2011, 33, 33)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8178, CAST(N'2024-10-09' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 34', 2011, 34, 34)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8179, CAST(N'2024-10-10' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 35', 2011, 35, 35)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8180, CAST(N'2024-10-12' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 36', 2011, 36, 36)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8181, CAST(N'2024-10-13' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 37', 2011, 37, 37)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8182, CAST(N'2024-10-14' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 38', 2011, 38, 38)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8183, CAST(N'2024-10-15' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 39', 2011, 39, 39)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8184, CAST(N'2024-10-16' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 40', 2011, 40, 40)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8185, CAST(N'2024-10-17' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 41', 2011, 41, 41)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8186, CAST(N'2024-10-19' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 42', 2011, 42, 42)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8187, CAST(N'2024-10-20' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 43', 2011, 43, 43)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8188, CAST(N'2024-10-21' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 44', 2011, 44, 44)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8189, CAST(N'2024-10-22' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 45', 2011, 45, 45)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8190, CAST(N'2024-10-23' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 46', 2011, 46, 46)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8191, CAST(N'2024-10-24' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 47', 2011, 47, 47)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8192, CAST(N'2024-10-26' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 48', 2011, 48, 48)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8193, CAST(N'2024-10-27' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 49', 2011, 49, 49)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8194, CAST(N'2024-10-28' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 50', 2011, 50, 50)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8195, CAST(N'2024-10-29' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 51', 2011, 51, 51)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8196, CAST(N'2024-10-30' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 52', 2011, 52, 52)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8197, CAST(N'2024-10-31' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'’›Õ… 53', 2011, 53, 53)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8198, CAST(N'2024-11-02' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'’›Õ… 54', 2011, 54, 54)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8199, CAST(N'2024-11-03' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'’›Õ… 55', 2011, 55, 55)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8200, CAST(N'2024-11-04' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 56', 2011, 56, 56)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8201, CAST(N'2024-11-05' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 57', 2011, 57, 57)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8202, CAST(N'2024-11-06' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 58', 2011, 58, 58)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8203, CAST(N'2024-11-07' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'’›Õ… 59', 2011, 59, 59)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8204, CAST(N'2024-11-09' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'’›Õ… 60', 2011, 60, 60)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8205, CAST(N'2024-11-10' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'’›Õ… 61', 2011, 61, 61)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8206, CAST(N'2024-11-11' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 62', 2011, 62, 62)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8207, CAST(N'2024-11-12' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 63', 2011, 63, 63)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8208, CAST(N'2024-11-13' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 64', 2011, 64, 64)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8209, CAST(N'2024-11-14' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'’›Õ… 65', 2011, 65, 65)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8210, CAST(N'2024-11-16' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'’›Õ… 66', 2011, 66, 66)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8211, CAST(N'2024-11-17' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'’›Õ… 67', 2011, 67, 67)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8212, CAST(N'2024-11-18' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 68', 2011, 68, 68)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8213, CAST(N'2024-11-19' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 69', 2011, 69, 69)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8214, CAST(N'2024-11-20' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 70', 2011, 70, 70)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8215, CAST(N'2024-11-21' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'’›Õ… 71', 2011, 71, 71)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8216, CAST(N'2024-11-23' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'’›Õ… 72', 2011, 72, 72)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8217, CAST(N'2024-11-24' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'’›Õ… 73', 2011, 73, 73)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8218, CAST(N'2024-11-25' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 74', 2011, 74, 74)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8219, CAST(N'2024-11-26' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 75', 2011, 75, 75)
GO
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8220, CAST(N'2024-11-27' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 76', 2011, 76, 76)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8221, CAST(N'2024-11-28' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 77', 2011, 77, 77)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8222, CAST(N'2024-11-30' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 78', 2011, 78, 78)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8223, CAST(N'2024-12-01' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 79', 2011, 79, 79)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8224, CAST(N'2024-12-02' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 80', 2011, 80, 80)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8225, CAST(N'2024-12-03' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 81', 2011, 81, 81)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8226, CAST(N'2024-12-04' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'’›Õ… 82', 2011, 82, 82)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8227, CAST(N'2024-12-05' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 83', 2011, 83, 83)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8228, CAST(N'2024-12-07' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 84', 2011, 84, 84)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8229, CAST(N'2024-12-08' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 85', 2011, 85, 85)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8230, CAST(N'2024-12-09' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 86', 2011, 86, 86)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8231, CAST(N'2024-12-10' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 87', 2011, 87, 87)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8232, CAST(N'2024-12-11' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'’›Õ… 88', 2011, 88, 88)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8233, CAST(N'2024-12-12' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 89', 2011, 89, 89)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8234, CAST(N'2024-12-14' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 90', 2011, 90, 90)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8235, CAST(N'2024-12-15' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 91', 2011, 91, 91)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8236, CAST(N'2024-12-16' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 92', 2011, 92, 92)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8237, CAST(N'2024-12-17' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 93', 2011, 93, 93)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8238, CAST(N'2024-12-18' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'’›Õ… 94', 2011, 94, 94)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8239, CAST(N'2024-12-19' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 95', 2011, 95, 95)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8240, CAST(N'2024-12-21' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 96', 2011, 96, 96)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8241, CAST(N'2024-12-22' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 97', 2011, 97, 97)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8242, CAST(N'2024-12-23' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 98', 2011, 98, 98)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8243, CAST(N'2024-12-24' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 99', 2011, 99, 99)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8244, CAST(N'2024-12-25' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'’›Õ… 100', 2011, 100, 100)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8245, CAST(N'2024-12-26' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 101', 2011, 101, 101)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8246, CAST(N'2024-12-28' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 102', 2011, 102, 102)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8247, CAST(N'2024-12-29' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 103', 2011, 103, 103)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8248, CAST(N'2024-12-30' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 104', 2011, 104, 104)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8249, CAST(N'2024-12-31' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 105', 2011, 105, 105)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8250, CAST(N'2025-01-01' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡/«·„«∆œ…', N'’›Õ… 106', 2011, 106, 106)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8251, CAST(N'2025-01-02' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'’›Õ… 107', 2011, 107, 107)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8252, CAST(N'2025-01-04' AS Date), N'«·”» ', N'«·„«∆œ…', N'’›Õ… 108', 2011, 108, 108)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8253, CAST(N'2025-01-05' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'’›Õ… 109', 2011, 109, 109)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8254, CAST(N'2025-01-06' AS Date), N'«·«À‰Ì‰', N'«·„«∆œ…', N'’›Õ… 110', 2011, 110, 110)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8255, CAST(N'2025-01-07' AS Date), N'«·À·«À«¡', N'«·„«∆œ…', N'’›Õ… 111', 2011, 111, 111)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8256, CAST(N'2025-01-08' AS Date), N'«·√—»⁄«¡', N'«·„«∆œ…', N'’›Õ… 112', 2011, 112, 112)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8257, CAST(N'2025-01-09' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'’›Õ… 113', 2011, 113, 113)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8258, CAST(N'2025-01-11' AS Date), N'«·”» ', N'«·„«∆œ…', N'’›Õ… 114', 2011, 114, 114)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8259, CAST(N'2025-01-12' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'’›Õ… 115', 2011, 115, 115)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8260, CAST(N'2025-01-13' AS Date), N'«·«À‰Ì‰', N'«·„«∆œ…', N'’›Õ… 116', 2011, 116, 116)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8261, CAST(N'2025-01-14' AS Date), N'«·À·«À«¡', N'«·„«∆œ…', N'’›Õ… 117', 2011, 117, 117)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8262, CAST(N'2025-01-15' AS Date), N'«·√—»⁄«¡', N'«·„«∆œ…', N'’›Õ… 118', 2011, 118, 118)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8263, CAST(N'2025-01-16' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'’›Õ… 119', 2011, 119, 119)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8264, CAST(N'2025-01-18' AS Date), N'«·”» ', N'«·„«∆œ…', N'’›Õ… 120', 2011, 120, 120)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8265, CAST(N'2025-01-19' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'’›Õ… 121', 2011, 121, 121)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8266, CAST(N'2025-01-20' AS Date), N'«·«À‰Ì‰', N'«·„«∆œ…', N'’›Õ… 122', 2011, 122, 122)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8267, CAST(N'2025-01-21' AS Date), N'«·À·«À«¡', N'«·„«∆œ…', N'’›Õ… 123', 2011, 123, 123)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8268, CAST(N'2025-01-22' AS Date), N'«·√—»⁄«¡', N'«·„«∆œ…', N'’›Õ… 124', 2011, 124, 124)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8269, CAST(N'2025-01-23' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'’›Õ… 125', 2011, 125, 125)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8270, CAST(N'2025-01-25' AS Date), N'«·”» ', N'«·„«∆œ…', N'’›Õ… 126', 2011, 126, 126)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8271, CAST(N'2025-01-26' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'’›Õ… 127', 2011, 127, 127)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8272, CAST(N'2025-01-27' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'’›Õ… 128', 2011, 128, 128)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8273, CAST(N'2025-01-28' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'’›Õ… 129', 2011, 129, 129)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8274, CAST(N'2025-01-29' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'’›Õ… 130', 2011, 130, 130)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8275, CAST(N'2025-01-30' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'’›Õ… 131', 2011, 131, 131)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8276, CAST(N'2025-02-01' AS Date), N'«·”» ', N'«·√‰⁄«„', N'’›Õ… 132', 2011, 132, 132)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8277, CAST(N'2025-02-02' AS Date), N'«·√Õœ', N'«·√‰⁄«„', N'’›Õ… 133', 2011, 133, 133)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8278, CAST(N'2025-02-03' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'’›Õ… 134', 2011, 134, 134)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8279, CAST(N'2025-02-04' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'’›Õ… 135', 2011, 135, 135)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8280, CAST(N'2025-02-05' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'’›Õ… 136', 2011, 136, 136)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8281, CAST(N'2025-02-06' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'’›Õ… 137', 2011, 137, 137)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8282, CAST(N'2025-02-08' AS Date), N'«·”» ', N'«·√‰⁄«„', N'’›Õ… 138', 2011, 138, 138)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8283, CAST(N'2025-02-09' AS Date), N'«·√Õœ', N'«·√‰⁄«„', N'’›Õ… 139', 2011, 139, 139)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8284, CAST(N'2025-02-10' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'’›Õ… 140', 2011, 140, 140)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8285, CAST(N'2025-02-11' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'’›Õ… 141', 2011, 141, 141)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8286, CAST(N'2025-02-12' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'’›Õ… 142', 2011, 142, 142)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8287, CAST(N'2025-02-13' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'’›Õ… 143', 2011, 143, 143)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8288, CAST(N'2025-02-15' AS Date), N'«·”» ', N'«·√‰⁄«„', N'’›Õ… 144', 2011, 144, 144)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8289, CAST(N'2025-02-16' AS Date), N'«·√Õœ', N'«·√‰⁄«„', N'’›Õ… 145', 2011, 145, 145)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8290, CAST(N'2025-02-17' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'’›Õ… 146', 2011, 146, 146)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8291, CAST(N'2025-02-18' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'’›Õ… 147', 2011, 147, 147)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8292, CAST(N'2025-02-19' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'’›Õ… 148', 2011, 148, 148)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8293, CAST(N'2025-02-20' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'’›Õ… 149', 2011, 149, 149)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8294, CAST(N'2025-02-22' AS Date), N'«·”» ', N'«·√‰⁄«„', N'’›Õ… 150', 2011, 150, 150)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8295, CAST(N'2025-02-23' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 151', 2011, 151, 151)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8296, CAST(N'2025-02-24' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 152', 2011, 152, 152)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8297, CAST(N'2025-02-25' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'’›Õ… 153', 2011, 153, 153)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8298, CAST(N'2025-02-26' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'’›Õ… 154', 2011, 154, 154)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8299, CAST(N'2025-02-27' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'’›Õ… 155', 2011, 155, 155)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8300, CAST(N'2025-03-01' AS Date), N'«·”» ', N'«·√⁄—«›', N'’›Õ… 156', 2011, 156, 156)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8301, CAST(N'2025-03-02' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 157', 2011, 157, 157)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8302, CAST(N'2025-03-03' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 158', 2011, 158, 158)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8303, CAST(N'2025-03-04' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'’›Õ… 159', 2011, 159, 159)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8304, CAST(N'2025-03-05' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'’›Õ… 160', 2011, 160, 160)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8305, CAST(N'2025-03-06' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'’›Õ… 161', 2011, 161, 161)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8306, CAST(N'2025-03-08' AS Date), N'«·”» ', N'«·√⁄—«›', N'’›Õ… 162', 2011, 162, 162)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8307, CAST(N'2025-03-09' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 163', 2011, 163, 163)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8308, CAST(N'2025-03-10' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 164', 2011, 164, 164)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8309, CAST(N'2025-03-11' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'’›Õ… 165', 2011, 165, 165)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8310, CAST(N'2025-03-12' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'’›Õ… 166', 2011, 166, 166)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8311, CAST(N'2025-03-13' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'’›Õ… 167', 2011, 167, 167)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8312, CAST(N'2025-03-15' AS Date), N'«·”» ', N'«·√⁄—«›', N'’›Õ… 168', 2011, 168, 168)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8313, CAST(N'2025-03-16' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 169', 2011, 169, 169)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8314, CAST(N'2025-03-17' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 170', 2011, 170, 170)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8315, CAST(N'2025-03-18' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'’›Õ… 171', 2011, 171, 171)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8316, CAST(N'2025-03-19' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'’›Õ… 172', 2011, 172, 172)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8317, CAST(N'2025-03-20' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'’›Õ… 173', 2011, 173, 173)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8318, CAST(N'2025-03-22' AS Date), N'«·”» ', N'«·√⁄—«›', N'’›Õ… 174', 2011, 174, 174)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8319, CAST(N'2025-03-23' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 175', 2011, 175, 175)
GO
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8320, CAST(N'2025-03-24' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 176', 2011, 176, 176)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8321, CAST(N'2025-03-25' AS Date), N'«·À·«À«¡', N'«·√‰›«·', N'’›Õ… 177', 2011, 177, 177)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8322, CAST(N'2025-03-26' AS Date), N'«·√—»⁄«¡', N'«·√‰›«·', N'’›Õ… 178', 2011, 178, 178)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8323, CAST(N'2025-03-27' AS Date), N'«·Œ„Ì”', N'«·√‰›«·', N'’›Õ… 179', 2011, 179, 179)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8324, CAST(N'2025-03-29' AS Date), N'«·”» ', N'«·√‰›«·', N'’›Õ… 180', 2011, 180, 180)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8325, CAST(N'2025-03-30' AS Date), N'«·√Õœ', N'«·√‰›«·', N'’›Õ… 181', 2011, 181, 181)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8326, CAST(N'2025-03-31' AS Date), N'«·«À‰Ì‰', N'«·√‰›«·', N'’›Õ… 182', 2011, 182, 182)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8327, CAST(N'2025-04-01' AS Date), N'«·À·«À«¡', N'«·√‰›«·', N'’›Õ… 183', 2011, 183, 183)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8328, CAST(N'2025-04-02' AS Date), N'«·√—»⁄«¡', N'«·√‰›«·', N'’›Õ… 184', 2011, 184, 184)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8329, CAST(N'2025-04-03' AS Date), N'«·Œ„Ì”', N'«·√‰›«·', N'’›Õ… 185', 2011, 185, 185)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8330, CAST(N'2025-04-05' AS Date), N'«·”» ', N'«·√‰›«·', N'’›Õ… 186', 2011, 186, 186)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8331, CAST(N'2025-04-06' AS Date), N'«·√Õœ', N'«· Ê»…', N'’›Õ… 187', 2011, 187, 187)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8332, CAST(N'2025-04-07' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'’›Õ… 188', 2011, 188, 188)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8333, CAST(N'2025-04-08' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'’›Õ… 189', 2011, 189, 189)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8334, CAST(N'2025-04-09' AS Date), N'«·√—»⁄«¡', N'«· Ê»…', N'’›Õ… 190', 2011, 190, 190)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8335, CAST(N'2025-04-10' AS Date), N'«·Œ„Ì”', N'«· Ê»…', N'’›Õ… 191', 2011, 191, 191)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8336, CAST(N'2025-04-12' AS Date), N'«·”» ', N'«· Ê»…', N'’›Õ… 192', 2011, 192, 192)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8337, CAST(N'2025-04-13' AS Date), N'«·√Õœ', N'«· Ê»…', N'’›Õ… 193', 2011, 193, 193)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8338, CAST(N'2025-04-14' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'’›Õ… 194', 2011, 194, 194)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8339, CAST(N'2025-04-15' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'’›Õ… 195', 2011, 195, 195)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8340, CAST(N'2025-04-16' AS Date), N'«·√—»⁄«¡', N'«· Ê»…', N'’›Õ… 196', 2011, 196, 196)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8341, CAST(N'2025-04-17' AS Date), N'«·Œ„Ì”', N'«· Ê»…', N'’›Õ… 197', 2011, 197, 197)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8342, CAST(N'2025-04-19' AS Date), N'«·”» ', N'«· Ê»…', N'’›Õ… 198', 2011, 198, 198)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8343, CAST(N'2025-04-20' AS Date), N'«·√Õœ', N'«· Ê»…', N'’›Õ… 199', 2011, 199, 199)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8344, CAST(N'2025-04-21' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'’›Õ… 200', 2011, 200, 200)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8345, CAST(N'2025-04-22' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'’›Õ… 201', 2011, 201, 201)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8346, CAST(N'2025-04-23' AS Date), N'«·√—»⁄«¡', N'«· Ê»…', N'’›Õ… 202', 2011, 202, 202)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8347, CAST(N'2025-04-24' AS Date), N'«·Œ„Ì”', N'«· Ê»…', N'’›Õ… 203', 2011, 203, 203)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8348, CAST(N'2025-04-26' AS Date), N'«·”» ', N'«· Ê»…', N'’›Õ… 204', 2011, 204, 204)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8349, CAST(N'2025-04-27' AS Date), N'«·√Õœ', N'«· Ê»…', N'’›Õ… 205', 2011, 205, 205)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8350, CAST(N'2025-04-28' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'’›Õ… 206', 2011, 206, 206)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8351, CAST(N'2025-04-29' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'’›Õ… 207', 2011, 207, 207)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8352, CAST(N'2025-04-30' AS Date), N'«·√—»⁄«¡', N'ÌÊ‰”', N'’›Õ… 208', 2011, 208, 208)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8353, CAST(N'2025-05-01' AS Date), N'«·Œ„Ì”', N'ÌÊ‰”', N'’›Õ… 209', 2011, 209, 209)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8354, CAST(N'2025-05-03' AS Date), N'«·”» ', N'ÌÊ‰”', N'’›Õ… 210', 2011, 210, 210)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8355, CAST(N'2025-05-04' AS Date), N'«·√Õœ', N'ÌÊ‰”', N'’›Õ… 211', 2011, 211, 211)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8356, CAST(N'2025-05-05' AS Date), N'«·«À‰Ì‰', N'ÌÊ‰”', N'’›Õ… 212', 2011, 212, 212)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8357, CAST(N'2025-05-06' AS Date), N'«·À·«À«¡', N'ÌÊ‰”', N'’›Õ… 213', 2011, 213, 213)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8358, CAST(N'2025-05-07' AS Date), N'«·√—»⁄«¡', N'ÌÊ‰”', N'’›Õ… 214', 2011, 214, 214)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8359, CAST(N'2025-05-08' AS Date), N'«·Œ„Ì”', N'ÌÊ‰”', N'’›Õ… 215', 2011, 215, 215)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8360, CAST(N'2025-05-10' AS Date), N'«·”» ', N'ÌÊ‰”', N'’›Õ… 216', 2011, 216, 216)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8361, CAST(N'2025-05-11' AS Date), N'«·√Õœ', N'ÌÊ‰”', N'’›Õ… 217', 2011, 217, 217)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8362, CAST(N'2025-05-12' AS Date), N'«·«À‰Ì‰', N'ÌÊ‰”', N'’›Õ… 218', 2011, 218, 218)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8363, CAST(N'2025-05-13' AS Date), N'«·À·«À«¡', N'ÌÊ‰”', N'’›Õ… 219', 2011, 219, 219)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8364, CAST(N'2025-05-14' AS Date), N'«·√—»⁄«¡', N'ÌÊ‰”', N'’›Õ… 220', 2011, 220, 220)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8365, CAST(N'2025-05-15' AS Date), N'«·Œ„Ì”', N'ÌÊ‰” / ÂÊœ', N'’›Õ… 221', 2011, 221, 221)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8366, CAST(N'2025-05-17' AS Date), N'«·”» ', N'ÂÊœ', N'’›Õ… 222', 2011, 222, 222)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8367, CAST(N'2025-05-18' AS Date), N'«·√Õœ', N'ÂÊœ', N'’›Õ… 223', 2011, 223, 223)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8368, CAST(N'2025-05-19' AS Date), N'«·«À‰Ì‰', N'ÂÊœ', N'’›Õ… 224', 2011, 224, 224)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8369, CAST(N'2025-05-20' AS Date), N'«·À·«À«¡', N'ÂÊœ', N'’›Õ… 225', 2011, 225, 225)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8370, CAST(N'2025-05-21' AS Date), N'«·√—»⁄«¡', N'ÂÊœ', N'’›Õ… 226', 2011, 226, 226)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8371, CAST(N'2025-05-22' AS Date), N'«·Œ„Ì”', N'ÂÊœ', N'’›Õ… 227', 2011, 227, 227)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8372, CAST(N'2025-05-24' AS Date), N'«·”» ', N'ÂÊœ', N'’›Õ… 228', 2011, 228, 228)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8373, CAST(N'2025-05-25' AS Date), N'«·√Õœ', N'ÂÊœ', N'’›Õ… 229', 2011, 229, 229)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8374, CAST(N'2025-05-26' AS Date), N'«·«À‰Ì‰', N'ÂÊœ', N'’›Õ… 230', 2011, 230, 230)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8375, CAST(N'2025-05-27' AS Date), N'«·À·«À«¡', N'ÂÊœ', N'’›Õ… 231', 2011, 231, 231)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8376, CAST(N'2025-05-28' AS Date), N'«·√—»⁄«¡', N'ÂÊœ', N'’›Õ… 232', 2011, 232, 232)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8377, CAST(N'2025-05-29' AS Date), N'«·Œ„Ì”', N'ÂÊœ', N'’›Õ… 233', 2011, 233, 233)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8378, CAST(N'2025-05-31' AS Date), N'«·”» ', N'ÂÊœ', N'’›Õ… 234', 2011, 234, 234)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8379, CAST(N'2025-06-01' AS Date), N'«·√Õœ', N'ÂÊœ / ÌÊ”›', N'’›Õ… 235', 2011, 235, 235)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8380, CAST(N'2025-06-02' AS Date), N'«·«À‰Ì‰', N'ÌÊ”›', N'’›Õ… 236', 2011, 236, 236)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8381, CAST(N'2025-06-03' AS Date), N'«·À·«À«¡', N'ÌÊ”›', N'’›Õ… 237', 2011, 237, 237)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8382, CAST(N'2025-06-04' AS Date), N'«·√—»⁄«¡', N'ÌÊ”›', N'’›Õ… 238', 2011, 238, 238)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8383, CAST(N'2025-06-05' AS Date), N'«·Œ„Ì”', N'ÌÊ”›', N'’›Õ… 239', 2011, 239, 239)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8384, CAST(N'2025-06-07' AS Date), N'«·”» ', N'ÌÊ”›', N'’›Õ… 240', 2011, 240, 240)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8385, CAST(N'2025-06-08' AS Date), N'«·√Õœ', N'ÌÊ”›', N'’›Õ… 241', 2011, 241, 241)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8386, CAST(N'2025-06-09' AS Date), N'«·«À‰Ì‰', N'ÌÊ”›', N'’›Õ… 242', 2011, 242, 242)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8387, CAST(N'2025-06-10' AS Date), N'«·À·«À«¡', N'ÌÊ”›', N'’›Õ… 243', 2011, 243, 243)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8388, CAST(N'2025-06-11' AS Date), N'«·√—»⁄«¡', N'ÌÊ”›', N'’›Õ… 244', 2011, 244, 244)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8389, CAST(N'2025-06-12' AS Date), N'«·Œ„Ì”', N'ÌÊ”›', N'’›Õ… 245', 2011, 245, 245)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8390, CAST(N'2025-06-14' AS Date), N'«·”» ', N'ÌÊ”›', N'’›Õ… 246', 2011, 246, 246)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8391, CAST(N'2025-06-15' AS Date), N'«·√Õœ', N'ÌÊ”›', N'’›Õ… 247', 2011, 247, 247)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8392, CAST(N'2025-06-16' AS Date), N'«·«À‰Ì‰', N'ÌÊ”›', N'’›Õ… 248', 2011, 248, 248)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8393, CAST(N'2025-06-17' AS Date), N'«·À·«À«¡', N'«·—⁄œ', N'’›Õ… 249', 2011, 249, 249)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8394, CAST(N'2025-06-18' AS Date), N'«·√—»⁄«¡', N'«·—⁄œ', N'’›Õ… 250', 2011, 250, 250)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8395, CAST(N'2025-06-19' AS Date), N'«·Œ„Ì”', N'«·—⁄œ', N'’›Õ… 251', 2011, 251, 251)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8396, CAST(N'2025-06-21' AS Date), N'«·”» ', N'«·—⁄œ', N'’›Õ… 252', 2011, 252, 252)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8397, CAST(N'2025-06-22' AS Date), N'«·√Õœ', N'«·—⁄œ', N'’›Õ… 253', 2011, 253, 253)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8398, CAST(N'2025-06-23' AS Date), N'«·«À‰Ì‰', N'«·—⁄œ', N'’›Õ… 254', 2011, 254, 254)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8399, CAST(N'2025-06-24' AS Date), N'«·À·«À«¡', N'«·—⁄œ / ≈»—«ÂÌ„', N'’›Õ… 255', 2011, 255, 255)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8400, CAST(N'2025-06-25' AS Date), N'«·√—»⁄«¡', N'≈»—«ÂÌ„', N'’›Õ… 256', 2011, 256, 256)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8401, CAST(N'2025-06-26' AS Date), N'«·Œ„Ì”', N'≈»—«ÂÌ„', N'’›Õ… 257', 2011, 257, 257)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8402, CAST(N'2025-06-28' AS Date), N'«·”» ', N'≈»—«ÂÌ„', N'’›Õ… 258', 2011, 258, 258)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8403, CAST(N'2025-06-29' AS Date), N'«·√Õœ', N'≈»—«ÂÌ„', N'’›Õ… 259', 2011, 259, 259)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8404, CAST(N'2025-06-30' AS Date), N'«·«À‰Ì‰', N'≈»—«ÂÌ„', N'’›Õ… 260', 2011, 260, 260)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8405, CAST(N'2024-09-01' AS Date), N'«·√Õœ', N'«·›« Õ…', N'’›Õ… 1', 2012, 1, 1)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8406, CAST(N'2024-09-02' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 2', 2012, 2, 2)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8407, CAST(N'2024-09-03' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 3', 2012, 3, 3)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8408, CAST(N'2024-09-04' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 4', 2012, 4, 4)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8409, CAST(N'2024-09-05' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 5', 2012, 5, 5)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8410, CAST(N'2024-09-07' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 6', 2012, 6, 6)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8411, CAST(N'2024-09-08' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 7', 2012, 7, 7)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8412, CAST(N'2024-09-09' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 8', 2012, 8, 8)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8413, CAST(N'2024-09-10' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 9', 2012, 9, 9)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8414, CAST(N'2024-09-11' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 10', 2012, 10, 10)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8415, CAST(N'2024-09-12' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 11', 2012, 11, 11)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8416, CAST(N'2024-09-14' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 12', 2012, 12, 12)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8417, CAST(N'2024-09-15' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 13', 2012, 13, 13)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8418, CAST(N'2024-09-16' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 14', 2012, 14, 14)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8419, CAST(N'2024-09-17' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 15', 2012, 15, 15)
GO
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8420, CAST(N'2024-09-18' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 16', 2012, 16, 16)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8421, CAST(N'2024-09-19' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 17', 2012, 17, 17)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8422, CAST(N'2024-09-21' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 18', 2012, 18, 18)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8423, CAST(N'2024-09-22' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 19', 2012, 19, 19)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8424, CAST(N'2024-09-23' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 20', 2012, 20, 20)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8425, CAST(N'2024-09-24' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 21', 2012, 21, 21)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8426, CAST(N'2024-09-25' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 22', 2012, 22, 22)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8427, CAST(N'2024-09-26' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 23', 2012, 23, 23)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8428, CAST(N'2024-09-28' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 24', 2012, 24, 24)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8429, CAST(N'2024-09-29' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 25', 2012, 25, 25)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8430, CAST(N'2024-09-30' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 26', 2012, 26, 26)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8431, CAST(N'2024-10-01' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 27', 2012, 27, 27)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8432, CAST(N'2024-10-02' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 28', 2012, 28, 28)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8433, CAST(N'2024-10-03' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 29', 2012, 29, 29)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8434, CAST(N'2024-10-05' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 30', 2012, 30, 30)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8435, CAST(N'2024-10-06' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 31', 2012, 31, 31)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8436, CAST(N'2024-10-07' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 32', 2012, 32, 32)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8437, CAST(N'2024-10-08' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 33', 2012, 33, 33)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8438, CAST(N'2024-10-09' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 34', 2012, 34, 34)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8439, CAST(N'2024-10-10' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 35', 2012, 35, 35)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8440, CAST(N'2024-10-12' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 36', 2012, 36, 36)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8441, CAST(N'2024-10-13' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 37', 2012, 37, 37)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8442, CAST(N'2024-10-14' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 38', 2012, 38, 38)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8443, CAST(N'2024-10-15' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 39', 2012, 39, 39)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8444, CAST(N'2024-10-16' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 40', 2012, 40, 40)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8445, CAST(N'2024-10-17' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 41', 2012, 41, 41)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8446, CAST(N'2024-10-19' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 42', 2012, 42, 42)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8447, CAST(N'2024-10-20' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 43', 2012, 43, 43)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8448, CAST(N'2024-10-21' AS Date), N'«·«À‰Ì‰', N'«·»ﬁ—…', N'’›Õ… 44', 2012, 44, 44)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8449, CAST(N'2024-10-22' AS Date), N'«·À·«À«¡', N'«·»ﬁ—…', N'’›Õ… 45', 2012, 45, 45)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8450, CAST(N'2024-10-23' AS Date), N'«·√—»⁄«¡', N'«·»ﬁ—…', N'’›Õ… 46', 2012, 46, 46)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8451, CAST(N'2024-10-24' AS Date), N'«·Œ„Ì”', N'«·»ﬁ—…', N'’›Õ… 47', 2012, 47, 47)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8452, CAST(N'2024-10-26' AS Date), N'«·”» ', N'«·»ﬁ—…', N'’›Õ… 48', 2012, 48, 48)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8453, CAST(N'2024-10-27' AS Date), N'«·√Õœ', N'«·»ﬁ—…', N'’›Õ… 49', 2012, 49, 49)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8454, CAST(N'2024-10-28' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 50', 2012, 50, 50)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8455, CAST(N'2024-10-29' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 51', 2012, 51, 51)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8456, CAST(N'2024-10-30' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 52', 2012, 52, 52)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8457, CAST(N'2024-10-31' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'’›Õ… 53', 2012, 53, 53)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8458, CAST(N'2024-11-02' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'’›Õ… 54', 2012, 54, 54)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8459, CAST(N'2024-11-03' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'’›Õ… 55', 2012, 55, 55)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8460, CAST(N'2024-11-04' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 56', 2012, 56, 56)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8461, CAST(N'2024-11-05' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 57', 2012, 57, 57)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8462, CAST(N'2024-11-06' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 58', 2012, 58, 58)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8463, CAST(N'2024-11-07' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'’›Õ… 59', 2012, 59, 59)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8464, CAST(N'2024-11-09' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'’›Õ… 60', 2012, 60, 60)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8465, CAST(N'2024-11-10' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'’›Õ… 61', 2012, 61, 61)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8466, CAST(N'2024-11-11' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 62', 2012, 62, 62)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8467, CAST(N'2024-11-12' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 63', 2012, 63, 63)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8468, CAST(N'2024-11-13' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 64', 2012, 64, 64)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8469, CAST(N'2024-11-14' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'’›Õ… 65', 2012, 65, 65)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8470, CAST(N'2024-11-16' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'’›Õ… 66', 2012, 66, 66)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8471, CAST(N'2024-11-17' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'’›Õ… 67', 2012, 67, 67)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8472, CAST(N'2024-11-18' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 68', 2012, 68, 68)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8473, CAST(N'2024-11-19' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 69', 2012, 69, 69)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8474, CAST(N'2024-11-20' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 70', 2012, 70, 70)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8475, CAST(N'2024-11-21' AS Date), N'«·Œ„Ì”', N'¬· ⁄„—«‰', N'’›Õ… 71', 2012, 71, 71)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8476, CAST(N'2024-11-23' AS Date), N'«·”» ', N'¬· ⁄„—«‰', N'’›Õ… 72', 2012, 72, 72)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8477, CAST(N'2024-11-24' AS Date), N'«·√Õœ', N'¬· ⁄„—«‰', N'’›Õ… 73', 2012, 73, 73)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8478, CAST(N'2024-11-25' AS Date), N'«·«À‰Ì‰', N'¬· ⁄„—«‰', N'’›Õ… 74', 2012, 74, 74)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8479, CAST(N'2024-11-26' AS Date), N'«·À·«À«¡', N'¬· ⁄„—«‰', N'’›Õ… 75', 2012, 75, 75)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8480, CAST(N'2024-11-27' AS Date), N'«·√—»⁄«¡', N'¬· ⁄„—«‰', N'’›Õ… 76', 2012, 76, 76)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8481, CAST(N'2024-11-28' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 77', 2012, 77, 77)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8482, CAST(N'2024-11-30' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 78', 2012, 78, 78)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8483, CAST(N'2024-12-01' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 79', 2012, 79, 79)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8484, CAST(N'2024-12-02' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 80', 2012, 80, 80)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8485, CAST(N'2024-12-03' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 81', 2012, 81, 81)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8486, CAST(N'2024-12-04' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'’›Õ… 82', 2012, 82, 82)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8487, CAST(N'2024-12-05' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 83', 2012, 83, 83)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8488, CAST(N'2024-12-07' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 84', 2012, 84, 84)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8489, CAST(N'2024-12-08' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 85', 2012, 85, 85)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8490, CAST(N'2024-12-09' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 86', 2012, 86, 86)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8491, CAST(N'2024-12-10' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 87', 2012, 87, 87)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8492, CAST(N'2024-12-11' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'’›Õ… 88', 2012, 88, 88)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8493, CAST(N'2024-12-12' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 89', 2012, 89, 89)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8494, CAST(N'2024-12-14' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 90', 2012, 90, 90)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8495, CAST(N'2024-12-15' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 91', 2012, 91, 91)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8496, CAST(N'2024-12-16' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 92', 2012, 92, 92)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8497, CAST(N'2024-12-17' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 93', 2012, 93, 93)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8498, CAST(N'2024-12-18' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'’›Õ… 94', 2012, 94, 94)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8499, CAST(N'2024-12-19' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 95', 2012, 95, 95)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8500, CAST(N'2024-12-21' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 96', 2012, 96, 96)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8501, CAST(N'2024-12-22' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 97', 2012, 97, 97)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8502, CAST(N'2024-12-23' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 98', 2012, 98, 98)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8503, CAST(N'2024-12-24' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 99', 2012, 99, 99)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8504, CAST(N'2024-12-25' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡', N'’›Õ… 100', 2012, 100, 100)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8505, CAST(N'2024-12-26' AS Date), N'«·Œ„Ì”', N'«·‰”«¡', N'’›Õ… 101', 2012, 101, 101)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8506, CAST(N'2024-12-28' AS Date), N'«·”» ', N'«·‰”«¡', N'’›Õ… 102', 2012, 102, 102)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8507, CAST(N'2024-12-29' AS Date), N'«·√Õœ', N'«·‰”«¡', N'’›Õ… 103', 2012, 103, 103)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8508, CAST(N'2024-12-30' AS Date), N'«·«À‰Ì‰', N'«·‰”«¡', N'’›Õ… 104', 2012, 104, 104)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8509, CAST(N'2024-12-31' AS Date), N'«·À·«À«¡', N'«·‰”«¡', N'’›Õ… 105', 2012, 105, 105)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8510, CAST(N'2025-01-01' AS Date), N'«·√—»⁄«¡', N'«·‰”«¡/«·„«∆œ…', N'’›Õ… 106', 2012, 106, 106)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8511, CAST(N'2025-01-02' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'’›Õ… 107', 2012, 107, 107)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8512, CAST(N'2025-01-04' AS Date), N'«·”» ', N'«·„«∆œ…', N'’›Õ… 108', 2012, 108, 108)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8513, CAST(N'2025-01-05' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'’›Õ… 109', 2012, 109, 109)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8514, CAST(N'2025-01-06' AS Date), N'«·«À‰Ì‰', N'«·„«∆œ…', N'’›Õ… 110', 2012, 110, 110)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8515, CAST(N'2025-01-07' AS Date), N'«·À·«À«¡', N'«·„«∆œ…', N'’›Õ… 111', 2012, 111, 111)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8516, CAST(N'2025-01-08' AS Date), N'«·√—»⁄«¡', N'«·„«∆œ…', N'’›Õ… 112', 2012, 112, 112)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8517, CAST(N'2025-01-09' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'’›Õ… 113', 2012, 113, 113)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8518, CAST(N'2025-01-11' AS Date), N'«·”» ', N'«·„«∆œ…', N'’›Õ… 114', 2012, 114, 114)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8519, CAST(N'2025-01-12' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'’›Õ… 115', 2012, 115, 115)
GO
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8520, CAST(N'2025-01-13' AS Date), N'«·«À‰Ì‰', N'«·„«∆œ…', N'’›Õ… 116', 2012, 116, 116)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8521, CAST(N'2025-01-14' AS Date), N'«·À·«À«¡', N'«·„«∆œ…', N'’›Õ… 117', 2012, 117, 117)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8522, CAST(N'2025-01-15' AS Date), N'«·√—»⁄«¡', N'«·„«∆œ…', N'’›Õ… 118', 2012, 118, 118)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8523, CAST(N'2025-01-16' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'’›Õ… 119', 2012, 119, 119)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8524, CAST(N'2025-01-18' AS Date), N'«·”» ', N'«·„«∆œ…', N'’›Õ… 120', 2012, 120, 120)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8525, CAST(N'2025-01-19' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'’›Õ… 121', 2012, 121, 121)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8526, CAST(N'2025-01-20' AS Date), N'«·«À‰Ì‰', N'«·„«∆œ…', N'’›Õ… 122', 2012, 122, 122)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8527, CAST(N'2025-01-21' AS Date), N'«·À·«À«¡', N'«·„«∆œ…', N'’›Õ… 123', 2012, 123, 123)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8528, CAST(N'2025-01-22' AS Date), N'«·√—»⁄«¡', N'«·„«∆œ…', N'’›Õ… 124', 2012, 124, 124)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8529, CAST(N'2025-01-23' AS Date), N'«·Œ„Ì”', N'«·„«∆œ…', N'’›Õ… 125', 2012, 125, 125)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8530, CAST(N'2025-01-25' AS Date), N'«·”» ', N'«·„«∆œ…', N'’›Õ… 126', 2012, 126, 126)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8531, CAST(N'2025-01-26' AS Date), N'«·√Õœ', N'«·„«∆œ…', N'’›Õ… 127', 2012, 127, 127)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8532, CAST(N'2025-01-27' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'’›Õ… 128', 2012, 128, 128)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8533, CAST(N'2025-01-28' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'’›Õ… 129', 2012, 129, 129)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8534, CAST(N'2025-01-29' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'’›Õ… 130', 2012, 130, 130)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8535, CAST(N'2025-01-30' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'’›Õ… 131', 2012, 131, 131)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8536, CAST(N'2025-02-01' AS Date), N'«·”» ', N'«·√‰⁄«„', N'’›Õ… 132', 2012, 132, 132)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8537, CAST(N'2025-02-02' AS Date), N'«·√Õœ', N'«·√‰⁄«„', N'’›Õ… 133', 2012, 133, 133)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8538, CAST(N'2025-02-03' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'’›Õ… 134', 2012, 134, 134)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8539, CAST(N'2025-02-04' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'’›Õ… 135', 2012, 135, 135)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8540, CAST(N'2025-02-05' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'’›Õ… 136', 2012, 136, 136)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8541, CAST(N'2025-02-06' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'’›Õ… 137', 2012, 137, 137)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8542, CAST(N'2025-02-08' AS Date), N'«·”» ', N'«·√‰⁄«„', N'’›Õ… 138', 2012, 138, 138)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8543, CAST(N'2025-02-09' AS Date), N'«·√Õœ', N'«·√‰⁄«„', N'’›Õ… 139', 2012, 139, 139)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8544, CAST(N'2025-02-10' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'’›Õ… 140', 2012, 140, 140)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8545, CAST(N'2025-02-11' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'’›Õ… 141', 2012, 141, 141)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8546, CAST(N'2025-02-12' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'’›Õ… 142', 2012, 142, 142)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8547, CAST(N'2025-02-13' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'’›Õ… 143', 2012, 143, 143)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8548, CAST(N'2025-02-15' AS Date), N'«·”» ', N'«·√‰⁄«„', N'’›Õ… 144', 2012, 144, 144)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8549, CAST(N'2025-02-16' AS Date), N'«·√Õœ', N'«·√‰⁄«„', N'’›Õ… 145', 2012, 145, 145)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8550, CAST(N'2025-02-17' AS Date), N'«·«À‰Ì‰', N'«·√‰⁄«„', N'’›Õ… 146', 2012, 146, 146)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8551, CAST(N'2025-02-18' AS Date), N'«·À·«À«¡', N'«·√‰⁄«„', N'’›Õ… 147', 2012, 147, 147)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8552, CAST(N'2025-02-19' AS Date), N'«·√—»⁄«¡', N'«·√‰⁄«„', N'’›Õ… 148', 2012, 148, 148)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8553, CAST(N'2025-02-20' AS Date), N'«·Œ„Ì”', N'«·√‰⁄«„', N'’›Õ… 149', 2012, 149, 149)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8554, CAST(N'2025-02-22' AS Date), N'«·”» ', N'«·√‰⁄«„', N'’›Õ… 150', 2012, 150, 150)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8555, CAST(N'2025-02-23' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 151', 2012, 151, 151)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8556, CAST(N'2025-02-24' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 152', 2012, 152, 152)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8557, CAST(N'2025-02-25' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'’›Õ… 153', 2012, 153, 153)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8558, CAST(N'2025-02-26' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'’›Õ… 154', 2012, 154, 154)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8559, CAST(N'2025-02-27' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'’›Õ… 155', 2012, 155, 155)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8560, CAST(N'2025-03-01' AS Date), N'«·”» ', N'«·√⁄—«›', N'’›Õ… 156', 2012, 156, 156)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8561, CAST(N'2025-03-02' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 157', 2012, 157, 157)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8562, CAST(N'2025-03-03' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 158', 2012, 158, 158)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8563, CAST(N'2025-03-04' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'’›Õ… 159', 2012, 159, 159)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8564, CAST(N'2025-03-05' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'’›Õ… 160', 2012, 160, 160)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8565, CAST(N'2025-03-06' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'’›Õ… 161', 2012, 161, 161)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8566, CAST(N'2025-03-08' AS Date), N'«·”» ', N'«·√⁄—«›', N'’›Õ… 162', 2012, 162, 162)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8567, CAST(N'2025-03-09' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 163', 2012, 163, 163)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8568, CAST(N'2025-03-10' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 164', 2012, 164, 164)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8569, CAST(N'2025-03-11' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'’›Õ… 165', 2012, 165, 165)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8570, CAST(N'2025-03-12' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'’›Õ… 166', 2012, 166, 166)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8571, CAST(N'2025-03-13' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'’›Õ… 167', 2012, 167, 167)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8572, CAST(N'2025-03-15' AS Date), N'«·”» ', N'«·√⁄—«›', N'’›Õ… 168', 2012, 168, 168)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8573, CAST(N'2025-03-16' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 169', 2012, 169, 169)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8574, CAST(N'2025-03-17' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 170', 2012, 170, 170)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8575, CAST(N'2025-03-18' AS Date), N'«·À·«À«¡', N'«·√⁄—«›', N'’›Õ… 171', 2012, 171, 171)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8576, CAST(N'2025-03-19' AS Date), N'«·√—»⁄«¡', N'«·√⁄—«›', N'’›Õ… 172', 2012, 172, 172)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8577, CAST(N'2025-03-20' AS Date), N'«·Œ„Ì”', N'«·√⁄—«›', N'’›Õ… 173', 2012, 173, 173)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8578, CAST(N'2025-03-22' AS Date), N'«·”» ', N'«·√⁄—«›', N'’›Õ… 174', 2012, 174, 174)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8579, CAST(N'2025-03-23' AS Date), N'«·√Õœ', N'«·√⁄—«›', N'’›Õ… 175', 2012, 175, 175)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8580, CAST(N'2025-03-24' AS Date), N'«·«À‰Ì‰', N'«·√⁄—«›', N'’›Õ… 176', 2012, 176, 176)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8581, CAST(N'2025-03-25' AS Date), N'«·À·«À«¡', N'«·√‰›«·', N'’›Õ… 177', 2012, 177, 177)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8582, CAST(N'2025-03-26' AS Date), N'«·√—»⁄«¡', N'«·√‰›«·', N'’›Õ… 178', 2012, 178, 178)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8583, CAST(N'2025-03-27' AS Date), N'«·Œ„Ì”', N'«·√‰›«·', N'’›Õ… 179', 2012, 179, 179)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8584, CAST(N'2025-03-29' AS Date), N'«·”» ', N'«·√‰›«·', N'’›Õ… 180', 2012, 180, 180)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8585, CAST(N'2025-03-30' AS Date), N'«·√Õœ', N'«·√‰›«·', N'’›Õ… 181', 2012, 181, 181)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8586, CAST(N'2025-03-31' AS Date), N'«·«À‰Ì‰', N'«·√‰›«·', N'’›Õ… 182', 2012, 182, 182)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8587, CAST(N'2025-04-01' AS Date), N'«·À·«À«¡', N'«·√‰›«·', N'’›Õ… 183', 2012, 183, 183)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8588, CAST(N'2025-04-02' AS Date), N'«·√—»⁄«¡', N'«·√‰›«·', N'’›Õ… 184', 2012, 184, 184)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8589, CAST(N'2025-04-03' AS Date), N'«·Œ„Ì”', N'«·√‰›«·', N'’›Õ… 185', 2012, 185, 185)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8590, CAST(N'2025-04-05' AS Date), N'«·”» ', N'«·√‰›«·', N'’›Õ… 186', 2012, 186, 186)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8591, CAST(N'2025-04-06' AS Date), N'«·√Õœ', N'«· Ê»…', N'’›Õ… 187', 2012, 187, 187)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8592, CAST(N'2025-04-07' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'’›Õ… 188', 2012, 188, 188)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8593, CAST(N'2025-04-08' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'’›Õ… 189', 2012, 189, 189)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8594, CAST(N'2025-04-09' AS Date), N'«·√—»⁄«¡', N'«· Ê»…', N'’›Õ… 190', 2012, 190, 190)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8595, CAST(N'2025-04-10' AS Date), N'«·Œ„Ì”', N'«· Ê»…', N'’›Õ… 191', 2012, 191, 191)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8596, CAST(N'2025-04-12' AS Date), N'«·”» ', N'«· Ê»…', N'’›Õ… 192', 2012, 192, 192)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8597, CAST(N'2025-04-13' AS Date), N'«·√Õœ', N'«· Ê»…', N'’›Õ… 193', 2012, 193, 193)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8598, CAST(N'2025-04-14' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'’›Õ… 194', 2012, 194, 194)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8599, CAST(N'2025-04-15' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'’›Õ… 195', 2012, 195, 195)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8600, CAST(N'2025-04-16' AS Date), N'«·√—»⁄«¡', N'«· Ê»…', N'’›Õ… 196', 2012, 196, 196)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8601, CAST(N'2025-04-17' AS Date), N'«·Œ„Ì”', N'«· Ê»…', N'’›Õ… 197', 2012, 197, 197)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8602, CAST(N'2025-04-19' AS Date), N'«·”» ', N'«· Ê»…', N'’›Õ… 198', 2012, 198, 198)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8603, CAST(N'2025-04-20' AS Date), N'«·√Õœ', N'«· Ê»…', N'’›Õ… 199', 2012, 199, 199)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8604, CAST(N'2025-04-21' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'’›Õ… 200', 2012, 200, 200)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8605, CAST(N'2025-04-22' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'’›Õ… 201', 2012, 201, 201)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8606, CAST(N'2025-04-23' AS Date), N'«·√—»⁄«¡', N'«· Ê»…', N'’›Õ… 202', 2012, 202, 202)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8607, CAST(N'2025-04-24' AS Date), N'«·Œ„Ì”', N'«· Ê»…', N'’›Õ… 203', 2012, 203, 203)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8608, CAST(N'2025-04-26' AS Date), N'«·”» ', N'«· Ê»…', N'’›Õ… 204', 2012, 204, 204)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8609, CAST(N'2025-04-27' AS Date), N'«·√Õœ', N'«· Ê»…', N'’›Õ… 205', 2012, 205, 205)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8610, CAST(N'2025-04-28' AS Date), N'«·«À‰Ì‰', N'«· Ê»…', N'’›Õ… 206', 2012, 206, 206)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8611, CAST(N'2025-04-29' AS Date), N'«·À·«À«¡', N'«· Ê»…', N'’›Õ… 207', 2012, 207, 207)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8612, CAST(N'2025-04-30' AS Date), N'«·√—»⁄«¡', N'ÌÊ‰”', N'’›Õ… 208', 2012, 208, 208)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8613, CAST(N'2025-05-01' AS Date), N'«·Œ„Ì”', N'ÌÊ‰”', N'’›Õ… 209', 2012, 209, 209)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8614, CAST(N'2025-05-03' AS Date), N'«·”» ', N'ÌÊ‰”', N'’›Õ… 210', 2012, 210, 210)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8615, CAST(N'2025-05-04' AS Date), N'«·√Õœ', N'ÌÊ‰”', N'’›Õ… 211', 2012, 211, 211)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8616, CAST(N'2025-05-05' AS Date), N'«·«À‰Ì‰', N'ÌÊ‰”', N'’›Õ… 212', 2012, 212, 212)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8617, CAST(N'2025-05-06' AS Date), N'«·À·«À«¡', N'ÌÊ‰”', N'’›Õ… 213', 2012, 213, 213)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8618, CAST(N'2025-05-07' AS Date), N'«·√—»⁄«¡', N'ÌÊ‰”', N'’›Õ… 214', 2012, 214, 214)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8619, CAST(N'2025-05-08' AS Date), N'«·Œ„Ì”', N'ÌÊ‰”', N'’›Õ… 215', 2012, 215, 215)
GO
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8620, CAST(N'2025-05-10' AS Date), N'«·”» ', N'ÌÊ‰”', N'’›Õ… 216', 2012, 216, 216)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8621, CAST(N'2025-05-11' AS Date), N'«·√Õœ', N'ÌÊ‰”', N'’›Õ… 217', 2012, 217, 217)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8622, CAST(N'2025-05-12' AS Date), N'«·«À‰Ì‰', N'ÌÊ‰”', N'’›Õ… 218', 2012, 218, 218)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8623, CAST(N'2025-05-13' AS Date), N'«·À·«À«¡', N'ÌÊ‰”', N'’›Õ… 219', 2012, 219, 219)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8624, CAST(N'2025-05-14' AS Date), N'«·√—»⁄«¡', N'ÌÊ‰”', N'’›Õ… 220', 2012, 220, 220)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8625, CAST(N'2025-05-15' AS Date), N'«·Œ„Ì”', N'ÌÊ‰” / ÂÊœ', N'’›Õ… 221', 2012, 221, 221)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8626, CAST(N'2025-05-17' AS Date), N'«·”» ', N'ÂÊœ', N'’›Õ… 222', 2012, 222, 222)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8627, CAST(N'2025-05-18' AS Date), N'«·√Õœ', N'ÂÊœ', N'’›Õ… 223', 2012, 223, 223)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8628, CAST(N'2025-05-19' AS Date), N'«·«À‰Ì‰', N'ÂÊœ', N'’›Õ… 224', 2012, 224, 224)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8629, CAST(N'2025-05-20' AS Date), N'«·À·«À«¡', N'ÂÊœ', N'’›Õ… 225', 2012, 225, 225)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8630, CAST(N'2025-05-21' AS Date), N'«·√—»⁄«¡', N'ÂÊœ', N'’›Õ… 226', 2012, 226, 226)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8631, CAST(N'2025-05-22' AS Date), N'«·Œ„Ì”', N'ÂÊœ', N'’›Õ… 227', 2012, 227, 227)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8632, CAST(N'2025-05-24' AS Date), N'«·”» ', N'ÂÊœ', N'’›Õ… 228', 2012, 228, 228)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8633, CAST(N'2025-05-25' AS Date), N'«·√Õœ', N'ÂÊœ', N'’›Õ… 229', 2012, 229, 229)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8634, CAST(N'2025-05-26' AS Date), N'«·«À‰Ì‰', N'ÂÊœ', N'’›Õ… 230', 2012, 230, 230)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8635, CAST(N'2025-05-27' AS Date), N'«·À·«À«¡', N'ÂÊœ', N'’›Õ… 231', 2012, 231, 231)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8636, CAST(N'2025-05-28' AS Date), N'«·√—»⁄«¡', N'ÂÊœ', N'’›Õ… 232', 2012, 232, 232)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8637, CAST(N'2025-05-29' AS Date), N'«·Œ„Ì”', N'ÂÊœ', N'’›Õ… 233', 2012, 233, 233)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8638, CAST(N'2025-05-31' AS Date), N'«·”» ', N'ÂÊœ', N'’›Õ… 234', 2012, 234, 234)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8639, CAST(N'2025-06-01' AS Date), N'«·√Õœ', N'ÂÊœ / ÌÊ”›', N'’›Õ… 235', 2012, 235, 235)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8640, CAST(N'2025-06-02' AS Date), N'«·«À‰Ì‰', N'ÌÊ”›', N'’›Õ… 236', 2012, 236, 236)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8641, CAST(N'2025-06-03' AS Date), N'«·À·«À«¡', N'ÌÊ”›', N'’›Õ… 237', 2012, 237, 237)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8642, CAST(N'2025-06-04' AS Date), N'«·√—»⁄«¡', N'ÌÊ”›', N'’›Õ… 238', 2012, 238, 238)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8643, CAST(N'2025-06-05' AS Date), N'«·Œ„Ì”', N'ÌÊ”›', N'’›Õ… 239', 2012, 239, 239)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8644, CAST(N'2025-06-07' AS Date), N'«·”» ', N'ÌÊ”›', N'’›Õ… 240', 2012, 240, 240)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8645, CAST(N'2025-06-08' AS Date), N'«·√Õœ', N'ÌÊ”›', N'’›Õ… 241', 2012, 241, 241)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8646, CAST(N'2025-06-09' AS Date), N'«·«À‰Ì‰', N'ÌÊ”›', N'’›Õ… 242', 2012, 242, 242)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8647, CAST(N'2025-06-10' AS Date), N'«·À·«À«¡', N'ÌÊ”›', N'’›Õ… 243', 2012, 243, 243)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8648, CAST(N'2025-06-11' AS Date), N'«·√—»⁄«¡', N'ÌÊ”›', N'’›Õ… 244', 2012, 244, 244)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8649, CAST(N'2025-06-12' AS Date), N'«·Œ„Ì”', N'ÌÊ”›', N'’›Õ… 245', 2012, 245, 245)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8650, CAST(N'2025-06-14' AS Date), N'«·”» ', N'ÌÊ”›', N'’›Õ… 246', 2012, 246, 246)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8651, CAST(N'2025-06-15' AS Date), N'«·√Õœ', N'ÌÊ”›', N'’›Õ… 247', 2012, 247, 247)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8652, CAST(N'2025-06-16' AS Date), N'«·«À‰Ì‰', N'ÌÊ”›', N'’›Õ… 248', 2012, 248, 248)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8653, CAST(N'2025-06-17' AS Date), N'«·À·«À«¡', N'«·—⁄œ', N'’›Õ… 249', 2012, 249, 249)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8654, CAST(N'2025-06-18' AS Date), N'«·√—»⁄«¡', N'«·—⁄œ', N'’›Õ… 250', 2012, 250, 250)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8655, CAST(N'2025-06-19' AS Date), N'«·Œ„Ì”', N'«·—⁄œ', N'’›Õ… 251', 2012, 251, 251)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8656, CAST(N'2025-06-21' AS Date), N'«·”» ', N'«·—⁄œ', N'’›Õ… 252', 2012, 252, 252)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8657, CAST(N'2025-06-22' AS Date), N'«·√Õœ', N'«·—⁄œ', N'’›Õ… 253', 2012, 253, 253)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8658, CAST(N'2025-06-23' AS Date), N'«·«À‰Ì‰', N'«·—⁄œ', N'’›Õ… 254', 2012, 254, 254)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8659, CAST(N'2025-06-24' AS Date), N'«·À·«À«¡', N'«·—⁄œ / ≈»—«ÂÌ„', N'’›Õ… 255', 2012, 255, 255)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8660, CAST(N'2025-06-25' AS Date), N'«·√—»⁄«¡', N'≈»—«ÂÌ„', N'’›Õ… 256', 2012, 256, 256)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8661, CAST(N'2025-06-26' AS Date), N'«·Œ„Ì”', N'≈»—«ÂÌ„', N'’›Õ… 257', 2012, 257, 257)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8662, CAST(N'2025-06-28' AS Date), N'«·”» ', N'≈»—«ÂÌ„', N'’›Õ… 258', 2012, 258, 258)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8663, CAST(N'2025-06-29' AS Date), N'«·√Õœ', N'≈»—«ÂÌ„', N'’›Õ… 259', 2012, 259, 259)
INSERT [dbo].[DailyMemorizePlan] ([DailyMemorizePlanID], [Date], [Day], [Surah], [Amount], [MemorizePlanID], [FromPage], [ToPage]) VALUES (8664, CAST(N'2025-06-30' AS Date), N'«·«À‰Ì‰', N'≈»—«ÂÌ„', N'’›Õ… 260', 2012, 260, 260)
SET IDENTITY_INSERT [dbo].[DailyMemorizePlan] OFF
GO
SET IDENTITY_INSERT [dbo].[Expenses] ON 

INSERT [dbo].[Expenses] ([ExpenseID], [Title], [Amount], [Date], [AcademicYearID], [Description], [IsActivity], [Notes], [PaidBy]) VALUES (1, N' œ‘Ì‰ «›  «Õ —Ê÷… „—ﬂ“ «·ﬁœ”', CAST(30000.00 AS Decimal(10, 2)), CAST(N'2025-01-15' AS Date), 1, N'
›Ì Ÿ· ”⁄Ì „—ﬂ“ «·ﬁœ” · Õ›ÌŸ «·ﬁ—¬‰ «·ﬂ—Ì„ · Ê”Ì⁄ Œœ„« Â «· ⁄·Ì„Ì… Ê ·»Ì… «Õ Ì«Ã«  «·„Ã „⁄ «·„Õ·Ì°  „ »Õ„œ «··Â Ê Ê›ÌﬁÂ  œ‘Ì‰ "—Ê÷… „—ﬂ“ «·ﬁœ”"° ›Ì Õ›· »ÂÌÃ √ﬁÌ„ ›Ì „ﬁ— «·„—ﬂ“° »Õ÷Ê— ⁄œœ „‰ «·ﬁÌ«œ«  «· —»ÊÌ… Ê√„Â«  «·ÿ«·»«  Ê„⁄·„«  «·„—ﬂ“.', 1, N'Êﬁœ «” ıÂ· «·Õ›· »¬Ì«  „‰ «·–ﬂ— «·ÕﬂÌ„° À„  · Â« ﬂ·„…  —ÕÌ»Ì… „‰ ≈œ«—… «·„—ﬂ“° √‘«œ  Œ·«·Â« »√Â„Ì… „—Õ·… «·ÿ›Ê·… «·„»ﬂ—… ›Ì »‰«¡ «·‘Œ’Ì… Ê ‰„Ì… «·ﬁÌ„° „ƒﬂœ… √‰ «›  «Õ «·—Ê÷… Ìı⁄œ ŒÿÊ… ‰Ê⁄Ì… ÷„‰ „”Ì—… «·„—ﬂ“ ›Ì  ﬁœÌ„  ⁄·Ì„ ﬁ—¬‰Ì Ê —»ÊÌ „ ﬂ«„· Ì»œ√ „‰ «·ÿ›Ê·… ÊÕ Ï ”‰ «·› Ì« .
Êﬁœ «‘ „· Õ›· «· œ‘Ì‰ ⁄·Ï ›ﬁ—«  „ ⁄œœ…° „‰Â« ⁄—÷ „—∆Ì  ⁄—Ì›Ì »„—«›ﬁ «·—Ê÷… «·ÃœÌœ… Ê ÃÂÌ“« Â« «·ÕœÌÀ…° ÊÃÊ·… „Ìœ«‰Ì… «ÿ·⁄ ›ÌÂ« «·“Ê«— ⁄·Ï «·›’Ê· «·œ—«”Ì… «·„’„„… Ê›ﬁ »Ì∆…  ⁄·Ì„Ì… Ã«–»… Ê¬„‰…° ≈÷«›… ≈·Ï √‰‘ÿ…  —›ÌÂÌ…  ›«⁄·Ì… ··√ÿ›«·° Ê—ﬂ‰ ··Œÿ Ê«·—”„° „„« √÷›Ï ⁄·Ï «·√ÃÊ«¡ ÿ«»⁄« „‰ «·»ÂÃ… Ê«·”—Ê—.
ﬂ„«  „ ›Ì ‰Â«Ì… «·Õ›·  ﬂ—Ì„ «·ÿ«ﬁ„ «· —»ÊÌ Ê«·≈œ«—Ì «·ﬁ«∆„ ⁄·Ï «·—Ê÷…° Ê Ê“Ì⁄ Âœ«Ì« —„“Ì… ⁄·Ï «·√ÿ›«·° Ê ÊÀÌﬁ ·ÕŸ«  «· œ‘Ì‰ »⁄œ”… ›—Ìﬁ «· ’ÊÌ— «·Œ«’ »«·„—ﬂ“.
ÊÌ√ Ì Â–« «·„‘—Ê⁄ «‰ÿ·«ﬁ« „‰ —ƒÌ… «·„—ﬂ“ «·ÿ„ÊÕ… ›Ì »‰«¡ ÃÌ· ﬁ—¬‰Ì „‰”Ã„ „⁄ «·ﬁÌ„ «·≈”·«„Ì…° Ê Ê›Ì— »Ì∆…  ⁄·Ì„Ì… —«ﬁÌ…  ‰„¯Ì «·ﬁœ—«  «·–Â‰Ì… Ê«·Õ”Ì… Ê«·Õ—ﬂÌ… ··ÿ›·° Ê ı⁄““ „‰ «— »«ÿÂ »«·ﬁ—¬‰ «·ﬂ—Ì„ „‰– ”‰Ê« Â «·√Ê·Ï.
', 4)
INSERT [dbo].[Expenses] ([ExpenseID], [Title], [Amount], [Date], [AcademicYearID], [Description], [IsActivity], [Notes], [PaidBy]) VALUES (2, N'ÌÊ„ «·”—œ «·‘Â—Ì · À»Ì  «·„Õ›ÊŸ', CAST(30000.00 AS Decimal(10, 2)), CAST(N'2025-02-28' AS Date), 1, N'
÷„‰ «·Œÿ… «· —»ÊÌ… «· Ì Ì‰ ÂÃÂ« „—ﬂ“ «·ﬁœ” · Õ›ÌŸ «·ﬁ—¬‰ «·ﬂ—Ì„° ÊÕ—’« ⁄·Ï  —”ÌŒ «·„Õ›ÊŸ ›Ì ’œÊ— «·ÿ«·»« ° ‰Ÿ¯„ «·„—ﬂ“ "ÌÊ„ «·”—œ «·‘Â—Ì"° ÊÂÊ »—‰«„Ã  ﬁÌÌ„ ‘«„· ÌÂœ› ≈·Ï „ «»⁄… «·Õ›Ÿ Ê À»Ì Â Ê ﬁœÌ— «·ÃÂÊœ «·„»–Ê·… „‰ «·ÿ«·»« .', 1, N'Êﬁœ ‘«—ﬂ  ›Ì Â–« «·ÌÊ„ Ã„Ì⁄ «·ÿ«·»«  „‰ „Œ ·› «·Õ·ﬁ«  Ê«·„” ÊÌ« ° ÕÌÀ  „  ‰ŸÌ„ Ã·”«  ”—œ Ã„«⁄Ì Ê›—œÌ √„«„ ·Ã«‰ «· ﬁÌÌ„ «·„ Œ’’… „‰ „⁄·„«  –Ê«  Œ»—… ›Ì «· ÃÊÌœ Ê÷»ÿ «·„’Õ›° Ê‘„·  ⁄„·Ì… «· ﬁÌÌ„ „—«Ã⁄… ‘«„·… ··„Õ›ÊŸ«  «·”«»ﬁ… Ê›ﬁ «·Œÿ… «·›’·Ì… «·„⁄ „œ… ·ﬂ· ÿ«·»….
”«œ  «·√ÃÊ«¡ —ÊÕ „‰ «·Õ„«” Ê«·ÃœÌ…° ÕÌÀ Õ—’  «·ÿ«·»«  ⁄·Ï  ﬁœÌ„ √›÷· „« ·œÌÂ‰ „‰ √œ«¡ ÊÃÊœ… ›Ì «·Õ›Ÿ° »Ì‰„« ﬁ«„  «··Ã«‰ » ÊÀÌﬁ «·‰ «∆Ã Ê—›⁄ «· ﬁ«—Ì— ·ﬂ· Õ·ﬁ… · ıƒŒ– »⁄Ì‰ «·«⁄ »«— ›Ì ≈⁄œ«œ  ﬁ«—Ì— «·√œ«¡ «·”‰ÊÌ.
Ê Œ·· «·ÌÊ„ ›ﬁ—«   Õ›Ì“Ì… ··ÿ«·»«  «·„ ﬁ‰« ° ÕÌÀ  „  Ê“Ì⁄ ‘Â«œ«   ﬁœÌ— ÊÂœ«Ì« —„“Ì… ·ﬂ· ÿ«·»… √ŸÂ—  «· “«„« Ê«‰÷»«ÿ« ›Ì Õ›ŸÂ«° „„« ⁄“¯“ „‰ —ÊÕ «·„‰«›”… «·≈ÌÃ«»Ì… »Ì‰Â‰° Ê‘Ã⁄ €Ì—Â‰ ⁄·Ï «·„À«»—….
ÊÌı⁄œ Â–« «·»—‰«„Ã √Õœ √Â„ «·»—«„Ã «· —»ÊÌ… «· Ì ÌÕ—’ ⁄·ÌÂ« «·„—ﬂ“° ·ﬂÊ‰Â Ìı”Â„ ›Ì „ «»⁄…  ÿÊ— ﬂ· ÿ«·»… »‘ﬂ· œÊ—Ì° ÊÌ„‰Õ Ê·Ì «·√„— Ê«·„⁄·„… ’Ê—… Ê«÷Õ… ⁄‰ „” ÊÏ «·Õ›Ÿ Ê«·À€—«  «· Ì  Õ «Ã „—«Ã⁄… Ê„⁄«·Ã….
Œ «„«° ›≈‰ ÌÊ„ «·”—œ «·‘Â—Ì ·Ì” „Ã—œ  ﬁÌÌ„° »· ÂÊ «Õ ›«· ‘Â—Ì »„‰ÂÃÌ… «·ﬁ—¬‰° Ê«‰ ’«— ··≈’—«— Ê«·„À«»—…° Ê Ã”Ìœ ⁄„·Ì ·„ﬁÊ·…: "ŒÌ—ﬂ„ „‰  ⁄·„ «·ﬁ—¬‰ Ê⁄·¯„Â".', 4)
INSERT [dbo].[Expenses] ([ExpenseID], [Title], [Amount], [Date], [AcademicYearID], [Description], [IsActivity], [Notes], [PaidBy]) VALUES (3, N'«·„‘«—ﬂ… ›Ì «·ﬁÌ«œ… «· —»ÊÌ…', CAST(30000.00 AS Decimal(10, 2)), CAST(N'2025-03-02' AS Date), 1, N'
›Ì ≈ÿ«—  ⁄“Ì“ «·ﬂ›«¡… «·„Â‰Ì… Ê»‰«¡ »Ì∆…  ⁄·Ì„Ì… „ƒÀ—… Ê›«⁄·…° ‘«—ﬂ  „⁄·„«  Ê≈œ«—Ì«  „—ﬂ“ «·ﬁœ” · Õ›ÌŸ «·ﬁ—¬‰ «·ﬂ—Ì„ ›Ì √‰‘ÿ… «·ﬁÌ«œ… «· —»ÊÌ… «· Ì  Âœ› ≈·Ï  ÿÊÌ— «·„Â«—«  «·ﬁÌ«œÌ…° Ê ‰„Ì… «·ﬁœ—«  ›Ì «· ŒÿÌÿ Ê«· ‰ŸÌ„ Ê«·≈‘—«› «· —»ÊÌ.', 1, N'
Êﬁœ  „À·  «·„‘«—ﬂ… ›Ì Õ÷Ê— «··ﬁ«¡«  «· —»ÊÌ… «·œÊ—Ì…° Ê«·„”«Â„… ›Ì ≈⁄œ«œ «·Œÿÿ «· ⁄·Ì„Ì… ··Õ·ﬁ« ° Ê ‰ŸÌ„ «·›⁄«·Ì«  «·ﬁ—¬‰Ì… Ê«· —»ÊÌ… œ«Œ· «·„—ﬂ“° Ê ﬁœÌ„ «·„»«œ—«  «·‰Ê⁄Ì… «· Ì  ı”Â„ ›Ì —›⁄ ÃÊœ… «·√œ«¡ œ«Œ· «·Õ·ﬁ… ÊŒ«—ÃÂ«.
ﬂ„« ‘«—ﬂ  ⁄œœ „‰ «·„⁄·„«  ›Ì „Â«„ ﬁÌ«œÌ… œ«Œ· «·„—ﬂ“° „À· «·≈‘—«› «·⁄«„ ⁄·Ï «·Õ·ﬁ« ° Ê ÊÃÌÂ «·„⁄·„«  «·„” Ãœ« ° Ê≈⁄œ«œ „·›«  «·≈‰Ã«“° Ê„ «»⁄…  ‰›Ì– «·„⁄«ÌÌ— «· ⁄·Ì„Ì… Ê«· ﬁÊÌ„Ì….
Ê ⁄ﬂ” Â–Â «·„‘«—ﬂ… —ÊÕ «·„”ƒÊ·Ì… «·⁄«·Ì… ·œÏ «·›—Ìﬁ «· —»ÊÌ ›Ì «·„—ﬂ“° ÊÕ—’Â ⁄·Ï  —”ÌŒ «·ﬁÌ„ «·ﬁÌ«œÌ… «·ﬁ«∆„… ⁄·Ï «·⁄„· «·Ã„«⁄Ì° Ê«·ﬁœÊ… «·’«·Õ…° Ê«· ÿÊÌ— «·„” „—° »„« ÌÊ«ﬂ» —ƒÌ… «·„—ﬂ“ ›Ì ≈⁄œ«œ ÃÌ· ﬁ—¬‰Ì „ „ﬂ‰°  ﬁÊœÂ ﬂÊ«œ— „ƒÂ·… ﬁÌ«œÌ« Ê —»ÊÌ«.', 4)
SET IDENTITY_INSERT [dbo].[Expenses] OFF
GO
SET IDENTITY_INSERT [dbo].[FinalExam] ON 

INSERT [dbo].[FinalExam] ([FinalExamID], [StudentID], [Date], [MemorizeScore], [ReviewScore], [TotalScore], [Notes]) VALUES (1002, 3, CAST(N'0001-01-01' AS Date), 50, 50, 100, N'„„ «“')
INSERT [dbo].[FinalExam] ([FinalExamID], [StudentID], [Date], [MemorizeScore], [ReviewScore], [TotalScore], [Notes]) VALUES (1003, 3, CAST(N'0001-01-01' AS Date), 50, 50, 100, NULL)
SET IDENTITY_INSERT [dbo].[FinalExam] OFF
GO
SET IDENTITY_INSERT [dbo].[FinancialSupport] ON 

INSERT [dbo].[FinancialSupport] ([FinancialSupportID], [SupporterName], [Amount], [Date], [AcademicYearID], [Notes]) VALUES (1, N'„Õ”‰ «·ŒÌ—', CAST(100000.00 AS Decimal(10, 2)), CAST(N'2024-01-15' AS Date), 1, N'œ⁄„ ‘Â—Ì')
INSERT [dbo].[FinancialSupport] ([FinancialSupportID], [SupporterName], [Amount], [Date], [AcademicYearID], [Notes]) VALUES (2, N'‘—ﬂ… «·√„·', CAST(500000.00 AS Decimal(10, 2)), CAST(N'2024-04-20' AS Date), 1, N'œ⁄„ „‘—Ê⁄')
INSERT [dbo].[FinancialSupport] ([FinancialSupportID], [SupporterName], [Amount], [Date], [AcademicYearID], [Notes]) VALUES (3, N'›«⁄· ŒÌ—', CAST(50000.00 AS Decimal(10, 2)), CAST(N'2024-05-05' AS Date), 1, N'œ⁄„ ⁄«„')
INSERT [dbo].[FinancialSupport] ([FinancialSupportID], [SupporterName], [Amount], [Date], [AcademicYearID], [Notes]) VALUES (4, N'„ƒ””… «·‰Ê—', CAST(600000.00 AS Decimal(10, 2)), CAST(N'2024-10-10' AS Date), 1, N'œ⁄„ «·√‰‘ÿ…')
INSERT [dbo].[FinancialSupport] ([FinancialSupportID], [SupporterName], [Amount], [Date], [AcademicYearID], [Notes]) VALUES (5, N'√Õ„œ „Õ„œ', CAST(20000.00 AS Decimal(10, 2)), CAST(N'2024-11-25' AS Date), 1, N'œ⁄„ ‘Â—Ì')
SET IDENTITY_INSERT [dbo].[FinancialSupport] OFF
GO
SET IDENTITY_INSERT [dbo].[Halaqa] ON 

INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (1, N'ÃÊÌ—Ì… »‰  «·Õ«—À', N'’»«ÕÌ…', 1, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (2, N'⁄«∆‘… »‰  ÿ·Õ…', N'„”«∆Ì…', 2, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (3, N'√„ ”·„…', N'’»«ÕÌ…', 3, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (4, N'«·Œ‰”«¡', N'„”«∆Ì…', 4, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (5, N'«·—„Ì’«¡', N'„”«∆Ì…', 5, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (6, N'√”„«¡ »‰  √»Ì »ﬂ—', N'„”«∆Ì…', 6, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (7, N'√„ Ê—ﬁ…', N'’»«ÕÌ…', 7, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (8, N'√„ ﬂ·ÀÊ„', N'„”«∆Ì…', 8, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (9, N'„«—Ì… «·ﬁ»ÿÌ…', N'’»«ÕÌ…', 9, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (10, N'›«ÿ„… «·“Â—«¡', N'„”«∆Ì…', 10, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (11, N'Â‰œ »‰  ⁄ »…', N'’»«ÕÌ…', 11, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (12, N'”Êœ… »‰  “„⁄…', N'„”«∆Ì…', 12, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (13, N'√„ Õ»Ì»…', N'„”«∆Ì…', 13, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (14, N'”„Ì… »‰  «·ŒÌ«ÿ', N'„”«∆Ì…', 14, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (15, N'‰”Ì»… »‰  ﬂ⁄»', N'„”«∆Ì…', 15, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (16, N'Õ›’… »‰  ⁄„—', N'’»«ÕÌ…', 2, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (17, N'„Ì„Ê‰… »‰  «·Õ«—À', N'’»«ÕÌ…', 2, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (18, N'√”„«¡ »‰  ⁄„Ì”', N'’»«ÕÌ…', 12, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (19, N'ŒÊ·… »‰  «·√“Ê—', N'’»«ÕÌ…', 4, 1)
INSERT [dbo].[Halaqa] ([HalaqaID], [Name], [Period], [TeacherID], [AcademicYearID]) VALUES (20, N'«·“Â—«¡', N'’»«ÕÌ…', 6, 1)
SET IDENTITY_INSERT [dbo].[Halaqa] OFF
GO
SET IDENTITY_INSERT [dbo].[HalaqaManhaj] ON 

INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (1, 1, 1)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (2, 1, 2)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (3, 2, 2)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (4, 2, 3)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (5, 3, 3)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (6, 3, 1)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (7, 3, 4)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (8, 4, 5)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (9, 4, 2)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (10, 4, 1)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (11, 4, 3)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (12, 5, 1)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (13, 5, 2)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (14, 5, 3)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (15, 5, 4)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (16, 5, 5)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (17, 6, 4)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (18, 6, 1)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (19, 6, 3)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (20, 7, 3)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (21, 7, 5)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (22, 7, 2)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (23, 8, 2)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (24, 8, 4)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (25, 8, 1)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (26, 8, 5)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (27, 9, 5)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (28, 9, 3)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (29, 9, 2)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (30, 9, 4)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (31, 10, 4)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (32, 10, 2)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (33, 10, 1)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (34, 11, 3)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (35, 11, 5)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (36, 12, 2)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (37, 12, 1)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (38, 13, 1)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (39, 13, 4)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (40, 14, 5)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (41, 14, 2)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (42, 15, 5)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (43, 15, 3)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (44, 16, 2)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (45, 16, 4)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (46, 17, 1)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (47, 17, 3)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (48, 18, 4)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (49, 18, 5)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (50, 19, 3)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (51, 19, 2)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (52, 20, 2)
INSERT [dbo].[HalaqaManhaj] ([HalaqaManhajID], [HalaqaID], [ManhajID]) VALUES (53, 20, 1)
SET IDENTITY_INSERT [dbo].[HalaqaManhaj] OFF
GO
SET IDENTITY_INSERT [dbo].[Manhaj] ON 

INSERT [dbo].[Manhaj] ([ManhajID], [Name], [URL], [Picture]) VALUES (1, N'„‰ÂÃ «· ÃÊÌœ', N'www.example.com/tajweed', N'C:\Users\User\Pictures\tajweed.jpg')
INSERT [dbo].[Manhaj] ([ManhajID], [Name], [URL], [Picture]) VALUES (2, N' Õ›… «·√ÿ›«·', N'www.example.com/tohfat-alatfal', N'C:\Users\User\Pictures\tohfat-alatfal.jpg')
INSERT [dbo].[Manhaj] ([ManhajID], [Name], [URL], [Picture]) VALUES (3, N'«·Ã“—Ì…', N'www.example.com/jazariya', N'C:\Users\User\Pictures\jazariya.jpg')
INSERT [dbo].[Manhaj] ([ManhajID], [Name], [URL], [Picture]) VALUES (4, N'«·√—»⁄Ê‰ «·‰ÊÊÌ…', N'www.example.com/arbaoon-nawawi', N'C:\Users\User\Pictures\arbaoon-nawawi.jpg')
INSERT [dbo].[Manhaj] ([ManhajID], [Name], [URL], [Picture]) VALUES (5, N'—Ì«÷ «·’«·ÕÌ‰', N'www.example.com/riyad-al-salihin', N'C:\Users\User\Pictures\riyad-al-salihin.jpg')
SET IDENTITY_INSERT [dbo].[Manhaj] OFF
GO
SET IDENTITY_INSERT [dbo].[MemorizationPath] ON 

INSERT [dbo].[MemorizationPath] ([PathID], [MemorizeFrom], [MemorizeTo], [Name]) VALUES (1, N'«·‰«”', N'«·–«—Ì« ', N'«·„” ÊÏ «·√Ê·')
INSERT [dbo].[MemorizationPath] ([PathID], [MemorizeFrom], [MemorizeTo], [Name]) VALUES (2, N'ﬁ', N'«·‘⁄—«¡', N'«·„” ÊÏ «·À«‰Ì')
INSERT [dbo].[MemorizationPath] ([PathID], [MemorizeFrom], [MemorizeTo], [Name]) VALUES (3, N'«·›—ﬁ«‰', N'«·—⁄œ', N'«·„” ÊÏ «·À«·À')
INSERT [dbo].[MemorizationPath] ([PathID], [MemorizeFrom], [MemorizeTo], [Name]) VALUES (4, N'ÌÊ”›', N'«·√‰⁄«„', N'«·„” ÊÏ «·—«»⁄')
INSERT [dbo].[MemorizationPath] ([PathID], [MemorizeFrom], [MemorizeTo], [Name]) VALUES (5, N'«·„«∆œ…', N'«·›« Õ…', N'«·„” ÊÏ «·Œ«„”')
SET IDENTITY_INSERT [dbo].[MemorizationPath] OFF
GO
SET IDENTITY_INSERT [dbo].[MemorizePlan] ON 

INSERT [dbo].[MemorizePlan] ([MemorizePlanID], [Date], [BeginPage], [DailyAmount], [StudentID]) VALUES (1009, CAST(N'2024-09-01' AS Date), 1, 1, 3)
INSERT [dbo].[MemorizePlan] ([MemorizePlanID], [Date], [BeginPage], [DailyAmount], [StudentID]) VALUES (1011, CAST(N'2024-09-01' AS Date), 1, 1, 13)
INSERT [dbo].[MemorizePlan] ([MemorizePlanID], [Date], [BeginPage], [DailyAmount], [StudentID]) VALUES (1012, CAST(N'2024-09-01' AS Date), 1, 2, 23)
INSERT [dbo].[MemorizePlan] ([MemorizePlanID], [Date], [BeginPage], [DailyAmount], [StudentID]) VALUES (2010, CAST(N'2024-09-01' AS Date), 31, 4, 33)
INSERT [dbo].[MemorizePlan] ([MemorizePlanID], [Date], [BeginPage], [DailyAmount], [StudentID]) VALUES (2011, CAST(N'2024-09-01' AS Date), 1, 1, 43)
INSERT [dbo].[MemorizePlan] ([MemorizePlanID], [Date], [BeginPage], [DailyAmount], [StudentID]) VALUES (2012, CAST(N'2024-09-01' AS Date), 1, 1, 53)
SET IDENTITY_INSERT [dbo].[MemorizePlan] OFF
GO
SET IDENTITY_INSERT [dbo].[Parents] ON 

INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (1, N'√Õ„œ ⁄·Ì „Õ„œ', N'05311111122', N'312340')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (2, N'„Õ„œ ⁄„— ⁄»œ«··Â', N'05322222233', N'343210')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (3, N'ÌÊ”› Œ«·œ ÌÊ”›', N'05333333344', N'367890')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (4, N'⁄»œ«··Â ”⁄Ìœ ≈»—«ÂÌ„', N'05344444455', N'398760')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (5, N'⁄„— Õ”‰ ≈”„«⁄Ì·', N'05355555566', N'323450')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (6, N'⁄·Ì Õ”Ì‰ √Õ„œ', N'05366666677', N'354320')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (7, N'Œ«·œ „Õ„Êœ „Õ„œ', N'05377777788', N'378900')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (8, N'”⁄Ìœ ”«„Ì ⁄„—', N'05388888899', N'309870')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (9, N'≈»—«ÂÌ„ √‰Ê— ⁄»œ«··Â', N'05399999900', N'334560')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (10, N'≈”„«⁄Ì· Ì«”— ÌÊ”›', N'05300000011', N'365430')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (11, N'√»Ê ·Ì·Ï Œ«·œ ≈»—«ÂÌ„', N'05311111222', N'312350')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (12, N'√»Ê ‰Ê— ”⁄Ìœ ≈”„«⁄Ì·', N'05322222333', N'343220')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (13, N'√»Ê ÂœÏ Õ”‰ √Õ„œ', N'05333333444', N'367900')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (14, N'√»Ê „‰Ï Õ”Ì‰ „Õ„œ', N'05344444555', N'398770')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (15, N'√»Ê ”«—… „Õ„Êœ ⁄„—', N'05355555666', N'323460')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (16, N'√»Ê —Ì„ ”«„Ì ⁄»œ«··Â', N'05366666777', N'354330')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (17, N'√»Ê ¬Ì… √‰Ê— ÌÊ”›', N'05377777888', N'378910')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (18, N'√»Ê ›«ÿ„… Ì«”— ≈»—«ÂÌ„', N'05388888999', N'309880')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (19, N'√»Ê “Ì‰» ﬂ—Ì„ ≈”„«⁄Ì·', N'05399999000', N'334570')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (20, N'√»Ê „—Ì„ ‰»Ì· √Õ„œ', N'05300000111', N'365440')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (1002, N'„ÃœÌ ”«·„ „—⁄Ì', N'706667889', N'420181')
INSERT [dbo].[Parents] ([ParentID], [Name], [MobileNumber], [PhoneNumber]) VALUES (1003, N'„ÃœÌ ”«·„ „—⁄Ì', N'714736068', N'320181')
SET IDENTITY_INSERT [dbo].[Parents] OFF
GO
SET IDENTITY_INSERT [dbo].[Path_Halaqa_Relationship] ON 

INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (1, 1, 1)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (2, 1, 2)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (3, 1, 3)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (4, 1, 4)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (5, 2, 5)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (6, 2, 6)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (7, 2, 7)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (8, 2, 8)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (9, 3, 9)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (10, 3, 10)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (11, 3, 11)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (12, 3, 12)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (13, 4, 13)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (14, 4, 14)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (15, 4, 15)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (16, 4, 16)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (17, 5, 17)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (18, 5, 18)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (19, 5, 19)
INSERT [dbo].[Path_Halaqa_Relationship] ([PathHalaqaID], [PathID], [HalaqaID]) VALUES (20, 5, 20)
SET IDENTITY_INSERT [dbo].[Path_Halaqa_Relationship] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'≈œ«—Ì')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'„⁄·„')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleAccount] ON 

INSERT [dbo].[RoleAccount] ([RoleAccountID], [AccountID], [RoleID], [TeacherID]) VALUES (1, 1, 1, 1)
INSERT [dbo].[RoleAccount] ([RoleAccountID], [AccountID], [RoleID], [TeacherID]) VALUES (2, 2, 2, 2)
INSERT [dbo].[RoleAccount] ([RoleAccountID], [AccountID], [RoleID], [TeacherID]) VALUES (3, 3, 2, 3)
INSERT [dbo].[RoleAccount] ([RoleAccountID], [AccountID], [RoleID], [TeacherID]) VALUES (4, 4, 1, 4)
INSERT [dbo].[RoleAccount] ([RoleAccountID], [AccountID], [RoleID], [TeacherID]) VALUES (5, 5, 2, 5)
INSERT [dbo].[RoleAccount] ([RoleAccountID], [AccountID], [RoleID], [TeacherID]) VALUES (6, 6, 2, 6)
INSERT [dbo].[RoleAccount] ([RoleAccountID], [AccountID], [RoleID], [TeacherID]) VALUES (7, 7, 1, 7)
INSERT [dbo].[RoleAccount] ([RoleAccountID], [AccountID], [RoleID], [TeacherID]) VALUES (8, 8, 2, 8)
INSERT [dbo].[RoleAccount] ([RoleAccountID], [AccountID], [RoleID], [TeacherID]) VALUES (9, 9, 2, 9)
INSERT [dbo].[RoleAccount] ([RoleAccountID], [AccountID], [RoleID], [TeacherID]) VALUES (10, 10, 1, 10)
INSERT [dbo].[RoleAccount] ([RoleAccountID], [AccountID], [RoleID], [TeacherID]) VALUES (11, 11, 2, 11)
INSERT [dbo].[RoleAccount] ([RoleAccountID], [AccountID], [RoleID], [TeacherID]) VALUES (12, 12, 2, 12)
INSERT [dbo].[RoleAccount] ([RoleAccountID], [AccountID], [RoleID], [TeacherID]) VALUES (13, 13, 1, 14)
INSERT [dbo].[RoleAccount] ([RoleAccountID], [AccountID], [RoleID], [TeacherID]) VALUES (14, 14, 2, 15)
SET IDENTITY_INSERT [dbo].[RoleAccount] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (2, N'·Ì·Ï √Õ„œ ⁄·Ì', CAST(N'2013-05-10' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 1, 1)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (3, N'‰Ê— „Õ„œ ⁄„—', CAST(N'2011-08-15' AS Date), N'712222222', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 2, 2)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (4, N'ÂœÏ ÌÊ”› Œ«·œ', CAST(N'2008-03-20' AS Date), N'713333333', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'À«‰ÊÌ', N'À«‰ÊÌ', 3, 3)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (5, N'„‰Ï ⁄»œ«··Â ”⁄Ìœ', CAST(N'2014-09-25' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 4, 4)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (6, N'”«—… ⁄„— Õ”‰', CAST(N'2012-06-30' AS Date), N'715555555', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 5, 5)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (7, N'—Ì„ ⁄·Ì Õ”Ì‰', CAST(N'2009-01-05' AS Date), N'716666666', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'À«‰ÊÌ', N'À«‰ÊÌ', 6, 6)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (8, N'¬Ì… Œ«·œ „Õ„Êœ', CAST(N'2013-04-12' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 7, 7)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (9, N'›«ÿ„… ”⁄Ìœ ”«„Ì', CAST(N'2010-07-18' AS Date), N'718888888', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 8, 8)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (10, N'“Ì‰» ≈»—«ÂÌ„ √‰Ê—', CAST(N'2007-02-23' AS Date), N'719999999', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'À«‰ÊÌ', N'À«‰ÊÌ', 9, 9)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (11, N'„—Ì„ ≈”„«⁄Ì· Ì«”—', CAST(N'2014-11-28' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 10, 10)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (12, N'ŒœÌÃ… √»Ê ·Ì·Ï Œ«·œ', CAST(N'2012-05-03' AS Date), N'711111112', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 1, 11)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (13, N'⁄«∆‘… √»Ê ‰Ê— ”⁄Ìœ', CAST(N'2009-08-08' AS Date), N'712222223', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'À«‰ÊÌ', N'À«‰ÊÌ', 2, 12)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (14, N'—ﬁÌ… √»Ê ÂœÏ Õ”‰', CAST(N'2013-03-15' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 3, 13)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (15, N'√„ ﬂ·ÀÊ„ √»Ê „‰Ï Õ”Ì‰', CAST(N'2011-06-20' AS Date), N'714444445', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 4, 14)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (16, N'ÃÊÌ—Ì… √»Ê ”«—… „Õ„Êœ', CAST(N'2008-01-25' AS Date), N'715555556', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'À«‰ÊÌ', N'À«‰ÊÌ', 5, 15)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (17, N'’›Ì… √»Ê —Ì„ ”«„Ì', CAST(N'2014-10-30' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 6, 16)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (18, N'„Ì„Ê‰… √»Ê ¬Ì… √‰Ê—', CAST(N'2012-07-05' AS Date), N'717777778', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 7, 17)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (19, N'Â‰œ √»Ê ›«ÿ„… Ì«”—', CAST(N'2009-04-10' AS Date), N'718888889', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'À«‰ÊÌ', N'À«‰ÊÌ', 8, 18)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (20, N'ÀÊÌ»… √»Ê “Ì‰» ﬂ—Ì„', CAST(N'2013-02-17' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 9, 19)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (21, N'ŒÊ·… √»Ê „—Ì„ ‰»Ì·', CAST(N'2011-05-22' AS Date), N'710000001', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 10, 20)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (22, N'‰«∆·… √Õ„œ ⁄·Ì', CAST(N'2008-12-27' AS Date), N'711111113', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'Ã«„⁄Ì', N'»ﬂ«·Ê—ÌÊ”', 1, 1)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (23, N'·Ì·Ï2 „Õ„œ ⁄„—', CAST(N'2014-08-01' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 2, 2)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (24, N'Õ»Ì»… ÌÊ”› Œ«·œ', CAST(N'2012-03-08' AS Date), N'713333335', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 3, 3)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (25, N'—„·… ⁄»œ«··Â ”⁄Ìœ', CAST(N'2009-10-13' AS Date), N'714444446', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'Ã«„⁄Ì', N'œ»·Ê„', 4, 4)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (26, N'”⁄«œ ⁄„— Õ”‰', CAST(N'2013-01-20' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 5, 5)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (27, N'√„· ⁄·Ì Õ”Ì‰', CAST(N'2011-04-25' AS Date), N'716666668', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 6, 6)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (28, N'≈Ì„«‰ Œ«·œ „Õ„Êœ', CAST(N'2008-11-30' AS Date), N'717777779', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'Ã«„⁄Ì', N'»ﬂ«·Ê—ÌÊ”', 7, 7)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (29, N'„‰Ï2 ”⁄Ìœ ”«„Ì', CAST(N'2014-07-05' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 8, 8)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (30, N'”„Ì… ≈»—«ÂÌ„ √‰Ê—', CAST(N'2012-02-10' AS Date), N'719999991', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 9, 9)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (31, N'Ã„Ì·… ≈”„«⁄Ì· Ì«”—', CAST(N'2009-09-15' AS Date), N'710000002', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'Ã«„⁄Ì', N'œ»·Ê„', 10, 10)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (32, N'‰«œÌ… √»Ê ·Ì·Ï Œ«·œ', CAST(N'2013-12-20' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 1, 11)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (33, N'Õ”‰«¡ √»Ê ‰Ê— ”⁄Ìœ', CAST(N'2011-03-25' AS Date), N'712222225', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 2, 12)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (34, N'Êœ«œ √»Ê ÂœÏ Õ”‰', CAST(N'2008-10-30' AS Date), N'713333336', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'Ã«„⁄Ì', N'»ﬂ«·Ê—ÌÊ”', 3, 13)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (35, N'‰Ã·«¡ √»Ê „‰Ï Õ”Ì‰', CAST(N'2014-06-03' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 4, 14)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (36, N'⁄“Ì“… √»Ê ”«—… „Õ„Êœ', CAST(N'2012-01-08' AS Date), N'715555558', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 5, 15)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (37, N'»‘—Ï √»Ê —Ì„ ”«„Ì', CAST(N'2009-08-13' AS Date), N'716666669', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'Ã«„⁄Ì', N'œ»·Ê„', 6, 16)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (38, N'«» ”«„ √»Ê ¬Ì… √‰Ê—', CAST(N'2013-05-18' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 7, 17)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (39, N'”·ÊÏ √»Ê ›«ÿ„… Ì«”—', CAST(N'2011-08-23' AS Date), N'718888891', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 8, 18)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (40, N'⁄»Ì— √»Ê “Ì‰» ﬂ—Ì„', CAST(N'2008-03-28' AS Date), N'719999992', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'Ã«„⁄Ì', N'»ﬂ«·Ê—ÌÊ”', 9, 19)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (41, N'·ÿÌ›… √»Ê „—Ì„ ‰»Ì·', CAST(N'2014-12-03' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 10, 20)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (42, N'’»«Õ √Õ„œ ⁄·Ì', CAST(N'2012-07-08' AS Date), N'711111115', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 1, 1)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (43, N'·Ì«‰ „Õ„œ ⁄„—', CAST(N'2009-04-13' AS Date), N'712222226', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'Ã«„⁄Ì', N'œ»·Ê„', 2, 2)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (44, N'√—ÊÏ ÌÊ”› Œ«·œ', CAST(N'2013-02-20' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 3, 3)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (45, N'œ·«· ⁄»œ«··Â ”⁄Ìœ', CAST(N'2011-05-25' AS Date), N'714444448', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 4, 4)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (46, N'€«œ… ⁄„— Õ”‰', CAST(N'2008-12-30' AS Date), N'715555559', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'Ã«„⁄Ì', N'»ﬂ«·Ê—ÌÊ”', 5, 5)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (47, N'ÂÌ›«¡ ⁄·Ì Õ”Ì‰', CAST(N'2014-08-03' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 6, 6)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (48, N'—Ì„« Œ«·œ „Õ„Êœ', CAST(N'2012-03-10' AS Date), N'717777781', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 7, 7)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (49, N'ÃÊ«Â— ”⁄Ìœ ”«„Ì', CAST(N'2009-10-15' AS Date), N'718888892', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'Ã«„⁄Ì', N'œ»·Ê„', 8, 8)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (50, N'”«—…2 ≈»—«ÂÌ„ √‰Ê—', CAST(N'2013-01-22' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 9, 9)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (51, N'‘„” ≈”„«⁄Ì· Ì«”—', CAST(N'2011-04-27' AS Date), N'710000004', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 10, 10)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (52, N'·Ì·Ï3 √»Ê ·Ì·Ï Œ«·œ', CAST(N'2008-11-01' AS Date), N'711111116', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'Ã«„⁄Ì', N'»ﬂ«·Ê—ÌÊ”', 1, 11)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (53, N'Â»… √»Ê ‰Ê— ”⁄Ìœ', CAST(N'2014-07-08' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 2, 12)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (54, N'‰Ê«· √»Ê ÂœÏ Õ”‰', CAST(N'2012-02-13' AS Date), N'713333338', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 3, 13)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (55, N'„‰«· √»Ê „‰Ï Õ”Ì‰', CAST(N'2009-09-18' AS Date), N'714444449', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'Ã«„⁄Ì', N'œ»·Ê„', 4, 14)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (56, N'√Õ·«„ √»Ê ”«—… „Õ„Êœ', CAST(N'2013-12-23' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 5, 15)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (57, N'Êœ«œ2 √»Ê —Ì„ ”«„Ì', CAST(N'2011-03-28' AS Date), N'716666671', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 6, 16)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (58, N'≈·Â«„ √»Ê ¬Ì… √‰Ê—', CAST(N'2008-10-03' AS Date), N'717777782', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'Ã«„⁄Ì', N'»ﬂ«·Ê—ÌÊ”', 7, 17)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (59, N'œ⁄«¡ √»Ê ›«ÿ„… Ì«”—', CAST(N'2014-06-08' AS Date), NULL, N'«·„ﬂ·«', N'«·‰«”', N'Ã“¡ ⁄„', N'«» œ«∆Ì', N'«» œ«∆Ì', 8, 18)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (60, N'’›«¡ √»Ê “Ì‰» ﬂ—Ì„', CAST(N'2012-01-13' AS Date), N'719999994', N'«·„ﬂ·«', N'ﬁ', N'Ã“¡  »«—ﬂ', N'≈⁄œ«œÌ', N'≈⁄œ«œÌ', 9, 19)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (61, N'Ê›«¡ √»Ê „—Ì„ ‰»Ì·', CAST(N'2009-08-18' AS Date), N'710000005', N'«·„ﬂ·«', N'«·›—ﬁ«‰', N'Ã“¡ ﬁœ ”„⁄', N'Ã«„⁄Ì', N'œ»·Ê„', 10, 20)
INSERT [dbo].[Student] ([StudentID], [Name], [BirthDate], [PhoneNumber], [Address], [BeginOfMemorize], [MemorizationQuorum], [CurrentEducationalLevel], [EducationalQualification], [HalaqaID], [ParentID]) VALUES (1004, N'„‰Ï „ÃœÌ „—⁄Ì ', CAST(N'2003-09-14' AS Date), N'700668587', N'«·œÌ” ', NULL, NULL, N'Ã«„⁄Ì', N'À«‰ÊÌ', 1, 1003)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([TeacherID], [Name], [BirthDate], [PhoneNumber], [Address], [Job], [PassportNumber], [IDNumber], [EducationalQualification], [Experience], [Courses], [MaritalStatus], [IsAdministrator], [IsMojaz], [AmountOfMemorization]) VALUES (1, N'›«ÿ„… ⁄·Ì „Õ„œ', CAST(N'1980-05-15' AS Date), N'772345678', N'«·„ﬂ·«', N'„⁄·„… ﬁ—¬‰', N'P123456', N'ID123456', N'»ﬂ«·Ê—ÌÊ” œ—«”«  ≈”·«„Ì…', N'10 ”‰Ê« ', N'œÊ—«   ÃÊÌœ', N'„ “ÊÃ…', 0, 1, N'30 Ã“¡')
INSERT [dbo].[Teacher] ([TeacherID], [Name], [BirthDate], [PhoneNumber], [Address], [Job], [PassportNumber], [IDNumber], [EducationalQualification], [Experience], [Courses], [MaritalStatus], [IsAdministrator], [IsMojaz], [AmountOfMemorization]) VALUES (2, N'ŒœÌÃ… ⁄„— ⁄»œ«··Â', CAST(N'1985-08-20' AS Date), N'773456789', N'«·„ﬂ·«', N'„⁄·„… ﬁ—¬‰', N'P654321', N'ID654321', N'œ»·Ê„ œ—«”«  ≈”·«„Ì…', N'5 ”‰Ê« ', N'œÊ—«   ÃÊÌœ', N'⁄“»«¡', 0, 0, N'15 Ã“¡')
INSERT [dbo].[Teacher] ([TeacherID], [Name], [BirthDate], [PhoneNumber], [Address], [Job], [PassportNumber], [IDNumber], [EducationalQualification], [Experience], [Courses], [MaritalStatus], [IsAdministrator], [IsMojaz], [AmountOfMemorization]) VALUES (3, N'⁄«∆‘… Œ«·œ ÌÊ”›', CAST(N'1990-03-10' AS Date), N'775678901', N'«·„ﬂ·«', N'„⁄·„… ﬁ—¬‰', N'P789012', N'ID789012', N'»ﬂ«·Ê—ÌÊ” ·€… ⁄—»Ì…', N'3 ”‰Ê« ', N'œÊ—«   ÃÊÌœ', N'„ “ÊÃ…', 0, 1, N'20 Ã“¡')
INSERT [dbo].[Teacher] ([TeacherID], [Name], [BirthDate], [PhoneNumber], [Address], [Job], [PassportNumber], [IDNumber], [EducationalQualification], [Experience], [Courses], [MaritalStatus], [IsAdministrator], [IsMojaz], [AmountOfMemorization]) VALUES (4, N'—ﬁÌ… ”⁄Ìœ ≈»—«ÂÌ„', CAST(N'1982-11-25' AS Date), N'776789012', N'«·„ﬂ·«', N'„⁄·„… ﬁ—¬‰', N'P012345', N'ID012345', N'œ»·Ê„ œ—«”«  ≈”·«„Ì…', N'8 ”‰Ê« ', N'œÊ—«   ÃÊÌœ', N'⁄“»«¡', 0, 0, N'25 Ã“¡')
INSERT [dbo].[Teacher] ([TeacherID], [Name], [BirthDate], [PhoneNumber], [Address], [Job], [PassportNumber], [IDNumber], [EducationalQualification], [Experience], [Courses], [MaritalStatus], [IsAdministrator], [IsMojaz], [AmountOfMemorization]) VALUES (5, N'„—Ì„ Õ”‰ ≈”„«⁄Ì·', CAST(N'1987-06-30' AS Date), N'778901234', N'«·„ﬂ·«', N'„⁄·„… ﬁ—¬‰', N'P543210', N'ID543210', N'»ﬂ«·Ê—ÌÊ” ‘—Ì⁄…', N'6 ”‰Ê« ', N'œÊ—«   ÃÊÌœ', N'„ “ÊÃ…', 0, 1, N'28 Ã“¡')
INSERT [dbo].[Teacher] ([TeacherID], [Name], [BirthDate], [PhoneNumber], [Address], [Job], [PassportNumber], [IDNumber], [EducationalQualification], [Experience], [Courses], [MaritalStatus], [IsAdministrator], [IsMojaz], [AmountOfMemorization]) VALUES (6, N'√”„«¡ Õ”Ì‰ √Õ„œ', CAST(N'1992-09-05' AS Date), N'779012345', N'«·„ﬂ·«', N'„⁄·„… ﬁ—¬‰', N'P234567', N'ID234567', N'œ»·Ê„ œ—«”«  ≈”·«„Ì…', N'2 ”‰Ê« ', N'œÊ—«   ÃÊÌœ', N'⁄“»«¡', 0, 0, N'10 Ã“¡')
INSERT [dbo].[Teacher] ([TeacherID], [Name], [BirthDate], [PhoneNumber], [Address], [Job], [PassportNumber], [IDNumber], [EducationalQualification], [Experience], [Courses], [MaritalStatus], [IsAdministrator], [IsMojaz], [AmountOfMemorization]) VALUES (7, N'“Ì‰» „Õ„Êœ „Õ„œ', CAST(N'1984-02-12' AS Date), N'771234568', N'«·„ﬂ·«', N'„⁄·„… ﬁ—¬‰', N'P678901', N'ID678901', N'»ﬂ«·Ê—ÌÊ”  —»Ì… ≈”·«„Ì…', N'7 ”‰Ê« ', N'œÊ—«   ÃÊÌœ', N'„ “ÊÃ…', 0, 1, N'22 Ã“¡')
INSERT [dbo].[Teacher] ([TeacherID], [Name], [BirthDate], [PhoneNumber], [Address], [Job], [PassportNumber], [IDNumber], [EducationalQualification], [Experience], [Courses], [MaritalStatus], [IsAdministrator], [IsMojaz], [AmountOfMemorization]) VALUES (8, N'Õ›’… ”«„Ì ⁄„—', CAST(N'1989-07-18' AS Date), N'772345679', N'«·„ﬂ·«', N'„⁄·„… ﬁ—¬‰', N'P012346', N'ID012346', N'œ»·Ê„ œ—«”«  ≈”·«„Ì…', N'4 ”‰Ê« ', N'œÊ—«   ÃÊÌœ', N'⁄“»«¡', 0, 0, N'18 Ã“¡')
INSERT [dbo].[Teacher] ([TeacherID], [Name], [BirthDate], [PhoneNumber], [Address], [Job], [PassportNumber], [IDNumber], [EducationalQualification], [Experience], [Courses], [MaritalStatus], [IsAdministrator], [IsMojaz], [AmountOfMemorization]) VALUES (9, N'”„Ì… √‰Ê— ⁄»œ«··Â', CAST(N'1981-10-22' AS Date), N'774567891', N'«·„ﬂ·«', N'„⁄·„… ﬁ—¬‰', N'P543211', N'ID543211', N'»ﬂ«·Ê—ÌÊ” œ—«”«  ≈”·«„Ì…', N'9 ”‰Ê« ', N'œÊ—«   ÃÊÌœ', N'„ “ÊÃ…', 0, 1, N'27 Ã“¡')
INSERT [dbo].[Teacher] ([TeacherID], [Name], [BirthDate], [PhoneNumber], [Address], [Job], [PassportNumber], [IDNumber], [EducationalQualification], [Experience], [Courses], [MaritalStatus], [IsAdministrator], [IsMojaz], [AmountOfMemorization]) VALUES (10, N'√„ ﬂ·ÀÊ„ Ì«”— ÌÊ”›', CAST(N'1986-04-28' AS Date), N'775678902', N'«·„ﬂ·«', N'„⁄·„… ﬁ—¬‰', N'P234568', N'ID234568', N'œ»·Ê„ œ—«”«  ≈”·«„Ì…', N'5 ”‰Ê« ', N'œÊ—«   ÃÊÌœ', N'⁄“»«¡', 0, 0, N'16 Ã“¡')
INSERT [dbo].[Teacher] ([TeacherID], [Name], [BirthDate], [PhoneNumber], [Address], [Job], [PassportNumber], [IDNumber], [EducationalQualification], [Experience], [Courses], [MaritalStatus], [IsAdministrator], [IsMojaz], [AmountOfMemorization]) VALUES (11, N'ÃÊÌ—Ì… ﬂ—Ì„ ≈»—«ÂÌ„', CAST(N'1991-09-03' AS Date), N'777890124', N'«·„ﬂ·«', N'„⁄·„… ﬁ—¬‰', N'P678902', N'ID678902', N'»ﬂ«·Ê—ÌÊ” ·€… ⁄—»Ì…', N'3 ”‰Ê« ', N'œÊ—«   ÃÊÌœ', N'„ “ÊÃ…', 0, 1, N'21 Ã“¡')
INSERT [dbo].[Teacher] ([TeacherID], [Name], [BirthDate], [PhoneNumber], [Address], [Job], [PassportNumber], [IDNumber], [EducationalQualification], [Experience], [Courses], [MaritalStatus], [IsAdministrator], [IsMojaz], [AmountOfMemorization]) VALUES (12, N'’›Ì… ‰»Ì· ≈”„«⁄Ì·', CAST(N'1983-12-08' AS Date), N'778901235', N'«·„ﬂ·«', N'„⁄·„… ﬁ—¬‰', N'P012347', N'ID012347', N'œ»·Ê„ œ—«”«  ≈”·«„Ì…', N'8 ”‰Ê« ', N'œÊ—«   ÃÊÌœ', N'⁄“»«¡', 0, 0, N'24 Ã“¡')
INSERT [dbo].[Teacher] ([TeacherID], [Name], [BirthDate], [PhoneNumber], [Address], [Job], [PassportNumber], [IDNumber], [EducationalQualification], [Experience], [Courses], [MaritalStatus], [IsAdministrator], [IsMojaz], [AmountOfMemorization]) VALUES (13, N'„Ì„Ê‰… —«„Ì √Õ„œ', CAST(N'1988-07-13' AS Date), N'770123457', N'«·„ﬂ·«', N'„⁄·„… ﬁ—¬‰', N'P543212', N'ID543212', N'»ﬂ«·Ê—ÌÊ” ‘—Ì⁄…', N'6 ”‰Ê« ', N'œÊ—«   ÃÊÌœ', N'„ “ÊÃ…', 0, 1, N'29 Ã“¡')
INSERT [dbo].[Teacher] ([TeacherID], [Name], [BirthDate], [PhoneNumber], [Address], [Job], [PassportNumber], [IDNumber], [EducationalQualification], [Experience], [Courses], [MaritalStatus], [IsAdministrator], [IsMojaz], [AmountOfMemorization]) VALUES (14, N'Â‰œ √„Ãœ „Õ„œ', CAST(N'1993-10-18' AS Date), N'771234569', N'«·„ﬂ·«', N'„⁄·„… ﬁ—¬‰', N'P234569', N'ID234569', N'œ»·Ê„ œ—«”«  ≈”·«„Ì…', N'2 ”‰Ê« ', N'œÊ—«   ÃÊÌœ', N'⁄“»«¡', 0, 0, N'11 Ã“¡')
INSERT [dbo].[Teacher] ([TeacherID], [Name], [BirthDate], [PhoneNumber], [Address], [Job], [PassportNumber], [IDNumber], [EducationalQualification], [Experience], [Courses], [MaritalStatus], [IsAdministrator], [IsMojaz], [AmountOfMemorization]) VALUES (15, N'ÀÊÌ»… »Â«¡ ⁄„—', CAST(N'1985-03-25' AS Date), N'773456781', N'«·„ﬂ·«', N'„⁄·„… ﬁ—¬‰', N'P678903', N'ID678903', N'»ﬂ«·Ê—ÌÊ”  —»Ì… ≈”·«„Ì…', N'7 ”‰Ê« ', N'œÊ—«   ÃÊÌœ', N'„ “ÊÃ…', 0, 1, N'23 Ã“¡')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[TeacherAttendance] ON 

INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (1, 1, CAST(N'2024-01-07' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (2, 2, CAST(N'2024-01-07' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (3, 3, CAST(N'2024-01-07' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (4, 4, CAST(N'2024-01-07' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (5, 5, CAST(N'2024-01-07' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (6, 6, CAST(N'2024-01-07' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (7, 7, CAST(N'2024-01-07' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (8, 8, CAST(N'2024-01-07' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (9, 9, CAST(N'2024-01-07' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (10, 10, CAST(N'2024-01-07' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (11, 11, CAST(N'2024-01-07' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (12, 12, CAST(N'2024-01-07' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (13, 13, CAST(N'2024-01-07' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (14, 14, CAST(N'2024-01-07' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (15, 15, CAST(N'2024-01-07' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (16, 1, CAST(N'2024-01-08' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (17, 2, CAST(N'2024-01-08' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (18, 3, CAST(N'2024-01-08' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (19, 4, CAST(N'2024-01-08' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (20, 5, CAST(N'2024-01-08' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (21, 6, CAST(N'2024-01-08' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (22, 7, CAST(N'2024-01-08' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (23, 8, CAST(N'2024-01-08' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (24, 9, CAST(N'2024-01-08' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (25, 10, CAST(N'2024-01-08' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (26, 11, CAST(N'2024-01-08' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (27, 12, CAST(N'2024-01-08' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (28, 13, CAST(N'2024-01-08' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (29, 14, CAST(N'2024-01-08' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (30, 15, CAST(N'2024-01-08' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (31, 1, CAST(N'2024-01-10' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (32, 2, CAST(N'2024-01-10' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (33, 3, CAST(N'2024-01-10' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (34, 4, CAST(N'2024-01-10' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (35, 5, CAST(N'2024-01-10' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (36, 6, CAST(N'2024-01-10' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (37, 7, CAST(N'2024-01-10' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (38, 8, CAST(N'2024-01-10' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (39, 9, CAST(N'2024-01-10' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (40, 10, CAST(N'2024-01-10' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (41, 11, CAST(N'2024-01-10' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (42, 12, CAST(N'2024-01-10' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (43, 13, CAST(N'2024-01-10' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (44, 14, CAST(N'2024-01-10' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (45, 15, CAST(N'2024-01-10' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (46, 1, CAST(N'2024-01-14' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (47, 2, CAST(N'2024-01-14' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (48, 3, CAST(N'2024-01-14' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (49, 4, CAST(N'2024-01-14' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (50, 5, CAST(N'2024-01-14' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (51, 6, CAST(N'2024-01-14' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (52, 7, CAST(N'2024-01-14' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (53, 8, CAST(N'2024-01-14' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (54, 9, CAST(N'2024-01-14' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (55, 10, CAST(N'2024-01-14' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (56, 11, CAST(N'2024-01-14' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (57, 12, CAST(N'2024-01-14' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (58, 13, CAST(N'2024-01-14' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (59, 14, CAST(N'2024-01-14' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (60, 15, CAST(N'2024-01-14' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (61, 1, CAST(N'2024-01-15' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (62, 2, CAST(N'2024-01-15' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (63, 3, CAST(N'2024-01-15' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (64, 4, CAST(N'2024-01-15' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (65, 5, CAST(N'2024-01-15' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (66, 6, CAST(N'2024-01-15' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (67, 7, CAST(N'2024-01-15' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (68, 8, CAST(N'2024-01-15' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (69, 9, CAST(N'2024-01-15' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (70, 10, CAST(N'2024-01-15' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (71, 11, CAST(N'2024-01-15' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (72, 12, CAST(N'2024-01-15' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (73, 13, CAST(N'2024-01-15' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (74, 14, CAST(N'2024-01-15' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (75, 15, CAST(N'2024-01-15' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (76, 1, CAST(N'2024-01-17' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (77, 2, CAST(N'2024-01-17' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (78, 3, CAST(N'2024-01-17' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (79, 4, CAST(N'2024-01-17' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (80, 5, CAST(N'2024-01-17' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (81, 6, CAST(N'2024-01-17' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (82, 7, CAST(N'2024-01-17' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (83, 8, CAST(N'2024-01-17' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (84, 9, CAST(N'2024-01-17' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (85, 10, CAST(N'2024-01-17' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (86, 11, CAST(N'2024-01-17' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (87, 12, CAST(N'2024-01-17' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (88, 13, CAST(N'2024-01-17' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (89, 14, CAST(N'2024-01-17' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (90, 15, CAST(N'2024-01-17' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (91, 1, CAST(N'2024-01-21' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (92, 2, CAST(N'2024-01-21' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (93, 3, CAST(N'2024-01-21' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (94, 4, CAST(N'2024-01-21' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (95, 5, CAST(N'2024-01-21' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (96, 6, CAST(N'2024-01-21' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (97, 7, CAST(N'2024-01-21' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (98, 8, CAST(N'2024-01-21' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (99, 9, CAST(N'2024-01-21' AS Date), N'Õ«÷—', 1)
GO
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (100, 10, CAST(N'2024-01-21' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (101, 11, CAST(N'2024-01-21' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (102, 12, CAST(N'2024-01-21' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (103, 13, CAST(N'2024-01-21' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (104, 14, CAST(N'2024-01-21' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (105, 15, CAST(N'2024-01-21' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (106, 1, CAST(N'2024-01-22' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (107, 2, CAST(N'2024-01-22' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (108, 3, CAST(N'2024-01-22' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (109, 4, CAST(N'2024-01-22' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (110, 5, CAST(N'2024-01-22' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (111, 6, CAST(N'2024-01-22' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (112, 7, CAST(N'2024-01-22' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (113, 8, CAST(N'2024-01-22' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (114, 9, CAST(N'2024-01-22' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (115, 10, CAST(N'2024-01-22' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (116, 11, CAST(N'2024-01-22' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (117, 12, CAST(N'2024-01-22' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (118, 13, CAST(N'2024-01-22' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (119, 14, CAST(N'2024-01-22' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (120, 15, CAST(N'2024-01-22' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (121, 1, CAST(N'2024-01-24' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (122, 2, CAST(N'2024-01-24' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (123, 3, CAST(N'2024-01-24' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (124, 4, CAST(N'2024-01-24' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (125, 5, CAST(N'2024-01-24' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (126, 6, CAST(N'2024-01-24' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (127, 7, CAST(N'2024-01-24' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (128, 8, CAST(N'2024-01-24' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (129, 9, CAST(N'2024-01-24' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (130, 10, CAST(N'2024-01-24' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (131, 11, CAST(N'2024-01-24' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (132, 12, CAST(N'2024-01-24' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (133, 13, CAST(N'2024-01-24' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (134, 14, CAST(N'2024-01-24' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (135, 15, CAST(N'2024-01-24' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (136, 1, CAST(N'2024-01-28' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (137, 2, CAST(N'2024-01-28' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (138, 3, CAST(N'2024-01-28' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (139, 4, CAST(N'2024-01-28' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (140, 5, CAST(N'2024-01-28' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (141, 6, CAST(N'2024-01-28' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (142, 7, CAST(N'2024-01-28' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (143, 8, CAST(N'2024-01-28' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (144, 9, CAST(N'2024-01-28' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (145, 10, CAST(N'2024-01-28' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (146, 11, CAST(N'2024-01-28' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (147, 12, CAST(N'2024-01-28' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (148, 13, CAST(N'2024-01-28' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (149, 14, CAST(N'2024-01-28' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (150, 15, CAST(N'2024-01-28' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (1004, 1, CAST(N'2025-04-18' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (1005, 2, CAST(N'2025-04-18' AS Date), N'„ √Œ—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (1006, 3, CAST(N'2025-04-18' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (1007, 4, CAST(N'2025-04-18' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (1008, 5, CAST(N'2025-04-18' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (1009, 6, CAST(N'2025-04-18' AS Date), N'€«∆»', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (1010, 7, CAST(N'2025-04-18' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (1011, 8, CAST(N'2025-04-18' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (1012, 9, CAST(N'2025-04-18' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (1013, 10, CAST(N'2025-04-18' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (1014, 11, CAST(N'2025-04-18' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (1015, 12, CAST(N'2025-04-18' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (1016, 13, CAST(N'2025-04-18' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (1017, 14, CAST(N'2025-04-18' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (1018, 15, CAST(N'2025-04-18' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (2002, 1, CAST(N'2025-04-26' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (2003, 2, CAST(N'2025-04-26' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (2004, 3, CAST(N'2025-04-26' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (2005, 4, CAST(N'2025-04-26' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (2006, 5, CAST(N'2025-04-26' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (2007, 6, CAST(N'2025-04-26' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (2008, 7, CAST(N'2025-04-26' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (2009, 8, CAST(N'2025-04-26' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (2010, 9, CAST(N'2025-04-26' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (2011, 10, CAST(N'2025-04-26' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (2012, 11, CAST(N'2025-04-26' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (2013, 12, CAST(N'2025-04-26' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (2014, 13, CAST(N'2025-04-26' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (2015, 14, CAST(N'2025-04-26' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (2016, 15, CAST(N'2025-04-26' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (3002, 1, CAST(N'2025-04-27' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (3003, 2, CAST(N'2025-04-27' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (3004, 3, CAST(N'2025-04-27' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (3005, 4, CAST(N'2025-04-27' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (3006, 5, CAST(N'2025-04-27' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (3007, 6, CAST(N'2025-04-27' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (3008, 7, CAST(N'2025-04-27' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (3009, 8, CAST(N'2025-04-27' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (3010, 9, CAST(N'2025-04-27' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (3011, 10, CAST(N'2025-04-27' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (3012, 11, CAST(N'2025-04-27' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (3013, 12, CAST(N'2025-04-27' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (3014, 13, CAST(N'2025-04-27' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (3015, 14, CAST(N'2025-04-27' AS Date), N'Õ«÷—', 1)
INSERT [dbo].[TeacherAttendance] ([TeacherAttendanceID], [TeacherID], [Date], [Status], [RecordedBy]) VALUES (3016, 15, CAST(N'2025-04-27' AS Date), N'Õ«÷—', 1)
SET IDENTITY_INSERT [dbo].[TeacherAttendance] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Account__536C85E46ACE097A]    Script Date: 27/04/2025 11:27:10 „ ******/
ALTER TABLE [dbo].[Account] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Account__5C7E359E53CCA194]    Script Date: 27/04/2025 11:27:10 „ ******/
ALTER TABLE [dbo].[Account] ADD UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Account__A9D105343E929C07]    Script Date: 27/04/2025 11:27:10 „ ******/
ALTER TABLE [dbo].[Account] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Parents__250375B1B3714ED0]    Script Date: 27/04/2025 11:27:10 „ ******/
ALTER TABLE [dbo].[Parents] ADD UNIQUE NONCLUSTERED 
(
	[MobileNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Parents__85FB4E386880D947]    Script Date: 27/04/2025 11:27:10 „ ******/
ALTER TABLE [dbo].[Parents] ADD UNIQUE NONCLUSTERED 
(
	[PhoneNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Role__8A2B616062A1F32C]    Script Date: 27/04/2025 11:27:10 „ ******/
ALTER TABLE [dbo].[Role] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Teacher__45809E71B0212BCE]    Script Date: 27/04/2025 11:27:10 „ ******/
ALTER TABLE [dbo].[Teacher] ADD UNIQUE NONCLUSTERED 
(
	[PassportNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Teacher__564DB08A3A6555B6]    Script Date: 27/04/2025 11:27:10 „ ******/
ALTER TABLE [dbo].[Teacher] ADD UNIQUE NONCLUSTERED 
(
	[IDNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Teacher__85FB4E388CF72E54]    Script Date: 27/04/2025 11:27:10 „ ******/
ALTER TABLE [dbo].[Teacher] ADD UNIQUE NONCLUSTERED 
(
	[PhoneNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ActivitiesImages]  WITH CHECK ADD  CONSTRAINT [FK_ActivitiesImages_Expense] FOREIGN KEY([ExpenseID])
REFERENCES [dbo].[Expenses] ([ExpenseID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActivitiesImages] CHECK CONSTRAINT [FK_ActivitiesImages_Expense]
GO
ALTER TABLE [dbo].[AnnualReport]  WITH CHECK ADD  CONSTRAINT [FK_AnnualReport_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnnualReport] CHECK CONSTRAINT [FK_AnnualReport_Student]
GO
ALTER TABLE [dbo].[CenterAnnualReport]  WITH CHECK ADD  CONSTRAINT [FK_CenterAnnualReport_Account] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Account] ([AccountID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[CenterAnnualReport] CHECK CONSTRAINT [FK_CenterAnnualReport_Account]
GO
ALTER TABLE [dbo].[CenterAnnualReport]  WITH CHECK ADD  CONSTRAINT [FK_CenterAnnualReport_Year] FOREIGN KEY([AcademicYearID])
REFERENCES [dbo].[AcademicYear] ([AcademicYearID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[CenterAnnualReport] CHECK CONSTRAINT [FK_CenterAnnualReport_Year]
GO
ALTER TABLE [dbo].[DailyEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_DailyEvaluation_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DailyEvaluation] CHECK CONSTRAINT [FK_DailyEvaluation_Student]
GO
ALTER TABLE [dbo].[DailyMemorizePlan]  WITH CHECK ADD  CONSTRAINT [FK_DailyMemorizePlan_MemorizePlan] FOREIGN KEY([MemorizePlanID])
REFERENCES [dbo].[MemorizePlan] ([MemorizePlanID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DailyMemorizePlan] CHECK CONSTRAINT [FK_DailyMemorizePlan_MemorizePlan]
GO
ALTER TABLE [dbo].[DailyReviewPlan]  WITH CHECK ADD  CONSTRAINT [FK_DailyReviewPlan_ReviewPlan] FOREIGN KEY([ReviewPlanID])
REFERENCES [dbo].[ReviewPlan] ([ReviewPlanID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DailyReviewPlan] CHECK CONSTRAINT [FK_DailyReviewPlan_ReviewPlan]
GO
ALTER TABLE [dbo].[Expenses]  WITH CHECK ADD  CONSTRAINT [FK_Expenses_PaidBy] FOREIGN KEY([PaidBy])
REFERENCES [dbo].[Account] ([AccountID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Expenses] CHECK CONSTRAINT [FK_Expenses_PaidBy]
GO
ALTER TABLE [dbo].[Expenses]  WITH CHECK ADD  CONSTRAINT [FK_Expenses_Year] FOREIGN KEY([AcademicYearID])
REFERENCES [dbo].[AcademicYear] ([AcademicYearID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Expenses] CHECK CONSTRAINT [FK_Expenses_Year]
GO
ALTER TABLE [dbo].[FinalExam]  WITH CHECK ADD  CONSTRAINT [FK_FinalExam_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FinalExam] CHECK CONSTRAINT [FK_FinalExam_Student]
GO
ALTER TABLE [dbo].[FinancialSummary]  WITH CHECK ADD  CONSTRAINT [FK_FinancialSummary_Year] FOREIGN KEY([AcademicYearID])
REFERENCES [dbo].[AcademicYear] ([AcademicYearID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[FinancialSummary] CHECK CONSTRAINT [FK_FinancialSummary_Year]
GO
ALTER TABLE [dbo].[FinancialSupport]  WITH CHECK ADD  CONSTRAINT [FK_FinancialSupport_Year] FOREIGN KEY([AcademicYearID])
REFERENCES [dbo].[AcademicYear] ([AcademicYearID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[FinancialSupport] CHECK CONSTRAINT [FK_FinancialSupport_Year]
GO
ALTER TABLE [dbo].[Halaqa]  WITH CHECK ADD FOREIGN KEY([AcademicYearID])
REFERENCES [dbo].[AcademicYear] ([AcademicYearID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Halaqa]  WITH CHECK ADD FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([TeacherID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[HalaqaManhaj]  WITH CHECK ADD  CONSTRAINT [FK_HalaqaManhaj_Halaqa] FOREIGN KEY([HalaqaID])
REFERENCES [dbo].[Halaqa] ([HalaqaID])
GO
ALTER TABLE [dbo].[HalaqaManhaj] CHECK CONSTRAINT [FK_HalaqaManhaj_Halaqa]
GO
ALTER TABLE [dbo].[HalaqaManhaj]  WITH CHECK ADD  CONSTRAINT [FK_HalaqaManhaj_Manhaj] FOREIGN KEY([ManhajID])
REFERENCES [dbo].[Manhaj] ([ManhajID])
GO
ALTER TABLE [dbo].[HalaqaManhaj] CHECK CONSTRAINT [FK_HalaqaManhaj_Manhaj]
GO
ALTER TABLE [dbo].[MemorizePlan]  WITH CHECK ADD  CONSTRAINT [FK_MemorizePlan_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MemorizePlan] CHECK CONSTRAINT [FK_MemorizePlan_Student]
GO
ALTER TABLE [dbo].[MonthlyExam]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyExam_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MonthlyExam] CHECK CONSTRAINT [FK_MonthlyExam_Student]
GO
ALTER TABLE [dbo].[Path_Halaqa_Relationship]  WITH CHECK ADD  CONSTRAINT [FK_PathHalaqa_Halaqa] FOREIGN KEY([HalaqaID])
REFERENCES [dbo].[Halaqa] ([HalaqaID])
GO
ALTER TABLE [dbo].[Path_Halaqa_Relationship] CHECK CONSTRAINT [FK_PathHalaqa_Halaqa]
GO
ALTER TABLE [dbo].[Path_Halaqa_Relationship]  WITH CHECK ADD  CONSTRAINT [FK_PathHalaqa_Path] FOREIGN KEY([PathID])
REFERENCES [dbo].[MemorizationPath] ([PathID])
GO
ALTER TABLE [dbo].[Path_Halaqa_Relationship] CHECK CONSTRAINT [FK_PathHalaqa_Path]
GO
ALTER TABLE [dbo].[ReviewPlan]  WITH CHECK ADD  CONSTRAINT [FK_ReviewPlan_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReviewPlan] CHECK CONSTRAINT [FK_ReviewPlan_Student]
GO
ALTER TABLE [dbo].[RoleAccount]  WITH CHECK ADD  CONSTRAINT [FK_RoleAccount_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[RoleAccount] CHECK CONSTRAINT [FK_RoleAccount_Account]
GO
ALTER TABLE [dbo].[RoleAccount]  WITH CHECK ADD  CONSTRAINT [FK_RoleAccount_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[RoleAccount] CHECK CONSTRAINT [FK_RoleAccount_Role]
GO
ALTER TABLE [dbo].[RoleAccount]  WITH CHECK ADD  CONSTRAINT [FK_RoleAccount_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([TeacherID])
GO
ALTER TABLE [dbo].[RoleAccount] CHECK CONSTRAINT [FK_RoleAccount_Teacher]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([HalaqaID])
REFERENCES [dbo].[Halaqa] ([HalaqaID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([ParentID])
REFERENCES [dbo].[Parents] ([ParentID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[TeacherAttendance]  WITH CHECK ADD  CONSTRAINT [FK_TeacherAttendance_RecordedBy] FOREIGN KEY([RecordedBy])
REFERENCES [dbo].[Account] ([AccountID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[TeacherAttendance] CHECK CONSTRAINT [FK_TeacherAttendance_RecordedBy]
GO
ALTER TABLE [dbo].[TeacherAttendance]  WITH CHECK ADD  CONSTRAINT [FK_TeacherAttendance_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([TeacherID])
GO
ALTER TABLE [dbo].[TeacherAttendance] CHECK CONSTRAINT [FK_TeacherAttendance_Teacher]
GO
ALTER TABLE [dbo].[TermReport]  WITH CHECK ADD  CONSTRAINT [FK_TermReport_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TermReport] CHECK CONSTRAINT [FK_TermReport_Student]
GO
