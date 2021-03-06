USE [master]
GO
/****** Object:  Database [Pakiran ITB - Kelompok 12 ]    Script Date: 5/3/2017 1:39:49 PM ******/
CREATE DATABASE [Pakiran ITB - Kelompok 12]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pakiran ITB - Kelompok 12', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Pakiran ITB - Kelompok 12 .mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Pakiran ITB - Kelompok 12 _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Pakiran ITB - Kelompok 12 _log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pakiran ITB - Kelompok 12 ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET  MULTI_USER 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Pakiran ITB - Kelompok 12 ]
GO
/****** Object:  Table [dbo].[Daerah Tugas]    Script Date: 5/3/2017 1:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Daerah Tugas](
	[ID Daerah Parkir] [nvarchar](20) NOT NULL,
	[Nama Dearah] [nvarchar](30) NOT NULL,
	[Kapasitas] [int] NOT NULL,
	[Sisa Parkir] [int] NOT NULL,
	[Jumlah Kendaraan Parkir Perbulan] [int] NOT NULL,
 CONSTRAINT [PK_Daerah Tugas] PRIMARY KEY CLUSTERED 
(
	[ID Daerah Parkir] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Data Pelanggaran]    Script Date: 5/3/2017 1:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data Pelanggaran](
	[ID Data Pelanggaran] [nvarchar](20) NOT NULL,
	[Jenis Pelanggaran] [nvarchar](50) NOT NULL,
	[Tarif Denda Pelanggaran] [money] NOT NULL,
	[Barcode] [nvarchar](20) NOT NULL,
	[Kelas] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Data Pelanggaran] PRIMARY KEY CLUSTERED 
(
	[ID Data Pelanggaran] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kendaraan]    Script Date: 5/3/2017 1:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kendaraan](
	[No Plat Kendaraan] [nvarchar](10) NOT NULL,
	[Merk] [nvarchar](20) NOT NULL,
	[Jenis] [nvarchar](20) NOT NULL,
	[Warna] [nvarchar](10) NOT NULL,
	[Kepemilikan] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Kendaraan] PRIMARY KEY CLUSTERED 
(
	[No Plat Kendaraan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mahasiswa]    Script Date: 5/3/2017 1:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mahasiswa](
	[NIM] [nvarchar](10) NOT NULL,
	[Nama Mahasiswa] [nvarchar](50) NOT NULL,
	[No. HP] [nvarchar](20) NOT NULL,
	[No Plat Kendaraan] [nvarchar](10) NOT NULL,
	[Jenis] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Mahasiswa] PRIMARY KEY CLUSTERED 
(
	[NIM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Petugas]    Script Date: 5/3/2017 1:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Petugas](
	[ID Petugas] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[ID Daerah Parkir] [nvarchar](20) NOT NULL,
	[Nama Petugas] [nvarchar](50) NOT NULL,
	[No. HP] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Petugas] PRIMARY KEY CLUSTERED 
(
	[ID Petugas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staff/Dosen]    Script Date: 5/3/2017 1:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff/Dosen](
	[NIP] [nvarchar](20) NOT NULL,
	[Nama] [nvarchar](50) NOT NULL,
	[Area Bekerja] [nvarchar](30) NOT NULL,
	[No Plat Kendaraan] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Staff/Dosen] PRIMARY KEY CLUSTERED 
(
	[NIP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tamu]    Script Date: 5/3/2017 1:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tamu](
	[ID Tamu] [nvarchar](10) NOT NULL,
	[ID KTP] [nvarchar](20) NOT NULL,
	[Jenis Keperluan] [nvarchar](20) NOT NULL,
	[No Plat Kendaraan] [nvarchar](10) NOT NULL,
	[Area Keperluan] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Tamu] PRIMARY KEY CLUSTERED 
(
	[ID Tamu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transaksi]    Script Date: 5/3/2017 1:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaksi](
	[Barcode] [nvarchar](20) NOT NULL,
	[Tanggal Transaksi] [date] NOT NULL,
	[ID Daerah Parkir] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Transaksi] PRIMARY KEY CLUSTERED 
(
	[Barcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transaksi Mahasiswa]    Script Date: 5/3/2017 1:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaksi Mahasiswa](
	[ID Transaksi Mhs] [nvarchar](20) NOT NULL,
	[NIM] [nvarchar](10) NOT NULL,
	[Barcode] [nvarchar](20) NOT NULL,
	[Jam Masuk] [datetime] NOT NULL,
	[Jam Keluar] [datetime] NULL,
	[Durasi] [time](7) NULL,
	[Biaya Parkir] [money] NULL,
	[Biaya Denda] [money] NULL,
	[Total Biaya] [money] NOT NULL,
	[Jenis] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Transaksi Mahasiswa] PRIMARY KEY CLUSTERED 
(
	[ID Transaksi Mhs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transaksi Staff/Dosen]    Script Date: 5/3/2017 1:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaksi Staff/Dosen](
	[ID Transaksi SD] [nvarchar](20) NOT NULL,
	[NIP] [nvarchar](20) NOT NULL,
	[Barcode] [nvarchar](20) NOT NULL,
	[Jam Masuk] [datetime] NOT NULL,
	[Jam Keluar] [datetime] NULL,
	[Durasi] [datetime] NULL,
	[Tarif Parkir] [money] NULL,
	[Tarif Denda] [money] NULL,
	[Total Tarif] [money] NOT NULL,
 CONSTRAINT [PK_Transaksi Staff/Dosen] PRIMARY KEY CLUSTERED 
(
	[ID Transaksi SD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transaksi Tamu]    Script Date: 5/3/2017 1:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaksi Tamu](
	[ID Transaksi Tamu] [nvarchar](20) NOT NULL,
	[ID Tamu] [nvarchar](10) NOT NULL,
	[Barcode] [nvarchar](20) NOT NULL,
	[Jam Masuk] [datetime] NOT NULL,
	[Jam Keluar] [datetime] NULL,
	[Biaya Parkir] [money] NULL,
	[Biaya Denda] [money] NULL,
	[Total Biaya] [money] NOT NULL,
 CONSTRAINT [PK_Transaksi Tamu] PRIMARY KEY CLUSTERED 
(
	[ID Transaksi Tamu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transaksi Umum]    Script Date: 5/3/2017 1:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaksi Umum](
	[ID Transaksi Umum] [nvarchar](20) NOT NULL,
	[ID Umum] [nvarchar](10) NOT NULL,
	[Barcode] [nvarchar](20) NOT NULL,
	[Jam Masuk] [datetime] NOT NULL,
	[Jam Keluar] [datetime] NULL,
	[Durasi] [time](7) NULL,
	[Biaya Parkir] [money] NULL,
	[Biaya Denda] [money] NULL,
	[Total Biaya] [money] NULL,
	[Jenis] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Transaksi Umum] PRIMARY KEY CLUSTERED 
(
	[ID Transaksi Umum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Umum]    Script Date: 5/3/2017 1:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Umum](
	[ID Umum] [nvarchar](10) NOT NULL,
	[No Plat Kendaraan] [nvarchar](10) NOT NULL,
	[Jenis] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Umum] PRIMARY KEY CLUSTERED 
(
	[ID Umum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Daerah Tugas] ([ID Daerah Parkir], [Nama Dearah], [Kapasitas], [Sisa Parkir], [Jumlah Kendaraan Parkir Perbulan]) VALUES (N'GerbangUtama', N'AdminGerbangUtama', 0, 0, 0)
INSERT [dbo].[Daerah Tugas] ([ID Daerah Parkir], [Nama Dearah], [Kapasitas], [Sisa Parkir], [Jumlah Kendaraan Parkir Perbulan]) VALUES (N'ParkirMhs', N'AdminParkirMhs', 1000, 1000, 0)
INSERT [dbo].[Daerah Tugas] ([ID Daerah Parkir], [Nama Dearah], [Kapasitas], [Sisa Parkir], [Jumlah Kendaraan Parkir Perbulan]) VALUES (N'Sistem', N'Sistem Parkir', 0, 0, 0)
INSERT [dbo].[Daerah Tugas] ([ID Daerah Parkir], [Nama Dearah], [Kapasitas], [Sisa Parkir], [Jumlah Kendaraan Parkir Perbulan]) VALUES (N'Zona1', N'Zona 1', 500, 500, 0)
INSERT [dbo].[Daerah Tugas] ([ID Daerah Parkir], [Nama Dearah], [Kapasitas], [Sisa Parkir], [Jumlah Kendaraan Parkir Perbulan]) VALUES (N'Zona2', N'Zona 2', 500, 500, 0)
INSERT [dbo].[Daerah Tugas] ([ID Daerah Parkir], [Nama Dearah], [Kapasitas], [Sisa Parkir], [Jumlah Kendaraan Parkir Perbulan]) VALUES (N'Zona3', N'Zona 3', 450, 450, 0)
INSERT [dbo].[Daerah Tugas] ([ID Daerah Parkir], [Nama Dearah], [Kapasitas], [Sisa Parkir], [Jumlah Kendaraan Parkir Perbulan]) VALUES (N'Zona4', N'Zona 4', 350, 350, 0)
INSERT [dbo].[Daerah Tugas] ([ID Daerah Parkir], [Nama Dearah], [Kapasitas], [Sisa Parkir], [Jumlah Kendaraan Parkir Perbulan]) VALUES (N'Zona5', N'Zona 5', 200, 200, 0)
INSERT [dbo].[Daerah Tugas] ([ID Daerah Parkir], [Nama Dearah], [Kapasitas], [Sisa Parkir], [Jumlah Kendaraan Parkir Perbulan]) VALUES (N'Zona6', N'Zona 6', 200, 200, 0)
INSERT [dbo].[Daerah Tugas] ([ID Daerah Parkir], [Nama Dearah], [Kapasitas], [Sisa Parkir], [Jumlah Kendaraan Parkir Perbulan]) VALUES (N'Zona7', N'Zona 7', 450, 450, 0)
INSERT [dbo].[Daerah Tugas] ([ID Daerah Parkir], [Nama Dearah], [Kapasitas], [Sisa Parkir], [Jumlah Kendaraan Parkir Perbulan]) VALUES (N'Zona8', N'Zona 8', 500, 500, 0)
INSERT [dbo].[Data Pelanggaran] ([ID Data Pelanggaran], [Jenis Pelanggaran], [Tarif Denda Pelanggaran], [Barcode], [Kelas]) VALUES (N'X1-01052017', N'Parkir Tidak Pada Tempatnya', 15000.0000, N'IDA0131', N'Tamu')
INSERT [dbo].[Data Pelanggaran] ([ID Data Pelanggaran], [Jenis Pelanggaran], [Tarif Denda Pelanggaran], [Barcode], [Kelas]) VALUES (N'X1-30042017', N'Menginap', 20000.0000, N'IDA0128', N'Tamu')
INSERT [dbo].[Data Pelanggaran] ([ID Data Pelanggaran], [Jenis Pelanggaran], [Tarif Denda Pelanggaran], [Barcode], [Kelas]) VALUES (N'X2-01052017', N'Parkir Tidak Pada Tempatnya', 15000.0000, N'IDA0132', N'Tamu')
INSERT [dbo].[Data Pelanggaran] ([ID Data Pelanggaran], [Jenis Pelanggaran], [Tarif Denda Pelanggaran], [Barcode], [Kelas]) VALUES (N'X2-30042017', N'Menginap', 20000.0000, N'IDA0129', N'Tamu')
INSERT [dbo].[Data Pelanggaran] ([ID Data Pelanggaran], [Jenis Pelanggaran], [Tarif Denda Pelanggaran], [Barcode], [Kelas]) VALUES (N'X3-01052017', N'Parkir Tidak Pada Tempatnya', 15000.0000, N'IDA0148', N'Tamu')
INSERT [dbo].[Data Pelanggaran] ([ID Data Pelanggaran], [Jenis Pelanggaran], [Tarif Denda Pelanggaran], [Barcode], [Kelas]) VALUES (N'X3-30042017', N'Menginap', 20000.0000, N'IDA0130', N'Tamu')
INSERT [dbo].[Data Pelanggaran] ([ID Data Pelanggaran], [Jenis Pelanggaran], [Tarif Denda Pelanggaran], [Barcode], [Kelas]) VALUES (N'X4-01052017', N'Parkir Tidak Pada Tempatnya', 15000.0000, N'IDA0149', N'Umum')
INSERT [dbo].[Data Pelanggaran] ([ID Data Pelanggaran], [Jenis Pelanggaran], [Tarif Denda Pelanggaran], [Barcode], [Kelas]) VALUES (N'X5-01052017', N'Parkir Tidak Pada Tempatnya', 15000.0000, N'IDA0150', N'Umum')
INSERT [dbo].[Data Pelanggaran] ([ID Data Pelanggaran], [Jenis Pelanggaran], [Tarif Denda Pelanggaran], [Barcode], [Kelas]) VALUES (N'X6-01052017', N'Menginap', 20000.0000, N'IDA0151', N'Staff/Dosen ITB')
INSERT [dbo].[Data Pelanggaran] ([ID Data Pelanggaran], [Jenis Pelanggaran], [Tarif Denda Pelanggaran], [Barcode], [Kelas]) VALUES (N'X7-01052017', N'Menginap', 20000.0000, N'IDA0152', N'Staff/Dosen ITB')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'B0972THY', N'March', N'Mobil', N'Silver', N'TAMU')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'B1997HUT', N'Mio', N'Motor', N'Hitam', N'Mahasiswa')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'B1998ABC', N'Honda Jazz', N'Mobil', N'Hitam', N'Mahasiswa')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'B2409RFS', N'Toyota Etios', N'Mobil', N'Silver', N'TAMU')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'B2679RFS', N'Honda Beat', N'Motor', N'Hijau', N'UMUM')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'B6547TRF', N'Daihatsu Xenia', N'Mobil', N'Putih', N'Staff Dosen')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'B7864GT', N'Avanza', N'Mobil', N'Silver', N'Staff Dosen')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'B7891RFS', N'Daihatsu Xenia', N'Motor', N'Biru', N'UMUM')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'B8210YRS', N'Yamaha Mio', N'Mobil', N'Silver', N'TAMU')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'B8709QTX', N'Toyota Fortuner', N'Mobil', N'Silver', N'TAMU')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'B9876RTF', N'Honda Beat', N'Motor', N'Merah', N'UMUM')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'BG1230ITR', N'Honda Jazz', N'Mobil', N'Silver', N'UMUM')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D1189FLO', N'Daihatsu Xenia', N'Mobil', N'Silver', N'UMUM')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D1230RFS', N'Mitsubishi Outlander', N'Mobil', N'Silver', N'Staff Dosen')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D1231GUY', N'Agya', N'Mobil', N'Hitam', N'Mahasiswa')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D1234ART', N'Daihatsu Ayla', N'Mobil', N'Biru', N'Mahasiswa')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D123ABC', N'Avanza', N'Mobil', N'Hitam', N'Staff Dosen')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D123ABD', N'Agya', N'Mobil', N'Putih', N'Staff Dosen')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D123ABF', N'Toyota Camry', N'Mobil', N'Silver', N'Staff Dosen')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D123ABG', N'March', N'Mobil', N'Putih', N'Staff Dosen')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D123AFR', N'March', N'Mobil', N'Putih', N'Mahasiswa')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D123RFS', N'Toyota Yaris', N'Mobil', N'Putih', N'Staff Dosen')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D123RTS', N'Honda Beat', N'Motor', N'Merah', N'Mahasiswa')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D1289JES', N'Avanza', N'Mobil', N'Silver', N'UMUM')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D156ITZ', N'Honda Revo', N'Motor', N'Biru', N'Mahasiswa')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D1897ABU', N'Daihatsu Ayla', N'Mobil', N'Silver', N'UMUM')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D1956TYU', N'Yamaha Mio', N'Motor', N'Biru', N'UMUM')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D2341RFS', N'Honda Jazz', N'Mobil', N'Silver', N'Staff Dosen')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D2769QUV', N'Nissan Grand Livina', N'Mobil', N'Silver', N'TAMU')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D435ABC', N'Brio', N'Mobil', N'Putih', N'Staff Dosen')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D4597ABH', N'Nissan Juke', N'Mobil', N'Silver', N'TAMU')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D678YUT', N'Karimun Wagon', N'Mobil', N'Hitam', N'Mahasiswa')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D7096RFS', N'Mazda CX-3', N'Mobil', N'Putih', N'TAMU')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D7209DBJ', N'Daihatsu Xenia', N'Mobil', N'Silver', N'TAMU')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D755OIP', N'Brio', N'Mobil', N'Putih', N'Mahasiswa')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D7658RFD', N'Mobilio', N'Mobil', N'Putih', N'Staff Dosen')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D769RFT', N'Toyota Rush', N'Mobil', N'Hitam', N'TAMU')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D8712ITC', N'Xenia', N'Mobil', N'Silver', N'Mahasiswa')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D876ABD', N'Daihatsu Ayla', N'Mobil', N'Putih', N'Staff Dosen')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D9012RFS', N'Honda CR-V', N'Mobil', N'Putih', N'Staff Dosen')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D904PRF', N'Datsu Go+ ', N'Mobil', N'Hitam', N'Mahasiswa')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D9214RTF', N'Datsu Go+ ', N'Mobil', N'Silver', N'TAMU')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D986QRS', N'Mobilio', N'Mobil', N'Hitam', N'Mahasiswa')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D9876UYT', N'Honda Vario', N'Motor', N'Merah', N'Mahasiswa')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'D987ABC', N'Datsu Go+ ', N'Mobil', N'Silver', N'Staff Dosen')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'F6781BG', N'Karimun Wagon', N'Mobil', N'Putih', N'Staff Dosen')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'F8926UTR', N'Mobilio', N'Mobil', N'Silver', N'UMUM')
INSERT [dbo].[Kendaraan] ([No Plat Kendaraan], [Merk], [Jenis], [Warna], [Kepemilikan]) VALUES (N'Z7892YT', N'Honda Supra GTR ', N'Motor', N'Biru', N'UMUM')
INSERT [dbo].[Mahasiswa] ([NIM], [Nama Mahasiswa], [No. HP], [No Plat Kendaraan], [Jenis]) VALUES (N'12613098', N'Huki', N'835029025.3', N'D156ITZ', N'Motor')
INSERT [dbo].[Mahasiswa] ([NIM], [Nama Mahasiswa], [No. HP], [No Plat Kendaraan], [Jenis]) VALUES (N'12815098', N'Nurmala', N'834028250.3', N'D986QRS', N'Mobil')
INSERT [dbo].[Mahasiswa] ([NIM], [Nama Mahasiswa], [No. HP], [No Plat Kendaraan], [Jenis]) VALUES (N'13013101', N'Gideon', N'838031350.3', N'D1234ART', N'Mobil')
INSERT [dbo].[Mahasiswa] ([NIM], [Nama Mahasiswa], [No. HP], [No Plat Kendaraan], [Jenis]) VALUES (N'13112091', N'Panji', N'832026700.3', N'B1997HUT', N'Motor')
INSERT [dbo].[Mahasiswa] ([NIM], [Nama Mahasiswa], [No. HP], [No Plat Kendaraan], [Jenis]) VALUES (N'13114006', N'Gion', N'839032125.3', N'D904PRF', N'Mobil')
INSERT [dbo].[Mahasiswa] ([NIM], [Nama Mahasiswa], [No. HP], [No Plat Kendaraan], [Jenis]) VALUES (N'13314002', N'Darius', N'896634324', N'D1231GUY', N'Mobil')
INSERT [dbo].[Mahasiswa] ([NIM], [Nama Mahasiswa], [No. HP], [No Plat Kendaraan], [Jenis]) VALUES (N'13413098', N'Jansen', N'837030575.3', N'D678YUT', N'Mobil')
INSERT [dbo].[Mahasiswa] ([NIM], [Nama Mahasiswa], [No. HP], [No Plat Kendaraan], [Jenis]) VALUES (N'13414001', N'James', N'817236451', N'D123RTS', N'Motor')
INSERT [dbo].[Mahasiswa] ([NIM], [Nama Mahasiswa], [No. HP], [No Plat Kendaraan], [Jenis]) VALUES (N'13415056', N'Rizky', N'833027475.3', N'B1998ABC', N'Mobil')
INSERT [dbo].[Mahasiswa] ([NIM], [Nama Mahasiswa], [No. HP], [No Plat Kendaraan], [Jenis]) VALUES (N'13514003', N'Dora', N'815234901', N'D8712ITC', N'Mobil')
INSERT [dbo].[Mahasiswa] ([NIM], [Nama Mahasiswa], [No. HP], [No Plat Kendaraan], [Jenis]) VALUES (N'16213098', N'Kristen', N'836029800.3', N'D9876UYT', N'Motor')
INSERT [dbo].[Mahasiswa] ([NIM], [Nama Mahasiswa], [No. HP], [No Plat Kendaraan], [Jenis]) VALUES (N'16514005', N'Elritta', N'840032900.3', N'D755OIP', N'Mobil')
INSERT [dbo].[Mahasiswa] ([NIM], [Nama Mahasiswa], [No. HP], [No Plat Kendaraan], [Jenis]) VALUES (N'16714004', N'Efraim', N'841033675.3', N'D123AFR', N'Mobil')
INSERT [dbo].[Petugas] ([ID Petugas], [Password], [ID Daerah Parkir], [Nama Petugas], [No. HP]) VALUES (N'admITB', N'gerbangutama', N'GerbangUtama', N'Adi', N'8962311313')
INSERT [dbo].[Petugas] ([ID Petugas], [Password], [ID Daerah Parkir], [Nama Petugas], [No. HP]) VALUES (N'admMHS', N'mahasiwa', N'ParkirMhs', N'Budi', N'8932423421')
INSERT [dbo].[Petugas] ([ID Petugas], [Password], [ID Daerah Parkir], [Nama Petugas], [No. HP]) VALUES (N'sarpras', N'sarprasITB', N'Sistem', N'Wisnu', N'8902535529')
INSERT [dbo].[Petugas] ([ID Petugas], [Password], [ID Daerah Parkir], [Nama Petugas], [No. HP]) VALUES (N'stpzona1', N'area1', N'Zona1', N'Danang', N'8872647637')
INSERT [dbo].[Petugas] ([ID Petugas], [Password], [ID Daerah Parkir], [Nama Petugas], [No. HP]) VALUES (N'stpzona2', N'area2', N'Zona2', N'Rendi', N'8842759745')
INSERT [dbo].[Petugas] ([ID Petugas], [Password], [ID Daerah Parkir], [Nama Petugas], [No. HP]) VALUES (N'stpzona3', N'area3', N'Zona3', N'Dadang', N'8812871853')
INSERT [dbo].[Petugas] ([ID Petugas], [Password], [ID Daerah Parkir], [Nama Petugas], [No. HP]) VALUES (N'stpzona4', N'area4', N'Zona4', N'Ujang', N'8782983961')
INSERT [dbo].[Petugas] ([ID Petugas], [Password], [ID Daerah Parkir], [Nama Petugas], [No. HP]) VALUES (N'stpzona5', N'area5', N'Zona5', N'Soleh', N'8753096069')
INSERT [dbo].[Petugas] ([ID Petugas], [Password], [ID Daerah Parkir], [Nama Petugas], [No. HP]) VALUES (N'stpzona6', N'area6', N'Zona6', N'Fandi', N'8723208177')
INSERT [dbo].[Petugas] ([ID Petugas], [Password], [ID Daerah Parkir], [Nama Petugas], [No. HP]) VALUES (N'stpzona7', N'area7', N'Zona7', N'Arief', N'8693320285')
INSERT [dbo].[Petugas] ([ID Petugas], [Password], [ID Daerah Parkir], [Nama Petugas], [No. HP]) VALUES (N'stpzona8', N'area8', N'Zona8', N'Puan', N'8663432393')
INSERT [dbo].[Staff/Dosen] ([NIP], [Nama], [Area Bekerja], [No Plat Kendaraan]) VALUES (N'12314', N'Sulis', N'Zona 2', N'B6547TRF')
INSERT [dbo].[Staff/Dosen] ([NIP], [Nama], [Area Bekerja], [No Plat Kendaraan]) VALUES (N'12345', N'Dr. Jamil', N'Zona 1', N'D123ABC')
INSERT [dbo].[Staff/Dosen] ([NIP], [Nama], [Area Bekerja], [No Plat Kendaraan]) VALUES (N'12346', N'Ir. Bermawi', N'Zona 2', N'D123ABD')
INSERT [dbo].[Staff/Dosen] ([NIP], [Nama], [Area Bekerja], [No Plat Kendaraan]) VALUES (N'12347', N'Prof. Iskandar', N'Zona 3', N'D123ABF')
INSERT [dbo].[Staff/Dosen] ([NIP], [Nama], [Area Bekerja], [No Plat Kendaraan]) VALUES (N'12348', N'Ir. Anas', N'Zona 4', N'D123ABG')
INSERT [dbo].[Staff/Dosen] ([NIP], [Nama], [Area Bekerja], [No Plat Kendaraan]) VALUES (N'12349', N'Dr. Nara', N'Zona 5', N'D435ABC')
INSERT [dbo].[Staff/Dosen] ([NIP], [Nama], [Area Bekerja], [No Plat Kendaraan]) VALUES (N'13410', N'Prof. Ir. Susi', N'Zona 6', N'D987ABC')
INSERT [dbo].[Staff/Dosen] ([NIP], [Nama], [Area Bekerja], [No Plat Kendaraan]) VALUES (N'13411', N'Luki', N'Zona 7', N'D876ABD')
INSERT [dbo].[Staff/Dosen] ([NIP], [Nama], [Area Bekerja], [No Plat Kendaraan]) VALUES (N'13412', N'Amar', N'Zona 8', N'F6781BG')
INSERT [dbo].[Staff/Dosen] ([NIP], [Nama], [Area Bekerja], [No Plat Kendaraan]) VALUES (N'13413', N'Indah', N'Zona 1', N'B7864GT')
INSERT [dbo].[Staff/Dosen] ([NIP], [Nama], [Area Bekerja], [No Plat Kendaraan]) VALUES (N'23455', N'Neta', N'Zona 3', N'D7658RFD')
INSERT [dbo].[Staff/Dosen] ([NIP], [Nama], [Area Bekerja], [No Plat Kendaraan]) VALUES (N'23457', N'Ir. Mungkar', N'Zona 4', N'D2341RFS')
INSERT [dbo].[Staff/Dosen] ([NIP], [Nama], [Area Bekerja], [No Plat Kendaraan]) VALUES (N'23459', N'Dr. Nakir', N'Zona 5', N'D123RFS')
INSERT [dbo].[Staff/Dosen] ([NIP], [Nama], [Area Bekerja], [No Plat Kendaraan]) VALUES (N'34569', N'Prof. Ridwan', N'Zona 6', N'D9012RFS')
INSERT [dbo].[Staff/Dosen] ([NIP], [Nama], [Area Bekerja], [No Plat Kendaraan]) VALUES (N'45691', N'Intan', N'Zona 7', N'D1230RFS')
INSERT [dbo].[Tamu] ([ID Tamu], [ID KTP], [Jenis Keperluan], [No Plat Kendaraan], [Area Keperluan]) VALUES (N'A1001A', N'317897312313192', N'Menjemput Anak', N'D7096RFS', N'Zona 1')
INSERT [dbo].[Tamu] ([ID Tamu], [ID KTP], [Jenis Keperluan], [No Plat Kendaraan], [Area Keperluan]) VALUES (N'A1002A', N'300519051996786', N'Memberikan Seminar', N'D769RFT', N'Zona 2')
INSERT [dbo].[Tamu] ([ID Tamu], [ID KTP], [Jenis Keperluan], [No Plat Kendaraan], [Area Keperluan]) VALUES (N'A1003A', N'283140791680380', N'Kuliah Tamu', N'D4597ABH', N'Zona 3')
INSERT [dbo].[Tamu] ([ID Tamu], [ID KTP], [Jenis Keperluan], [No Plat Kendaraan], [Area Keperluan]) VALUES (N'A1004A', N'265762531363974', N'Menjemput Anak', N'D7209DBJ', N'Zona 4')
INSERT [dbo].[Tamu] ([ID Tamu], [ID KTP], [Jenis Keperluan], [No Plat Kendaraan], [Area Keperluan]) VALUES (N'A1005A', N'248384271047568', N'Memberikan Seminar', N'D2769QUV', N'Zona 5')
INSERT [dbo].[Tamu] ([ID Tamu], [ID KTP], [Jenis Keperluan], [No Plat Kendaraan], [Area Keperluan]) VALUES (N'A1006A', N'231006010731162', N'Kuliah Tamu', N'B8709QTX', N'Zona 6')
INSERT [dbo].[Tamu] ([ID Tamu], [ID KTP], [Jenis Keperluan], [No Plat Kendaraan], [Area Keperluan]) VALUES (N'A1007A', N'213627750414756', N'Kuliah Tamu', N'B2409RFS', N'Zona 7')
INSERT [dbo].[Tamu] ([ID Tamu], [ID KTP], [Jenis Keperluan], [No Plat Kendaraan], [Area Keperluan]) VALUES (N'A1008A', N'196249490098350', N'Kuliah Tamu', N'B0972THY', N'Zona 8')
INSERT [dbo].[Tamu] ([ID Tamu], [ID KTP], [Jenis Keperluan], [No Plat Kendaraan], [Area Keperluan]) VALUES (N'A1009A', N'178871229781944', N'Mengantar Makanan', N'B8210YRS', N'Zona 1')
INSERT [dbo].[Tamu] ([ID Tamu], [ID KTP], [Jenis Keperluan], [No Plat Kendaraan], [Area Keperluan]) VALUES (N'A1010A', N'161492969465538', N'Mengantar Makanan', N'D9214RTF', N'Zona 2')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0110', CAST(0xDB3A0B00 AS Date), N'Zona1')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0111', CAST(0xFA3A0B00 AS Date), N'Zona2')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0112', CAST(0xDB3A0B00 AS Date), N'Zona3')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0113', CAST(0xFA3A0B00 AS Date), N'Zona4')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0114', CAST(0xDB3A0B00 AS Date), N'Zona5')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0115', CAST(0xFA3A0B00 AS Date), N'Zona6')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0116', CAST(0x063B0B00 AS Date), N'Zona7')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0117', CAST(0x0A3B0B00 AS Date), N'Zona8')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0118', CAST(0x0D3B0B00 AS Date), N'Zona1')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0119', CAST(0x563B0B00 AS Date), N'Zona2')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0120', CAST(0x203B0B00 AS Date), N'Zona3')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0121', CAST(0x963B0B00 AS Date), N'Zona4')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0122', CAST(0x583B0B00 AS Date), N'Zona5')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0123', CAST(0xFA3A0B00 AS Date), N'Zona6')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0124', CAST(0xDB3A0B00 AS Date), N'Zona7')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0125', CAST(0xFA3A0B00 AS Date), N'Zona1')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0126', CAST(0x563B0B00 AS Date), N'Zona2')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0127', CAST(0x2A3B0B00 AS Date), N'Zona3')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0128', CAST(0x963B0B00 AS Date), N'Zona4')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0129', CAST(0x583B0B00 AS Date), N'Zona5')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0130', CAST(0xFA3A0B00 AS Date), N'Zona6')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0131', CAST(0x563B0B00 AS Date), N'Zona7')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0132', CAST(0x2A3B0B00 AS Date), N'Zona8')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0133', CAST(0x963B0B00 AS Date), N'Zona1')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0134', CAST(0x583B0B00 AS Date), N'Zona2')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0135', CAST(0xFA3A0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0136', CAST(0x2A3B0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0137', CAST(0x963B0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0138', CAST(0x583B0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0139', CAST(0xFA3A0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0140', CAST(0xDB3A0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0141', CAST(0xFA3A0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0142', CAST(0x563B0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0143', CAST(0x203B0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0144', CAST(0x963B0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0145', CAST(0x583B0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0146', CAST(0x063B0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0147', CAST(0x063B0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0148', CAST(0x0A3B0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0149', CAST(0x0D3B0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0150', CAST(0x203B0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0151', CAST(0x963B0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0152', CAST(0x583B0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0153', CAST(0xFA3A0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0154', CAST(0xDB3A0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0155', CAST(0xFA3A0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0156', CAST(0x563B0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi] ([Barcode], [Tanggal Transaksi], [ID Daerah Parkir]) VALUES (N'IDA0157', CAST(0xFA3A0B00 AS Date), N'ParkirMhs')
INSERT [dbo].[Transaksi Mahasiswa] ([ID Transaksi Mhs], [NIM], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'Mhs1_30042017_SG', N'16514005', N'IDA0149', CAST(0x0000A76800644010 AS DateTime), CAST(0x0000A76800B89200 AS DateTime), NULL, 9000.0000, 0.0000, 9000.0000, N'Mobil')
INSERT [dbo].[Transaksi Mahasiswa] ([ID Transaksi Mhs], [NIM], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'Mhs1_30042017_SI', N'13414001', N'IDA0145', CAST(0x0000A768005AE970 AS DateTime), CAST(0x0000A76800A4CB80 AS DateTime), CAST(0x070050E63A610000 AS Time), 2000.0000, 0.0000, 2000.0000, N'Motor')
INSERT [dbo].[Transaksi Mahasiswa] ([ID Transaksi Mhs], [NIM], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'Mhs1_30042017_SR', N'13314002', N'IDA0146', CAST(0x0000A768005D6240 AS DateTime), CAST(0x0000A76800A511D0 AS DateTime), NULL, 9000.0000, 0.0000, 9000.0000, N'Mobil')
INSERT [dbo].[Transaksi Mahasiswa] ([ID Transaksi Mhs], [NIM], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'Mhs2_30042017_SG', N'13114006', N'IDA0150', CAST(0x0000A7680064CCB0 AS DateTime), CAST(0x0000A76800B91EA0 AS DateTime), NULL, 9000.0000, 0.0000, 9000.0000, N'Mobil')
INSERT [dbo].[Transaksi Mahasiswa] ([ID Transaksi Mhs], [NIM], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'Mhs2_30042017_SI', N'13413098', N'IDA0152', CAST(0x0000A7680065E5F0 AS DateTime), CAST(0x0000A76800BA37E0 AS DateTime), NULL, 9000.0000, 0.0000, 9000.0000, N'Mobil')
INSERT [dbo].[Transaksi Mahasiswa] ([ID Transaksi Mhs], [NIM], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'Mhs2_30042017_SR', N'13514003', N'IDA0147', CAST(0x0000A768006326D0 AS DateTime), CAST(0x0000A76800A62B10 AS DateTime), NULL, 9000.0000, 0.0000, 9000.0000, N'Mobil')
INSERT [dbo].[Transaksi Mahasiswa] ([ID Transaksi Mhs], [NIM], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'Mhs3_30042017_SG', N'13013101', N'IDA0151', CAST(0x0000A76800655950 AS DateTime), CAST(0x0000A76800B9AB40 AS DateTime), NULL, 9000.0000, 0.0000, 9000.0000, N'Mobil')
INSERT [dbo].[Transaksi Mahasiswa] ([ID Transaksi Mhs], [NIM], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'Mhs3_30042017_SI', N'16213098', N'IDA0153', CAST(0x0000A76800667290 AS DateTime), CAST(0x0000A76800CDFE60 AS DateTime), NULL, 2000.0000, 0.0000, 2000.0000, N'Motor')
INSERT [dbo].[Transaksi Mahasiswa] ([ID Transaksi Mhs], [NIM], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'Mhs3_30042017_SR', N'16714004', N'IDA0148', CAST(0x0000A7680063B370 AS DateTime), CAST(0x0000A76800B80560 AS DateTime), NULL, 9000.0000, 0.0000, 9000.0000, N'Mobil')
INSERT [dbo].[Transaksi Mahasiswa] ([ID Transaksi Mhs], [NIM], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'Mhs4_30042017_SI', N'13112091', N'IDA0157', CAST(0x0000A7680068A510 AS DateTime), CAST(0x0000A7680100CE30 AS DateTime), NULL, 2000.0000, 0.0000, 2000.0000, N'Motor')
INSERT [dbo].[Transaksi Mahasiswa] ([ID Transaksi Mhs], [NIM], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'Mhs4_30042017_SR', N'12613098', N'IDA0154', CAST(0x0000A7680066FF30 AS DateTime), CAST(0x0000A76800CF5DF0 AS DateTime), NULL, 2000.0000, 0.0000, 2000.0000, N'Motor')
INSERT [dbo].[Transaksi Mahasiswa] ([ID Transaksi Mhs], [NIM], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'Mhs5_30042017_SR', N'12815098', N'IDA0155', CAST(0x0000A76800678BD0 AS DateTime), CAST(0x0000A76800CF5DF0 AS DateTime), NULL, 9000.0000, 0.0000, 9000.0000, N'Mobil')
INSERT [dbo].[Transaksi Mahasiswa] ([ID Transaksi Mhs], [NIM], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'Mhs6_30042017_SR', N'13415056', N'IDA0156', CAST(0x0000A76800681870 AS DateTime), CAST(0x0000A76800F05370 AS DateTime), NULL, 9000.0000, 0.0000, 9000.0000, N'Mobil')
INSERT [dbo].[Transaksi Staff/Dosen] ([ID Transaksi SD], [NIP], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Tarif Parkir], [Tarif Denda], [Total Tarif]) VALUES (N'SD10-30042017', N'12314', N'IDA0119', CAST(0x0000A7680062F0E8 AS DateTime), CAST(0x0000A76800F5C850 AS DateTime), CAST(0x0000A7680092D768 AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Staff/Dosen] ([ID Transaksi SD], [NIP], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Tarif Parkir], [Tarif Denda], [Total Tarif]) VALUES (N'SD11-30042017', N'23455', N'IDA0120', CAST(0x0000A7680063BCD0 AS DateTime), CAST(0x0000A7680090F36C AS DateTime), CAST(0x0000A768002D369C AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Staff/Dosen] ([ID Transaksi SD], [NIP], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Tarif Parkir], [Tarif Denda], [Total Tarif]) VALUES (N'SD12-30042017', N'23457', N'IDA0121', CAST(0x0000A768006FDBF0 AS DateTime), CAST(0x0000A76800ED4BA8 AS DateTime), CAST(0x0000A768007D6FB8 AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Staff/Dosen] ([ID Transaksi SD], [NIP], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Tarif Parkir], [Tarif Denda], [Total Tarif]) VALUES (N'SD1-30042017', N'12345', N'IDA0110', CAST(0x0000A7680067EE40 AS DateTime), CAST(0x0000A76801494E58 AS DateTime), CAST(0x0000A76800E16018 AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Staff/Dosen] ([ID Transaksi SD], [NIP], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Tarif Parkir], [Tarif Denda], [Total Tarif]) VALUES (N'SD13-30042017', N'23459', N'IDA0122', CAST(0x0000A768006D2F90 AS DateTime), CAST(0x0000A768016D481C AS DateTime), CAST(0x0000A7680100188C AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Staff/Dosen] ([ID Transaksi SD], [NIP], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Tarif Parkir], [Tarif Denda], [Total Tarif]) VALUES (N'SD14-30042017', N'34569', N'IDA0123', CAST(0x0000A7680073995C AS DateTime), CAST(0x0000A768010CD964 AS DateTime), CAST(0x0000A76800994008 AS DateTime), 0.0000, 20000.0000, 20000.0000)
INSERT [dbo].[Transaksi Staff/Dosen] ([ID Transaksi SD], [NIP], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Tarif Parkir], [Tarif Denda], [Total Tarif]) VALUES (N'SD15-30042017', N'45691', N'IDA0124', CAST(0x0000A768007C716C AS DateTime), CAST(0x0000A768012BA240 AS DateTime), CAST(0x0000A76800AF30D4 AS DateTime), 0.0000, 20000.0000, 20000.0000)
INSERT [dbo].[Transaksi Staff/Dosen] ([ID Transaksi SD], [NIP], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Tarif Parkir], [Tarif Denda], [Total Tarif]) VALUES (N'SD2-30042017', N'12346', N'IDA0111', CAST(0x0000A7680083CA48 AS DateTime), CAST(0x0000A768012D737C AS DateTime), CAST(0x0000A76800A9A934 AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Staff/Dosen] ([ID Transaksi SD], [NIP], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Tarif Parkir], [Tarif Denda], [Total Tarif]) VALUES (N'SD3-30042017', N'12347', N'IDA0112', CAST(0x0000A7680065C2C8 AS DateTime), CAST(0x0000A76800D81D64 AS DateTime), CAST(0x0000A76800725A9C AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Staff/Dosen] ([ID Transaksi SD], [NIP], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Tarif Parkir], [Tarif Denda], [Total Tarif]) VALUES (N'SD4-30042017', N'12348', N'IDA0113', CAST(0x0000A7680087A3D4 AS DateTime), CAST(0x0000A768013025B8 AS DateTime), CAST(0x0000A76800A881E4 AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Staff/Dosen] ([ID Transaksi SD], [NIP], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Tarif Parkir], [Tarif Denda], [Total Tarif]) VALUES (N'SD5-30042017', N'12349', N'IDA0114', CAST(0x0000A7680080F160 AS DateTime), CAST(0x0000A76800E79078 AS DateTime), CAST(0x0000A76800669F18 AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Staff/Dosen] ([ID Transaksi SD], [NIP], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Tarif Parkir], [Tarif Denda], [Total Tarif]) VALUES (N'SD6-30042017', N'13410', N'IDA0115', CAST(0x0000A768006BABAC AS DateTime), CAST(0x0000A76800EEF9BC AS DateTime), CAST(0x0000A76800834E10 AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Staff/Dosen] ([ID Transaksi SD], [NIP], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Tarif Parkir], [Tarif Denda], [Total Tarif]) VALUES (N'SD7-30042017', N'13411', N'IDA0116', CAST(0x0000A76800840990 AS DateTime), CAST(0x0000A768017D18F0 AS DateTime), CAST(0x0000A76800F90F60 AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Staff/Dosen] ([ID Transaksi SD], [NIP], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Tarif Parkir], [Tarif Denda], [Total Tarif]) VALUES (N'SD8-30042017', N'13412', N'IDA0117', CAST(0x0000A7680071CCD0 AS DateTime), CAST(0x0000A7680183FC9C AS DateTime), CAST(0x0000A76801122FCC AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Staff/Dosen] ([ID Transaksi SD], [NIP], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Tarif Parkir], [Tarif Denda], [Total Tarif]) VALUES (N'SD9-30042017', N'13413', N'IDA0118', CAST(0x0000A768007EB328 AS DateTime), CAST(0x0000A768012C5910 AS DateTime), CAST(0x0000A76800ADA5E8 AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Tamu] ([ID Transaksi Tamu], [ID Tamu], [Barcode], [Jam Masuk], [Jam Keluar], [Biaya Parkir], [Biaya Denda], [Total Biaya]) VALUES (N'TM0_30042017', N'A1010A', N'IDA0134', CAST(0x0000A7680067C794 AS DateTime), CAST(0x0000A768010CD964 AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Tamu] ([ID Transaksi Tamu], [ID Tamu], [Barcode], [Jam Masuk], [Jam Keluar], [Biaya Parkir], [Biaya Denda], [Total Biaya]) VALUES (N'TM1_30042017', N'A1001A', N'IDA0125', CAST(0x0000A768007C4D18 AS DateTime), CAST(0x0000A76800E79078 AS DateTime), 0.0000, 20000.0000, 20000.0000)
INSERT [dbo].[Transaksi Tamu] ([ID Transaksi Tamu], [ID Tamu], [Barcode], [Jam Masuk], [Jam Keluar], [Biaya Parkir], [Biaya Denda], [Total Biaya]) VALUES (N'TM2_30042017', N'A1002A', N'IDA0126', CAST(0x0000A76800750F30 AS DateTime), CAST(0x0000A76800EEF9BC AS DateTime), 0.0000, 20000.0000, 20000.0000)
INSERT [dbo].[Transaksi Tamu] ([ID Transaksi Tamu], [ID Tamu], [Barcode], [Jam Masuk], [Jam Keluar], [Biaya Parkir], [Biaya Denda], [Total Biaya]) VALUES (N'TM3_30042017', N'A1003A', N'IDA0127', CAST(0x0000A768008DB10C AS DateTime), CAST(0x0000A768017D18F0 AS DateTime), 0.0000, 20000.0000, 20000.0000)
INSERT [dbo].[Transaksi Tamu] ([ID Transaksi Tamu], [ID Tamu], [Barcode], [Jam Masuk], [Jam Keluar], [Biaya Parkir], [Biaya Denda], [Total Biaya]) VALUES (N'TM4_30042017', N'A1004A', N'IDA0128', CAST(0x0000A76800696EA0 AS DateTime), CAST(0x0000A7680183FC9C AS DateTime), 0.0000, 15000.0000, 15000.0000)
INSERT [dbo].[Transaksi Tamu] ([ID Transaksi Tamu], [ID Tamu], [Barcode], [Jam Masuk], [Jam Keluar], [Biaya Parkir], [Biaya Denda], [Total Biaya]) VALUES (N'TM5_30042017', N'A1005A', N'IDA0129', CAST(0x0000A768008E4004 AS DateTime), CAST(0x0000A768012C5910 AS DateTime), 0.0000, 15000.0000, 15000.0000)
INSERT [dbo].[Transaksi Tamu] ([ID Transaksi Tamu], [ID Tamu], [Barcode], [Jam Masuk], [Jam Keluar], [Biaya Parkir], [Biaya Denda], [Total Biaya]) VALUES (N'TM6_30042017', N'A1006A', N'IDA0130', CAST(0x0000A768008A4224 AS DateTime), CAST(0x0000A76800F5C850 AS DateTime), 0.0000, 15000.0000, 15000.0000)
INSERT [dbo].[Transaksi Tamu] ([ID Transaksi Tamu], [ID Tamu], [Barcode], [Jam Masuk], [Jam Keluar], [Biaya Parkir], [Biaya Denda], [Total Biaya]) VALUES (N'TM7_30042017', N'A1007A', N'IDA0131', CAST(0x0000A768008ABE5C AS DateTime), CAST(0x0000A7680090F36C AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Tamu] ([ID Transaksi Tamu], [ID Tamu], [Barcode], [Jam Masuk], [Jam Keluar], [Biaya Parkir], [Biaya Denda], [Total Biaya]) VALUES (N'TM8_30042017', N'A1008A', N'IDA0132', CAST(0x0000A768007D8AAC AS DateTime), CAST(0x0000A76800ED4BA8 AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Tamu] ([ID Transaksi Tamu], [ID Tamu], [Barcode], [Jam Masuk], [Jam Keluar], [Biaya Parkir], [Biaya Denda], [Total Biaya]) VALUES (N'TM9_30042017', N'A1009A', N'IDA0133', CAST(0x0000A768008EC59C AS DateTime), CAST(0x0000A768016D481C AS DateTime), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Transaksi Umum] ([ID Transaksi Umum], [ID Umum], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'TRU1-30042017-SG', N'U5001SG', N'IDA0140', CAST(0x0000A768006B24E8 AS DateTime), CAST(0x0000A7680187020C AS DateTime), CAST(0x0700B472512D0000 AS Time), 18000.0000, 0.0000, 18000.0000, N'Mobil')
INSERT [dbo].[Transaksi Umum] ([ID Transaksi Umum], [ID Umum], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'TRU1-30042017-SI', N'U5001SI', N'IDA0137', CAST(0x0000A7680073DAFC AS DateTime), CAST(0x0000A76801229574 AS DateTime), CAST(0x0700581942790000 AS Time), 45000.0000, 0.0000, 45000.0000, N'Mobil')
INSERT [dbo].[Transaksi Umum] ([ID Transaksi Umum], [ID Umum], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'TRU1-30042017-SR', N'U5001SR', N'IDA0135', CAST(0x0000A7680078657C AS DateTime), CAST(0x0000A76801883D48 AS DateTime), CAST(0x07003CA1BE630000 AS Time), 36000.0000, 15000.0000, 51000.0000, N'Mobil')
INSERT [dbo].[Transaksi Umum] ([ID Transaksi Umum], [ID Umum], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'TRU2-30042017-SG', N'U5002SG', N'IDA0141', CAST(0x0000A768008E8654 AS DateTime), CAST(0x0000A76800E98D10 AS DateTime), CAST(0x07002C2455690000 AS Time), 26000.0000, 0.0000, 26000.0000, N'Motor')
INSERT [dbo].[Transaksi Umum] ([ID Transaksi Umum], [ID Umum], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'TRU2-30042017-SI', N'U5002SI', N'IDA0138', CAST(0x0000A768007F2858 AS DateTime), CAST(0x0000A76801811220 AS DateTime), CAST(0x07002894DE820000 AS Time), 48000.0000, 0.0000, 48000.0000, N'Mobil')
INSERT [dbo].[Transaksi Umum] ([ID Transaksi Umum], [ID Umum], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'TRU2-30042017-SR', N'U5002SR', N'IDA0136', CAST(0x0000A76800776988 AS DateTime), CAST(0x0000A76800A90FB0 AS DateTime), CAST(0x0700080992020000 AS Time), 2000.0000, 15000.0000, 17000.0000, N'Motor')
INSERT [dbo].[Transaksi Umum] ([ID Transaksi Umum], [ID Umum], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'TRU3-30042017-SG', N'U5003SG', N'IDA0142', CAST(0x0000A76800747228 AS DateTime), CAST(0x0000A76800B7672C AS DateTime), CAST(0x0700D442AF0C0000 AS Time), 4000.0000, 0.0000, 4000.0000, N'Motor')
INSERT [dbo].[Transaksi Umum] ([ID Transaksi Umum], [ID Umum], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'TRU3-30042017-SI', N'U5003SI', N'IDA0139', CAST(0x0000A768008B9728 AS DateTime), CAST(0x0000A7680155CD90 AS DateTime), CAST(0x0700882E6D360000 AS Time), 21000.0000, 0.0000, 21000.0000, N'Mobil')
INSERT [dbo].[Transaksi Umum] ([ID Transaksi Umum], [ID Umum], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'TRU4-30042017-SG', N'U5004SG', N'IDA0143', CAST(0x0000A76800821B08 AS DateTime), CAST(0x0000A7680121EB88 AS DateTime), CAST(0x0700C0725E8C0000 AS Time), 34000.0000, 0.0000, 34000.0000, N'Motor')
INSERT [dbo].[Transaksi Umum] ([ID Transaksi Umum], [ID Umum], [Barcode], [Jam Masuk], [Jam Keluar], [Durasi], [Biaya Parkir], [Biaya Denda], [Total Biaya], [Jenis]) VALUES (N'TRU5-30042017-SG', N'U5005SG', N'IDA0144', CAST(0x0000A768006CCAC8 AS DateTime), CAST(0x0000A76800C5D870 AS DateTime), CAST(0x070008A33F510000 AS Time), 20000.0000, 0.0000, 20000.0000, N'Motor')
INSERT [dbo].[Umum] ([ID Umum], [No Plat Kendaraan], [Jenis]) VALUES (N'U5001SG', N'BG1230ITR', N'Mobil')
INSERT [dbo].[Umum] ([ID Umum], [No Plat Kendaraan], [Jenis]) VALUES (N'U5001SI', N'D1289JES', N'Mobil')
INSERT [dbo].[Umum] ([ID Umum], [No Plat Kendaraan], [Jenis]) VALUES (N'U5001SR', N'D1897ABU', N'Mobil')
INSERT [dbo].[Umum] ([ID Umum], [No Plat Kendaraan], [Jenis]) VALUES (N'U5002SG', N'Z7892YT', N'Motor')
INSERT [dbo].[Umum] ([ID Umum], [No Plat Kendaraan], [Jenis]) VALUES (N'U5002SI', N'D1189FLO', N'Mobil')
INSERT [dbo].[Umum] ([ID Umum], [No Plat Kendaraan], [Jenis]) VALUES (N'U5002SR', N'D1956TYU', N'Motor')
INSERT [dbo].[Umum] ([ID Umum], [No Plat Kendaraan], [Jenis]) VALUES (N'U5003SG', N'B9876RTF', N'Motor')
INSERT [dbo].[Umum] ([ID Umum], [No Plat Kendaraan], [Jenis]) VALUES (N'U5003SI', N'F8926UTR', N'Mobil')
INSERT [dbo].[Umum] ([ID Umum], [No Plat Kendaraan], [Jenis]) VALUES (N'U5004SG', N'B2679RFS', N'Motor')
INSERT [dbo].[Umum] ([ID Umum], [No Plat Kendaraan], [Jenis]) VALUES (N'U5005SG', N'B7891RFS', N'Motor')
ALTER TABLE [dbo].[Data Pelanggaran]  WITH CHECK ADD  CONSTRAINT [FK_Data Pelanggaran_Transaksi] FOREIGN KEY([Barcode])
REFERENCES [dbo].[Transaksi] ([Barcode])
GO
ALTER TABLE [dbo].[Data Pelanggaran] CHECK CONSTRAINT [FK_Data Pelanggaran_Transaksi]
GO
ALTER TABLE [dbo].[Mahasiswa]  WITH CHECK ADD  CONSTRAINT [FK_Mahasiswa_Kendaraan] FOREIGN KEY([No Plat Kendaraan])
REFERENCES [dbo].[Kendaraan] ([No Plat Kendaraan])
GO
ALTER TABLE [dbo].[Mahasiswa] CHECK CONSTRAINT [FK_Mahasiswa_Kendaraan]
GO
ALTER TABLE [dbo].[Petugas]  WITH CHECK ADD  CONSTRAINT [FK_Petugas_Daerah Tugas] FOREIGN KEY([ID Daerah Parkir])
REFERENCES [dbo].[Daerah Tugas] ([ID Daerah Parkir])
GO
ALTER TABLE [dbo].[Petugas] CHECK CONSTRAINT [FK_Petugas_Daerah Tugas]
GO
ALTER TABLE [dbo].[Staff/Dosen]  WITH CHECK ADD  CONSTRAINT [FK_Staff/Dosen_Kendaraan] FOREIGN KEY([No Plat Kendaraan])
REFERENCES [dbo].[Kendaraan] ([No Plat Kendaraan])
GO
ALTER TABLE [dbo].[Staff/Dosen] CHECK CONSTRAINT [FK_Staff/Dosen_Kendaraan]
GO
ALTER TABLE [dbo].[Tamu]  WITH CHECK ADD  CONSTRAINT [FK_Tamu_Kendaraan] FOREIGN KEY([No Plat Kendaraan])
REFERENCES [dbo].[Kendaraan] ([No Plat Kendaraan])
GO
ALTER TABLE [dbo].[Tamu] CHECK CONSTRAINT [FK_Tamu_Kendaraan]
GO
ALTER TABLE [dbo].[Transaksi]  WITH CHECK ADD  CONSTRAINT [FK_Transaksi_Daerah Tugas] FOREIGN KEY([ID Daerah Parkir])
REFERENCES [dbo].[Daerah Tugas] ([ID Daerah Parkir])
GO
ALTER TABLE [dbo].[Transaksi] CHECK CONSTRAINT [FK_Transaksi_Daerah Tugas]
GO
ALTER TABLE [dbo].[Transaksi Mahasiswa]  WITH CHECK ADD  CONSTRAINT [FK_Transaksi Mahasiswa_Mahasiswa] FOREIGN KEY([NIM])
REFERENCES [dbo].[Mahasiswa] ([NIM])
GO
ALTER TABLE [dbo].[Transaksi Mahasiswa] CHECK CONSTRAINT [FK_Transaksi Mahasiswa_Mahasiswa]
GO
ALTER TABLE [dbo].[Transaksi Mahasiswa]  WITH CHECK ADD  CONSTRAINT [FK_Transaksi Mahasiswa_Transaksi] FOREIGN KEY([Barcode])
REFERENCES [dbo].[Transaksi] ([Barcode])
GO
ALTER TABLE [dbo].[Transaksi Mahasiswa] CHECK CONSTRAINT [FK_Transaksi Mahasiswa_Transaksi]
GO
ALTER TABLE [dbo].[Transaksi Staff/Dosen]  WITH CHECK ADD  CONSTRAINT [FK_Transaksi Staff/Dosen_Staff/Dosen] FOREIGN KEY([NIP])
REFERENCES [dbo].[Staff/Dosen] ([NIP])
GO
ALTER TABLE [dbo].[Transaksi Staff/Dosen] CHECK CONSTRAINT [FK_Transaksi Staff/Dosen_Staff/Dosen]
GO
ALTER TABLE [dbo].[Transaksi Staff/Dosen]  WITH CHECK ADD  CONSTRAINT [FK_Transaksi Staff/Dosen_Transaksi] FOREIGN KEY([Barcode])
REFERENCES [dbo].[Transaksi] ([Barcode])
GO
ALTER TABLE [dbo].[Transaksi Staff/Dosen] CHECK CONSTRAINT [FK_Transaksi Staff/Dosen_Transaksi]
GO
ALTER TABLE [dbo].[Transaksi Tamu]  WITH CHECK ADD  CONSTRAINT [FK_Transaksi Tamu_Tamu] FOREIGN KEY([ID Tamu])
REFERENCES [dbo].[Tamu] ([ID Tamu])
GO
ALTER TABLE [dbo].[Transaksi Tamu] CHECK CONSTRAINT [FK_Transaksi Tamu_Tamu]
GO
ALTER TABLE [dbo].[Transaksi Tamu]  WITH CHECK ADD  CONSTRAINT [FK_Transaksi Tamu_Transaksi] FOREIGN KEY([Barcode])
REFERENCES [dbo].[Transaksi] ([Barcode])
GO
ALTER TABLE [dbo].[Transaksi Tamu] CHECK CONSTRAINT [FK_Transaksi Tamu_Transaksi]
GO
ALTER TABLE [dbo].[Transaksi Umum]  WITH CHECK ADD  CONSTRAINT [FK_Transaksi Umum_Transaksi] FOREIGN KEY([Barcode])
REFERENCES [dbo].[Transaksi] ([Barcode])
GO
ALTER TABLE [dbo].[Transaksi Umum] CHECK CONSTRAINT [FK_Transaksi Umum_Transaksi]
GO
ALTER TABLE [dbo].[Transaksi Umum]  WITH CHECK ADD  CONSTRAINT [FK_Transaksi Umum_Transaksi Umum] FOREIGN KEY([ID Umum])
REFERENCES [dbo].[Umum] ([ID Umum])
GO
ALTER TABLE [dbo].[Transaksi Umum] CHECK CONSTRAINT [FK_Transaksi Umum_Transaksi Umum]
GO
ALTER TABLE [dbo].[Umum]  WITH CHECK ADD  CONSTRAINT [FK_Umum_Kendaraan] FOREIGN KEY([No Plat Kendaraan])
REFERENCES [dbo].[Kendaraan] ([No Plat Kendaraan])
GO
ALTER TABLE [dbo].[Umum] CHECK CONSTRAINT [FK_Umum_Kendaraan]
GO
USE [master]
GO
ALTER DATABASE [Pakiran ITB - Kelompok 12 ] SET  READ_WRITE 
GO
