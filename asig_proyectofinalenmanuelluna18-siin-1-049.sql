/*Nombre: Enmanuel Luna Matricula: 18-siin-1-049 sec: 0541*/
/*Nombre: Angel Mendoza Matricula: 19-eiin-1-040*/
/*Nombre: Jimmy Galvan Matricula: 19-eiin-1-052*/
/*Nombre: Joel Luciano Matricula: 19-eiin-1-043*/


USE [master]
GO
/****** Object:  Database [seleccion de asignaturas universitarias]    Script Date: 20/8/2020 12:57:34 p. m. ******/
CREATE DATABASE [seleccion de asignaturas universitarias]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'seleccion de asignaturas universitarias', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\seleccion de asignaturas universitarias.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'seleccion de asignaturas universitarias_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\seleccion de asignaturas universitarias_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [seleccion de asignaturas universitarias].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET ARITHABORT OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET  DISABLE_BROKER 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET  MULTI_USER 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET DB_CHAINING OFF 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET QUERY_STORE = OFF
GO
USE [seleccion de asignaturas universitarias]
GO
/****** Object:  Table [dbo].[Asignaturas]    Script Date: 20/8/2020 12:57:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignaturas](
	[nombre_asignatura] [varchar](50) NULL,
	[codigo_asignatura] [int] IDENTITY(1,1) NOT NULL,
	[ID_carrera] [int] NULL,
	[creditos] [int] NULL,
	[pre-requisito] [int] NULL,
 CONSTRAINT [PK_Asignaturas] PRIMARY KEY CLUSTERED 
(
	[codigo_asignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carreras]    Script Date: 20/8/2020 12:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carreras](
	[nombre_carrera] [varchar](50) NULL,
	[ID_carrera] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Carreras] PRIMARY KEY CLUSTERED 
(
	[ID_carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 20/8/2020 12:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[[ID_estudiante(matricula)] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[ID_carrera] [int] NULL,
	[telefono] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[ultima_seccion_cursada] [int] NULL,
 CONSTRAINT [PK_Estudiantes] PRIMARY KEY CLUSTERED 
(
	[[ID_estudiante(matricula)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horarios]    Script Date: 20/8/2020 12:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horarios](
	[nombre_asignatura] [varchar](50) NULL,
	[credito] [int] NULL,
	[ID_profesor] [int] NULL,
	[codigo_asignaturas] [int] NULL,
	[ID_horario] [int] IDENTITY(1,1) NOT NULL,
	[ID_seccion] [int] NULL,
 CONSTRAINT [PK_Horarios] PRIMARY KEY CLUSTERED 
(
	[ID_horario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 20/8/2020 12:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesores](
	[nombre] [varchar](50) NULL,
	[ID_profesor] [int] IDENTITY(1,1) NOT NULL,
	[direccion] [varchar](50) NULL,
	[ID_carrera] [int] NULL,
	[telefono] [varchar](50) NULL,
 CONSTRAINT [PK_Profesores] PRIMARY KEY CLUSTERED 
(
	[ID_profesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Secciones_aulas]    Script Date: 20/8/2020 12:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Secciones_aulas](
	[ID_seccion] [int] NOT NULL,
	[piso] [int] NULL,
	[edificio] [int] NULL,
	[numero] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Secciones_aulas] PRIMARY KEY CLUSTERED 
(
	[ID_seccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Asignaturas] ON 

INSERT [dbo].[Asignaturas] ([nombre_asignatura], [codigo_asignatura], [ID_carrera], [creditos], [pre-requisito]) VALUES (N'lengua española', 13, 1, 3, 2)
INSERT [dbo].[Asignaturas] ([nombre_asignatura], [codigo_asignatura], [ID_carrera], [creditos], [pre-requisito]) VALUES (N'electronica digital', 14, 2, 4, 2)
INSERT [dbo].[Asignaturas] ([nombre_asignatura], [codigo_asignatura], [ID_carrera], [creditos], [pre-requisito]) VALUES (N'biologia', 15, 2, 3, 2)
INSERT [dbo].[Asignaturas] ([nombre_asignatura], [codigo_asignatura], [ID_carrera], [creditos], [pre-requisito]) VALUES (N'fundamentos de matematicas', 16, 5, 2, 4)
INSERT [dbo].[Asignaturas] ([nombre_asignatura], [codigo_asignatura], [ID_carrera], [creditos], [pre-requisito]) VALUES (N'filosofia', 17, 6, 3, 5)
INSERT [dbo].[Asignaturas] ([nombre_asignatura], [codigo_asignatura], [ID_carrera], [creditos], [pre-requisito]) VALUES (N'analisis de metodos', 18, 8, 3, 52)
INSERT [dbo].[Asignaturas] ([nombre_asignatura], [codigo_asignatura], [ID_carrera], [creditos], [pre-requisito]) VALUES (N'ergonomia de analisis', 19, 8, 4, 9)
INSERT [dbo].[Asignaturas] ([nombre_asignatura], [codigo_asignatura], [ID_carrera], [creditos], [pre-requisito]) VALUES (N'electroternia', 20, 2, 2, 10)
INSERT [dbo].[Asignaturas] ([nombre_asignatura], [codigo_asignatura], [ID_carrera], [creditos], [pre-requisito]) VALUES (N'fundamentos de mecanica', 21, 10, 4, 5)
INSERT [dbo].[Asignaturas] ([nombre_asignatura], [codigo_asignatura], [ID_carrera], [creditos], [pre-requisito]) VALUES (N'Redes II', 22, 4, 4, 25)
SET IDENTITY_INSERT [dbo].[Asignaturas] OFF
GO
SET IDENTITY_INSERT [dbo].[Carreras] ON 

INSERT [dbo].[Carreras] ([nombre_carrera], [ID_carrera]) VALUES (N'Ingenieria civil', 1)
INSERT [dbo].[Carreras] ([nombre_carrera], [ID_carrera]) VALUES (N'Ingenieria industrial', 2)
INSERT [dbo].[Carreras] ([nombre_carrera], [ID_carrera]) VALUES (N'contabilidad', 3)
INSERT [dbo].[Carreras] ([nombre_carrera], [ID_carrera]) VALUES (N'Educacion ', 4)
INSERT [dbo].[Carreras] ([nombre_carrera], [ID_carrera]) VALUES (N'Hoteleria y turismo', 5)
INSERT [dbo].[Carreras] ([nombre_carrera], [ID_carrera]) VALUES (N'Ingenieria electronica', 6)
INSERT [dbo].[Carreras] ([nombre_carrera], [ID_carrera]) VALUES (N'Medicina', 7)
INSERT [dbo].[Carreras] ([nombre_carrera], [ID_carrera]) VALUES (N'Ingenieria mecanica', 8)
INSERT [dbo].[Carreras] ([nombre_carrera], [ID_carrera]) VALUES (N'Ingenieria electrica', 9)
INSERT [dbo].[Carreras] ([nombre_carrera], [ID_carrera]) VALUES (N'Psicologia clinica', 10)
SET IDENTITY_INSERT [dbo].[Carreras] OFF
GO
SET IDENTITY_INSERT [dbo].[Estudiantes] ON 

INSERT [dbo].[Estudiantes] ([[ID_estudiante(matricula)], [nombre], [ID_carrera], [telefono], [direccion], [ultima_seccion_cursada]) VALUES (1, N'Juan beltre', 5, N'829-985-5847', N'san cristobal', 52)
INSERT [dbo].[Estudiantes] ([[ID_estudiante(matricula)], [nombre], [ID_carrera], [telefono], [direccion], [ultima_seccion_cursada]) VALUES (2, N'Manuel baez', 2, N'829-985-9854', N'los praditos', 12)
INSERT [dbo].[Estudiantes] ([[ID_estudiante(matricula)], [nombre], [ID_carrera], [telefono], [direccion], [ultima_seccion_cursada]) VALUES (3, N'Fernanda germosen', 4, N'829-954-6521', N'arroyo hondo', 12)
INSERT [dbo].[Estudiantes] ([[ID_estudiante(matricula)], [nombre], [ID_carrera], [telefono], [direccion], [ultima_seccion_cursada]) VALUES (4, N'Enmanuel luna', 10, N'809-652-6523', N'licey al medio', 45)
INSERT [dbo].[Estudiantes] ([[ID_estudiante(matricula)], [nombre], [ID_carrera], [telefono], [direccion], [ultima_seccion_cursada]) VALUES (5, N'Rosina luna', 6, N'849-985-6582', N'los cacaos', 62)
INSERT [dbo].[Estudiantes] ([[ID_estudiante(matricula)], [nombre], [ID_carrera], [telefono], [direccion], [ultima_seccion_cursada]) VALUES (6, N'Lucas marte', 1, N'809-952-6841', N'santo domingo norte', 2)
INSERT [dbo].[Estudiantes] ([[ID_estudiante(matricula)], [nombre], [ID_carrera], [telefono], [direccion], [ultima_seccion_cursada]) VALUES (7, N'Jose horario', 4, N'829-669-6521', N'san juan ', 21)
INSERT [dbo].[Estudiantes] ([[ID_estudiante(matricula)], [nombre], [ID_carrera], [telefono], [direccion], [ultima_seccion_cursada]) VALUES (8, N'Charlin soto', 5, N'809-985-6423', N'pueblo nuevo', 52)
INSERT [dbo].[Estudiantes] ([[ID_estudiante(matricula)], [nombre], [ID_carrera], [telefono], [direccion], [ultima_seccion_cursada]) VALUES (9, N'Leonidas trujillo', 5, N'829-548-9625', N'madre vieja', 100)
INSERT [dbo].[Estudiantes] ([[ID_estudiante(matricula)], [nombre], [ID_carrera], [telefono], [direccion], [ultima_seccion_cursada]) VALUES (10, N'Starling germosen', 10, N'829-985-6541', N'santo domingo oeste', 10)
SET IDENTITY_INSERT [dbo].[Estudiantes] OFF
GO
SET IDENTITY_INSERT [dbo].[Horarios] ON 

INSERT [dbo].[Horarios] ([nombre_asignatura], [credito], [ID_profesor], [codigo_asignaturas], [ID_horario], [ID_seccion]) VALUES (N'lengua española', 4, 1, 5, 2, 1)
INSERT [dbo].[Horarios] ([nombre_asignatura], [credito], [ID_profesor], [codigo_asignaturas], [ID_horario], [ID_seccion]) VALUES (N'matematicas superior', 3, 5, 1, 3, 2)
INSERT [dbo].[Horarios] ([nombre_asignatura], [credito], [ID_profesor], [codigo_asignaturas], [ID_horario], [ID_seccion]) VALUES (N'base de datos', 4, 2, 4, 4, 6)
INSERT [dbo].[Horarios] ([nombre_asignatura], [credito], [ID_profesor], [codigo_asignaturas], [ID_horario], [ID_seccion]) VALUES (N'introduccion a la ingenieria civil', 4, 4, 3, 5, 1)
INSERT [dbo].[Horarios] ([nombre_asignatura], [credito], [ID_profesor], [codigo_asignaturas], [ID_horario], [ID_seccion]) VALUES (N'algoritmos computacionales', 2, 3, 2, 6, 2)
INSERT [dbo].[Horarios] ([nombre_asignatura], [credito], [ID_profesor], [codigo_asignaturas], [ID_horario], [ID_seccion]) VALUES (N'fisica II', 4, 5, 8, 7, 6)
INSERT [dbo].[Horarios] ([nombre_asignatura], [credito], [ID_profesor], [codigo_asignaturas], [ID_horario], [ID_seccion]) VALUES (N'fisica I', 4, 4, 3, 8, 4)
INSERT [dbo].[Horarios] ([nombre_asignatura], [credito], [ID_profesor], [codigo_asignaturas], [ID_horario], [ID_seccion]) VALUES (N'Quimica ', 3, 2, 3, 9, 7)
INSERT [dbo].[Horarios] ([nombre_asignatura], [credito], [ID_profesor], [codigo_asignaturas], [ID_horario], [ID_seccion]) VALUES (N'lengua española II', 3, 2, 2, 10, 6)
INSERT [dbo].[Horarios] ([nombre_asignatura], [credito], [ID_profesor], [codigo_asignaturas], [ID_horario], [ID_seccion]) VALUES (N'historia general', 4, 8, 2, 11, 4)
SET IDENTITY_INSERT [dbo].[Horarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Profesores] ON 

INSERT [dbo].[Profesores] ([nombre], [ID_profesor], [direccion], [ID_carrera], [telefono]) VALUES (N'Jose armando', 1, N'san jose de las matas', 3, N'820-985-8574')
INSERT [dbo].[Profesores] ([nombre], [ID_profesor], [direccion], [ID_carrera], [telefono]) VALUES (N'Samuel vargas', 2, N'capotillo', 2, N'820-965-9874')
INSERT [dbo].[Profesores] ([nombre], [ID_profesor], [direccion], [ID_carrera], [telefono]) VALUES (N'Jose guillen', 3, N'arroyo hondo', 4, N'829-985-7895')
INSERT [dbo].[Profesores] ([nombre], [ID_profesor], [direccion], [ID_carrera], [telefono]) VALUES (N'Martin santos', 4, N'naco', 9, N'829-846-8625')
INSERT [dbo].[Profesores] ([nombre], [ID_profesor], [direccion], [ID_carrera], [telefono]) VALUES (N'Aldo sanchez', 5, N'san cristobal', 4, N'820-854-5612')
INSERT [dbo].[Profesores] ([nombre], [ID_profesor], [direccion], [ID_carrera], [telefono]) VALUES (N'Jose rodriguez', 6, N'san cristobal', 2, N'820-533-5623')
INSERT [dbo].[Profesores] ([nombre], [ID_profesor], [direccion], [ID_carrera], [telefono]) VALUES (N'Enmanuel luna', 7, N'los alcarrizos', 4, N'829-955-5621')
INSERT [dbo].[Profesores] ([nombre], [ID_profesor], [direccion], [ID_carrera], [telefono]) VALUES (N'Miguel lopez', 8, N'santo domingo este', 2, N'829-542-6985')
INSERT [dbo].[Profesores] ([nombre], [ID_profesor], [direccion], [ID_carrera], [telefono]) VALUES (N'Felipe beltre', 9, N'capotillo', 3, N'829-521-8463')
INSERT [dbo].[Profesores] ([nombre], [ID_profesor], [direccion], [ID_carrera], [telefono]) VALUES (N'David collado', 10, N'naco', 8, N'820-985-9874')
INSERT [dbo].[Profesores] ([nombre], [ID_profesor], [direccion], [ID_carrera], [telefono]) VALUES (N'Jose osvaldo', 11, N'san cristobal', 5, N'829-524-6223')
SET IDENTITY_INSERT [dbo].[Profesores] OFF
GO
SET IDENTITY_INSERT [dbo].[Secciones_aulas] ON 

INSERT [dbo].[Secciones_aulas] ([ID_seccion], [piso], [edificio], [numero]) VALUES (1, 3, 4, 1)
INSERT [dbo].[Secciones_aulas] ([ID_seccion], [piso], [edificio], [numero]) VALUES (2, 2, 5, 2)
INSERT [dbo].[Secciones_aulas] ([ID_seccion], [piso], [edificio], [numero]) VALUES (3, 5, 3, 5)
INSERT [dbo].[Secciones_aulas] ([ID_seccion], [piso], [edificio], [numero]) VALUES (4, 3, 7, 6)
INSERT [dbo].[Secciones_aulas] ([ID_seccion], [piso], [edificio], [numero]) VALUES (6, 5, 7, 4)
INSERT [dbo].[Secciones_aulas] ([ID_seccion], [piso], [edificio], [numero]) VALUES (7, 8, 3, 7)
INSERT [dbo].[Secciones_aulas] ([ID_seccion], [piso], [edificio], [numero]) VALUES (8, 3, 5, 3)
SET IDENTITY_INSERT [dbo].[Secciones_aulas] OFF
GO
ALTER TABLE [dbo].[Asignaturas]  WITH CHECK ADD  CONSTRAINT [FK_Asignaturas_Carreras] FOREIGN KEY([ID_carrera])
REFERENCES [dbo].[Carreras] ([ID_carrera])
GO
ALTER TABLE [dbo].[Asignaturas] CHECK CONSTRAINT [FK_Asignaturas_Carreras]
GO
ALTER TABLE [dbo].[Horarios]  WITH CHECK ADD  CONSTRAINT [FK_Horarios_Profesores] FOREIGN KEY([ID_profesor])
REFERENCES [dbo].[Profesores] ([ID_profesor])
GO
ALTER TABLE [dbo].[Horarios] CHECK CONSTRAINT [FK_Horarios_Profesores]
GO
ALTER TABLE [dbo].[Horarios]  WITH CHECK ADD  CONSTRAINT [FK_Horarios_Secciones_aulas] FOREIGN KEY([ID_seccion])
REFERENCES [dbo].[Secciones_aulas] ([ID_seccion])
GO
ALTER TABLE [dbo].[Horarios] CHECK CONSTRAINT [FK_Horarios_Secciones_aulas]
GO
ALTER TABLE [dbo].[Profesores]  WITH CHECK ADD  CONSTRAINT [FK_Profesores_Carreras] FOREIGN KEY([ID_carrera])
REFERENCES [dbo].[Carreras] ([ID_carrera])
GO
ALTER TABLE [dbo].[Profesores] CHECK CONSTRAINT [FK_Profesores_Carreras]
GO
USE [master]
GO
ALTER DATABASE [seleccion de asignaturas universitarias] SET  READ_WRITE 
GO
