USE [master]
GO
/****** Object:  Database [BDClinicaGrupo19]    Script Date: 7/7/2024 19:27:27 ******/
CREATE DATABASE [BDClinicaGrupo19]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDClinicaGrupo19', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BDClinicaGrupo19.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDClinicaGrupo19_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BDClinicaGrupo19_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BDClinicaGrupo19] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDClinicaGrupo19].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDClinicaGrupo19] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BDClinicaGrupo19] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDClinicaGrupo19] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDClinicaGrupo19] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BDClinicaGrupo19] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDClinicaGrupo19] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDClinicaGrupo19] SET  MULTI_USER 
GO
ALTER DATABASE [BDClinicaGrupo19] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDClinicaGrupo19] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDClinicaGrupo19] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDClinicaGrupo19] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDClinicaGrupo19] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BDClinicaGrupo19] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BDClinicaGrupo19] SET QUERY_STORE = ON
GO
ALTER DATABASE [BDClinicaGrupo19] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BDClinicaGrupo19]
GO
/****** Object:  Table [dbo].[Administradores]    Script Date: 7/7/2024 19:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administradores](
	[NombreUsuario_A] [varchar](30) NOT NULL,
	[PassUsuario_A] [varchar](30) NULL,
	[EsAdministrador_A] [bit] NULL,
	[Estado_A] [bit] NULL,
 CONSTRAINT [PK_Administradores] PRIMARY KEY CLUSTERED 
(
	[NombreUsuario_A] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dias]    Script Date: 7/7/2024 19:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dias](
	[IdDia_D] [char](1) NOT NULL,
	[Descripcion_D] [varchar](30) NULL,
 CONSTRAINT [PK_Dias] PRIMARY KEY CLUSTERED 
(
	[IdDia_D] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiasXMedicos]    Script Date: 7/7/2024 19:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiasXMedicos](
	[Legajo_DXM] [int] NOT NULL,
	[IdDia_DXM] [char](1) NOT NULL,
 CONSTRAINT [PK_Legajo_DXM] PRIMARY KEY CLUSTERED 
(
	[Legajo_DXM] ASC,
	[IdDia_DXM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidades]    Script Date: 7/7/2024 19:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidades](
	[IdEspecialidad_E] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion_E] [varchar](30) NULL,
 CONSTRAINT [PK_Especialidades] PRIMARY KEY CLUSTERED 
(
	[IdEspecialidad_E] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horarios]    Script Date: 7/7/2024 19:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horarios](
	[IdHorario_H] [int] NOT NULL,
	[Descripcion_H] [varchar](30) NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[IdHorario_H] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorariosXMedicos]    Script Date: 7/7/2024 19:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorariosXMedicos](
	[Legajo_HXM] [int] NOT NULL,
	[IdHorario_HXM] [int] NOT NULL,
 CONSTRAINT [PK_HorariosXMedico] PRIMARY KEY CLUSTERED 
(
	[Legajo_HXM] ASC,
	[IdHorario_HXM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 7/7/2024 19:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidades](
	[IdLocalidad_L] [varchar](30) NOT NULL,
	[Descripcion_L] [varchar](30) NULL,
	[IdProvincia_L] [varchar](30) NULL,
 CONSTRAINT [PK_Localidades] PRIMARY KEY CLUSTERED 
(
	[IdLocalidad_L] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicos]    Script Date: 7/7/2024 19:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicos](
	[Legajo_M] [int] NOT NULL,
	[IdProvincia_M] [varchar](30) NULL,
	[IdLocalidad_M] [varchar](30) NULL,
	[IdEspecialidad_M] [int] NOT NULL,
	[NombreUsuario_M] [varchar](30) NULL,
	[PassUsuario_M] [varchar](30) NULL,
	[Dni_M] [varchar](8) NULL,
	[Nombre_M] [varchar](30) NULL,
	[Apellido_M] [varchar](30) NULL,
	[Sexo_M] [char](1) NULL,
	[Nacionalidad_M] [varchar](40) NULL,
	[FechaNacimiento_M] [date] NULL,
	[Direccion_M] [varchar](40) NULL,
	[Email_M] [varchar](40) NULL,
	[Telefono_M] [varchar](30) NULL,
	[IdDia_M] [char](1) NOT NULL,
	[IdHorario_M] [int] NOT NULL,
	[Estado_M] [bit] NOT NULL,
 CONSTRAINT [PK_Medicos] PRIMARY KEY CLUSTERED 
(
	[Legajo_M] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacionalidades]    Script Date: 7/7/2024 19:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacionalidades](
	[IdNacionalidad] [int] NOT NULL,
	[Descripcion_Nacionalidad] [varchar](30) NULL,
 CONSTRAINT [PK_IdNacionalidad] PRIMARY KEY CLUSTERED 
(
	[IdNacionalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 7/7/2024 19:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacientes](
	[DniPaciente_P] [int] NOT NULL,
	[IdProvincia_Paciente] [varchar](30) NULL,
	[IdLocalidad_Paciente] [varchar](30) NULL,
	[Nombre_P] [varchar](30) NULL,
	[Apellido_P] [varchar](30) NULL,
	[Sexo_P] [char](1) NULL,
	[Nacionalidad_P] [varchar](40) NULL,
	[FechaNacimiento_P] [date] NULL,
	[Direccion_P] [varchar](40) NULL,
	[Email_P] [varchar](40) NULL,
	[Telefono_P] [varchar](30) NULL,
	[Estado_P] [bit] NOT NULL,
 CONSTRAINT [PK_Pacientes] PRIMARY KEY CLUSTERED 
(
	[DniPaciente_P] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 7/7/2024 19:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[IdProvincia_Provincia] [varchar](30) NOT NULL,
	[Descripcion_Provincia] [varchar](30) NULL,
	[IdNacionalidad_P] [int] NOT NULL,
 CONSTRAINT [PK_Provincias] PRIMARY KEY CLUSTERED 
(
	[IdProvincia_Provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[turnos]    Script Date: 7/7/2024 19:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[turnos](
	[IdTurno_T] [int] NOT NULL,
	[Legajo_T] [int] NOT NULL,
	[DniPaciente_T] [int] NOT NULL,
	[IdEspecialidad_T] [int] NOT NULL,
	[IdDia_T] [char](1) NOT NULL,
	[IdHorario_T] [int] NOT NULL,
	[Presente_T] [bit] NULL,
	[Observacion_T] [varchar](150) NULL,
 CONSTRAINT [PK_Turnos] PRIMARY KEY CLUSTERED 
(
	[IdTurno_T] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DiasXMedicos]  WITH CHECK ADD  CONSTRAINT [FK_DiasXMedico_Dias] FOREIGN KEY([IdDia_DXM])
REFERENCES [dbo].[Dias] ([IdDia_D])
GO
ALTER TABLE [dbo].[DiasXMedicos] CHECK CONSTRAINT [FK_DiasXMedico_Dias]
GO
ALTER TABLE [dbo].[DiasXMedicos]  WITH CHECK ADD  CONSTRAINT [FK_DiasXMedico_Medicos] FOREIGN KEY([Legajo_DXM])
REFERENCES [dbo].[Medicos] ([Legajo_M])
GO
ALTER TABLE [dbo].[DiasXMedicos] CHECK CONSTRAINT [FK_DiasXMedico_Medicos]
GO
ALTER TABLE [dbo].[HorariosXMedicos]  WITH CHECK ADD  CONSTRAINT [FK_HorariosXMedico_Medicos] FOREIGN KEY([Legajo_HXM])
REFERENCES [dbo].[Medicos] ([Legajo_M])
GO
ALTER TABLE [dbo].[HorariosXMedicos] CHECK CONSTRAINT [FK_HorariosXMedico_Medicos]
GO
ALTER TABLE [dbo].[HorariosXMedicos]  WITH CHECK ADD  CONSTRAINT [FK_HorarioXMedico_Horarios] FOREIGN KEY([IdHorario_HXM])
REFERENCES [dbo].[Horarios] ([IdHorario_H])
GO
ALTER TABLE [dbo].[HorariosXMedicos] CHECK CONSTRAINT [FK_HorarioXMedico_Horarios]
GO
ALTER TABLE [dbo].[Localidades]  WITH CHECK ADD  CONSTRAINT [FK_Localidades_Provincias] FOREIGN KEY([IdProvincia_L])
REFERENCES [dbo].[Provincias] ([IdProvincia_Provincia])
GO
ALTER TABLE [dbo].[Localidades] CHECK CONSTRAINT [FK_Localidades_Provincias]
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD  CONSTRAINT [FK_Medicos_Administradores] FOREIGN KEY([NombreUsuario_M])
REFERENCES [dbo].[Administradores] ([NombreUsuario_A])
GO
ALTER TABLE [dbo].[Medicos] CHECK CONSTRAINT [FK_Medicos_Administradores]
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD  CONSTRAINT [FK_Medicos_Especialidades] FOREIGN KEY([IdEspecialidad_M])
REFERENCES [dbo].[Especialidades] ([IdEspecialidad_E])
GO
ALTER TABLE [dbo].[Medicos] CHECK CONSTRAINT [FK_Medicos_Especialidades]
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD  CONSTRAINT [FK_Medicos_Localidades] FOREIGN KEY([IdLocalidad_M])
REFERENCES [dbo].[Localidades] ([IdLocalidad_L])
GO
ALTER TABLE [dbo].[Medicos] CHECK CONSTRAINT [FK_Medicos_Localidades]
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD  CONSTRAINT [FK_Medicos_Provincias] FOREIGN KEY([IdProvincia_M])
REFERENCES [dbo].[Provincias] ([IdProvincia_Provincia])
GO
ALTER TABLE [dbo].[Medicos] CHECK CONSTRAINT [FK_Medicos_Provincias]
GO
ALTER TABLE [dbo].[Pacientes]  WITH CHECK ADD  CONSTRAINT [FK_Pacientes_Localidades] FOREIGN KEY([IdLocalidad_Paciente])
REFERENCES [dbo].[Localidades] ([IdLocalidad_L])
GO
ALTER TABLE [dbo].[Pacientes] CHECK CONSTRAINT [FK_Pacientes_Localidades]
GO
ALTER TABLE [dbo].[Pacientes]  WITH CHECK ADD  CONSTRAINT [FK_Pacientes_Provincias] FOREIGN KEY([IdProvincia_Paciente])
REFERENCES [dbo].[Provincias] ([IdProvincia_Provincia])
GO
ALTER TABLE [dbo].[Pacientes] CHECK CONSTRAINT [FK_Pacientes_Provincias]
GO
ALTER TABLE [dbo].[Provincias]  WITH CHECK ADD  CONSTRAINT [FK_Provincias_Nacionalidades] FOREIGN KEY([IdNacionalidad_P])
REFERENCES [dbo].[Nacionalidades] ([IdNacionalidad])
GO
ALTER TABLE [dbo].[Provincias] CHECK CONSTRAINT [FK_Provincias_Nacionalidades]
GO
ALTER TABLE [dbo].[turnos]  WITH CHECK ADD  CONSTRAINT [FK_Turnos_Dias] FOREIGN KEY([IdDia_T])
REFERENCES [dbo].[Dias] ([IdDia_D])
GO
ALTER TABLE [dbo].[turnos] CHECK CONSTRAINT [FK_Turnos_Dias]
GO
ALTER TABLE [dbo].[turnos]  WITH CHECK ADD  CONSTRAINT [FK_Turnos_Especialidades] FOREIGN KEY([IdEspecialidad_T])
REFERENCES [dbo].[Especialidades] ([IdEspecialidad_E])
GO
ALTER TABLE [dbo].[turnos] CHECK CONSTRAINT [FK_Turnos_Especialidades]
GO
ALTER TABLE [dbo].[turnos]  WITH CHECK ADD  CONSTRAINT [FK_Turnos_Horarios] FOREIGN KEY([IdHorario_T])
REFERENCES [dbo].[Horarios] ([IdHorario_H])
GO
ALTER TABLE [dbo].[turnos] CHECK CONSTRAINT [FK_Turnos_Horarios]
GO
ALTER TABLE [dbo].[turnos]  WITH CHECK ADD  CONSTRAINT [FK_Turnos_Medicos] FOREIGN KEY([Legajo_T])
REFERENCES [dbo].[Medicos] ([Legajo_M])
GO
ALTER TABLE [dbo].[turnos] CHECK CONSTRAINT [FK_Turnos_Medicos]
GO
ALTER TABLE [dbo].[turnos]  WITH CHECK ADD  CONSTRAINT [FK_Turnos_Pacientes] FOREIGN KEY([DniPaciente_T])
REFERENCES [dbo].[Pacientes] ([DniPaciente_P])
GO
ALTER TABLE [dbo].[turnos] CHECK CONSTRAINT [FK_Turnos_Pacientes]
GO
/****** Object:  StoredProcedure [dbo].[spAgregarMedico]    Script Date: 7/7/2024 19:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAgregarMedico]
(
	@Legajo_M int,
	@ID_PROVINCIA_M varchar(30),
	@ID_LOCALIDAD_M varchar(30),
	@ID_ESPECIALIDAD_M int,
	@ID_HORARIO_M int,
	@ID_DIA_M char,
	@USUARIO_M varchar(30),
	@PASS_M varchar(30),
	@DNI_M varchar(30),
	@NOMBRE_M varchar(30),
	@APELLIDO_M varchar(30),
	@SEXO_M char,
	@NACIONALIDAD_M varchar(40),
	@DIRECCION_M varchar(40),
	@EMAIL_M varchar(40),
	@TELEFONO_M varchar(30),
	@FECHA_NACIMIENTO_M datetime,
	@ESTADO_M bit
)
AS
INSERT INTO Medicos(
	Legajo_M,
	IdProvincia_M,
	IdLocalidad_M,
	IdEspecialidad_M,
	IdHorario_M,
	IdDia_M,
	NombreUsuario_M,
	PassUsuario_M,
	Dni_M,
	Nombre_M,
	Apellido_M,
	Sexo_M,
	Nacionalidad_M,
	Direccion_M,
	Email_M,
	Telefono_M,
	FechaNacimiento_M,
	Estado_M)
	VALUES
	(@Legajo_M,
	@ID_PROVINCIA_M,
	@ID_LOCALIDAD_M,
	@ID_ESPECIALIDAD_M,
	@ID_HORARIO_M,
	@ID_DIA_M,
	@USUARIO_M,
	@PASS_M,
	@DNI_M,
	@NOMBRE_M,
	@APELLIDO_M,
	@SEXO_M,
	@NACIONALIDAD_M,
	@DIRECCION_M,
	@EMAIL_M,
	@TELEFONO_M,
	@FECHA_NACIMIENTO_M,
	@ESTADO_M)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[spAgregarPaciente]    Script Date: 7/7/2024 19:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spAgregarPaciente]
(
    @DNI_P INT,
    @NOMBRE_P VARCHAR(30),
    @APELLIDO_P VARCHAR(30),
    @SEXO_P CHAR(1),
    @NACIONALIDAD_P VARCHAR(40),
    @FECHANAC_P DATE,
    @DIRECCION_P VARCHAR(40),
    @LOCALIDAD_P VARCHAR(30),
    @PROVINCIA_P VARCHAR(30),
    @EMAIL_P VARCHAR(30),
    @TELEFONO_P VARCHAR(30),
    @ESTADO_P BIT
)
AS
INSERT INTO Pacientes(
        DniPaciente_P, 
        Nombre_P, 
        Apellido_P, 
        Sexo_P, 
        Nacionalidad_P, 
        FechaNacimiento_P, 
        Direccion_P, 
        IdLocalidad_Paciente, 
        IdProvincia_Paciente, 
        Email_P, 
        Telefono_P, 
        Estado_P)
		Values(@DNI_P, 
        @NOMBRE_P, 
        @APELLIDO_P, 
        @SEXO_P, 
        @NACIONALIDAD_P, 
        @FECHANAC_P, 
        @DIRECCION_P, 
        @LOCALIDAD_P, 
        @PROVINCIA_P, 
        @EMAIL_P, 
        @TELEFONO_P, 
        @ESTADO_P)
	RETURN
GO
USE [master]
GO
ALTER DATABASE [BDClinicaGrupo19] SET  READ_WRITE 
GO
