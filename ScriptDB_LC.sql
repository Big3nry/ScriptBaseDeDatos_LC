USE [master]
GO
/****** Object:  Database [DBClinicaDental]    Script Date: 9/09/2022 11:25:28 ******/
CREATE DATABASE [DBClinicaDental]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBClinicaDental', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBClinicaDental.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBClinicaDental_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBClinicaDental_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBClinicaDental] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBClinicaDental].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBClinicaDental] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBClinicaDental] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBClinicaDental] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBClinicaDental] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBClinicaDental] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBClinicaDental] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBClinicaDental] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBClinicaDental] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBClinicaDental] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBClinicaDental] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBClinicaDental] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBClinicaDental] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBClinicaDental] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBClinicaDental] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBClinicaDental] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBClinicaDental] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBClinicaDental] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBClinicaDental] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBClinicaDental] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBClinicaDental] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBClinicaDental] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBClinicaDental] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBClinicaDental] SET RECOVERY FULL 
GO
ALTER DATABASE [DBClinicaDental] SET  MULTI_USER 
GO
ALTER DATABASE [DBClinicaDental] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBClinicaDental] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBClinicaDental] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBClinicaDental] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBClinicaDental] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBClinicaDental] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBClinicaDental', N'ON'
GO
ALTER DATABASE [DBClinicaDental] SET QUERY_STORE = OFF
GO
USE [DBClinicaDental]
GO
/****** Object:  Table [dbo].[Citas]    Script Date: 9/09/2022 11:25:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citas](
	[IDRegistroCita] [int] IDENTITY(1,1) NOT NULL,
	[NombrePaciente] [varchar](225) NULL,
	[ApellidoPaciente] [varchar](225) NULL,
	[DNI] [int] NULL,
	[FechaRegistro] [date] NULL,
	[HoraRegistro] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDRegistroCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormasDePago]    Script Date: 9/09/2022 11:25:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormasDePago](
	[Comprobante] [int] IDENTITY(1,1) NOT NULL,
	[Visa] [nvarchar](225) NULL,
	[AmericanExpress] [nvarchar](225) NULL,
	[PayPal] [nvarchar](225) NULL,
	[MasterCard] [nvarchar](225) NULL,
PRIMARY KEY CLUSTERED 
(
	[Comprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instalaciones]    Script Date: 9/09/2022 11:25:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instalaciones](
	[IDInstalacion] [int] IDENTITY(1,1) NOT NULL,
	[Consultorio1] [varchar](225) NULL,
	[Consultorio2] [varchar](225) NULL,
	[Esterilizacion] [varchar](225) NULL,
	[BlanqueamientoDentalLaser] [varchar](225) NULL,
	[Recepcion] [varchar](225) NULL,
	[SalaDeEspera] [varchar](225) NULL,
	[Oficina] [varchar](225) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDInstalacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registro]    Script Date: 9/09/2022 11:25:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registro](
	[IDRegistro] [int] IDENTITY(1,1) NOT NULL,
	[NombDoc] [varchar](225) NULL,
	[ApellidoDoc] [varchar](225) NULL,
	[HoraRegistro] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tratamientos]    Script Date: 9/09/2022 11:25:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tratamientos](
	[IDTratamientos] [int] IDENTITY(1,1) NOT NULL,
	[Blanqueamiento] [varchar](225) NULL,
	[Carillas] [varchar](225) NULL,
	[Coronas] [varchar](225) NULL,
	[DiseñoDeSonrisa] [varchar](225) NULL,
	[Endodoncia] [varchar](225) NULL,
	[Implantes] [varchar](225) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTratamientos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Citas] ON 

INSERT [dbo].[Citas] ([IDRegistroCita], [NombrePaciente], [ApellidoPaciente], [DNI], [FechaRegistro], [HoraRegistro]) VALUES (1, N'Nicholas', N'Altamrino', 78963529, CAST(N'2022-09-22' AS Date), CAST(N'11:36:00' AS Time))
INSERT [dbo].[Citas] ([IDRegistroCita], [NombrePaciente], [ApellidoPaciente], [DNI], [FechaRegistro], [HoraRegistro]) VALUES (2, N'Joaquin', N'Samaniego', 78754689, CAST(N'2022-09-21' AS Date), CAST(N'09:39:00' AS Time))
INSERT [dbo].[Citas] ([IDRegistroCita], [NombrePaciente], [ApellidoPaciente], [DNI], [FechaRegistro], [HoraRegistro]) VALUES (3, N'Luis', N'Canchano', 79539398, CAST(N'2022-08-12' AS Date), CAST(N'16:56:00' AS Time))
INSERT [dbo].[Citas] ([IDRegistroCita], [NombrePaciente], [ApellidoPaciente], [DNI], [FechaRegistro], [HoraRegistro]) VALUES (4, N'Piero', N'Flores', 73265295, CAST(N'2022-08-11' AS Date), CAST(N'20:01:00' AS Time))
INSERT [dbo].[Citas] ([IDRegistroCita], [NombrePaciente], [ApellidoPaciente], [DNI], [FechaRegistro], [HoraRegistro]) VALUES (5, N'John', N'Paquirachi', 75432597, CAST(N'2022-09-20' AS Date), CAST(N'13:06:00' AS Time))
SET IDENTITY_INSERT [dbo].[Citas] OFF
GO
SET IDENTITY_INSERT [dbo].[FormasDePago] ON 

INSERT [dbo].[FormasDePago] ([Comprobante], [Visa], [AmericanExpress], [PayPal], [MasterCard]) VALUES (1, N'-', N'', N'', N'')
INSERT [dbo].[FormasDePago] ([Comprobante], [Visa], [AmericanExpress], [PayPal], [MasterCard]) VALUES (2, N'', N'-', N'', N'')
INSERT [dbo].[FormasDePago] ([Comprobante], [Visa], [AmericanExpress], [PayPal], [MasterCard]) VALUES (3, N'', N'', N'', N'')
INSERT [dbo].[FormasDePago] ([Comprobante], [Visa], [AmericanExpress], [PayPal], [MasterCard]) VALUES (4, N'-', N'', N'', N'')
INSERT [dbo].[FormasDePago] ([Comprobante], [Visa], [AmericanExpress], [PayPal], [MasterCard]) VALUES (5, N'-', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[FormasDePago] OFF
GO
SET IDENTITY_INSERT [dbo].[Instalaciones] ON 

INSERT [dbo].[Instalaciones] ([IDInstalacion], [Consultorio1], [Consultorio2], [Esterilizacion], [BlanqueamientoDentalLaser], [Recepcion], [SalaDeEspera], [Oficina]) VALUES (1, N'Jose ', N'Alberto ', N'Nicolas ', N'Katleen ', N'Carlos ', N'Antonela', N'Tatiana')
INSERT [dbo].[Instalaciones] ([IDInstalacion], [Consultorio1], [Consultorio2], [Esterilizacion], [BlanqueamientoDentalLaser], [Recepcion], [SalaDeEspera], [Oficina]) VALUES (2, N'Jimena', N'Victor', N'Alejandro', N'Alisson', N'Esteban', N'Enrique', N'Juan')
INSERT [dbo].[Instalaciones] ([IDInstalacion], [Consultorio1], [Consultorio2], [Esterilizacion], [BlanqueamientoDentalLaser], [Recepcion], [SalaDeEspera], [Oficina]) VALUES (3, N'Silvia', N'Julio', N'Vanessa', N'Patricia', N'Pilar', N'Santiago', N'Teresa')
INSERT [dbo].[Instalaciones] ([IDInstalacion], [Consultorio1], [Consultorio2], [Esterilizacion], [BlanqueamientoDentalLaser], [Recepcion], [SalaDeEspera], [Oficina]) VALUES (4, N'Thiago', N'Alexandra', N'Fabian', N'Luis', N'Alejandra', N'Aaron', N'Arian')
INSERT [dbo].[Instalaciones] ([IDInstalacion], [Consultorio1], [Consultorio2], [Esterilizacion], [BlanqueamientoDentalLaser], [Recepcion], [SalaDeEspera], [Oficina]) VALUES (5, N'Pedro', N'Diego', N'Adil', N'Bruno', N'Marjorie', N'Daniela', N'Nicole')
SET IDENTITY_INSERT [dbo].[Instalaciones] OFF
GO
SET IDENTITY_INSERT [dbo].[Registro] ON 

INSERT [dbo].[Registro] ([IDRegistro], [NombDoc], [ApellidoDoc], [HoraRegistro]) VALUES (1, N'Katleen ', N'Levis', CAST(N'2022-09-02' AS Date))
INSERT [dbo].[Registro] ([IDRegistro], [NombDoc], [ApellidoDoc], [HoraRegistro]) VALUES (2, N'Alejandro', N'Nuñez', CAST(N'2022-09-02' AS Date))
INSERT [dbo].[Registro] ([IDRegistro], [NombDoc], [ApellidoDoc], [HoraRegistro]) VALUES (3, N'Pilar', N'Bustamante', CAST(N'2022-09-02' AS Date))
INSERT [dbo].[Registro] ([IDRegistro], [NombDoc], [ApellidoDoc], [HoraRegistro]) VALUES (4, N'Alexandra', N'Valencia', CAST(N'2022-09-02' AS Date))
INSERT [dbo].[Registro] ([IDRegistro], [NombDoc], [ApellidoDoc], [HoraRegistro]) VALUES (5, N'Marjorie', N'Cortegana', CAST(N'2022-09-02' AS Date))
SET IDENTITY_INSERT [dbo].[Registro] OFF
GO
ALTER TABLE [dbo].[Citas]  WITH CHECK ADD  CONSTRAINT [FK_Citas_FormasDePago] FOREIGN KEY([IDRegistroCita])
REFERENCES [dbo].[FormasDePago] ([Comprobante])
GO
ALTER TABLE [dbo].[Citas] CHECK CONSTRAINT [FK_Citas_FormasDePago]
GO
ALTER TABLE [dbo].[FormasDePago]  WITH CHECK ADD  CONSTRAINT [FK_FormasDePago_Instalaciones] FOREIGN KEY([Comprobante])
REFERENCES [dbo].[Instalaciones] ([IDInstalacion])
GO
ALTER TABLE [dbo].[FormasDePago] CHECK CONSTRAINT [FK_FormasDePago_Instalaciones]
GO
ALTER TABLE [dbo].[Instalaciones]  WITH CHECK ADD  CONSTRAINT [FK_Instalaciones_Registro] FOREIGN KEY([IDInstalacion])
REFERENCES [dbo].[Registro] ([IDRegistro])
GO
ALTER TABLE [dbo].[Instalaciones] CHECK CONSTRAINT [FK_Instalaciones_Registro]
GO
ALTER TABLE [dbo].[Tratamientos]  WITH CHECK ADD  CONSTRAINT [FK_Tratamientos_Citas] FOREIGN KEY([IDTratamientos])
REFERENCES [dbo].[Citas] ([IDRegistroCita])
GO
ALTER TABLE [dbo].[Tratamientos] CHECK CONSTRAINT [FK_Tratamientos_Citas]
GO
USE [master]
GO
ALTER DATABASE [DBClinicaDental] SET  READ_WRITE 
GO
