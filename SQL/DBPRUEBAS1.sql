USE [master]
GO
/****** Object:  Database [DBPRUEBAS1]    Script Date: 13/04/2024 10:33:34 a. m. ******/
CREATE DATABASE [DBPRUEBAS1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBPRUEBAS1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DBPRUEBAS1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBPRUEBAS1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DBPRUEBAS1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DBPRUEBAS1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBPRUEBAS1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBPRUEBAS1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBPRUEBAS1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBPRUEBAS1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBPRUEBAS1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBPRUEBAS1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBPRUEBAS1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBPRUEBAS1] SET  MULTI_USER 
GO
ALTER DATABASE [DBPRUEBAS1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBPRUEBAS1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBPRUEBAS1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBPRUEBAS1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBPRUEBAS1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBPRUEBAS1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBPRUEBAS1] SET QUERY_STORE = ON
GO
ALTER DATABASE [DBPRUEBAS1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DBPRUEBAS1]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 13/04/2024 10:33:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[DocumentoIdentidad] [varchar](60) NULL,
	[Nombres] [varchar](60) NULL,
	[Telefono] [varchar](60) NULL,
	[Correo] [varchar](60) NULL,
	[Ciudad] [varchar](60) NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[USUARIO] ON 
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [DocumentoIdentidad], [Nombres], [Telefono], [Correo], [Ciudad], [FechaRegistro]) VALUES (1, N'1000456789', N'Juan Pérez', N'3101234567', N'juan.perez@correo.com', N'Bogotá', CAST(N'2023-11-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [DocumentoIdentidad], [Nombres], [Telefono], [Correo], [Ciudad], [FechaRegistro]) VALUES (2, N'1000987654', N'María López', N'3117654321', N'maria.lopez@correo.com', N'Medellín', CAST(N'2023-12-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [DocumentoIdentidad], [Nombres], [Telefono], [Correo], [Ciudad], [FechaRegistro]) VALUES (3, N'1001234567', N'Pedro Martínez', N'3124567890', N'pedro.martinez@correo.com', N'Cali', CAST(N'2024-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [DocumentoIdentidad], [Nombres], [Telefono], [Correo], [Ciudad], [FechaRegistro]) VALUES (4, N'1001597532', N'Ana García', N'3132345678', N'ana.garcia@correo.com', N'Barranquilla', CAST(N'2024-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [DocumentoIdentidad], [Nombres], [Telefono], [Correo], [Ciudad], [FechaRegistro]) VALUES (5, N'1001987654', N'Luis Rodríguez', N'3145678901', N'luis.rodriguez@correo.com', N'Cartagena', CAST(N'2024-03-19T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[USUARIO] OFF
GO
ALTER TABLE [dbo].[USUARIO] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
/****** Object:  StoredProcedure [dbo].[usp_eliminar]    Script Date: 13/04/2024 10:33:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_eliminar](
@idusuario int
)
as
begin

delete from usuario where IdUsuario = @idusuario

end

GO
/****** Object:  StoredProcedure [dbo].[usp_listar]    Script Date: 13/04/2024 10:33:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_listar]
as
begin

select * from usuario
end


GO
/****** Object:  StoredProcedure [dbo].[usp_modificar]    Script Date: 13/04/2024 10:33:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_modificar](
@idusuario int,
@documentoidentidad varchar(60),
@nombres varchar(60),
@telefono varchar(60),
@correo varchar(60),
@ciudad varchar(60)
)
as
begin

update USUARIO set 
DocumentoIdentidad = @documentoidentidad,
Nombres = @nombres,
Telefono = @telefono,
Correo = @correo,
Ciudad = @ciudad
where IdUsuario = @idusuario

end

GO
/****** Object:  StoredProcedure [dbo].[usp_obtener]    Script Date: 13/04/2024 10:33:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_obtener](@idusuario int)
as
begin

select * from usuario where IdUsuario = @idusuario
end

GO
/****** Object:  StoredProcedure [dbo].[usp_registrar]    Script Date: 13/04/2024 10:33:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--************************ PROCEDIMIENTOS PARA CREAR ************************--
create procedure [dbo].[usp_registrar](
@documentoidentidad varchar(60),
@nombres varchar(60),
@telefono varchar(60),
@correo varchar(60),
@ciudad varchar(60)
)
as
begin

insert into USUARIO(DocumentoIdentidad,Nombres,Telefono,Correo,Ciudad)
values
(
@documentoidentidad,
@nombres,
@telefono,
@correo,
@ciudad
)

end


GO
USE [master]
GO
ALTER DATABASE [DBPRUEBAS1] SET  READ_WRITE 
GO
