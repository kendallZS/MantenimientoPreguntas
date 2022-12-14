CREATE DATABASE [db_a8ae18_cxproyecto]
USE [db_a8ae18_cxproyecto]
GO
/****** Object:  Table [dbo].[Arquetipos]    Script Date: 6/10/2022 2:50:41 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO 
CREATE TABLE [dbo].[Arquetipos](
	[IdArquetipo] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](30) NOT NULL,
	[Trabajo] [varchar](100) NOT NULL,
	[Tipo] [varchar](30) NOT NULL,
	[Periocidades] [varchar](30) NOT NULL,
	[Redes] [varchar](30) NOT NULL,
	[CanalComunicacion] [varchar](30) NOT NULL,
	[Desafios] [varchar](100) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_Arquetipos_IdArquetipo] PRIMARY KEY CLUSTERED 
(
	[IdArquetipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BluePrint]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BluePrint](
	[IdBluePrint] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](30) NOT NULL,
	[BluePrint] [varchar](50) NOT NULL,
	[Ingresado_Por] [varchar](50) NOT NULL,
	[Fecha_Ingreso] [datetime] NOT NULL,
	[Modificado_Por] [varchar](50) NOT NULL,
	[Fecha_Modificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_BluePrint_IdBluePrint] PRIMARY KEY CLUSTERED 
(
	[IdBluePrint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Campanas]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campanas](
	[IdCampana] [int] IDENTITY(1,1) NOT NULL,
	[Campaña] [varchar](100) NOT NULL,
	[Fecha] [date] NOT NULL,
	[IdDireccion] [int] NOT NULL,
	[IdFase] [int] NOT NULL,
	[IdSocioContacto] [int] NOT NULL,
	[IdEncuesta] [int] NOT NULL,
	[Estado] [varchar](10) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_Campanas_IdCampana] PRIMARY KEY CLUSTERED 
(
	[IdCampana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Canales]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Canales](
	[IdCanal] [int] IDENTITY(1,1) NOT NULL,
	[Canal] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_Canales_IdCanal] PRIMARY KEY CLUSTERED 
(
	[IdCanal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Categoria] [varchar](50) NOT NULL,
	[Rango] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Accion] [char](1) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Categorias_IdCategoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClasificacionIndicadores]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClasificacionIndicadores](
	[IdClasificacion] [int] IDENTITY(1,1) NOT NULL,
	[Clasificacion] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
	[IdTipoIndicador] [int] NOT NULL,
	[Valor] [int] NOT NULL,
 CONSTRAINT [PK_ClasificacionIndicadores_IdClasificacion] PRIMARY KEY CLUSTERED 
(
	[IdClasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[Cliente] [varchar](100) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_Clientes_IdCliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientesServicios]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientesServicios](
	[IdCliente] [int] NOT NULL,
	[Idlinea] [int] NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direcciones]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direcciones](
	[IdDireccion] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](30) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[Accion] [char](1) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Direcciones_IdDireccion] PRIMARY KEY CLUSTERED 
(
	[IdDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Encuestas]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Encuestas](
	[IdEncuesta] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoEncuesta] [int] NOT NULL,
	[IdPreguntaEncuesta] [int] NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_Encuestas_IdEncuesta] PRIMARY KEY CLUSTERED 
(
	[IdEncuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosAceptacion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosAceptacion](
	[IdEstadoAceptacion] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](30) NOT NULL,
	[EstadoAceptacion] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_EstadosAceptacion_IdEstadoAceptacion] PRIMARY KEY CLUSTERED 
(
	[IdEstadoAceptacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosHallazgo]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosHallazgo](
	[IdEstadoHallazgo] [int] IDENTITY(1,1) NOT NULL,
	[EstadoHallazgo] [varchar](30) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Estado] [bit] NULL,
	[Accion] [char](1) NULL,
 CONSTRAINT [PK_EstadosHallazgo_IdEstadoHallazgo] PRIMARY KEY CLUSTERED 
(
	[IdEstadoHallazgo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EtapasTalleres]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EtapasTalleres](
	[IdEtapaTaller] [int] IDENTITY(1,1) NOT NULL,
	[EtapaTaller] [varchar](50) NOT NULL,
	[IdTipoTaller] [int] NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Estado] [bit] NULL,
	[Accion] [char](1) NULL,
 CONSTRAINT [PK_EtapasTalleres_IdEtapaTaller] PRIMARY KEY CLUSTERED 
(
	[IdEtapaTaller] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FasesCustomerJorney]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FasesCustomerJorney](
	[IdFaseCJ] [int] IDENTITY(1,1) NOT NULL,
	[FaseCustomerJourney] [varchar](100) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_FasesCustomerJorney_IdFaseCJ] PRIMARY KEY CLUSTERED 
(
	[IdFaseCJ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FasesServicios]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FasesServicios](
	[IdFase] [int] IDENTITY(1,1) NOT NULL,
	[Fase] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[Estado] [bit] NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_FasesServicios_IdFase] PRIMARY KEY CLUSTERED 
(
	[IdFase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formulario]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formulario](
	[IdConsecutivo] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdFase] [int] NOT NULL,
	[IdServicio] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdSector] [int] NOT NULL,
	[IdSegmento] [int] NOT NULL,
	[IdCanal] [int] NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[IdLinea] [int] NOT NULL,
	[IdSocioContacto] [int] NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_Formulario_IdConsecutivo] PRIMARY KEY CLUSTERED 
(
	[IdConsecutivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GradosEsfuerzo]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GradosEsfuerzo](
	[IdGradoEsfuerzo] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](30) NOT NULL,
	[GradoEsfuerzo] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[Accion] [char](1) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_GradosEsfuerzo_IdGradoEsfuerzo] PRIMARY KEY CLUSTERED 
(
	[IdGradoEsfuerzo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GradosImpacto]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GradosImpacto](
	[IdGradoImpacto] [int] IDENTITY(1,1) NOT NULL,
	[GradoImpacto] [varchar](30) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_GradosImpacto_IdGradoImpacto] PRIMARY KEY CLUSTERED 
(
	[IdGradoImpacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hallazgos]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hallazgos](
	[IdHallazgo] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [int] NOT NULL,
	[IdMacro] [int] NOT NULL,
	[IdEstadoAceptacion] [int] NOT NULL,
	[IdGradoImpacto] [int] NOT NULL,
	[IdGradoEsfuerzo] [int] NOT NULL,
	[IdFaseCJ] [int] NOT NULL,
	[IdLinea] [int] NOT NULL,
	[IdServicio] [int] NOT NULL,
	[IdMetodologia] [int] NOT NULL,
	[IdTamanoEmpresa] [int] NOT NULL,
	[IdRangoEdad] [int] NOT NULL,
	[IdTituloAcademico] [int] NOT NULL,
	[IdArquetipo] [int] NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [date] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [date] NOT NULL,
 CONSTRAINT [PK_Hallazgos_IdHallazgo] PRIMARY KEY CLUSTERED 
(
	[IdHallazgo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jefaturas]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jefaturas](
	[IdJefatura] [int] IDENTITY(1,1) NOT NULL,
	[IdDireccion] [int] NOT NULL,
	[Codigo] [varchar](30) NOT NULL,
	[Jefatura] [varchar](50) NOT NULL,
	[Ingresado_Por] [varchar](50) NOT NULL,
	[Fecha_Ingreso] [datetime] NOT NULL,
	[Modificado_Por] [varchar](50) NOT NULL,
	[Fecha_Modificacion] [datetime] NOT NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_Jefaturas_IdJefatura] PRIMARY KEY CLUSTERED 
(
	[IdJefatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LineasNegocio]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineasNegocio](
	[IdLinea] [int] IDENTITY(1,1) NOT NULL,
	[LineaNegocio] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_LineasNegocio_IdLinea] PRIMARY KEY CLUSTERED 
(
	[IdLinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MacrosActividades]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MacrosActividades](
	[IdMacro] [int] IDENTITY(1,1) NOT NULL,
	[MacroActividad] [varchar](100) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_MacrosActividades_IdMacro] PRIMARY KEY CLUSTERED 
(
	[IdMacro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MapasEmpatia]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MapasEmpatia](
	[IdMapaEmpatia] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](30) NOT NULL,
	[MapaEmpatia] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_MapasEmpatia_IdMapaEmpatia] PRIMARY KEY CLUSTERED 
(
	[IdMapaEmpatia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetodologiasExperienciaCliente]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetodologiasExperienciaCliente](
	[IdMetodologia] [int] IDENTITY(1,1) NOT NULL,
	[Metodologia] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_MetodologiasExperienciaCliente_IdMetodologia] PRIMARY KEY CLUSTERED 
(
	[IdMetodologia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Periodicidad]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Periodicidad](
	[IdPeriodicidad] [int] IDENTITY(1,1) NOT NULL,
	[Periodicidad] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_Periodicidad] PRIMARY KEY CLUSTERED 
(
	[IdPeriodicidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreguntasEncuestas]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PreguntasEncuestas](
	[IdPreguntaEncuesta] [int] IDENTITY(1,1) primary key NOT NULL,
	[Pregunta] [varchar](100)  NULL,
	[IdTipoEncuesta] [int]  NULL,
	[IdFase] [int]  NULL, --tabla fases servicios
	[IdTipoMetrica] [int]  NULL,
	[IdTipoPerspectiva] [int]  NULL,
	[IngresadoPor] [varchar](50)  NULL,
	[FechaIngreso] [datetime]  NULL,
	[ModificadoPor] [varchar](50)  NULL,
	[FechaModificacion] [datetime]  NULL,
	[IdTipoIndicador] [int]  NULL,
FOREIGN KEY(IdTipoEncuesta) 
REFERENCES TiposEncuestas(IdTipoEncuesta),
FOREIGN KEY(IdFase) 
REFERENCES FasesServicios (IdFase),
FOREIGN KEY(IdTipoMetrica) 
REFERENCES TiposMetricas (IdTipoMetrica),
FOREIGN KEY(IdTipoPerspectiva) 
REFERENCES TipoPerspectiva (IdTipoPerspectiva),
FOREIGN KEY(IdTipoIndicador) 
REFERENCES TiposIndicadores (IdTipoIndicador),
)

--ALTER PREGUNTAS ENCUESTAS:
--------------------------------------
					ALTER TABLE PreguntasEncuestas
					add IdTipoPregunta int

					ALTER TABLE PreguntasEncuestas ADD FOREIGN KEY (IdTipoPregunta) REFERENCES TipoPregunta(IdTipoPregunta);

					ALTER TABLE PreguntasEncuestas
					add IdTipoContactoEncuesta int

					ALTER TABLE PreguntasEncuestas ADD FOREIGN KEY (IdTipoContactoEncuesta) REFERENCES TipoContactoEncuesta(IdTipoContactoEncuesta);

						ALTER TABLE PreguntasEncuestas
					add IdTipoInteraccion int

					ALTER TABLE PreguntasEncuestas ADD FOREIGN KEY (IdTipoInteraccion) REFERENCES TipoInteraccion(IdTipoInteraccion);

						ALTER TABLE PreguntasEncuestas
					add Estado int

					select * from PreguntasEncuestas
------------------------------------------

insert into PreguntasEncuestas(Pregunta,IdTipoEncuesta,IdFase,IdTipoMetrica,IdTipoPerspectiva,FechaIngreso,
						FechaModificacion,IdTipoIndicador,IdTipoPregunta,IdTipoContactoEncuesta,IdTipoInteraccion, Estado)values 
						('Mi pregunta #1',1,2,1,13,GETDATE(),GETDATE(),1,1,1,1, 1)

select * from PreguntasEncuestas
Select * from RespuestasPreguntasEncuesta


select PreguntasEncuestas.Pregunta, TipoPregunta.Tipo from PreguntasEncuestas
inner join TipoPregunta on PreguntasEncuestas.IdTipoPregunta = TipoPregunta.IdTipoPregunta

--EXEC SP_RENAME 'PreguntasEncuestas.TipoPregunta', 'IdTipoPregunta', 'COLUMN' 
ALTER TABLE PreguntasEncuestas
add IdTipoPregunta int

ALTER TABLE PreguntasEncuestas
ADD FOREIGN KEY (IdTipoPregunta) REFERENCES TipoPregunta(IdTipoPregunta);

--alter table PreguntasEncuestas
drop table PreguntasEncuestas

CREATE TABLE RespuestasPreguntasEncuesta(
IdRespuesta int identity primary key,
Respuesta varchar(100),
IdPreguntaEncuesta int
FOREIGN KEY(IdPreguntaEncuesta) 
REFERENCES PreguntasEncuestas (IdPreguntaEncuesta)
)


--1 -> Seleccionar una respuesta
--2 -> Seleccionar varias respuestas
--3 -> Dirección de correo electrónico
--4 -> Menú desplegable(Drop down) 
--5 -> Caja de texto abierto
--6 -> Calificación de estrellas
CREATE TABLE TipoPregunta(
IdTipoPregunta int identity primary key,
Tipo varchar(100)
)

update TipoPregunta set Tipo= 'Selección Múltiple' where IdTipoPregunta = 2

INSERT INTO TipoPregunta VALUES ('Selección Única')
INSERT INTO TipoPregunta VALUES ('Selección Múltiple')
INSERT INTO TipoPregunta VALUES ('Correo Electrónico')
INSERT INTO TipoPregunta VALUES ('Menú Desplegable')
INSERT INTO TipoPregunta VALUES ('Caja Texto Abierto')
INSERT INTO TipoPregunta VALUES ('Calificación Estrellas')

select * from PreguntasEncuestas
select * from TipoPregunta
select * from RespuestasPreguntasEncuesta
--EXEC sp_rename 'InsertarPreguntaEncuesta', 'SPInsertarPreguntaEncuesta'

--delete from RespuestasPreguntasEncuesta

select RespuestasPreguntasEncuesta.IdPreguntaEncuesta, Pregunta, IdRespuesta,Respuesta  from PreguntasEncuestas
Inner join RespuestasPreguntasEncuesta on
RespuestasPreguntasEncuesta.IdPreguntaEncuesta = PreguntasEncuestas.IdPreguntaEncuesta

select * from TiposIndicadores	
--alter table PreguntasEncuestas
--drop Column ModificadoPor
--  ************************************SECCION SP PREGUNTAS*********************************
--  ************************************SECCION SP PREGUNTAS*********************************

select * from TipoContactoEncuesta


select * from TiposIndicadores


alter  PROCEDURE [dbo].[SPObtenerPreguntaPorID]
( @IdPreguntaEncuesta INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            select IdPreguntaEncuesta, Pregunta, IdTipoIndicador, IdTipoMetrica, IdTipoEncuesta
			   from PreguntasEncuestas with(NOLOCK)   
                WHERE IdPreguntaEncuesta = @IdPreguntaEncuesta
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO

exec [SPObtenerPreguntaPorID] 2

select * from TiposEncuestas
select * from TiposIndicadores
select * from PreguntasEncuestas
select * from TiposMetricas
select * from TipoPerspectiva
select * from TipoPregunta
select * from TipoContactoEncuesta
select * from TipoInteraccion
select * from RespuestasPreguntasEncuesta


--'FK__Preguntas__IdFas__1F4E99FE' is dependent on column 'IdFase'.
alter PROCEDURE SPInsertarPreguntaEncuesta @Pregunta varchar(100),@IdTipoEncuesta int,@IdTipoMetrica int,@IdTipoPerspectiva int,
@IdTipoIndicador int,@IdTipoPregunta int,@IdTipoContactoEncuesta int,@IdTipoIteraccion int,
@Estado int, @INDICADOR int OUT, @MENSAJE varchar(100) OUT

as

declare @msg varchar(50)
declare @ind int 
	BEGIN
			BEGIN TRY
				BEGIN TRAN INSERTARServicioSocio
					BEGIN
						insert into PreguntasEncuestas(Pregunta,IdTipoEncuesta,IdTipoMetrica,IdTipoPerspectiva, IdTipoIndicador,
						IdTipoPregunta, IdTipoContactoEncuesta, IdTipoInteraccion, Estado)values 
						(@Pregunta,@IdTipoEncuesta,@IdTipoMetrica,@IdTipoPerspectiva, @IdTipoIndicador, @IdTipoPregunta, 
						@IdTipoContactoEncuesta, @IdTipoIteraccion,@Estado)
				end
					COMMIT TRAN INSERTARServicioSocio
					SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Pregunta insertada exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTARServicioSocio
			END CATCH
	END
GO
EXEC SPInsertarPreguntaEncuesta 'Pregunta e Indicador?',1,1,'m'
EXEC SPInsertarPreguntaEncuesta 5,1,'m'

select * from TipoContactoEncuesta
select * from TiposEncuestas
select * from TiposMetricas
select * from TipoInteraccion
select * from TipoPerspectiva


EXEC SPInsertarPreguntaEncuesta '¿Mi Pregunta #1?',1,2,1,1,1,1,1,1,1,'m'
EXEC SPInsertarPreguntaEncuesta '¿Mi Pregunta #2?',1,2,1,1,2,1,1,1,1,'m'
EXEC SPInsertarPreguntaEncuesta '¿Mi Pregunta #3?',1,2,1,1,3,1,1,1,1,'m'
EXEC SPInsertarPreguntaEncuesta '¿Mi Pregunta #4?',1,2,1,1,4,1,1,1,1,'m'
EXEC SPInsertarPreguntaEncuesta '¿Mi Pregunta #5?',1,2,1,1,5,1,1,1,1,'m'
EXEC SPInsertarPreguntaEncuesta '¿Mi Pregunta #6?',1,2,1,1,6,1,1,1,1,'m'

--delete from PreguntasEncuestas
select * from PreguntasEncuestas
select * from TiposIndicadores
select * from Sectores
select * from RespuestasPreguntasEncuesta

Create PROCEDURE [dbo].[SPObtenerUltimoIdPreguntas]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               SELECT IdPreguntaEncuesta FROM PreguntasEncuestas 
			   WHERE IdPreguntaEncuesta = (SELECT MAX(IdPreguntaEncuesta) FROM PreguntasEncuestas) 
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
exec SPObtenerUltimoIdPreguntas

select * from PreguntasEncuestas
delete from RespuestasPreguntasEncuesta
delete from PreguntasEncuestas 

--PARA VISUALIZAR EN EL GRID
alter PROCEDURE [dbo].[SPObtenerPreguntas]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select IdPreguntaEncuesta, Pregunta,TipoPregunta.Tipo, Sigla, dbo.TiposMetricas.Tipo Metrica, dbo.TiposEncuestas.TipoEncuesta, 
			   PreguntasEncuestas.Estado from PreguntasEncuestas
			   inner join TiposIndicadores on dbo.PreguntasEncuestas.IdTipoIndicador= dbo.TiposIndicadores.IdTipoIndicador
			   inner join TiposMetricas on dbo.PreguntasEncuestas.IdTipoMetrica= dbo.TiposMetricas.IdTipoMetrica
			   inner join TiposEncuestas on dbo.PreguntasEncuestas.IdTipoEncuesta= dbo.TiposEncuestas.IdTipoEncuesta
			   inner join TipoPregunta on PreguntasEncuestas.IdTipoPregunta = TipoPregunta.IdTipoPregunta
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
exec SPObtenerPreguntas 

select * from PreguntasEncuestas
select * from RespuestasPreguntasEncuesta
--select * from RespuestasPreguntasEncuesta

--ACTUALIZA LA PREGUNTA Y LOS VALORES QUE SE MUESTRAN EN EL GRID O TABLA
ALTER PROCEDURE SPActualizarPreguntaEncuestas (
@IdPreguntaEncuesta int,
@Pregunta varchar(100),
@IdTipoIndicador int,
@IdTipoMetrica int,
@IdTipoEncuesta int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
as
BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	PreguntasEncuestas
				SET 
				Pregunta=@Pregunta,
				IdTipoIndicador=@IdTipoIndicador,
				IdTipoMetrica=@IdTipoMetrica,
				IdTipoEncuesta=@IdTipoEncuesta
				WHERE IdPreguntaEncuesta=@IdPreguntaEncuesta

				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Pregunta actualizada exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
exec SPActualizarPreguntaEncuestas 494,'Califique nuestro servicio. MODIFY BD',8,1, 'm'

select * from TiposEncuestas
select * from TiposMetricas
select * from TiposIndicadores
select * from PreguntasEncuestas

--alter table PreguntasEncuestas
--drop column FechaModificacion

alter table PreguntasEncuestas
add Estado int

CREATE   PROCEDURE [dbo].[SPEliminarPreguntaEncuesta]
(
@IdPreguntaEncuesta int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM PreguntasEncuestas WHERE IdPreguntaEncuesta = @IdPreguntaEncuesta)
					BEGIN
						UPDATE	PreguntasEncuestas
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END
						--FechaModificacion = GETDATE(), 
						--ModificadoPor = 'SISTEMA', 
						where IdPreguntaEncuesta=@IdPreguntaEncuesta
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'Pregunta fue desactivada exitosamente.'
										 ELSE 'La Pregunta fue reactivada exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
exec SPEliminarPreguntaEncuesta 25,1,'m'
select * from PreguntasEncuestas


select * from RespuestasPreguntasEncuesta
select * from PreguntasEncuestas


--  ************************************SECCION SP RESPUESTAS*********************************
--  ************************************SECCION SP RESPUESTAS*********************************

ALTER PROCEDURE SPActualizarRespuestasPreguntaEncuesta (
@IdRespuesta int,
@Respuesta varchar(100),
@IdPreguntaEncuesta int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(150) OUT
)
as
BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE RespuestasPreguntasEncuesta set Respuesta=@Respuesta
				where IdRespuesta=@IdRespuesta and IdPreguntaEncuesta=@IdPreguntaEncuesta
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Respuesta actualizada exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
EXEC SPActualizarRespuestasPreguntaEncuesta 'Respuesta1 P02', 12, 22,1,'m'

select * from PreguntasEncuestas
select RespuestasPreguntasEncuesta.IdPreguntaEncuesta, Pregunta, IdRespuesta,Respuesta  from PreguntasEncuestas
Inner join RespuestasPreguntasEncuesta on
RespuestasPreguntasEncuesta.IdPreguntaEncuesta = PreguntasEncuestas.IdPreguntaEncuesta


ALTER PROCEDURE SPObtenerRespuestasPregunta (
@IdPreguntaEncuesta int)
as
BEGIN
	 BEGIN TRY
            BEGIN
           		select IdRespuesta,Respuesta, IdPreguntaEncuesta from RespuestasPreguntasEncuesta
				where IdPreguntaEncuesta=@IdPreguntaEncuesta
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
      END CATCH
END
GO

exec SPObtenerRespuestasPregunta 1

select * from ClasificacionIndicadores
select * from PreguntasEncuestas

alter PROCEDURE SPInsertarRespuestasPregunta (
@IdPreguntaEncuesta int,
@Respuesta varchar(100),
@INDICADOR INT OUT,
@MENSAJE VARCHAR(50) OUT
)
as

declare @msg varchar(50)
declare @ind int 
	BEGIN
			BEGIN TRY
				BEGIN TRAN INSERTARServicioSocio
					BEGIN
					
						insert into RespuestasPreguntasEncuesta(Respuesta, IdPreguntaEncuesta)
						values(@Respuesta,@IdPreguntaEncuesta)
				end
					COMMIT TRAN INSERTARServicioSocio
					SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Respuesta insertada exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTARServicioSocio
			END CATCH
	END
GO
exec SPInsertarRespuestasPregunta 498,'Opción Respuesta 1 Pregunta#1', 1, 'm' --Select Unica
exec SPInsertarRespuestasPregunta 498,'Opción Respuesta 2 Pregunta#1', 1, 'm'
exec SPInsertarRespuestasPregunta 498,'Opción Respuesta 3 Pregunta#1', 1, 'm'
exec SPInsertarRespuestasPregunta 498,'Opción Respuesta 4 Pregunta#1', 1, 'm'

exec SPInsertarRespuestasPregunta 499,'Opción Respuesta 1 Pregunta#2', 1, 'm' --Select Multiple
exec SPInsertarRespuestasPregunta 499,'Opción Respuesta 2 Pregunta#2', 1, 'm'
exec SPInsertarRespuestasPregunta 441,'Opción Respuesta 1 Pregunta#4', 1, 'm' --DDL
exec SPInsertarRespuestasPregunta 441,'Opción Respuesta 1 Pregunta#4', 1, 'm'
exec SPInsertarRespuestasPregunta 441,'Opción Respuesta 1 Pregunta#4', 1, 'm'

select * from RespuestasPreguntasEncuesta
select * from PreguntasEncuestas

delete from RespuestasPreguntasEncuesta
delete from PreguntasEncuestas 



select RespuestasPreguntasEncuesta.IdPreguntaEncuesta, Pregunta, IdRespuesta,Respuesta  from PreguntasEncuestas
Inner join RespuestasPreguntasEncuesta on
RespuestasPreguntasEncuesta.IdPreguntaEncuesta = PreguntasEncuestas.IdPreguntaEncuesta











--1 -> Seleccionar una respuesta
--2 -> Seleccionar varias respuestas
--3 -> Dirección de correo electrónico
--4 -> Menú desplegable(Drop down) 
--5 -> Caja de texto abierto
--6 -> Calificación de estrellas









/****** Object:  Table [dbo].[RangosEdad]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RangosEdad](
	[IdRangoEdad] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](30) NOT NULL,
	[RangoEdad] [varchar](30) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_RangosEdad_IdRangoEdad] PRIMARY KEY CLUSTERED 
(
	[IdRangoEdad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RangosNivelAcademico]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RangosNivelAcademico](
	[IdRangoAcademico] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](30) NOT NULL,
	[Rango] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_RangosNivelAcademico_IdRangoAcademico] PRIMARY KEY CLUSTERED 
(
	[IdRangoAcademico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RangosTituloAcademico]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RangosTituloAcademico](
	[IdTituloAcademico] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](30) NOT NULL,
	[TituloAcademico] [varchar](50) NOT NULL,
	[IdRangoAcademico] [int] NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_RangosTituloAcademico_IdTituloAcademico] PRIMARY KEY CLUSTERED 
(
	[IdTituloAcademico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sectores]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sectores](
	[IdSector] [int] IDENTITY(1,1) NOT NULL,
	[Sector] [varchar](30) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Accion] [char](1) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Sectores_IdSector] PRIMARY KEY CLUSTERED 
(
	[IdSector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Segmentos]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Segmentos](
	[IdSegmento] [int] IDENTITY(1,1) NOT NULL,
	[IdSector] [int] NOT NULL,
	[Segmento] [varchar](100) NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Accion] [char](1) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Segmentos_IdSegmento] PRIMARY KEY CLUSTERED 
(
	[IdSegmento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[IdServicio] [int] IDENTITY(1,1) NOT NULL,
	[IdLinea] [int] NOT NULL,
	[Servicio] [varchar](100) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Estado] [bit] NULL,
	[Accion] [char](1) NULL,
 CONSTRAINT [PK_Servicios_IdServicio] PRIMARY KEY CLUSTERED 
(
	[IdServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiciosSocios]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiciosSocios](
	[IdServicioSocio] [int] IDENTITY(1,1) NOT NULL,
	[IdSocio] [int] NOT NULL,
	[IdLinea] [int] NOT NULL,
	[IdServicio] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
	[IngresadoPor] [varchar](50) NULL,
	[FechaIngreso] [datetime] NULL,
	[ModificadoPor] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdServicioSocio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Socios]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Socios](
	[IdSocio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Cedula] [varchar](50) NOT NULL,
	[Correo] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[IdTipoPersona] [int] NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Estado] [bit] NULL,
	[Accion] [char](1) NULL,
 CONSTRAINT [PK_Socios_IdSocio] PRIMARY KEY CLUSTERED 
(
	[IdSocio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SociosContactos]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SociosContactos](
	[IdSocioContacto] [int] IDENTITY(1,1) NOT NULL,
	[IdFase] [int] NULL,
	[NombreContacto] [varchar](100) NOT NULL,
	[Puesto] [varchar](50) NOT NULL,
	[Correo] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[IdTipoPersona] [int] NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_SociosContactos_IdSocioContacto] PRIMARY KEY CLUSTERED 
(
	[IdSocioContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SociosServicios]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SociosServicios](
	[IdCliente] [int] NOT NULL,
	[Idlinea] [int] NOT NULL,
	[Telefono] [varchar](10) NOT NULL,
	[NombreContacto] [varchar](100) NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TamanosEmpresa]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TamanosEmpresa](
	[IdTamanoEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](30) NOT NULL,
	[TamanoEmpresa] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_TamanosEmpresa_IdTamanoEmpresa] PRIMARY KEY CLUSTERED 
(
	[IdTamanoEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoContactoEncuesta]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER TABLE NACIMIENTOS
ADD FOREIGN KEY(IdTipoContactoEncuesta) REFERENCES TipoContactoEncuesta(IdTipoContactoEncuesta)

CREATE TABLE [dbo].[TipoContactoEncuesta](
	[IdTipoContactoEncuesta] [int] IDENTITY(1,1) NOT NULL,
	[TipoContactoEncuesta] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_TipoContactoEncuesta] PRIMARY KEY CLUSTERED 
(
	[IdTipoContactoEncuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoIdentificacion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoIdentificacion](
	[IdTipoIdentificacion] [int] IDENTITY(1,1) NOT NULL,
	[TipoIdentificacion] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_TipoIdentificacion] PRIMARY KEY CLUSTERED 
(
	[IdTipoIdentificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoInteraccion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoInteraccion](
	[IdTipoInteraccion] [int] IDENTITY(1,1) NOT NULL,
	[TipoInteraccion] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_TipoInteraccion] PRIMARY KEY CLUSTERED 
(
	[IdTipoInteraccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPerspectiva]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPerspectiva](
	[IdTipoPerspectiva] [int] IDENTITY(1,1) NOT NULL,
	[TipoPerspectiva] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_TipoPerspectiva] PRIMARY KEY CLUSTERED 
(
	[IdTipoPerspectiva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEncuestas]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEncuestas](
	[IdTipoEncuesta] [int] IDENTITY(1,1) NOT NULL,
	[TipoEncuesta] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_TiposEncuestas_IdTipoEncuesta] PRIMARY KEY CLUSTERED 
(
	[IdTipoEncuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposIndicadores]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposIndicadores](
	[TipoIndicador] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
	[Minimo] [int] NOT NULL,
	[Maximo] [int] NOT NULL,
	[Sigla] [varchar](50) NOT NULL,
	[IdTipoIndicador] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoIndicador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposInteracciones]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposInteracciones](
	[IdTipoInteraccion] [int] IDENTITY(1,1) NOT NULL,
	[TipoInteraccion] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_TiposInteracciones_IdTipoInteraccion] PRIMARY KEY CLUSTERED 
(
	[IdTipoInteraccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposMetricas]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposMetricas](
	[IdTipoMetrica] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TiposMetricas_IdTipoMetrica] PRIMARY KEY CLUSTERED 
(
	[IdTipoMetrica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposPersonas]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposPersonas](
	[IdTipoPersona] [int] IDENTITY(1,1) NOT NULL,
	[TipoPersona] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_TiposPersonas_IdTipoPersona] PRIMARY KEY CLUSTERED 
(
	[IdTipoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposPerspectivas]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposPerspectivas](
	[IdTipoPerspectiva] [int] IDENTITY(1,1) NOT NULL,
	[TipoPerspectiva] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_TiposPerspectivas_IdTipoPerspectiva] PRIMARY KEY CLUSTERED 
(
	[IdTipoPerspectiva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposTalleres]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposTalleres](
	[IdTipoTaller] [int] IDENTITY(1,1) NOT NULL,
	[TipoTaller] [varchar](50) NOT NULL,
	[IngresadoPor] [varchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[ModificadoPor] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[Estado] [bit] NOT NULL,
	[Accion] [char](1) NOT NULL,
 CONSTRAINT [PK_TiposTalleres_IdTipoTaller] PRIMARY KEY CLUSTERED 
(
	[IdTipoTaller] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Canales] ON 

INSERT [dbo].[Canales] ([IdCanal], [Canal], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (1, N'Llamada Telefónica', N'SISTEMA', CAST(N'2022-08-08T13:03:43.597' AS DateTime), N'SISTEMA', CAST(N'2022-08-16T15:28:47.810' AS DateTime), 1, N'A')
INSERT [dbo].[Canales] ([IdCanal], [Canal], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (2, N'Correo Electronico', N'SISTEMA', CAST(N'2022-08-08T13:36:28.620' AS DateTime), N'SISTEMA', CAST(N'2022-08-10T11:10:24.397' AS DateTime), 1, N'A')
INSERT [dbo].[Canales] ([IdCanal], [Canal], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (3, N'Cliente No acepta realizar la Encuesta', N'SISTEMA', CAST(N'2022-08-08T14:14:18.753' AS DateTime), N'SISTEMA', CAST(N'2022-08-10T11:10:51.850' AS DateTime), 1, N'A')
INSERT [dbo].[Canales] ([IdCanal], [Canal], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (9, N'Pruebaa', N'SISTEMA', CAST(N'2022-08-16T15:29:28.787' AS DateTime), N'SISTEMA', CAST(N'2022-08-30T09:52:19.443' AS DateTime), 0, N'E')
INSERT [dbo].[Canales] ([IdCanal], [Canal], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (10, N'Whatsapp', N'SISTEMA', CAST(N'2022-08-30T09:54:40.370' AS DateTime), N'SISTEMA', CAST(N'2022-08-30T09:54:40.370' AS DateTime), 1, N'I')
SET IDENTITY_INSERT [dbo].[Canales] OFF
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([IdCategoria], [Categoria], [Rango], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (1, N'Plata', N'1 a 900,000', N'Sistema', CAST(N'2022-08-12T15:37:22.367' AS DateTime), N'SISTEMA', CAST(N'2022-09-06T16:35:50.833' AS DateTime), N'A', 1)
INSERT [dbo].[Categorias] ([IdCategoria], [Categoria], [Rango], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (2, N'Oro', N'900,001 a 4,900,000', N'Sistema', CAST(N'2022-08-12T15:51:15.810' AS DateTime), N'Sistema', CAST(N'2022-08-12T15:51:15.810' AS DateTime), N'I', 1)
INSERT [dbo].[Categorias] ([IdCategoria], [Categoria], [Rango], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (3, N'Platino', N'4,900,001 a 73,900,000', N'Sistema', CAST(N'2022-08-12T15:51:32.377' AS DateTime), N'Sistema', CAST(N'2022-08-12T15:51:32.377' AS DateTime), N'I', 1)
INSERT [dbo].[Categorias] ([IdCategoria], [Categoria], [Rango], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (4, N'Diamante', N'73,900,001 o más', N'Sistema', CAST(N'2022-08-12T15:51:47.650' AS DateTime), N'Sistema', CAST(N'2022-08-16T15:58:13.193' AS DateTime), N'A', 1)
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[ClasificacionIndicadores] ON 

INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (1, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:15.447' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:20.907' AS DateTime), 1, N'A', 1, 1)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (2, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:15.447' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:20.913' AS DateTime), 1, N'A', 1, 2)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (3, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:15.447' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:20.907' AS DateTime), 1, N'A', 1, 3)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (4, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:15.450' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:20.910' AS DateTime), 1, N'A', 1, 0)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (5, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:18.920' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:25.093' AS DateTime), 1, N'A', 2, 1)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (6, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:18.920' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:25.110' AS DateTime), 1, N'A', 2, 2)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (7, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:18.920' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:25.093' AS DateTime), 1, N'A', 2, 0)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (8, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:22.357' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:31.107' AS DateTime), 1, N'A', 3, 1)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (9, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:22.357' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:31.107' AS DateTime), 1, N'A', 3, 2)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (10, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:22.357' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:31.107' AS DateTime), 1, N'A', 3, 3)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (11, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:22.357' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:31.113' AS DateTime), 1, N'A', 3, 4)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (12, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:22.357' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:31.110' AS DateTime), 1, N'A', 3, 5)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (13, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:22.357' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:31.100' AS DateTime), 1, N'A', 3, 0)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (14, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:23.670' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:38.997' AS DateTime), 1, N'A', 4, 1)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (15, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:23.670' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:38.997' AS DateTime), 1, N'A', 4, 2)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (16, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:23.670' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:39.000' AS DateTime), 1, N'A', 4, 3)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (17, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:23.670' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:39.017' AS DateTime), 1, N'A', 4, 4)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (18, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:23.670' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:39.013' AS DateTime), 1, N'A', 4, 5)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (19, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:23.670' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:39.013' AS DateTime), 1, N'A', 4, 6)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (20, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:23.670' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:39.013' AS DateTime), 1, N'A', 4, 7)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (21, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:23.670' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:39.017' AS DateTime), 1, N'A', 4, 8)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (22, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:23.670' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:39.027' AS DateTime), 1, N'A', 4, 9)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (23, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:23.670' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:39.017' AS DateTime), 1, N'A', 4, 10)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (24, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:24.960' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:44.113' AS DateTime), 1, N'A', 5, 1)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (25, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:24.960' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:44.113' AS DateTime), 1, N'A', 5, 2)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (26, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:24.960' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:44.113' AS DateTime), 1, N'A', 5, 3)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (27, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:24.960' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:44.113' AS DateTime), 1, N'A', 5, 4)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (28, N'', N'SISTEMA', CAST(N'2022-09-29T10:10:24.960' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:46:44.113' AS DateTime), 1, N'A', 5, 5)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (29, N'Muy Malo', N'SISTEMA', CAST(N'2022-10-05T13:49:17.177' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:49:37.893' AS DateTime), 1, N'A', 1006, 1)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (30, N'Malo', N'SISTEMA', CAST(N'2022-10-05T13:49:17.177' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:49:37.897' AS DateTime), 1, N'A', 1006, 2)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (31, N'Bueno', N'SISTEMA', CAST(N'2022-10-05T13:49:17.177' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:49:37.893' AS DateTime), 1, N'A', 1006, 3)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (32, N'Excelente', N'SISTEMA', CAST(N'2022-10-05T13:49:17.177' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:49:37.897' AS DateTime), 1, N'A', 1006, 4)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (33, N'', N'SISTEMA', CAST(N'2022-10-05T13:50:30.703' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:50:30.703' AS DateTime), 1, N'I', 1007, 1)
INSERT [dbo].[ClasificacionIndicadores] ([IdClasificacion], [Clasificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [IdTipoIndicador], [Valor]) VALUES (34, N'', N'SISTEMA', CAST(N'2022-10-05T13:50:30.703' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:50:30.703' AS DateTime), 1, N'I', 1007, 2)
SET IDENTITY_INSERT [dbo].[ClasificacionIndicadores] OFF
GO
SET IDENTITY_INSERT [dbo].[Direcciones] ON 

INSERT [dbo].[Direcciones] ([IdDireccion], [Codigo], [Direccion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (1, N'1', N'Prueba', N'Sistema', CAST(N'2022-08-12T09:45:18.900' AS DateTime), N'SISTEMA', CAST(N'2022-08-16T15:38:57.780' AS DateTime), N'E', 0)
INSERT [dbo].[Direcciones] ([IdDireccion], [Codigo], [Direccion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (2, N'2', N'Prueba2', N'Sistema', CAST(N'2022-08-12T09:48:21.550' AS DateTime), N'SISTEMA', CAST(N'2022-08-16T15:43:36.347' AS DateTime), N'E', 0)
INSERT [dbo].[Direcciones] ([IdDireccion], [Codigo], [Direccion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (3, N'3', N'Prueba4', N'Sistema', CAST(N'2022-08-12T15:19:42.600' AS DateTime), N'SISTEMA', CAST(N'2022-08-17T07:23:32.970' AS DateTime), N'E', 0)
SET IDENTITY_INSERT [dbo].[Direcciones] OFF
GO
SET IDENTITY_INSERT [dbo].[EstadosAceptacion] ON 

INSERT [dbo].[EstadosAceptacion] ([IdEstadoAceptacion], [Codigo], [EstadoAceptacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (1, N'1', N'Macro Actividad compartida con otras direcciones', N'SISTEMA', CAST(N'2022-08-11T10:38:27.723' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T07:47:38.813' AS DateTime), 1, N'A')
INSERT [dbo].[EstadosAceptacion] ([IdEstadoAceptacion], [Codigo], [EstadoAceptacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (2, N'2', N'Macro Actividad corresponde a otra dirección', N'SISTEMA', CAST(N'2022-08-11T11:46:32.650' AS DateTime), N'SISTEMA', CAST(N'2022-08-11T16:32:14.193' AS DateTime), 1, N'A')
INSERT [dbo].[EstadosAceptacion] ([IdEstadoAceptacion], [Codigo], [EstadoAceptacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (4, N'3', N'Hallazgo no quedo claro la solicitud', N'SISTEMA', CAST(N'2022-08-11T16:33:02.723' AS DateTime), N'SISTEMA', CAST(N'2022-08-11T16:33:02.723' AS DateTime), 1, N'I')
INSERT [dbo].[EstadosAceptacion] ([IdEstadoAceptacion], [Codigo], [EstadoAceptacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (5, N'4', N'Hallazgo aceptado', N'SISTEMA', CAST(N'2022-08-11T16:33:32.180' AS DateTime), N'SISTEMA', CAST(N'2022-08-11T16:33:32.180' AS DateTime), 1, N'I')
INSERT [dbo].[EstadosAceptacion] ([IdEstadoAceptacion], [Codigo], [EstadoAceptacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (7, N'5', N'Hallazgo aceptado y ya fue realizada la acción', N'SISTEMA', CAST(N'2022-08-11T16:34:07.983' AS DateTime), N'SISTEMA', CAST(N'2022-08-16T14:34:08.040' AS DateTime), 1, N'A')
SET IDENTITY_INSERT [dbo].[EstadosAceptacion] OFF
GO
SET IDENTITY_INSERT [dbo].[EstadosHallazgo] ON 

INSERT [dbo].[EstadosHallazgo] ([IdEstadoHallazgo], [EstadoHallazgo], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (1, N'Aceptado en proceso', N'SISTEMA', CAST(N'2022-08-16T13:34:09.293' AS DateTime), N'SISTEMA', CAST(N'2022-08-16T14:38:20.950' AS DateTime), 1, N'A')
INSERT [dbo].[EstadosHallazgo] ([IdEstadoHallazgo], [EstadoHallazgo], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (5, N'Grupal atención requerida ', N'SISTEMA', CAST(N'2022-08-16T14:39:07.360' AS DateTime), N'SISTEMA', CAST(N'2022-08-16T14:39:07.360' AS DateTime), 1, N'I')
INSERT [dbo].[EstadosHallazgo] ([IdEstadoHallazgo], [EstadoHallazgo], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (6, N'Corresponde a otra dirección', N'SISTEMA', CAST(N'2022-08-16T14:39:28.797' AS DateTime), N'SISTEMA', CAST(N'2022-08-16T14:39:28.797' AS DateTime), 1, N'I')
INSERT [dbo].[EstadosHallazgo] ([IdEstadoHallazgo], [EstadoHallazgo], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (7, N'Requiere aclaración', N'SISTEMA', CAST(N'2022-08-16T14:39:48.477' AS DateTime), N'SISTEMA', CAST(N'2022-08-16T14:39:48.477' AS DateTime), 1, N'I')
INSERT [dbo].[EstadosHallazgo] ([IdEstadoHallazgo], [EstadoHallazgo], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (8, N'Completo y cerrado', N'SISTEMA', CAST(N'2022-08-16T14:39:59.513' AS DateTime), N'SISTEMA', CAST(N'2022-08-16T14:39:59.513' AS DateTime), 1, N'I')
SET IDENTITY_INSERT [dbo].[EstadosHallazgo] OFF
GO
SET IDENTITY_INSERT [dbo].[EtapasTalleres] ON 

INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (1, N'Actitudes y Emociones de los Clientes', 1, N'SISTEMA', CAST(N'2022-08-18T14:32:31.797' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:44:37.363' AS DateTime), 1, N'A')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (2, N'Puntos de Mejora a las Encuestas', 1, N'SISTEMA', CAST(N'2022-08-18T14:44:52.123' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:44:52.123' AS DateTime), 1, N'I')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (3, N'Evidencia Física', 2, N'SISTEMA', CAST(N'2022-08-18T14:45:15.083' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:45:15.083' AS DateTime), 1, N'I')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (4, N'Acciones del Cliente', 2, N'SISTEMA', CAST(N'2022-08-18T14:45:25.070' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:45:25.070' AS DateTime), 1, N'I')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (5, N'Acciones Visibles del Empleado', 2, N'SISTEMA', CAST(N'2022-08-18T14:45:52.983' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:51:11.210' AS DateTime), 1, N'A')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (6, N'Acciones No Visibles del Empleado', 2, N'SISTEMA', CAST(N'2022-08-18T14:46:06.570' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:50:57.613' AS DateTime), 1, N'A')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (7, N'Procesos de Soporte - Sistemas - Herramientas', 2, N'SISTEMA', CAST(N'2022-08-18T14:46:22.317' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:46:22.317' AS DateTime), 1, N'I')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (8, N'Aptitudes y Emociones', 2, N'SISTEMA', CAST(N'2022-08-18T14:46:39.960' AS DateTime), N'SISTEMA', CAST(N'2022-08-19T13:00:46.520' AS DateTime), 1, N'A')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (9, N'Puntos de Mejora', 2, N'SISTEMA', CAST(N'2022-08-18T14:47:48.913' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T15:12:50.630' AS DateTime), 1, N'A')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (10, N'Definición Piense y Siente', 4, N'SISTEMA', CAST(N'2022-08-18T14:48:05.670' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:48:05.670' AS DateTime), 1, N'I')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (11, N'Definición Dice y Hace', 4, N'SISTEMA', CAST(N'2022-08-18T14:48:20.403' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:48:20.403' AS DateTime), 1, N'I')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (12, N'Definición Ve', 4, N'SISTEMA', CAST(N'2022-08-18T14:48:28.370' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:48:28.370' AS DateTime), 1, N'I')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (13, N'Definición Escucha', 4, N'SISTEMA', CAST(N'2022-08-18T14:48:37.860' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:48:37.860' AS DateTime), 1, N'I')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (14, N'Definición Que lo Frustra', 4, N'SISTEMA', CAST(N'2022-08-18T14:48:52.550' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:48:52.550' AS DateTime), 1, N'I')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (15, N'Definición Que lo Motiva', 4, N'SISTEMA', CAST(N'2022-08-18T14:49:04.760' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:49:04.760' AS DateTime), 1, N'I')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (16, N'Definición del Arquetipos', 3, N'SISTEMA', CAST(N'2022-08-18T14:49:15.507' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:49:15.507' AS DateTime), 1, N'I')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (17, N'Definición de Atributos de Excelencia', 5, N'SISTEMA', CAST(N'2022-08-18T14:49:26.820' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:49:26.820' AS DateTime), 1, N'I')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (18, N'Definición de Atributos Diferenciadores', 5, N'SISTEMA', CAST(N'2022-08-18T14:49:34.963' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:49:34.963' AS DateTime), 1, N'I')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (19, N'Definición de Atributos NO Diferenciadores', 5, N'SISTEMA', CAST(N'2022-08-18T14:49:46.063' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:49:46.063' AS DateTime), 1, N'I')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (20, N'Definición de Atributos Básicos', 5, N'SISTEMA', CAST(N'2022-08-18T14:49:58.110' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:49:58.110' AS DateTime), 1, N'I')
INSERT [dbo].[EtapasTalleres] ([IdEtapaTaller], [EtapaTaller], [IdTipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (21, N'Definición del Mapa', 6, N'SISTEMA', CAST(N'2022-08-18T14:50:17.433' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T14:50:17.433' AS DateTime), 1, N'I')
SET IDENTITY_INSERT [dbo].[EtapasTalleres] OFF
GO
SET IDENTITY_INSERT [dbo].[FasesServicios] ON 

INSERT [dbo].[FasesServicios] ([IdFase], [Fase], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (2, N'Implementación', N'SISTEMA', CAST(N'2022-08-05T15:08:20.163' AS DateTime), N'SISTEMA', CAST(N'2022-09-09T09:10:13.473' AS DateTime), 1, N'A')
INSERT [dbo].[FasesServicios] ([IdFase], [Fase], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (3, N'Fidelización', N'SISTEMA', CAST(N'2022-08-05T15:09:08.807' AS DateTime), N'SISTEMA', CAST(N'2022-08-05T15:09:08.807' AS DateTime), 1, N'I')
INSERT [dbo].[FasesServicios] ([IdFase], [Fase], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (4, N'Encuentro-Compro', N'SISTEMA', CAST(N'2022-08-05T15:09:22.670' AS DateTime), N'SISTEMA', CAST(N'2022-08-05T15:09:22.670' AS DateTime), 1, N'I')
INSERT [dbo].[FasesServicios] ([IdFase], [Fase], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (5, N'Soporte', N'SISTEMA', CAST(N'2022-08-05T15:09:31.673' AS DateTime), N'SISTEMA', CAST(N'2022-08-08T17:01:19.530' AS DateTime), 1, N'A')
SET IDENTITY_INSERT [dbo].[FasesServicios] OFF
GO
SET IDENTITY_INSERT [dbo].[GradosEsfuerzo] ON 

INSERT [dbo].[GradosEsfuerzo] ([IdGradoEsfuerzo], [Codigo], [GradoEsfuerzo], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (1, N'1', N'Alto', N'Sistema', CAST(N'2022-08-12T11:26:49.293' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T13:11:34.317' AS DateTime), N'E', 0)
INSERT [dbo].[GradosEsfuerzo] ([IdGradoEsfuerzo], [Codigo], [GradoEsfuerzo], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (2, N'2', N'Medio', N'Sistema', CAST(N'2022-08-12T15:20:08.220' AS DateTime), N'SISTEMA', CAST(N'2022-08-07T00:00:00.000' AS DateTime), N'A', 1)
INSERT [dbo].[GradosEsfuerzo] ([IdGradoEsfuerzo], [Codigo], [GradoEsfuerzo], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (3, N'3', N'Bajo', N'Sistema', CAST(N'2022-08-16T15:44:07.460' AS DateTime), NULL, NULL, N'I', 1)
SET IDENTITY_INSERT [dbo].[GradosEsfuerzo] OFF
GO
SET IDENTITY_INSERT [dbo].[GradosImpacto] ON 

INSERT [dbo].[GradosImpacto] ([IdGradoImpacto], [GradoImpacto], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (1, N'Alto', N'SISTEMA', CAST(N'2022-08-18T10:28:59.230' AS DateTime), N'SISTEMA', CAST(N'2022-08-18T12:06:55.383' AS DateTime), 1, N'A')
INSERT [dbo].[GradosImpacto] ([IdGradoImpacto], [GradoImpacto], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (2, N'Medio', N'SISTEMA', CAST(N'2022-08-18T10:29:15.523' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[GradosImpacto] ([IdGradoImpacto], [GradoImpacto], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (3, N'Bajo', N'SISTEMA', CAST(N'2022-08-18T10:29:20.030' AS DateTime), NULL, NULL, 1, N'I')
SET IDENTITY_INSERT [dbo].[GradosImpacto] OFF
GO
SET IDENTITY_INSERT [dbo].[Jefaturas] ON 

INSERT [dbo].[Jefaturas] ([IdJefatura], [IdDireccion], [Codigo], [Jefatura], [Ingresado_Por], [Fecha_Ingreso], [Modificado_Por], [Fecha_Modificacion], [Estado], [Accion]) VALUES (1, 3, N'1234', N'Prueba', N'Sistema', CAST(N'2022-08-16T12:50:49.330' AS DateTime), N'SISTEMA', CAST(N'2022-08-16T16:07:13.923' AS DateTime), 1, N'A')
SET IDENTITY_INSERT [dbo].[Jefaturas] OFF
GO
SET IDENTITY_INSERT [dbo].[LineasNegocio] ON 

INSERT [dbo].[LineasNegocio] ([IdLinea], [LineaNegocio], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (1, N'Soluciones de Conectividad y Comunicación', N'SISTEMA', CAST(N'2022-08-01T09:20:31.857' AS DateTime), N'SISTEMA', CAST(N'2022-08-19T08:59:19.933' AS DateTime), 1, N'A')
INSERT [dbo].[LineasNegocio] ([IdLinea], [LineaNegocio], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (2, N'Soluciones Digitales', N'SISTEMA', CAST(N'2022-08-01T10:00:33.267' AS DateTime), N'SISTEMA', CAST(N'2022-08-19T08:59:21.740' AS DateTime), 1, N'A')
INSERT [dbo].[LineasNegocio] ([IdLinea], [LineaNegocio], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (3, N'Soluciones de Infraestructura y Nube', N'SISTEMA', CAST(N'2022-08-01T10:21:33.900' AS DateTime), N'SISTEMA', CAST(N'2022-08-19T08:59:22.520' AS DateTime), 1, N'A')
INSERT [dbo].[LineasNegocio] ([IdLinea], [LineaNegocio], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (4, N'Soluciones Gestionadas', N'SISTEMA', CAST(N'2022-08-01T10:21:42.530' AS DateTime), N'SISTEMA', CAST(N'2022-08-19T08:59:23.593' AS DateTime), 1, N'A')
INSERT [dbo].[LineasNegocio] ([IdLinea], [LineaNegocio], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (5, N'Soluciones para Territorios Inteligentes', N'SISTEMA', CAST(N'2022-08-01T10:21:50.310' AS DateTime), N'SISTEMA', CAST(N'2022-08-19T08:59:24.193' AS DateTime), 1, N'A')
INSERT [dbo].[LineasNegocio] ([IdLinea], [LineaNegocio], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (6, N'Soluciones para Territorios Inteligentes', N'SISTEMA', CAST(N'2022-08-01T11:35:58.920' AS DateTime), N'SISTEMA', CAST(N'2022-08-19T08:59:24.847' AS DateTime), 1, N'A')
INSERT [dbo].[LineasNegocio] ([IdLinea], [LineaNegocio], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (7, N'Soluciones para Territorios Inteligentes', N'SISTEMA', CAST(N'2022-08-01T11:35:59.980' AS DateTime), N'SISTEMA', CAST(N'2022-08-19T08:59:25.457' AS DateTime), 1, N'A')
INSERT [dbo].[LineasNegocio] ([IdLinea], [LineaNegocio], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (8, N'Soluciones para Territorios Inteligentes', N'SISTEMA', CAST(N'2022-08-01T11:36:00.860' AS DateTime), N'SISTEMA', CAST(N'2022-08-19T08:59:26.107' AS DateTime), 1, N'A')
INSERT [dbo].[LineasNegocio] ([IdLinea], [LineaNegocio], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (9, N'Soluciones para Territorios Inteligentes', N'SISTEMA', CAST(N'2022-08-01T11:36:01.780' AS DateTime), N'SISTEMA', CAST(N'2022-08-19T08:59:27.430' AS DateTime), 1, N'A')
SET IDENTITY_INSERT [dbo].[LineasNegocio] OFF
GO
SET IDENTITY_INSERT [dbo].[MacrosActividades] ON 

INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (1, N'Administrador de sistemas', N'SISTEMA', CAST(N'2022-08-04T09:18:00.390' AS DateTime), N'SISTEMA', CAST(N'2022-08-17T12:29:00.723' AS DateTime), 1, N'A')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (2, N'Ajustes del contrato', N'SISTEMA', CAST(N'2022-08-04T10:49:48.517' AS DateTime), N'SISTEMA', CAST(N'2022-08-05T10:25:19.527' AS DateTime), 1, N'A')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (3, N'Alambrado del servicio', N'SISTEMA', CAST(N'2022-08-04T10:50:11.193' AS DateTime), N'SISTEMA', CAST(N'2022-08-24T13:43:21.663' AS DateTime), 1, N'A')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (4, N'Atención', N'SISTEMA', CAST(N'2022-08-04T10:50:26.513' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (5, N'Atención prioritaria de cliente', N'SISTEMA', CAST(N'2022-08-04T10:50:56.253' AS DateTime), N'SISTEMA', CAST(N'2022-08-04T11:11:39.520' AS DateTime), 1, N'A')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (6, N'Automatización', N'SISTEMA', CAST(N'2022-08-04T10:51:11.243' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (7, N'Automatizar encuestas de satisfacción', N'SISTEMA', CAST(N'2022-08-04T11:09:34.797' AS DateTime), N'SISTEMA', CAST(N'2022-08-04T11:11:33.157' AS DateTime), 1, N'A')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (8, N'Buenas prácticas de Manufactura', N'SISTEMA', CAST(N'2022-08-04T11:12:00.417' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (9, N'Calidad', N'SISTEMA', CAST(N'2022-08-04T11:12:10.490' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (10, N'Capacitaciones', N'SISTEMA', CAST(N'2022-08-04T11:12:19.210' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (11, N'Capacitaciones por parte del socio comercial', N'SISTEMA', CAST(N'2022-08-04T11:12:41.357' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (12, N'Comunicación', N'SISTEMA', CAST(N'2022-08-04T11:12:52.257' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (13, N'Contratos', N'SISTEMA', CAST(N'2022-08-04T11:13:22.970' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (14, N'Creación de procedimiento', N'SISTEMA', CAST(N'2022-08-04T11:13:32.063' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (15, N'Datos de clientes base de datos', N'SISTEMA', CAST(N'2022-08-04T11:14:00.383' AS DateTime), N'SISTEMA', CAST(N'2022-08-16T11:19:04.947' AS DateTime), 1, N'A')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (16, N'Digitalización', N'SISTEMA', CAST(N'2022-08-04T11:14:15.380' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (17, N'e-Commerce', N'SISTEMA', CAST(N'2022-08-04T11:14:24.050' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (18, N'Eficiencia', N'SISTEMA', CAST(N'2022-08-04T11:14:35.577' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (19, N'Equipo de precios', N'SISTEMA', CAST(N'2022-08-04T11:14:46.890' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (20, N'Estandarización', N'SISTEMA', CAST(N'2022-08-04T11:14:57.493' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (21, N'Estandarización de canales de atención al cliente', N'SISTEMA', CAST(N'2022-08-04T11:15:06.557' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (22, N'Estimaciones', N'SISTEMA', CAST(N'2022-08-04T11:15:23.183' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (23, N'Innovación', N'SISTEMA', CAST(N'2022-08-04T11:15:31.643' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (24, N'Integración', N'SISTEMA', CAST(N'2022-08-04T11:15:42.660' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (25, N'Material de apoyo practico y funcional', N'SISTEMA', CAST(N'2022-08-04T11:15:52.373' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (26, N'Mejora de tiempos', N'SISTEMA', CAST(N'2022-08-04T11:16:02.933' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (27, N'Mejorar escenarios de prueba antes de entrada a producción', N'SISTEMA', CAST(N'2022-08-04T11:16:33.517' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (28, N'Mejorar levantamiento técnico de requerimiento', N'SISTEMA', CAST(N'2022-08-04T11:16:44.353' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (29, N'Necesidad de obtener capacitaciones', N'SISTEMA', CAST(N'2022-08-04T11:17:32.593' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (30, N'Normalización', N'SISTEMA', CAST(N'2022-08-04T11:17:41.720' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (31, N'Precios', N'SISTEMA', CAST(N'2022-08-04T11:17:54.827' AS DateTime), N'SISTEMA', CAST(N'2022-08-16T15:49:19.733' AS DateTime), 1, N'A')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (32, N'Procesos', N'SISTEMA', CAST(N'2022-08-04T11:18:06.173' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (33, N'Realizar muchos procesos de parte del cliente genera molestia', N'SISTEMA', CAST(N'2022-08-04T11:18:15.320' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (34, N'Regulaciones aportes del socio', N'SISTEMA', CAST(N'2022-08-04T11:18:23.193' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (35, N'Reprocesos', N'SISTEMA', CAST(N'2022-08-04T11:18:30.177' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (36, N'Revisión', N'SISTEMA', CAST(N'2022-08-04T11:18:42.887' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (37, N'Rol mejora del servicio', N'SISTEMA', CAST(N'2022-08-04T11:18:53.283' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (38, N'Seguimiento', N'SISTEMA', CAST(N'2022-08-04T11:19:02.323' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (39, N'Seguimiento socio comercial', N'SISTEMA', CAST(N'2022-08-04T11:19:08.810' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (40, N'Sistemas', N'SISTEMA', CAST(N'2022-08-04T11:19:18.500' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (41, N'Soporte', N'SISTEMA', CAST(N'2022-08-04T11:19:26.187' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (42, N'Tiempos', N'SISTEMA', CAST(N'2022-08-04T11:19:34.960' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (43, N'Trazabilidad', N'SISTEMA', CAST(N'2022-08-04T11:19:47.820' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (44, N'Velocidad de la conectividad', N'SISTEMA', CAST(N'2022-08-04T11:19:56.140' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (45, N'Web ', N'SISTEMA', CAST(N'2022-08-04T11:20:04.287' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (46, N'Prueba', N'SISTEMA', CAST(N'2022-08-16T15:49:44.060' AS DateTime), N'SISTEMA', CAST(N'2022-08-16T15:49:57.883' AS DateTime), 0, N'E')
INSERT [dbo].[MacrosActividades] ([IdMacro], [MacroActividad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (47, N'Testz', N'SISTEMA', CAST(N'2022-08-17T12:29:06.800' AS DateTime), N'SISTEMA', CAST(N'2022-08-17T12:29:19.010' AS DateTime), 0, N'E')
SET IDENTITY_INSERT [dbo].[MacrosActividades] OFF
GO
SET IDENTITY_INSERT [dbo].[MetodologiasExperienciaCliente] ON 

INSERT [dbo].[MetodologiasExperienciaCliente] ([IdMetodologia], [Metodologia], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (1, N'Estrategia y gestión CXx', N'SISTEMA', CAST(N'2022-08-05T13:07:45.587' AS DateTime), N'SISTEMA', CAST(N'2022-08-17T12:35:23.157' AS DateTime), 1, N'A')
INSERT [dbo].[MetodologiasExperienciaCliente] ([IdMetodologia], [Metodologia], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (2, N'Clientes y Diagnóstico', N'SISTEMA', CAST(N'2022-08-05T13:29:21.897' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MetodologiasExperienciaCliente] ([IdMetodologia], [Metodologia], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (3, N'Marca, Interacción y Producto', N'SISTEMA', CAST(N'2022-08-05T13:30:41.040' AS DateTime), N'SISTEMA', CAST(N'2022-08-12T15:14:43.787' AS DateTime), 1, N'A')
INSERT [dbo].[MetodologiasExperienciaCliente] ([IdMetodologia], [Metodologia], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (4, N'Medición VOC', N'SISTEMA', CAST(N'2022-08-05T13:30:58.697' AS DateTime), N'SISTEMA', CAST(N'2022-08-17T12:31:13.180' AS DateTime), 1, N'A')
INSERT [dbo].[MetodologiasExperienciaCliente] ([IdMetodologia], [Metodologia], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (5, N'Sistemas y Tecnología', N'SISTEMA', CAST(N'2022-08-05T13:31:19.170' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[MetodologiasExperienciaCliente] ([IdMetodologia], [Metodologia], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (6, N'Personas, Cultura y Gobernanza', N'SISTEMA', CAST(N'2022-08-05T13:31:41.810' AS DateTime), N'SISTEMA', CAST(N'2022-08-12T08:19:14.973' AS DateTime), 1, N'A')
INSERT [dbo].[MetodologiasExperienciaCliente] ([IdMetodologia], [Metodologia], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (7, N'PRUEBA', N'SISTEMA', CAST(N'2022-08-12T15:15:18.917' AS DateTime), N'SISTEMA', CAST(N'2022-08-12T15:15:22.330' AS DateTime), 0, N'E')
INSERT [dbo].[MetodologiasExperienciaCliente] ([IdMetodologia], [Metodologia], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (8, N'Testv', N'SISTEMA', CAST(N'2022-08-17T12:30:18.247' AS DateTime), N'SISTEMA', CAST(N'2022-08-17T12:30:35.100' AS DateTime), 0, N'E')
SET IDENTITY_INSERT [dbo].[MetodologiasExperienciaCliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Periodicidad] ON 

INSERT [dbo].[Periodicidad] ([IdPeriodicidad], [Periodicidad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (1, N'Diario', N'SISTEMA', CAST(N'2022-08-08T12:02:15.167' AS DateTime), N'SISTEMA', CAST(N'2022-08-17T12:35:35.630' AS DateTime), 1, N'A')
INSERT [dbo].[Periodicidad] ([IdPeriodicidad], [Periodicidad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (2, N'Semanal', N'SISTEMA', CAST(N'2022-08-08T12:03:34.550' AS DateTime), N'SISTEMA', CAST(N'2022-08-08T12:05:00.030' AS DateTime), 1, N'A')
INSERT [dbo].[Periodicidad] ([IdPeriodicidad], [Periodicidad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (3, N'Quincenal', N'SISTEMA', CAST(N'2022-08-08T12:03:47.523' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[Periodicidad] ([IdPeriodicidad], [Periodicidad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (4, N'Mensual', N'SISTEMA', CAST(N'2022-08-08T12:04:00.177' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[Periodicidad] ([IdPeriodicidad], [Periodicidad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (5, N'Bimensual', N'SISTEMA', CAST(N'2022-08-08T12:04:10.620' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[Periodicidad] ([IdPeriodicidad], [Periodicidad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (6, N'Trimestral', N'SISTEMA', CAST(N'2022-08-08T12:04:19.290' AS DateTime), N'SISTEMA', CAST(N'2022-08-12T08:20:32.033' AS DateTime), 1, N'A')
INSERT [dbo].[Periodicidad] ([IdPeriodicidad], [Periodicidad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (7, N'Cuatrimestral', N'SISTEMA', CAST(N'2022-08-08T12:04:36.283' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[Periodicidad] ([IdPeriodicidad], [Periodicidad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (8, N'Semestral', N'SISTEMA', CAST(N'2022-08-08T12:04:45.760' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[Periodicidad] ([IdPeriodicidad], [Periodicidad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (9, N'Anual', N'SISTEMA', CAST(N'2022-08-08T12:04:55.320' AS DateTime), N'SISTEMA', CAST(N'2022-08-12T08:20:14.857' AS DateTime), 1, N'A')
INSERT [dbo].[Periodicidad] ([IdPeriodicidad], [Periodicidad], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (10, N'PRUEBA2z', N'SISTEMA', CAST(N'2022-08-12T15:16:06.757' AS DateTime), N'SISTEMA', CAST(N'2022-08-17T12:35:42.313' AS DateTime), 0, N'E')
SET IDENTITY_INSERT [dbo].[Periodicidad] OFF
GO
SET IDENTITY_INSERT [dbo].[Sectores] ON 

INSERT [dbo].[Sectores] ([IdSector], [Sector], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (1, N'Publico', N'Sistema', CAST(N'2022-08-08T07:55:35.563' AS DateTime), N'SISTEMA', CAST(N'2022-08-16T15:42:50.190' AS DateTime), N'A', 1)
INSERT [dbo].[Sectores] ([IdSector], [Sector], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (2, N'Privado', N'Sistema', CAST(N'2022-08-08T07:56:02.267' AS DateTime), N'SISTEMA', CAST(N'2022-08-12T14:21:10.900' AS DateTime), N'A', 1)
INSERT [dbo].[Sectores] ([IdSector], [Sector], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (3, N'Prueba3', N'Sistema', CAST(N'2022-08-12T15:18:38.700' AS DateTime), N'SISTEMA', CAST(N'2022-08-17T07:43:25.360' AS DateTime), N'E', 0)
INSERT [dbo].[Sectores] ([IdSector], [Sector], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (4, N'Prueba3', N'Sistema', CAST(N'2022-08-16T15:42:35.987' AS DateTime), N'SISTEMA', CAST(N'2022-08-16T15:42:41.683' AS DateTime), N'E', 0)
SET IDENTITY_INSERT [dbo].[Sectores] OFF
GO
SET IDENTITY_INSERT [dbo].[Segmentos] ON 

INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (1, 1, N'Entes y Empresas Publicas', N'Sistema', CAST(N'2022-08-08T08:02:26.753' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (2, 1, N'Autonomas y Semiautonomas', N'Sistema', CAST(N'2022-08-08T08:05:29.230' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (3, 1, N'Gobierno Central', N'Sistema', CAST(N'2022-08-08T08:05:51.833' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (4, 1, N'Ministerio y Adscrito', N'Sistema', CAST(N'2022-08-08T08:06:31.953' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (5, 1, N'Municipalidades', N'Sistema', CAST(N'2022-08-08T08:06:46.190' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (6, 1, N'Banca', N'Sistema', CAST(N'2022-08-08T08:06:57.790' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (7, 1, N'Sector Educativo', N'Sistema', CAST(N'2022-08-08T08:07:59.217' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (8, 2, N'Manufactura', N'Sistema', CAST(N'2022-08-08T08:08:47.500' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (9, 2, N'Comercio', N'Sistema', CAST(N'2022-08-08T08:11:17.087' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (10, 2, N'Servicios', N'Sistema', CAST(N'2022-08-08T08:12:18.477' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (11, 2, N'Agropecuario', N'Sistema', CAST(N'2022-08-08T08:23:06.370' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (12, 2, N'Banca', N'Sistema', CAST(N'2022-08-08T08:23:17.670' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (13, 2, N'Sector Educativo', N'Sistema', CAST(N'2022-08-08T08:23:44.480' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (14, 2, N'Transnacionales', N'Sistema', CAST(N'2022-08-08T08:23:58.987' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (15, 2, N'Salud', N'Sistema', CAST(N'2022-08-08T08:24:05.597' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (16, 2, N'Tecnologías de Información y Comunicación', N'Sistema', CAST(N'2022-08-08T08:24:44.353' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (17, 2, N'Prueba4', N'Sistema', CAST(N'2022-08-12T15:19:15.780' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
INSERT [dbo].[Segmentos] ([IdSegmento], [IdSector], [Segmento], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Accion], [Estado]) VALUES (18, 1, N'Prueba3', N'Sistema', CAST(N'2022-08-16T15:43:13.830' AS DateTime), N'SISTEMA', CAST(N'2022-08-22T10:51:42.793' AS DateTime), N'E', 0)
SET IDENTITY_INSERT [dbo].[Segmentos] OFF
GO
SET IDENTITY_INSERT [dbo].[Servicios] ON 

INSERT [dbo].[Servicios] ([IdServicio], [IdLinea], [Servicio], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (3, 1, N'fcg', N'SISTEMA', CAST(N'2022-08-19T00:00:00.000' AS DateTime), N'SISTEMA', CAST(N'2022-10-06T14:21:01.283' AS DateTime), 0, N'E')
INSERT [dbo].[Servicios] ([IdServicio], [IdLinea], [Servicio], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (5, 4, N'Prueba', N'SISTEMA', CAST(N'2022-09-07T08:38:26.747' AS DateTime), N'SISTEMA', CAST(N'2022-10-06T14:21:01.767' AS DateTime), 0, N'E')
INSERT [dbo].[Servicios] ([IdServicio], [IdLinea], [Servicio], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (6, 3, N'Cloud', N'Sistema', CAST(N'2022-10-06T14:20:56.467' AS DateTime), N'Sistema', CAST(N'2022-10-06T14:20:56.467' AS DateTime), 1, N'I')
INSERT [dbo].[Servicios] ([IdServicio], [IdLinea], [Servicio], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (7, 1, N'IoT', N'Sistema', CAST(N'2022-10-06T14:21:15.147' AS DateTime), N'Sistema', CAST(N'2022-10-06T14:21:15.147' AS DateTime), 1, N'I')
SET IDENTITY_INSERT [dbo].[Servicios] OFF
GO
SET IDENTITY_INSERT [dbo].[ServiciosSocios] ON 

INSERT [dbo].[ServiciosSocios] ([IdServicioSocio], [IdSocio], [IdLinea], [IdServicio], [Estado], [Accion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion]) VALUES (1, 3, 1, 5, 1, N'A', N'Sistema', CAST(N'2022-09-07T08:43:26.153' AS DateTime), N'SISTEMA', CAST(N'2022-10-06T14:07:32.780' AS DateTime))
INSERT [dbo].[ServiciosSocios] ([IdServicioSocio], [IdSocio], [IdLinea], [IdServicio], [Estado], [Accion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion]) VALUES (2, 2, 2, 5, 1, N'I', N'Sistema', CAST(N'2022-09-07T08:47:55.760' AS DateTime), N'Sistema', CAST(N'2022-09-07T08:47:55.760' AS DateTime))
INSERT [dbo].[ServiciosSocios] ([IdServicioSocio], [IdSocio], [IdLinea], [IdServicio], [Estado], [Accion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion]) VALUES (3, 1, 4, 3, 1, N'A', N'Sistema', CAST(N'2022-09-07T09:28:59.030' AS DateTime), N'SISTEMA', CAST(N'2022-09-07T11:26:44.370' AS DateTime))
INSERT [dbo].[ServiciosSocios] ([IdServicioSocio], [IdSocio], [IdLinea], [IdServicio], [Estado], [Accion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion]) VALUES (4, 3, 8, 5, 1, N'A', N'Sistema', CAST(N'2022-09-07T11:25:26.513' AS DateTime), N'SISTEMA', CAST(N'2022-09-07T11:26:49.953' AS DateTime))
INSERT [dbo].[ServiciosSocios] ([IdServicioSocio], [IdSocio], [IdLinea], [IdServicio], [Estado], [Accion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion]) VALUES (5, 4, 9, 5, 1, N'I', N'Sistema', CAST(N'2022-09-07T13:06:31.303' AS DateTime), N'Sistema', CAST(N'2022-09-07T13:06:31.303' AS DateTime))
INSERT [dbo].[ServiciosSocios] ([IdServicioSocio], [IdSocio], [IdLinea], [IdServicio], [Estado], [Accion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion]) VALUES (6, 1, 4, 5, 1, N'I', N'Sistema', CAST(N'2022-09-07T13:06:52.857' AS DateTime), N'Sistema', CAST(N'2022-09-07T13:06:52.857' AS DateTime))
INSERT [dbo].[ServiciosSocios] ([IdServicioSocio], [IdSocio], [IdLinea], [IdServicio], [Estado], [Accion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion]) VALUES (7, 6, 4, 5, 1, N'A', N'Sistema', CAST(N'2022-10-06T14:07:44.050' AS DateTime), N'SISTEMA', CAST(N'2022-10-06T14:07:48.637' AS DateTime))
SET IDENTITY_INSERT [dbo].[ServiciosSocios] OFF
GO
SET IDENTITY_INSERT [dbo].[Socios] ON 

INSERT [dbo].[Socios] ([IdSocio], [Nombre], [Cedula], [Correo], [Telefono], [IdTipoPersona], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (1, N'Coopesantos R.L', N'3004045260', N'servicioalcliente@coopesantosxD.com', N'50625462525', 2, N'Sistema', CAST(N'2022-09-05T11:05:46.017' AS DateTime), N'SISTEMA', CAST(N'2022-09-29T10:08:13.757' AS DateTime), 0, N'E')
INSERT [dbo].[Socios] ([IdSocio], [Nombre], [Cedula], [Correo], [Telefono], [IdTipoPersona], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (2, N'Prueba de Socio', N'1893038765', N'socioejemplo@gmail.com', N'50687987776', 2, N'Sistema', CAST(N'2022-09-07T07:35:50.527' AS DateTime), N'SISTEMA', CAST(N'2022-09-07T14:35:20.860' AS DateTime), 1, N'A')
INSERT [dbo].[Socios] ([IdSocio], [Nombre], [Cedula], [Correo], [Telefono], [IdTipoPersona], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (3, N'Eduardo Fonseca Rojas', N'208100949', N'edufon00@outlook.com', N'50688704500', 1, N'Sistema', CAST(N'2022-09-07T07:39:20.757' AS DateTime), N'SISTEMA', CAST(N'2022-09-07T14:35:17.223' AS DateTime), 1, N'A')
INSERT [dbo].[Socios] ([IdSocio], [Nombre], [Cedula], [Correo], [Telefono], [IdTipoPersona], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (4, N'A', N'A', N'asd@g.mail.com', N'50612312312', 2, N'Sistema', CAST(N'2022-09-07T11:01:28.730' AS DateTime), N'SISTEMA', CAST(N'2022-09-07T13:07:31.313' AS DateTime), 1, N'A')
INSERT [dbo].[Socios] ([IdSocio], [Nombre], [Cedula], [Correo], [Telefono], [IdTipoPersona], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (5, N'Joshua Viera Sandí', N'117830351', N'joshuaviera00@gmail.com', N'50685974442', 1, N'Sistema', CAST(N'2022-09-07T14:12:33.890' AS DateTime), N'SISTEMA', CAST(N'2022-09-07T14:32:16.410' AS DateTime), 1, N'A')
INSERT [dbo].[Socios] ([IdSocio], [Nombre], [Cedula], [Correo], [Telefono], [IdTipoPersona], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (6, N'Banco Nacional de Costa Rica', N'782282222', N'bncr@gmail.com', N'50624677654', 2, N'Sistema', CAST(N'2022-09-07T14:35:51.767' AS DateTime), N'Sistema', CAST(N'2022-09-07T14:35:51.767' AS DateTime), 1, N'I')
INSERT [dbo].[Socios] ([IdSocio], [Nombre], [Cedula], [Correo], [Telefono], [IdTipoPersona], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (7, N'A', N'313', N'A', N'A', 1, N'Sistema', CAST(N'2022-09-08T12:21:38.203' AS DateTime), N'Sistema', CAST(N'2022-09-08T12:21:38.203' AS DateTime), 1, N'I')
SET IDENTITY_INSERT [dbo].[Socios] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoContactoEncuesta] ON 

INSERT [dbo].[TipoContactoEncuesta] ([IdTipoContactoEncuesta], [TipoContactoEncuesta], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (1, N'Cuenta', N'SISTEMA', CAST(N'2022-09-08T08:16:46.330' AS DateTime), N'SISTEMA', CAST(N'2022-10-06T14:42:26.280' AS DateTime), 1, N'A')
INSERT [dbo].[TipoContactoEncuesta] ([IdTipoContactoEncuesta], [TipoContactoEncuesta], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (2, N'Digital', N'SISTEMA', CAST(N'2022-09-08T08:17:10.550' AS DateTime), N'SISTEMA', CAST(N'2022-10-06T14:42:26.730' AS DateTime), 1, N'A')
INSERT [dbo].[TipoContactoEncuesta] ([IdTipoContactoEncuesta], [TipoContactoEncuesta], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (3, N'Centro de Contacto', N'SISTEMA', CAST(N'2022-09-08T08:17:22.710' AS DateTime), N'SISTEMA', CAST(N'2022-10-06T14:42:26.950' AS DateTime), 1, N'A')
SET IDENTITY_INSERT [dbo].[TipoContactoEncuesta] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoIdentificacion] ON 

INSERT [dbo].[TipoIdentificacion] ([IdTipoIdentificacion], [TipoIdentificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (1, N'Cédula', N'SISTEMA', CAST(N'2022-10-06T14:36:37.753' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[TipoIdentificacion] ([IdTipoIdentificacion], [TipoIdentificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (2, N'DIMEX', N'SISTEMA', CAST(N'2022-10-06T14:36:41.400' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[TipoIdentificacion] ([IdTipoIdentificacion], [TipoIdentificacion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (3, N'Pasaporte', N'SISTEMA', CAST(N'2022-10-06T14:36:47.820' AS DateTime), NULL, NULL, 1, N'I')
SET IDENTITY_INSERT [dbo].[TipoIdentificacion] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoInteraccion] ON 

INSERT [dbo].[TipoInteraccion] ([IdTipoInteraccion], [TipoInteraccion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (1, N'Aprendizaje', N'SISTEMA', CAST(N'2022-09-29T10:06:06.007' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[TipoInteraccion] ([IdTipoInteraccion], [TipoInteraccion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (2, N'Compra', N'SISTEMA', CAST(N'2022-09-29T10:06:11.280' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[TipoInteraccion] ([IdTipoInteraccion], [TipoInteraccion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (3, N'Soporte', N'SISTEMA', CAST(N'2022-09-29T10:06:15.833' AS DateTime), NULL, NULL, 1, N'I')
INSERT [dbo].[TipoInteraccion] ([IdTipoInteraccion], [TipoInteraccion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (4, N'EXE', N'SISTEMA', CAST(N'2022-10-06T14:42:48.670' AS DateTime), N'SISTEMA', CAST(N'2022-10-06T14:42:58.023' AS DateTime), 0, N'A')
SET IDENTITY_INSERT [dbo].[TipoInteraccion] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoPerspectiva] ON 

INSERT [dbo].[TipoPerspectiva] ( [TipoPerspectiva], [Estado], [Accion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion]) VALUES (N'Investigación', 1, N'I', N'SISTEMA', CAST(N'2022-10-06T14:47:05.550' AS DateTime), NULL, NULL)
INSERT [dbo].[TipoPerspectiva] ( [TipoPerspectiva], [Estado], [Accion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion]) VALUES (N'Puntos de Vista', 1, N'I', N'SISTEMA', CAST(N'2022-10-06T14:47:12.590' AS DateTime), NULL, NULL)
INSERT [dbo].[TipoPerspectiva] ( [TipoPerspectiva], [Estado], [Accion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion]) VALUES (N'Tendencias', 1, N'I', N'SISTEMA', CAST(N'2022-10-06T14:47:19.070' AS DateTime), NULL, NULL)
INSERT [dbo].[TipoPerspectiva] ( [TipoPerspectiva], [Estado], [Accion], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion]) VALUES (N'General', 1, N'I', N'SISTEMA', CAST(N'2022-10-06T14:47:22.087' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TipoPerspectiva] OFF
GO  
SET IDENTITY_INSERT [dbo].[TiposEncuestas] ON 


INSERT [dbo].[TiposEncuestas] ([IdTipoEncuesta], [TipoEncuesta], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (1, N'Base', N'Sistema', CAST(N'2022-09-07T10:43:13.997' AS DateTime), N'SISTEMA', CAST(N'2022-09-29T10:09:02.860' AS DateTime), 0, N'E')
INSERT [dbo].[TiposEncuestas] ([IdTipoEncuesta], [TipoEncuesta], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (2, N'Seguimiento', N'Sistema', CAST(N'2022-09-07T10:43:25.793' AS DateTime), N'SISTEMA', CAST(N'2022-09-07T14:13:32.813' AS DateTime), 1, N'A')
INSERT [dbo].[TiposEncuestas] ([IdTipoEncuesta], [TipoEncuesta], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (3, N'Satisfacción', N'Sistema', CAST(N'2022-09-07T10:43:30.620' AS DateTime), N'SISTEMA', CAST(N'2022-09-07T14:13:33.127' AS DateTime), 1, N'A')
INSERT [dbo].[TiposEncuestas] ([IdTipoEncuesta], [TipoEncuesta], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (4, N'Perspectiva', N'Sistema', CAST(N'2022-09-07T10:43:37.230' AS DateTime), N'Sistema', CAST(N'2022-09-07T10:43:37.230' AS DateTime), 1, N'I')
INSERT [dbo].[TiposEncuestas] ([IdTipoEncuesta], [TipoEncuesta], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (5, N'Estrategia', N'Sistema', CAST(N'2022-09-07T10:43:43.040' AS DateTime), N'Sistema', CAST(N'2022-09-07T10:43:43.040' AS DateTime), 1, N'I')
INSERT [dbo].[TiposEncuestas] ([IdTipoEncuesta], [TipoEncuesta], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (6, N'Análisis', N'Sistema', CAST(N'2022-09-07T10:43:50.010' AS DateTime), N'SISTEMA', CAST(N'2022-09-08T07:25:11.737' AS DateTime), 1, N'A')
INSERT [dbo].[TiposEncuestas] ([IdTipoEncuesta], [TipoEncuesta], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (7, N'Diseño', N'Sistema', CAST(N'2022-09-07T10:43:55.140' AS DateTime), N'Sistema', CAST(N'2022-09-07T10:43:55.140' AS DateTime), 1, N'I')
INSERT [dbo].[TiposEncuestas] ([IdTipoEncuesta], [TipoEncuesta], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (8, N'Transformación', N'Sistema', CAST(N'2022-09-07T10:44:01.947' AS DateTime), N'Sistema', CAST(N'2022-09-07T10:44:01.947' AS DateTime), 1, N'I')
INSERT [dbo].[TiposEncuestas] ([IdTipoEncuesta], [TipoEncuesta], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (9, N'Inquietud', N'Sistema', CAST(N'2022-09-07T10:49:53.233' AS DateTime), N'SISTEMA', CAST(N'2022-09-07T14:37:41.530' AS DateTime), 0, N'A')
INSERT [dbo].[TiposEncuestas] ([IdTipoEncuesta], [TipoEncuesta], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (10, N'Evaluación', N'Sistema', CAST(N'2022-09-08T12:51:20.263' AS DateTime), N'Sistema', CAST(N'2022-09-08T12:51:20.263' AS DateTime), 1, N'I')
SET IDENTITY_INSERT [dbo].[TiposEncuestas] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposIndicadores] ON 

INSERT [dbo].[TiposIndicadores] ([TipoIndicador], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [Minimo], [Maximo], [Sigla], [IdTipoIndicador]) VALUES (N'Acceso a Información de los Servicios', N'Sistema', CAST(N'2022-09-08T13:08:48.503' AS DateTime), N'SISTEMA', CAST(N'2022-10-06T14:47:48.917' AS DateTime), 1, N'A', 1, 2, N'AIS', 1)
INSERT [dbo].[TiposIndicadores] ([TipoIndicador], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [Minimo], [Maximo], [Sigla], [IdTipoIndicador]) VALUES (N'Calificación de la Solución Implementada', N'Sistema', CAST(N'2022-09-08T13:09:12.810' AS DateTime), N'SISTEMA', CAST(N'2022-09-29T10:10:18.920' AS DateTime), 1, N'A', 0, 2, N'CSI', 2)
INSERT [dbo].[TiposIndicadores] ([TipoIndicador], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [Minimo], [Maximo], [Sigla], [IdTipoIndicador]) VALUES (N'Net Promoter Score', N'Sistema', CAST(N'2022-09-13T01:10:39.030' AS DateTime), N'SISTEMA', CAST(N'2022-09-29T12:05:09.990' AS DateTime), 1, N'A', 0, 5, N'NPS', 3)
INSERT [dbo].[TiposIndicadores] ([TipoIndicador], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [Minimo], [Maximo], [Sigla], [IdTipoIndicador]) VALUES (N'Percepcion de Marca', N'Sistema', CAST(N'2022-09-13T01:11:30.107' AS DateTime), N'SISTEMA', CAST(N'2022-09-29T10:10:23.673' AS DateTime), 1, N'A', 1, 10, N'PM', 4)
INSERT [dbo].[TiposIndicadores] ([TipoIndicador], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [Minimo], [Maximo], [Sigla], [IdTipoIndicador]) VALUES (N'Tiempo de Atención', N'Sistema', CAST(N'2022-09-13T08:03:52.047' AS DateTime), N'SISTEMA', CAST(N'2022-09-29T10:10:24.960' AS DateTime), 1, N'A', 1, 5, N'TDA', 5)
INSERT [dbo].[TiposIndicadores] ([TipoIndicador], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [Minimo], [Maximo], [Sigla], [IdTipoIndicador]) VALUES (N'asd', N'Sistema', CAST(N'2022-09-13T11:32:23.980' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:49:44.197' AS DateTime), 1, N'A', 0, 1, N'asd', 6)
INSERT [dbo].[TiposIndicadores] ([TipoIndicador], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [Minimo], [Maximo], [Sigla], [IdTipoIndicador]) VALUES (N'A', N'Sistema', CAST(N'2022-09-13T11:46:00.257' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:49:44.037' AS DateTime), 1, N'A', 0, 1, N'A', 7)
INSERT [dbo].[TiposIndicadores] ([TipoIndicador], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [Minimo], [Maximo], [Sigla], [IdTipoIndicador]) VALUES (N'Satisfaccion', N'Sistema', CAST(N'2022-09-13T13:39:23.313' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T13:49:43.720' AS DateTime), 1, N'A', 0, 10, N'STF', 8)
INSERT [dbo].[TiposIndicadores] ([TipoIndicador], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [Minimo], [Maximo], [Sigla], [IdTipoIndicador]) VALUES (N'Calidad del Servicio', N'Sistema', CAST(N'2022-10-05T13:49:17.177' AS DateTime), N'Sistema', CAST(N'2022-10-05T13:49:17.177' AS DateTime), 1, N'I', 1, 4, N'CS', 1006)
INSERT [dbo].[TiposIndicadores] ([TipoIndicador], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [Minimo], [Maximo], [Sigla], [IdTipoIndicador]) VALUES (N'EXE', N'Sistema', CAST(N'2022-10-05T13:50:30.700' AS DateTime), N'Sistema', CAST(N'2022-10-05T13:50:30.700' AS DateTime), 1, N'I', 1, 2, N'XD', 1007)
SET IDENTITY_INSERT [dbo].[TiposIndicadores] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposMetricas] ON 

INSERT [dbo].[TiposMetricas] ([IdTipoMetrica], [Tipo], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [Descripcion]) VALUES (1, N'Cuantitativa', N'Sistema', CAST(N'2022-10-05T11:07:00.490' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T11:25:38.270' AS DateTime), 1, N'A', N'Relación')
INSERT [dbo].[TiposMetricas] ([IdTipoMetrica], [Tipo], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [Descripcion]) VALUES (2, N'Cuantitativa', N'Sistema', CAST(N'2022-10-05T11:14:16.103' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T11:25:38.003' AS DateTime), 1, N'A', N'Proyecto')
INSERT [dbo].[TiposMetricas] ([IdTipoMetrica], [Tipo], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion], [Descripcion]) VALUES (3, N'Cualitativa', N'Sistema', CAST(N'2022-10-05T11:22:56.220' AS DateTime), N'SISTEMA', CAST(N'2022-10-05T11:25:37.683' AS DateTime), 1, N'A', N'Inducción')
SET IDENTITY_INSERT [dbo].[TiposMetricas] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposPersonas] ON 

INSERT [dbo].[TiposPersonas] ([IdTipoPersona], [TipoPersona], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (1, N'Física', N'SISTEMA', CAST(N'2022-09-05T11:01:52.300' AS DateTime), N'SISTEMA', CAST(N'2022-10-06T14:33:22.030' AS DateTime), 1, N'A')
INSERT [dbo].[TiposPersonas] ([IdTipoPersona], [TipoPersona], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (2, N'Jurídica', N'SISTEMA', CAST(N'2022-09-05T11:01:58.987' AS DateTime), N'SISTEMA', CAST(N'2022-09-05T11:01:58.987' AS DateTime), 1, N' ')
INSERT [dbo].[TiposPersonas] ([IdTipoPersona], [TipoPersona], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (38, N'Sociedad Anónima', N'SISTEMA', CAST(N'2022-10-06T14:33:30.203' AS DateTime), N'SISTEMA', CAST(N'2022-10-06T14:33:30.203' AS DateTime), 1, N'I')
SET IDENTITY_INSERT [dbo].[TiposPersonas] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposTalleres] ON 

INSERT [dbo].[TiposTalleres] ([IdTipoTaller], [TipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (1, N'Base', N'SISTEMA', CAST(N'2022-08-05T10:18:04.160' AS DateTime), N'SISTEMA', CAST(N'2022-09-09T09:09:21.947' AS DateTime), 1, N'A')
INSERT [dbo].[TiposTalleres] ([IdTipoTaller], [TipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (2, N'Seguimientos', N'SISTEMA', CAST(N'2022-08-05T10:27:11.080' AS DateTime), N'SISTEMA', CAST(N'2022-09-07T09:46:55.717' AS DateTime), 1, N'A')
INSERT [dbo].[TiposTalleres] ([IdTipoTaller], [TipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (3, N'Satisfaccióna', N'SISTEMA', CAST(N'2022-08-05T10:27:27.607' AS DateTime), N'SISTEMA', CAST(N'2022-09-07T09:37:12.193' AS DateTime), 1, N'A')
INSERT [dbo].[TiposTalleres] ([IdTipoTaller], [TipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (4, N'Perspectivaa', N'SISTEMA', CAST(N'2022-08-05T10:27:39.707' AS DateTime), N'SISTEMA', CAST(N'2022-09-07T09:46:58.637' AS DateTime), 1, N'A')
INSERT [dbo].[TiposTalleres] ([IdTipoTaller], [TipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (5, N'Pirámide de Atributos', N'SISTEMA', CAST(N'2022-08-05T10:27:53.387' AS DateTime), N'SISTEMA', CAST(N'2022-08-17T12:30:58.997' AS DateTime), 1, N'A')
INSERT [dbo].[TiposTalleres] ([IdTipoTaller], [TipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (6, N'Análisis', N'SISTEMA', CAST(N'2022-08-05T10:28:13.490' AS DateTime), N'SISTEMA', CAST(N'2022-09-09T09:09:32.297' AS DateTime), 1, N'A')
INSERT [dbo].[TiposTalleres] ([IdTipoTaller], [TipoTaller], [IngresadoPor], [FechaIngreso], [ModificadoPor], [FechaModificacion], [Estado], [Accion]) VALUES (9, N'a', N'SISTEMA', CAST(N'2022-08-25T12:41:40.803' AS DateTime), N'SISTEMA', CAST(N'2022-09-09T09:09:35.443' AS DateTime), 0, N'E')
SET IDENTITY_INSERT [dbo].[TiposTalleres] OFF
GO
ALTER TABLE [dbo].[TiposMetricas] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[TiposMetricas] ADD  DEFAULT ('A') FOR [Accion]
GO
ALTER TABLE [dbo].[TiposMetricas] ADD  DEFAULT ('A') FOR [Descripcion]
GO
ALTER TABLE [dbo].[TiposPersonas] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[TiposPersonas] ADD  DEFAULT ('') FOR [Accion]
GO
ALTER TABLE [dbo].[TiposPerspectivas] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[TiposPerspectivas] ADD  DEFAULT ('A') FOR [Accion]
GO
ALTER TABLE [dbo].[Campanas]  WITH CHECK ADD FOREIGN KEY([IdDireccion])
REFERENCES [dbo].[Direcciones] ([IdDireccion])
GO
ALTER TABLE [dbo].[Campanas]  WITH CHECK ADD FOREIGN KEY([IdEncuesta])
REFERENCES [dbo].[Encuestas] ([IdEncuesta])
GO
ALTER TABLE [dbo].[Campanas]  WITH CHECK ADD  CONSTRAINT [FK__Campanas__IdFase__02FC7413] FOREIGN KEY([IdFase])
REFERENCES [dbo].[FasesServicios] ([IdFase])
GO
ALTER TABLE [dbo].[Campanas] CHECK CONSTRAINT [FK__Campanas__IdFase__02FC7413]
GO
ALTER TABLE [dbo].[Campanas]  WITH CHECK ADD  CONSTRAINT [FK__Campanas__IdSoci__03F0984C] FOREIGN KEY([IdFase])
REFERENCES [dbo].[FasesServicios] ([IdFase])
GO
ALTER TABLE [dbo].[Campanas] CHECK CONSTRAINT [FK__Campanas__IdSoci__03F0984C]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK__Clientes__IdCate__04E4BC85] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([IdCategoria])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK__Clientes__IdCate__04E4BC85]
GO
ALTER TABLE [dbo].[ClientesServicios]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
ALTER TABLE [dbo].[ClientesServicios]  WITH CHECK ADD  CONSTRAINT [FK__ClientesS__Idlin__06CD04F7] FOREIGN KEY([Idlinea])
REFERENCES [dbo].[LineasNegocio] ([IdLinea])
GO
ALTER TABLE [dbo].[ClientesServicios] CHECK CONSTRAINT [FK__ClientesS__Idlin__06CD04F7]
GO
ALTER TABLE [dbo].[Encuestas]  WITH CHECK ADD FOREIGN KEY([IdPreguntaEncuesta])
REFERENCES [dbo].[PreguntasEncuestas] ([IdPreguntaEncuesta])
GO
ALTER TABLE [dbo].[Encuestas]  WITH CHECK ADD FOREIGN KEY([IdTipoEncuesta])
REFERENCES [dbo].[TiposEncuestas] ([IdTipoEncuesta])
GO
ALTER TABLE [dbo].[EtapasTalleres]  WITH CHECK ADD  CONSTRAINT [FK__EtapasTal__IdTip__09A971A2] FOREIGN KEY([IdTipoTaller])
REFERENCES [dbo].[TiposTalleres] ([IdTipoTaller])
GO
ALTER TABLE [dbo].[EtapasTalleres] CHECK CONSTRAINT [FK__EtapasTal__IdTip__09A971A2]
GO
ALTER TABLE [dbo].[Formulario]  WITH CHECK ADD  CONSTRAINT [FK__Formulari__IdCan__0B91BA14] FOREIGN KEY([IdCanal])
REFERENCES [dbo].[Canales] ([IdCanal])
GO
ALTER TABLE [dbo].[Formulario] CHECK CONSTRAINT [FK__Formulari__IdCan__0B91BA14]
GO
ALTER TABLE [dbo].[Formulario]  WITH CHECK ADD  CONSTRAINT [FK__Formulari__IdCat__0C85DE4D] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([IdCategoria])
GO
ALTER TABLE [dbo].[Formulario] CHECK CONSTRAINT [FK__Formulari__IdCat__0C85DE4D]
GO
ALTER TABLE [dbo].[Formulario]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
ALTER TABLE [dbo].[Formulario]  WITH CHECK ADD  CONSTRAINT [FK__Formulari__IdFas__0E6E26BF] FOREIGN KEY([IdFase])
REFERENCES [dbo].[FasesServicios] ([IdFase])
GO
ALTER TABLE [dbo].[Formulario] CHECK CONSTRAINT [FK__Formulari__IdFas__0E6E26BF]
GO
ALTER TABLE [dbo].[Formulario]  WITH CHECK ADD  CONSTRAINT [FK__Formulari__IdLin__0F624AF8] FOREIGN KEY([IdLinea])
REFERENCES [dbo].[LineasNegocio] ([IdLinea])
GO
ALTER TABLE [dbo].[Formulario] CHECK CONSTRAINT [FK__Formulari__IdLin__0F624AF8]
GO
ALTER TABLE [dbo].[Formulario]  WITH CHECK ADD FOREIGN KEY([IdSector])
REFERENCES [dbo].[Sectores] ([IdSector])
GO
ALTER TABLE [dbo].[Formulario]  WITH CHECK ADD FOREIGN KEY([IdSegmento])
REFERENCES [dbo].[Segmentos] ([IdSegmento])
GO
ALTER TABLE [dbo].[Formulario]  WITH CHECK ADD  CONSTRAINT [FK__Formulari__IdSer__123EB7A3] FOREIGN KEY([IdServicio])
REFERENCES [dbo].[Servicios] ([IdServicio])
GO
ALTER TABLE [dbo].[Formulario] CHECK CONSTRAINT [FK__Formulari__IdSer__123EB7A3]
GO
ALTER TABLE [dbo].[Formulario]  WITH CHECK ADD  CONSTRAINT [FK__Formulari__IdSoc__1332DBDC] FOREIGN KEY([IdSocioContacto])
REFERENCES [dbo].[SociosContactos] ([IdSocioContacto])
GO
ALTER TABLE [dbo].[Formulario] CHECK CONSTRAINT [FK__Formulari__IdSoc__1332DBDC]
GO
ALTER TABLE [dbo].[Hallazgos]  WITH CHECK ADD  CONSTRAINT [FK__Hallazgos__IdArq__14270015] FOREIGN KEY([IdArquetipo])
REFERENCES [dbo].[Arquetipos] ([IdArquetipo])
GO
ALTER TABLE [dbo].[Hallazgos] CHECK CONSTRAINT [FK__Hallazgos__IdArq__14270015]
GO
ALTER TABLE [dbo].[Hallazgos]  WITH CHECK ADD  CONSTRAINT [FK__Hallazgos__IdEst__151B244E] FOREIGN KEY([IdEstadoAceptacion])
REFERENCES [dbo].[EstadosAceptacion] ([IdEstadoAceptacion])
GO
ALTER TABLE [dbo].[Hallazgos] CHECK CONSTRAINT [FK__Hallazgos__IdEst__151B244E]
GO
ALTER TABLE [dbo].[Hallazgos]  WITH CHECK ADD  CONSTRAINT [FK__Hallazgos__IdFas__160F4887] FOREIGN KEY([IdFaseCJ])
REFERENCES [dbo].[FasesCustomerJorney] ([IdFaseCJ])
GO
ALTER TABLE [dbo].[Hallazgos] CHECK CONSTRAINT [FK__Hallazgos__IdFas__160F4887]
GO
ALTER TABLE [dbo].[Hallazgos]  WITH CHECK ADD  CONSTRAINT [FK__Hallazgos__IdGra__17036CC0] FOREIGN KEY([IdGradoImpacto])
REFERENCES [dbo].[GradosImpacto] ([IdGradoImpacto])
GO
ALTER TABLE [dbo].[Hallazgos] CHECK CONSTRAINT [FK__Hallazgos__IdGra__17036CC0]
GO
ALTER TABLE [dbo].[Hallazgos]  WITH CHECK ADD  CONSTRAINT [FK__Hallazgos__IdGra__17F790F9] FOREIGN KEY([IdGradoEsfuerzo])
REFERENCES [dbo].[GradosEsfuerzo] ([IdGradoEsfuerzo])
GO
ALTER TABLE [dbo].[Hallazgos] CHECK CONSTRAINT [FK__Hallazgos__IdGra__17F790F9]
GO
ALTER TABLE [dbo].[Hallazgos]  WITH CHECK ADD  CONSTRAINT [FK__Hallazgos__IdLin__18EBB532] FOREIGN KEY([IdLinea])
REFERENCES [dbo].[LineasNegocio] ([IdLinea])
GO
ALTER TABLE [dbo].[Hallazgos] CHECK CONSTRAINT [FK__Hallazgos__IdLin__18EBB532]
GO
ALTER TABLE [dbo].[Hallazgos]  WITH CHECK ADD  CONSTRAINT [FK__Hallazgos__IdMac__19DFD96B] FOREIGN KEY([IdMacro])
REFERENCES [dbo].[MacrosActividades] ([IdMacro])
GO
ALTER TABLE [dbo].[Hallazgos] CHECK CONSTRAINT [FK__Hallazgos__IdMac__19DFD96B]
GO
ALTER TABLE [dbo].[Hallazgos]  WITH CHECK ADD  CONSTRAINT [FK__Hallazgos__IdMet__1AD3FDA4] FOREIGN KEY([IdMetodologia])
REFERENCES [dbo].[MetodologiasExperienciaCliente] ([IdMetodologia])
GO
ALTER TABLE [dbo].[Hallazgos] CHECK CONSTRAINT [FK__Hallazgos__IdMet__1AD3FDA4]
GO
ALTER TABLE [dbo].[Hallazgos]  WITH CHECK ADD  CONSTRAINT [FK__Hallazgos__IdRan__1BC821DD] FOREIGN KEY([IdRangoEdad])
REFERENCES [dbo].[RangosEdad] ([IdRangoEdad])
GO
ALTER TABLE [dbo].[Hallazgos] CHECK CONSTRAINT [FK__Hallazgos__IdRan__1BC821DD]
GO
ALTER TABLE [dbo].[Hallazgos]  WITH CHECK ADD  CONSTRAINT [FK__Hallazgos__IdSer__1CBC4616] FOREIGN KEY([IdServicio])
REFERENCES [dbo].[Servicios] ([IdServicio])
GO
ALTER TABLE [dbo].[Hallazgos] CHECK CONSTRAINT [FK__Hallazgos__IdSer__1CBC4616]
GO
ALTER TABLE [dbo].[Hallazgos]  WITH CHECK ADD  CONSTRAINT [FK__Hallazgos__IdTam__1DB06A4F] FOREIGN KEY([IdTamanoEmpresa])
REFERENCES [dbo].[TamanosEmpresa] ([IdTamanoEmpresa])
GO
ALTER TABLE [dbo].[Hallazgos] CHECK CONSTRAINT [FK__Hallazgos__IdTam__1DB06A4F]
GO
ALTER TABLE [dbo].[Hallazgos]  WITH CHECK ADD  CONSTRAINT [FK__Hallazgos__IdTit__1EA48E88] FOREIGN KEY([IdTituloAcademico])
REFERENCES [dbo].[RangosTituloAcademico] ([IdTituloAcademico])
GO
ALTER TABLE [dbo].[Hallazgos] CHECK CONSTRAINT [FK__Hallazgos__IdTit__1EA48E88]
GO
ALTER TABLE [dbo].[Jefaturas]  WITH CHECK ADD  CONSTRAINT [FK_Jefaturas_Direcciones] FOREIGN KEY([IdDireccion])
REFERENCES [dbo].[Direcciones] ([IdDireccion])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Jefaturas] CHECK CONSTRAINT [FK_Jefaturas_Direcciones]
GO
ALTER TABLE [dbo].[PreguntasEncuestas]  WITH CHECK ADD  CONSTRAINT [FK__Preguntas__IdFas__1F98B2C1] FOREIGN KEY([IdFase])
REFERENCES [dbo].[FasesServicios] ([IdFase])
GO
ALTER TABLE [dbo].[PreguntasEncuestas] CHECK CONSTRAINT [FK__Preguntas__IdFas__1F98B2C1]
GO
ALTER TABLE [dbo].[PreguntasEncuestas]  WITH CHECK ADD FOREIGN KEY([IdTipoMetrica])
REFERENCES [dbo].[TiposMetricas] ([IdTipoMetrica])
GO
ALTER TABLE [dbo].[PreguntasEncuestas]  WITH CHECK ADD FOREIGN KEY([IdTipoIndicador])
REFERENCES [dbo].[TiposIndicadores] ([IdTipoIndicador])
GO
ALTER TABLE [dbo].[PreguntasEncuestas]  WITH CHECK ADD FOREIGN KEY([IdTipoPerspectiva])
REFERENCES [dbo].[TiposPerspectivas] ([IdTipoPerspectiva])
GO
ALTER TABLE [dbo].[PreguntasEncuestas]  WITH CHECK ADD FOREIGN KEY([IdTipoEncuesta])
REFERENCES [dbo].[TiposEncuestas] ([IdTipoEncuesta])
GO
ALTER TABLE [dbo].[RangosTituloAcademico]  WITH CHECK ADD FOREIGN KEY([IdRangoAcademico])
REFERENCES [dbo].[RangosNivelAcademico] ([IdRangoAcademico])
GO
ALTER TABLE [dbo].[Segmentos]  WITH CHECK ADD FOREIGN KEY([IdSector])
REFERENCES [dbo].[Sectores] ([IdSector])
GO
ALTER TABLE [dbo].[Servicios]  WITH CHECK ADD  CONSTRAINT [FK__Servicios__IdLin__2645B050] FOREIGN KEY([IdLinea])
REFERENCES [dbo].[LineasNegocio] ([IdLinea])
GO
ALTER TABLE [dbo].[Servicios] CHECK CONSTRAINT [FK__Servicios__IdLin__2645B050]
GO
ALTER TABLE [dbo].[ServiciosSocios]  WITH CHECK ADD FOREIGN KEY([IdLinea])
REFERENCES [dbo].[LineasNegocio] ([IdLinea])
GO
ALTER TABLE [dbo].[ServiciosSocios]  WITH CHECK ADD FOREIGN KEY([IdServicio])
REFERENCES [dbo].[Servicios] ([IdServicio])
GO
ALTER TABLE [dbo].[ServiciosSocios]  WITH CHECK ADD FOREIGN KEY([IdSocio])
REFERENCES [dbo].[Socios] ([IdSocio])
GO
ALTER TABLE [dbo].[Socios]  WITH CHECK ADD  CONSTRAINT [FK__Socios__IdTip__282DF8C2] FOREIGN KEY([IdTipoPersona])
REFERENCES [dbo].[TiposPersonas] ([IdTipoPersona])
GO
ALTER TABLE [dbo].[Socios] CHECK CONSTRAINT [FK__Socios__IdTip__282DF8C2]
GO
ALTER TABLE [dbo].[SociosContactos]  WITH CHECK ADD  CONSTRAINT [FK__SociosCon__IdTip__282DF8C2] FOREIGN KEY([IdTipoPersona])
REFERENCES [dbo].[TiposPersonas] ([IdTipoPersona])
GO
ALTER TABLE [dbo].[SociosContactos] CHECK CONSTRAINT [FK__SociosCon__IdTip__282DF8C2]
GO
ALTER TABLE [dbo].[SociosServicios]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
ALTER TABLE [dbo].[SociosServicios]  WITH CHECK ADD  CONSTRAINT [FK__SociosSer__Idlin__2A164134] FOREIGN KEY([Idlinea])
REFERENCES [dbo].[LineasNegocio] ([IdLinea])
GO
ALTER TABLE [dbo].[SociosServicios] CHECK CONSTRAINT [FK__SociosSer__Idlin__2A164134]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDDL]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--#################################################################################################
-- Real World DBA Toolkit Version 2019-08-01 Lowell Izaguirre lowell@stormrage.com
--#################################################################################################
-- USAGE: exec sp_GetDDL GMACT
--   or   exec sp_GetDDL 'bob.example'
--   or   exec sp_GetDDL '[schemaname].[tablename]'
--   or   exec sp_GetDDL #temp
--#################################################################################################
-- copyright 2004-2018 by Lowell Izaguirre scripts*at*stormrage.com all rights reserved.
--developer utility function added by Lowell, used in SQL Server Management Studio
-- http://www.stormrage.com/SQLStuff/sp_GetDDL_Latest.txt
--Purpose: Script Any Table, Temp Table or Object(Procedure Function Synonym View Table Trigger)
--#################################################################################################
-- see the thread here for lots of details: http://www.sqlservercentral.com/Forums/Topic751783-566-7.aspx
-- You can use this however you like...this script is not rocket science, but it took a bit of work to create.
-- the only thing that I ask
-- is that if you adapt my procedure or make it better, to simply send me a copy of it,
-- so I can learn from the things you've enhanced.The feedback you give will be what makes
-- it worthwhile to me, and will be fed back to the SQL community.
-- add this to your toolbox of helpful scripts.
--#################################################################################################
--
-- V300  uses String concatination and sys.tables instead of a cursor
-- V301  enhanced 07/31/2009 to include extended properties definitions
-- V302  fixes an issue where the schema is created , ie 'bob', but no user named 'bob' owns the schema, so the table is not found
-- V303  fixes an issue where all rules are appearing, instead of jsut the rule related to a column
-- V304  testing whether vbCrLf is better than just CHAR(13), some formatting cleanup with GO statements
--       also fixed an issue with the conversion from syscolumns to sys.columns, max-length is only field we need, not [precision]
-- V305  user feedback helped me find that the type_name function should call user_type_id instead of system_type_id
--       also fixed issue where identity definition missing from numeric/decimal definition
-- V306  fixes the computed columns definition that got broken/removed somehow in V300
--       also formatting when decimal is not an identity
-- V307  fixes bug identified by David Griffiths-491597 from SSC where the  @TABLE_ID
--       is reselected, but without it's schema  , potentially selecting the wrong table
--       also fixed is the missing size definition for varbinary, also found by David Griffith
-- V308  abtracted all SQLs to use Table Alaises
--       added logic to script a temp table.
--       added warning about possibly not being marked as system object.
-- V309  added logic based on feedback from Vincent Wylenzek @SSC to return the definition from sys.sql_modules for
--       any object like procedure/view/function/trigger, and not just a table.
--       note previously, if you pointed sp_GetDDL at a view, it returned the view definition as a table...
--       now it will return the view definition instead.
-- V309a returns multi row recordset, one line per record
-- V310a fixed the commented out code related to collation identified by moadh.bs @SSC
--       changed the DEFAULT definitions to not include the default name.
-- V310b Added PERSISTED to calculated columns where applicable
-- V310b fixed COLLATE statement for temp tables
-- V310c fixed NVARCHAR size misreported as doubled.
-- V311  fixed issue where indexes did not identify if the column was ASC or DESC found by nikus @ SSC
-- V311a fixed issue where indexes did not identify if the index was CLUSTERED or NONCLUSTERED found by nikus @ SSC 02/22/2013
-- V312  got rid of all upper casing, and allowing all scripts to generate the exact object names in cases of case sensitive databases.
--       now using the case sensitive name of the table passed: so of you did 'exec sp_GetDDL invoicedocs , it might return the script for InvoiceDocs, as that is how it is spelled in sys.objects.
--       added if exists(drop table/procedure/function) statement to the scripting automatically.
--       toggled the commented out code to list any default constraints by name, hopefully to be more accurate..
--       formatting of index statements to be multi line for better readability
--V314   03/30/2015
--       did i mention this scripts out temp tables too? sp_GetDDL #tmp
--       scripts any object:table,#temptable procedure, function, view or trigger
--       added ability to script synonyms
--       moved logic for REAL datatype to fix error when scripting real columns
--       added OmaCoders suggestion to script column extended properties as well.
--       added matt_slack suggestion to script schemaname as part of index portion of script.
--       minor script cleanup to use QUOTENAME insead of concatenating square brackets.
--       changed compatibility to 2008 and above only, now filtered idnexes with WHERE statmeents script correctly
--       foreign key tables and columns  in script now quotenamed to account for spaces in names; previously an error for Applciation ID instead of [Application ID]
--V315   Fixes Aliases and column names that prevented Case Sensitive collations from working.
--       Adds code if the procedure scripted is a system object
--       index scripts featuring filtered indexes is now included
--       index scripts now include filegroup name and compression settings
--       foreign key casecade delete/update settings now included as identified by Alberto aserio@SSC)
--       Fixes related to scripting extended events  as identified by Alberto aserio@SSC)
--V316   Fixes Identified 07/27/2016 by mlm( m.martinelli@SSC)
--       Added logic  resolving error when custom data type are defined using name greather than 16 char.
--       Added handling for data types: binary, datetime2, datetimeoffset, time
--       Added Set Based logic for Handling Fixed FOREIGN KEYS handling when one foreign key is define on more then one field
--       Added SPARSE column property
--V317   Fixes Identified 03/30/2017 by Lowell
--       Scripting of Foreign key column(s) are now quotenamed
--       Scripting column store indexes was broken, now fixed for column store indexes
--V318   Fixes Identified 02/14/2018 by Lowell
--       Scripting of with collation added/required for scripting SharePoint/ReportServer , or databases with non standard collations
--       Scripting enhanced to definitively handle case sensitive collations as well.
--V319   Adding logic for Temporal Tables, to grab their auto nistory tables
--       first attempt for partitioned tables, to get the columns correctly on the partition scheme
-- DROP PROCEDURE [dbo].[sp_GetDDL]
--#############################################################################
--if you are going to put this in MASTER, and want it to be able to query
--each database's sys.indexes, you MUST mark it as a system procedure:
--EXECUTE sp_ms_marksystemobject 'sp_GetDDL'
--#############################################################################
-- REMOVE TWO LINES WHERE IS THE TEXT 'FROM master.sys.objects'
-- REPLACE HEADER  'CREATE OR ALTER PROCEDURE [dbo].[sp_GetDDL]'

CREATE   PROCEDURE [dbo].[sp_GetDDL]
  @TBL                VARCHAR(255)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE     @TBLNAME                VARCHAR(200),
              @SCHEMANAME             VARCHAR(255),
              @STRINGLEN              INT,
              @TABLE_ID               INT,
              @FINALSQL               VARCHAR(MAX),
              @CONSTRAINTSQLS         VARCHAR(MAX),
              @CHECKCONSTSQLS         VARCHAR(MAX),
              @RULESCONSTSQLS         VARCHAR(MAX),
              @FKSQLS                 VARCHAR(MAX),
              @TRIGGERSTATEMENT       VARCHAR(MAX),
              @EXTENDEDPROPERTIES     VARCHAR(MAX),
              @INDEXSQLS              VARCHAR(MAX),
              @MARKSYSTEMOBJECT       VARCHAR(MAX),
              @vbCrLf                 CHAR(2),
              @ISSYSTEMOBJECT         INT,
              @PROCNAME               VARCHAR(256),
              @input                  VARCHAR(MAX),
              @ObjectTypeFound        VARCHAR(255),
              @ObjectDataTypeLen      INT,
              --V3.20 additions
              @WithStatement          VARCHAR(MAX),
              @FileGroupStatement     VARCHAR(MAX),
              @PartitioningStatement  VARCHAR(MAX),
              @TemporalStatement      VARCHAR(MAX);
--##############################################################################
-- INITIALIZE
--##############################################################################
  SET @input = '';
  --new code: determine whether this proc is marked as a system proc with sp_ms_marksystemobject,
  --which flips the is_ms_shipped bit in sys.objects
    SELECT @ISSYSTEMOBJECT = ISNULL([is_ms_shipped],0),@PROCNAME = ISNULL([name],'sp_GetDDL') FROM [sys].[objects] WHERE [object_id] = @@PROCID;
  IF @ISSYSTEMOBJECT IS NULL
    SET @ISSYSTEMOBJECT = 0;
  IF @PROCNAME IS NULL
    SET @PROCNAME = 'sp_GetDDL';
  --SET @TBL =  '[DBO].[WHATEVER1]'
  --does the tablename contain a schema?
  SET @vbCrLf =  CHAR(10);
  SELECT @SCHEMANAME = ISNULL(PARSENAME(@TBL,2),'dbo') ,
         @TBLNAME    = PARSENAME(@TBL,1);
  SELECT
    @TBLNAME    = [objz].[name],
    @TABLE_ID   = [objz].[object_id]
  FROM [sys].[objects] AS [objz]
  WHERE [objz].[type]          IN ('S','U')
    AND [objz].[name]          <>  'dtproperties'
    AND [objz].[name]           =  @TBLNAME
    AND [objz].[schema_id] =  SCHEMA_ID(@SCHEMANAME) ;
 SELECT @ObjectDataTypeLen = MAX(LEN([name])) FROM [sys].[types];
--##############################################################################
-- Check If TEMP TableName is Valid
--##############################################################################
  IF LEFT(@TBLNAME,1) = '#'  COLLATE SQL_Latin1_General_CP1_CI_AS
    BEGIN
      PRINT '--TEMP TABLE  ' + QUOTENAME(@TBLNAME) + '  FOUND';
      IF OBJECT_ID('tempdb..' + QUOTENAME(@TBLNAME)) IS NOT NULL
        BEGIN
          PRINT '--GOIN TO TEMP PROCESSING';
          GOTO TEMPPROCESS;
        END;
    END;
  ELSE
    BEGIN
      PRINT '--Non-Temp Table, ' + QUOTENAME(@TBLNAME) + ' continue Processing';
    END;
--##############################################################################
-- Check If TableName is Valid
--##############################################################################
  IF ISNULL(@TABLE_ID,0) = 0
    BEGIN
      --V309 code: see if it is an object and not a table.
      SELECT
        @TBLNAME    = [objz].[name],
        @TABLE_ID   = [objz].[object_id],
        @ObjectTypeFound = [objz].[type_desc]
      FROM [sys].[objects] AS [objz]
      --WHERE [type_desc]     IN('SQL_STORED_PROCEDURE','VIEW','SQL_TRIGGER','AGGREGATE_FUNCTION','SQL_INLINE_TABLE_VALUED_FUNCTION','SQL_TABLE_VALUED_FUNCTION','SQL_SCALAR_FUNCTION','SYNONYMN')
      WHERE [objz].[type]          IN ('P','V','TR','AF','IF','FN','TF','SN')
        AND [objz].[name]          <>  'dtproperties'
        AND [objz].[name]           =  @TBLNAME
        AND [objz].[schema_id] =  SCHEMA_ID(@SCHEMANAME) ;
      IF ISNULL(@TABLE_ID,0) <> 0
        BEGIN
          --adding a drop statement.
          --adding a sp_ms_marksystemobject if needed
          SELECT @MARKSYSTEMOBJECT = CASE
                                       WHEN [objz].[is_ms_shipped] = 1
                                       THEN '
GO
--#################################################################################################
--Mark as a system object
EXECUTE sp_ms_marksystemobject  ''' + QUOTENAME(@SCHEMANAME) +'.' + QUOTENAME(@TBLNAME) + '''
--#################################################################################################
'
                                       ELSE '
GO
'
                                     END
          FROM [sys].[objects] AS [objz]
          WHERE [objz].[object_id] = @TABLE_ID;
          --adding a drop statement.
          IF @ObjectTypeFound = 'SYNONYM'  COLLATE SQL_Latin1_General_CP1_CI_AS
            BEGIN
               SELECT @FINALSQL =
                'IF EXISTS(SELECT * FROM sys.synonyms WHERE name = '''
                                + [name]
                                + ''''
                                + ' AND base_object_name <> ''' + [base_object_name] + ''')'
                                + @vbCrLf
                                + '  DROP SYNONYM ' + QUOTENAME([name]) + ''
                                + @vbCrLf
                                +'GO'
                                + @vbCrLf
                                +'IF NOT EXISTS(SELECT * FROM sys.synonyms WHERE name = '''
                                + [name]
                                + ''')'
                                + @vbCrLf
                                + 'CREATE SYNONYM ' + QUOTENAME([name]) + ' FOR ' + [base_object_name] +';'
                                FROM [sys].[synonyms]
                                WHERE  [name]   =  @TBLNAME
                                AND [schema_id] =  SCHEMA_ID(@SCHEMANAME);
            END;
          ELSE
            BEGIN
          SELECT @FINALSQL =
          'IF OBJECT_ID(''' + QUOTENAME(@SCHEMANAME) + '.' + QUOTENAME(@TBLNAME) + ''') IS NOT NULL ' + @vbCrLf
          + 'DROP ' + CASE
                        WHEN [objz].[type] IN ('P')
                        THEN ' PROCEDURE '
                        WHEN [objz].[type] IN ('V')
                        THEN ' VIEW      '
                        WHEN [objz].[type] IN ('TR')
                        THEN ' TRIGGER   '
                        ELSE ' FUNCTION  '
                      END
                      + QUOTENAME(@SCHEMANAME) + '.' + QUOTENAME(@TBLNAME) + ' ' + @vbCrLf + 'GO' + @vbCrLf
          + [def].[definition] + @MARKSYSTEMOBJECT
          FROM [sys].[objects] AS [objz]
            INNER JOIN [sys].[sql_modules] AS [def]
              ON [objz].[object_id] = [def].[object_id]
          WHERE [objz].[type]          IN ('P','V','TR','AF','IF','FN','TF')
            AND [objz].[name]          <>  'dtproperties'
            AND [objz].[name]           =  @TBLNAME
            AND [objz].[schema_id] =  SCHEMA_ID(@SCHEMANAME) ;
            END;
          SET @input = @FINALSQL
            --ten years worth of days from todays date:
         ;WITH [E01]([N]) AS (SELECT 1 UNION ALL SELECT 1 UNION ALL
                          SELECT 1 UNION ALL SELECT 1 UNION ALL
                          SELECT 1 UNION ALL SELECT 1 UNION ALL
                          SELECT 1 UNION ALL SELECT 1 UNION ALL
                          SELECT 1 UNION ALL SELECT 1), --         10 or 10E01 rows
               [E02]([N]) AS (SELECT 1 FROM [E01] AS [a], [E01] AS [b]),  --        100 or 10E02 rows
               [E04]([N]) AS (SELECT 1 FROM [E02] AS [a], [E02] AS [b]),  --     10,000 or 10E04 rows
               [E08]([N]) AS (SELECT 1 FROM [E04] AS [a], [E04] AS [b]),  --100,000,000 or 10E08 rows
               --E16(N) AS (SELECT 1 FROM E08 a, E08 b),  --10E16 or more rows than you'll EVER need,
               [Tally]([N]) AS (SELECT ROW_NUMBER() OVER (ORDER BY [E08].[N]) FROM [E08]),
             [ItemSplit](
                       [ItemOrder],
                       [Item]
                      ) AS (
                            SELECT [Tally].[N],
                              SUBSTRING(@vbCrLf + @input + @vbCrLf,[Tally].[N] + DATALENGTH(@vbCrLf),CHARINDEX(@vbCrLf,@vbCrLf + @input + @vbCrLf,[Tally].[N] + DATALENGTH(@vbCrLf)) - [Tally].[N] - DATALENGTH(@vbCrLf))
                            FROM [Tally]
                            WHERE [Tally].[N] < DATALENGTH(@vbCrLf + @input)
                            --WHERE N < DATALENGTH(@vbCrLf + @input) -- REMOVED added @vbCrLf
                              AND SUBSTRING(@vbCrLf + @input + @vbCrLf,[Tally].[N],DATALENGTH(@vbCrLf)) = @vbCrLf --Notice how we find the delimiter
                           )
        SELECT
          --row_number() over (order by ItemOrder) as ItemID,
          [ItemSplit].[Item]
        FROM [ItemSplit];
         RETURN 0;
        END;
      ELSE
        BEGIN
        SET @FINALSQL = 'Object ' + QUOTENAME(@SCHEMANAME) + '.' + QUOTENAME(@TBLNAME) + ' does not exist in Database ' + QUOTENAME(DB_NAME())   + ' '
                      + CASE
                          WHEN @ISSYSTEMOBJECT = 0 THEN @vbCrLf + ' (also note that ' + @PROCNAME + ' is not marked as a system proc and cross db access to sys.tables will fail.)'
                          ELSE ''
                        END;
      IF LEFT(@TBLNAME,1) = '#'
        SET @FINALSQL = @FINALSQL + ' OR in The tempdb database.';
      SELECT @FINALSQL AS [Item];
      RETURN 0;
        END;

    END;
--##############################################################################
-- Valid Table, Continue Processing
--##############################################################################
--Is this a SYSTEM versioned TABLE?
SELECT @FINALSQL =
     CASE
       WHEN [tabz].[history_table_id] IS NULL
       THEN ''
       ELSE 'ALTER TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME([tabz].[object_id]) ) + '.' + QUOTENAME(OBJECT_NAME([tabz].[object_id])) + ' SET (SYSTEM_VERSIONING = OFF);' + @vbCrLf
            +  'IF OBJECT_ID(''' + QUOTENAME(OBJECT_SCHEMA_NAME([tabz].[history_table_id]) ) + '.' + QUOTENAME(OBJECT_NAME([tabz].[history_table_id])) + ''') IS NOT NULL ' + @vbCrLf
              + 'DROP TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME([tabz].[history_table_id])) + '.' + QUOTENAME(OBJECT_NAME([tabz].[history_table_id])) + ' ' + @vbCrLf + 'GO' + @vbCrLf
       END
    + 'IF OBJECT_ID(''' + QUOTENAME(OBJECT_SCHEMA_NAME([tabz].[object_id]) ) + '.' + QUOTENAME(OBJECT_NAME([tabz].[object_id])) + ''') IS NOT NULL ' + @vbCrLf
              + 'DROP TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME([tabz].[object_id])) + '.' + QUOTENAME(OBJECT_NAME([tabz].[object_id])) + ' ' + @vbCrLf + 'GO' + @vbCrLf
              + 'CREATE ' + ( CASE WHEN tabz.is_external = 1 THEN 'EXTERNAL ' ELSE '' END ) + 'TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME([tabz].[object_id])) + '.' + QUOTENAME(OBJECT_NAME([tabz].[object_id])) + ' ( '
    FROM [sys].[tables] [tabz] WHERE [tabz].[object_id] = @TABLE_ID
    PRINT @FINALSQL
  --removed invalid code here which potentially selected wrong table--thanks David Grifiths @SSC!
  SELECT
    @STRINGLEN = MAX(LEN([colz].[name])) + 1
  FROM [sys].[objects] AS [objz]
    INNER JOIN [sys].[columns] AS [colz]
      ON  [objz].[object_id] = [colz].[object_id]
      AND [objz].[object_id] = @TABLE_ID;
--##############################################################################
--Get the columns, their definitions and defaults.
--##############################################################################
  SELECT
    @FINALSQL = @FINALSQL
    + CASE
        WHEN [colz].[is_computed] = 1
        THEN @vbCrLf
             + QUOTENAME([colz].[name])
             + ' '
             + SPACE(@STRINGLEN - LEN([colz].[name]))
             + 'AS ' + ISNULL([CALC].[definition],'')
             + CASE
                 WHEN [CALC].[is_persisted] = 1
                 THEN ' PERSISTED'
                 ELSE ''
               END
        ELSE @vbCrLf
             + QUOTENAME([colz].[name])
             + ' '
             + SPACE(@STRINGLEN - LEN([colz].[name]))
             + UPPER(TYPE_NAME([colz].[user_type_id]))
             + CASE
-- data types with precision and scale  IE DECIMAL(18,3), NUMERIC(10,2)
               WHEN TYPE_NAME([colz].[user_type_id]) IN ('decimal','numeric')
               THEN '('
                    + CONVERT(VARCHAR,[colz].[precision])
                    + ','
                    + CONVERT(VARCHAR,[colz].[scale])
                    + ') '
                    + SPACE(6 - LEN(CONVERT(VARCHAR,[colz].[precision])
                    + ','
                    + CONVERT(VARCHAR,[colz].[scale])))
                    + SPACE(7)
                    + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                    + CASE
                        WHEN COLUMNPROPERTY ( @TABLE_ID , [colz].[name] , 'IsIdentity' ) = 0
                        THEN ''
                        ELSE ' IDENTITY('
                               + CONVERT(VARCHAR,ISNULL(IDENT_SEED(@TBLNAME),1) )
                               + ','
                               + CONVERT(VARCHAR,ISNULL(IDENT_INCR(@TBLNAME),1) )
                               + ')'
                        END
                    + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                    + CASE
                        WHEN [colz].[is_nullable] = 0
                        THEN ' NOT NULL'
                        ELSE '     NULL'
                      END
-- data types with scale  IE datetime2(7),TIME(7)
               WHEN TYPE_NAME([colz].[user_type_id]) IN ('datetime2','datetimeoffset','time')
               THEN CASE
                      WHEN [colz].[scale] < 7 THEN
                      '('
                      + CONVERT(VARCHAR,[colz].[scale])
                      + ') '
                    ELSE
                      '    '
                    END
                    + SPACE(4)
                    + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                    + '        '
                    + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                    + CASE [colz].[generated_always_type]
                        WHEN 0 THEN ''
                        WHEN 1 THEN ' GENERATED ALWAYS AS ROW START'
                        WHEN 2 THEN ' GENERATED ALWAYS AS ROW END'
                        ELSE ''
                      END
                    + CASE WHEN [colz].[is_hidden] = 1 THEN ' HIDDEN' ELSE '' END
                    + CASE
                        WHEN [colz].[is_nullable] = 0
                        THEN ' NOT NULL'
                        ELSE '     NULL'
                      END
--data types with no/precision/scale,IE  FLOAT
               WHEN  TYPE_NAME([colz].[user_type_id]) IN ('float') --,'real')
               THEN
               --addition: if 53, no need to specifically say (53), otherwise display it
                    CASE
                      WHEN [colz].[precision] = 53
                      THEN SPACE(11 - LEN(CONVERT(VARCHAR,[colz].[precision])))
                           + SPACE(7)
                           + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                           + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN [colz].[is_nullable] = 0
                               THEN ' NOT NULL'
                               ELSE '     NULL'
                             END
                      ELSE '('
                           + CONVERT(VARCHAR,[colz].[precision])
                           + ') '
                           + SPACE(6 - LEN(CONVERT(VARCHAR,[colz].[precision])))
                           + SPACE(7) + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                           + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN [colz].[is_nullable] = 0
                               THEN ' NOT NULL'
                               ELSE '     NULL'
                             END
                      END
--data type with max_length		ie CHAR (44), VARCHAR(40), BINARY(5000),
--##############################################################################
-- COLLATE STATEMENTS
-- personally i do not like collation statements,
-- but included here to make it easy on those who do
--##############################################################################
               WHEN  TYPE_NAME([colz].[user_type_id]) IN ('char','varchar','binary','varbinary')
               THEN CASE
                      WHEN  [colz].[max_length] = -1
                      THEN  '(max)'
                            + SPACE(6 - LEN(CONVERT(VARCHAR,[colz].[max_length])))
                            + SPACE(7) + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                            ----collate to comment out when not desired
                            --+ CASE
                            --    WHEN COLS.collation_name IS NULL
                            --    THEN ''
                            --    ELSE ' COLLATE ' + COLS.collation_name
                            --  END
                            + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                            + CASE
                                WHEN [colz].[is_nullable] = 0
                                THEN ' NOT NULL'
                                ELSE '     NULL'
                              END
                      ELSE '('
                           + CONVERT(VARCHAR,[colz].[max_length])
                           + ') '
                           + SPACE(6 - LEN(CONVERT(VARCHAR,[colz].[max_length])))
                           + SPACE(7) + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                           ----collate to comment out when not desired
                           --+ CASE
                           --     WHEN COLS.collation_name IS NULL
                           --     THEN ''
                           --     ELSE ' COLLATE ' + COLS.collation_name
                           --   END
                           + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN [colz].[is_nullable] = 0
                               THEN ' NOT NULL'
                               ELSE '     NULL'
                             END
                    END
--data type with max_length ( BUT DOUBLED) ie NCHAR(33), NVARCHAR(40)
               WHEN TYPE_NAME([colz].[user_type_id]) IN ('nchar','nvarchar')
               THEN CASE
                      WHEN  [colz].[max_length] = -1
                      THEN '(max)'
                           + SPACE(5 - LEN(CONVERT(VARCHAR,([colz].[max_length] / 2))))
                           + SPACE(7)
                           + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                           ----collate to comment out when not desired
                           --+ CASE
                           --     WHEN COLS.collation_name IS NULL
                           --     THEN ''
                           --     ELSE ' COLLATE ' + COLS.collation_name
                           --   END
                           + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN [colz].[is_nullable] = 0
                               THEN  ' NOT NULL'
                               ELSE '     NULL'
                             END
                      ELSE '('
                           + CONVERT(VARCHAR,([colz].[max_length] / 2))
                           + ') '
                           + SPACE(6 - LEN(CONVERT(VARCHAR,([colz].[max_length] / 2))))
                           + SPACE(7)
                           + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                           ----collate to comment out when not desired
                           --+ CASE
                           --     WHEN COLS.collation_name IS NULL
                           --     THEN ''
                           --     ELSE ' COLLATE ' + COLS.collation_name
                           --   END
                           + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN [colz].[is_nullable] = 0
                               THEN ' NOT NULL'
                               ELSE '     NULL'
                             END
                    END
               WHEN TYPE_NAME([colz].[user_type_id]) IN ('datetime','money','text','image','real')
               THEN SPACE(18 - LEN(TYPE_NAME([colz].[user_type_id])))
                    + '              '
                    + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                    + CASE
                        WHEN [colz].[is_nullable] = 0
                        THEN ' NOT NULL'
                        ELSE '     NULL'
                      END
--  other data type 	IE INT, DATETIME, MONEY, CUSTOM DATA TYPE,...
               ELSE SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                            + CASE
                                WHEN COLUMNPROPERTY ( @TABLE_ID , [colz].[name] , 'IsIdentity' ) = 0
                                THEN '              '
                                ELSE ' IDENTITY('
                                     + CONVERT(VARCHAR,ISNULL(IDENT_SEED(@TBLNAME),1) )
                                     + ','
                                     + CONVERT(VARCHAR,ISNULL(IDENT_INCR(@TBLNAME),1) )
                                     + ')'
                              END
                            + SPACE(2)
                            + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                            + CASE
                                WHEN [colz].[is_nullable] = 0
                                THEN ' NOT NULL'
                                ELSE '     NULL'
                              END
               END
             + CASE
                 WHEN [colz].[default_object_id] = 0
                 THEN ''
                 --ELSE ' DEFAULT '  + ISNULL(def.[definition] ,'')
                 --optional section in case NAMED default constraints are needed:
                 ELSE '  CONSTRAINT ' + QUOTENAME([DEF].[name]) + ' DEFAULT ' + ISNULL([DEF].[definition] ,'')
                        --i thought it needed to be handled differently! NOT!
               END  --CASE cdefault
      END --iscomputed
    + ','
    FROM [sys].[columns] AS [colz]
      LEFT OUTER JOIN  [sys].[default_constraints]  AS [DEF]
        ON [colz].[default_object_id] = [DEF].[object_id]
      LEFT OUTER JOIN [sys].[computed_columns] AS [CALC]
         ON  [colz].[object_id] = [CALC].[object_id]
         AND [colz].[column_id] = [CALC].[column_id]
    WHERE [colz].[object_id]=@TABLE_ID
    ORDER BY [colz].[column_id];
--##############################################################################
--used for formatting the rest of the constraints:
--##############################################################################
  SELECT
    @STRINGLEN = MAX(LEN([objz].[name])) + 1
  FROM [sys].[objects] AS [objz];
--##############################################################################
--PK/Unique Constraints and Indexes, using the 2005/08 INCLUDE syntax
--##############################################################################
  DECLARE @Results  TABLE (
                    [SCHEMA_ID]             INT,
                    [SCHEMA_NAME]           VARCHAR(255),
                    [OBJECT_ID]             INT,
                    [OBJECT_NAME]           VARCHAR(255),
                    [index_id]              INT,
                    [index_name]            VARCHAR(255),
                    [ROWS]                  BIGINT,
                    [SizeMB]                DECIMAL(19,3),
                    [IndexDepth]            INT,
                    [TYPE]                  INT,
                    [type_desc]             VARCHAR(30),
                    [fill_factor]           INT,
                    [is_unique]             INT,
                    [is_primary_key]        INT ,
                    [is_unique_constraint]  INT,
                    [index_columns_key]     VARCHAR(MAX),
                    [index_columns_include] VARCHAR(MAX),
                    [has_filter] BIT ,
                    [filter_definition] VARCHAR(MAX),
                    [currentFilegroupName]  VARCHAR(128),
                    [CurrentCompression]    VARCHAR(128));
  INSERT INTO @Results
    SELECT
      [SCH].[schema_id], [SCH].[name] AS [SCHEMA_NAME],
      [objz].[object_id], [objz].[name] AS [OBJECT_NAME],
      [IDX].[index_id], ISNULL([IDX].[name], '---') AS [index_name],
      [partitions].[ROWS], [partitions].[SizeMB], INDEXPROPERTY([objz].[object_id], [IDX].[name], 'IndexDepth') AS [IndexDepth],
      [IDX].[type], [IDX].[type_desc], [IDX].[fill_factor],
      [IDX].[is_unique], [IDX].[is_primary_key], [IDX].[is_unique_constraint],
      ISNULL([Index_Columns].[index_columns_key], '---') AS [index_columns_key],
      ISNULL([Index_Columns].[index_columns_include], '---') AS [index_columns_include],
      [IDX].[has_filter],
      [IDX].[filter_definition],
      [filz].[name],
      ISNULL([p].[data_compression_desc],'')
    FROM [sys].[objects] AS [objz]
      INNER JOIN [sys].[schemas] AS [SCH] ON [objz].[schema_id]=[SCH].[schema_id]
      INNER JOIN [sys].[indexes] AS [IDX] ON [objz].[object_id]=[IDX].[object_id]
      INNER JOIN [sys].[filegroups] AS [filz] ON [IDX].[data_space_id] = [filz].[data_space_id]
      INNER JOIN [sys].[partitions] AS [p]     ON  [IDX].[object_id] =  [p].[object_id]  AND [IDX].[index_id] = [p].[index_id]
      INNER JOIN (
                  SELECT
                    [statz].[object_id], [statz].[index_id], SUM([statz].[row_count]) AS [ROWS],
                    CONVERT(NUMERIC(19,3), CONVERT(NUMERIC(19,3), SUM([statz].[in_row_reserved_page_count]+[statz].[lob_reserved_page_count]+[statz].[row_overflow_reserved_page_count]))/CONVERT(NUMERIC(19,3), 128)) AS [SizeMB]
                  FROM [sys].[dm_db_partition_stats] AS [statz]
                  GROUP BY [statz].[object_id], [statz].[index_id]
                 ) AS [partitions]
        ON  [IDX].[object_id]=[partitions].[object_id]
        AND [IDX].[index_id]=[partitions].[index_id]
    CROSS APPLY (
                 SELECT
                   LEFT([Index_Columns].[index_columns_key], LEN([Index_Columns].[index_columns_key])-1) AS [index_columns_key],
                  LEFT([Index_Columns].[index_columns_include], LEN([Index_Columns].[index_columns_include])-1) AS [index_columns_include]
                 FROM
                      (
                       SELECT
                              (
                              SELECT QUOTENAME([colz].[name]) + CASE WHEN [IXCOLS].[is_descending_key] = 0 THEN ' asc' ELSE ' desc' END + ',' + ' '
                               FROM [sys].[index_columns] AS [IXCOLS]
                                 INNER JOIN [sys].[columns] AS [colz]
                                   ON  [IXCOLS].[column_id]   = [colz].[column_id]
                                   AND [IXCOLS].[object_id] = [colz].[object_id]
                               WHERE [IXCOLS].[is_included_column] = 0
                                 AND [IDX].[object_id] = [IXCOLS].[object_id]
                                 AND [IDX].[index_id] = [IXCOLS].[index_id]
                               ORDER BY [IXCOLS].[key_ordinal]
                               FOR XML PATH('')
                              ) AS [index_columns_key],
                             (
                             SELECT QUOTENAME([colz].[name]) + ',' + ' '
                              FROM [sys].[index_columns] AS [IXCOLS]
                                INNER JOIN [sys].[columns] AS [colz]
                                  ON  [IXCOLS].[column_id]   = [colz].[column_id]
                                  AND [IXCOLS].[object_id] = [colz].[object_id]
                              WHERE [IXCOLS].[is_included_column] = 1
                                AND [IDX].[object_id] = [IXCOLS].[object_id]
                                AND [IDX].[index_id] = [IXCOLS].[index_id]
                              ORDER BY [IXCOLS].[index_column_id]
                              FOR XML PATH('')
                             ) AS [index_columns_include]
                      ) AS [Index_Columns]
                ) AS [Index_Columns]
    WHERE [SCH].[name]  LIKE CASE
                                     WHEN @SCHEMANAME = ''   COLLATE SQL_Latin1_General_CP1_CI_AS
                                     THEN [SCH].[name]
                                     ELSE @SCHEMANAME
                                   END
    AND [objz].[name] LIKE CASE
                                  WHEN @TBLNAME = ''   COLLATE SQL_Latin1_General_CP1_CI_AS
                                  THEN [objz].[name]
                                  ELSE @TBLNAME
                                END
    ORDER BY
      [SCH].[name],
      [objz].[name],
      [IDX].[name];
--@Results table has both PK,s Uniques and indexes in thme...pull them out for adding to funal results:
  SET @CONSTRAINTSQLS = '';
  SET @INDEXSQLS      = '';
  SET @TemporalStatement = '';
  SET @WithStatement = '';
  --##############################################################################
  -- Temporal tables
--##############################################################################
  SELECT @TemporalStatement =  ISNULL(@vbCrLf + 'PERIOD FOR SYSTEM_TIME ('
  + MAX(CASE WHEN [colz].[generated_always_type] = 1 THEN [colz].[name] ELSE '' END)
  +','
  + MAX(CASE WHEN [colz].[generated_always_type] = 2 THEN [colz].[name] ELSE '' END)
  +'),','') ,
  @WithStatement = ISNULL(' SYSTEM_VERSIONING = ON (HISTORY_TABLE=' + QUOTENAME(OBJECT_SCHEMA_NAME([objz].[history_table_id])) + '.' + QUOTENAME(OBJECT_NAME([objz].[history_table_id])) + '),' ,'')
  FROM [sys].[tables] [objz]
  INNER JOIN [sys].[columns] [colz]
  ON [objz].[object_id] = [colz].[object_id]
  WHERE [colz].[object_id] = @TABLE_ID
  AND [colz].[generated_always_type] > 0
  GROUP BY [colz].[object_id],[objz].[history_table_id];

  --##############################################################################
  -- External tables
  --##############################################################################
  SELECT @WithStatement = @WithStatement + CASE WHEN [etabz].[location] IS NOT NULL THEN ' LOCATION = ' + [etabz].[location] + ',' END
  + CASE WHEN [etabz].[data_source_id] IS NOT NULL THEN ' DATA_SOURCE = ' + [eds].[name] + ',' END
  + CASE WHEN [etabz].[file_format_id] IS NOT NULL THEN ' FILE_FORMAT = ' + [efs].[name] + ',' END
  + CASE WHEN [etabz].[reject_type] IS NOT NULL THEN ' REJECT_TYPE = ' + [etabz].[reject_type] + ',' END
  + CASE WHEN [etabz].[reject_value] IS NOT NULL THEN ' REJECT_VALUE = ' + [etabz].[reject_value] + ',' END
  + CASE WHEN [etabz].[reject_sample_value] IS NOT NULL THEN ' REJECT_SAMPLE_VALUE = ' + [etabz].[reject_sample_value] + ',' END
  + ' '
  FROM [sys].[external_tables] [etabz]
  LEFT JOIN [sys].[external_data_sources] [eds] ON [eds].[data_source_id] = [etabz].[data_source_id]
  LEFT JOIN [sys].[external_file_formats] [efs] ON [efs].[file_format_id] = [etabz].[file_format_id]

  WHERE [etabz].[schema_id] = SCHEMA_ID(@SCHEMANAME) AND [etabz].[name] = @TBLNAME;

--##############################################################################
-- memory optimized
--##############################################################################
SELECT @WithStatement  = @WithStatement + ISNULL('MEMORY_OPTIMIZED=ON, DURABILITY=' + [objz].[durability_desc] + ',','')
FROM [sys].[tables] [objz]
WHERE [objz].[is_memory_optimized] =1
AND [objz].[object_id] = @TABLE_ID
--##############################################################################
--constraints
--column store indexes are different: the "include" columns for normal indexes as scripted above are the columnstores indexed columns
--add a CASE for that situation.
--##############################################################################
  SELECT @CONSTRAINTSQLS = @CONSTRAINTSQLS
         + CASE
             WHEN [is_primary_key] = 1 OR [is_unique] = 1
             THEN @vbCrLf
                  + 'CONSTRAINT   '  COLLATE SQL_Latin1_General_CP1_CI_AS + QUOTENAME([index_name]) + ' '
                  + CASE
                      WHEN [is_primary_key] = 1
                      THEN ' PRIMARY KEY '
                      ELSE CASE
                             WHEN [is_unique] = 1
                             THEN ' UNIQUE      '
                             ELSE ''
                           END
                    END
                  + [type_desc]
                  + CASE
                      WHEN [type_desc]='NONCLUSTERED'
                      THEN ''
                      ELSE '   '
                    END
                  + ' (' + [index_columns_key] + ')'
                  + CASE
                      WHEN [index_columns_include] <> '---'
                      THEN ' INCLUDE (' + [index_columns_include] + ')'
                      ELSE ''
                    END
                  + CASE
                      WHEN [has_filter] = 1
                      THEN ' ' + [filter_definition]
                      ELSE ' '
                    END
                  + CASE WHEN [fill_factor] <> 0 OR [CurrentCompression] <> 'NONE'
                  THEN ' WITH (' + CASE
                                    WHEN [fill_factor] <> 0
                                    THEN 'FILLFACTOR = ' + CONVERT(VARCHAR(30),[fill_factor])
                                    ELSE ''
                                  END
                                + CASE
                                    WHEN [fill_factor] <> 0  AND [CurrentCompression] <> 'NONE' THEN ',DATA_COMPRESSION = ' + [CurrentCompression] + ' '
                                    WHEN [fill_factor] <> 0  AND [CurrentCompression]  = 'NONE' THEN ''
                                    WHEN [fill_factor]  = 0  AND [CurrentCompression] <> 'NONE' THEN 'DATA_COMPRESSION = ' + [CurrentCompression] + ' '
                                    ELSE ''
                                  END
                                  + ')'
                  ELSE ''
                  END

             ELSE ''
           END + ','
  FROM @Results
  WHERE [type_desc] != 'HEAP'
    AND [is_primary_key] = 1
    OR  [is_unique] = 1
  ORDER BY
    [is_primary_key] DESC,
    [is_unique] DESC;
    --
--##############################################################################
--indexes
--##############################################################################
  SELECT @INDEXSQLS = @INDEXSQLS
         + CASE
             WHEN [is_primary_key] = 0 OR [is_unique] = 0
             THEN @vbCrLf
                  + 'CREATE '  COLLATE SQL_Latin1_General_CP1_CI_AS + [type_desc] + ' INDEX '  COLLATE SQL_Latin1_General_CP1_CI_AS + QUOTENAME([index_name]) + ' '
                  + @vbCrLf
                  + '   ON '   COLLATE SQL_Latin1_General_CP1_CI_AS
                  + QUOTENAME([SCHEMA_NAME]) + '.' + QUOTENAME([OBJECT_NAME])
                  + CASE
                        WHEN [CurrentCompression] = 'COLUMNSTORE'  COLLATE SQL_Latin1_General_CP1_CI_AS
                        THEN ' (' + [index_columns_include] + ')'
                        ELSE ' (' + [index_columns_key] + ')'
                    END
                  + CASE
                      WHEN [CurrentCompression] = 'COLUMNSTORE'  COLLATE SQL_Latin1_General_CP1_CI_AS
                      THEN ''  COLLATE SQL_Latin1_General_CP1_CI_AS
                      ELSE
                        CASE
                     WHEN [index_columns_include] <> '---'
                     THEN @vbCrLf + '   INCLUDE ('  COLLATE SQL_Latin1_General_CP1_CI_AS + [index_columns_include] + ')'   COLLATE SQL_Latin1_General_CP1_CI_AS
                     ELSE ''   COLLATE SQL_Latin1_General_CP1_CI_AS
                   END
                    END
                  --2008 filtered indexes syntax
                  + CASE
                      WHEN [has_filter] = 1
                      THEN @vbCrLf + '   WHERE '  COLLATE SQL_Latin1_General_CP1_CI_AS + [filter_definition]
                      ELSE ''
                    END
                  + CASE WHEN [fill_factor] <> 0 OR [CurrentCompression] <> 'NONE'  COLLATE SQL_Latin1_General_CP1_CI_AS
                  THEN ' WITH ('  COLLATE SQL_Latin1_General_CP1_CI_AS + CASE
                                    WHEN [fill_factor] <> 0
                                    THEN 'FILLFACTOR = '  COLLATE SQL_Latin1_General_CP1_CI_AS + CONVERT(VARCHAR(30),[fill_factor])
                                    ELSE ''
                                  END
                                + CASE
                                    WHEN [fill_factor] <> 0  AND [CurrentCompression] <> 'NONE' THEN ',DATA_COMPRESSION = ' + [CurrentCompression]+' '
                                    WHEN [fill_factor] <> 0  AND [CurrentCompression]  = 'NONE' THEN ''
                                    WHEN [fill_factor]  = 0  AND [CurrentCompression] <> 'NONE' THEN 'DATA_COMPRESSION = ' + [CurrentCompression]+' '
                                    ELSE ''
                                  END
                                  + ')'
                  ELSE ''
                  END
                   + @vbCrLf + 'GO' + @vbCrLf
           END
  FROM @Results
  WHERE [type_desc] != 'HEAP'
    AND [is_primary_key] = 0
    AND [is_unique] = 0
  ORDER BY
    [is_primary_key] DESC,
    [is_unique] DESC;
  IF @INDEXSQLS <> ''  COLLATE SQL_Latin1_General_CP1_CI_AS
    SET @INDEXSQLS = @vbCrLf + 'GO'  COLLATE SQL_Latin1_General_CP1_CI_AS + @vbCrLf + @INDEXSQLS;
--##############################################################################
--CHECK Constraints
--##############################################################################
  SET @CHECKCONSTSQLS = ''  COLLATE SQL_Latin1_General_CP1_CI_AS;
  SELECT
    @CHECKCONSTSQLS = @CHECKCONSTSQLS
    + @vbCrLf
    + ISNULL('CONSTRAINT   ' + QUOTENAME([objz].[name]) + ' '
    + SPACE(@STRINGLEN - LEN([objz].[name]))
    + ' CHECK ' + ISNULL([CHECKS].[definition],'')
    + ',','')
  FROM [sys].[objects] AS [objz]
    INNER JOIN [sys].[check_constraints] AS [CHECKS] ON [objz].[object_id] = [CHECKS].[object_id]
  WHERE [objz].[type] = 'C'
    AND [objz].[parent_object_id] = @TABLE_ID;
--##############################################################################
--FOREIGN KEYS
--##############################################################################
  SET @FKSQLS = '' ;
    SELECT
    @FKSQLS=@FKSQLS
    + @vbCrLf + [MyAlias].[Command] FROM
(
SELECT
  DISTINCT
  --FK must be added AFTER the PK/unique constraints are added back.
  850 AS [ExecutionOrder],
  'CONSTRAINT '
  + QUOTENAME([conz].[name])
  + ' FOREIGN KEY ('
  + [ChildCollection].[ChildColumns]
  + ') REFERENCES '
  + QUOTENAME(SCHEMA_NAME([conz].[schema_id]))
  + '.'
  + QUOTENAME(OBJECT_NAME([conz].[referenced_object_id]))
  + ' (' + [ParentCollection].[ParentColumns]
  + ') '
  +  CASE [conz].[update_referential_action]
                                        WHEN 0 THEN '' --' ON UPDATE NO ACTION '
                                        WHEN 1 THEN ' ON UPDATE CASCADE '
                                        WHEN 2 THEN ' ON UPDATE SET NULL '
                                        ELSE ' ON UPDATE SET DEFAULT '
                                    END
                  + CASE [conz].[delete_referential_action]
                                        WHEN 0 THEN '' --' ON DELETE NO ACTION '
                                        WHEN 1 THEN ' ON DELETE CASCADE '
                                        WHEN 2 THEN ' ON DELETE SET NULL '
                                        ELSE ' ON DELETE SET DEFAULT '
                                    END
                  + CASE [conz].[is_not_for_replication]
                        WHEN 1 THEN ' NOT FOR REPLICATION '
                        ELSE ''
                    END
  + ',' AS [Command]
FROM   [sys].[foreign_keys] AS [conz]
       INNER JOIN [sys].[foreign_key_columns] AS [colz]
         ON [conz].[object_id] = [colz].[constraint_object_id]

       INNER JOIN (--gets my child tables column names
SELECT
 [conz].[name],
 --technically, FK's can contain up to 16 columns, but real life is often a single column. coding here is for all columns
 [ChildColumns] = STUFF((SELECT
                         ',' + QUOTENAME([REFZ].[name])
                       FROM   [sys].[foreign_key_columns] AS [fkcolz]
                              INNER JOIN [sys].[columns] AS [REFZ]
                                ON [fkcolz].[parent_object_id] = [REFZ].[object_id]
                                   AND [fkcolz].[parent_column_id] = [REFZ].[column_id]
                       WHERE [fkcolz].[parent_object_id] = [conz].[parent_object_id]
                           AND [fkcolz].[constraint_object_id] = [conz].[object_id]
                         ORDER  BY
                        [fkcolz].[constraint_column_id]
                      FOR XML PATH(''), TYPE).[value]('.','varchar(max)'),1,1,'')
FROM   [sys].[foreign_keys] AS [conz]
      INNER JOIN [sys].[foreign_key_columns] AS [colz]
        ON [conz].[object_id] = [colz].[constraint_object_id]
        WHERE [conz].[parent_object_id]= @TABLE_ID
GROUP  BY
[conz].[name],
[conz].[parent_object_id],--- without GROUP BY multiple rows are returned
 [conz].[object_id]
    ) AS [ChildCollection]
         ON [conz].[name] = [ChildCollection].[name]
       INNER JOIN (--gets the parent tables column names for the FK reference
                  SELECT
                     [conz].[name],
                     [ParentColumns] = STUFF((SELECT
                                              ',' + [REFZ].[name]
                                            FROM   [sys].[foreign_key_columns] AS [fkcolz]
                                                   INNER JOIN [sys].[columns] AS [REFZ]
                                                     ON [fkcolz].[referenced_object_id] = [REFZ].[object_id]
                                                        AND [fkcolz].[referenced_column_id] = [REFZ].[column_id]
                                            WHERE  [fkcolz].[referenced_object_id] = [conz].[referenced_object_id]
                                              AND [fkcolz].[constraint_object_id] = [conz].[object_id]
                                            ORDER BY [fkcolz].[constraint_column_id]
                                            FOR XML PATH(''), TYPE).[value]('.','varchar(max)'),1,1,'')
                   FROM   [sys].[foreign_keys] AS [conz]
                          INNER JOIN [sys].[foreign_key_columns] AS [colz]
                            ON [conz].[object_id] = [colz].[constraint_object_id]
                           -- AND colz.parent_column_id
                   GROUP  BY
                    [conz].[name],
                    [conz].[referenced_object_id],--- without GROUP BY multiple rows are returned
                    [conz].[object_id]
                  ) AS [ParentCollection]
         ON [conz].[name] = [ParentCollection].[name]
)AS [MyAlias];
--##############################################################################
--RULES
--##############################################################################
  SET @RULESCONSTSQLS = '';
  SELECT
    @RULESCONSTSQLS = @RULESCONSTSQLS
    + ISNULL(
             @vbCrLf
             + 'if not exists(SELECT [name] FROM sys.objects WHERE TYPE=''R'' AND schema_id = ' COLLATE SQL_Latin1_General_CP1_CI_AS + CONVERT(VARCHAR(30),[objz].[schema_id]) + ' AND [name] = '''  COLLATE SQL_Latin1_General_CP1_CI_AS + QUOTENAME(OBJECT_NAME([colz].[rule_object_id])) + ''')'  COLLATE SQL_Latin1_General_CP1_CI_AS + @vbCrLf
             + [MODS].[definition]  + @vbCrLf + 'GO' COLLATE SQL_Latin1_General_CP1_CI_AS +  @vbCrLf
             + 'EXEC sp_binderule  ' + QUOTENAME([objz].[name]) + ', ''' + QUOTENAME(OBJECT_NAME([colz].[object_id])) + '.' + QUOTENAME([colz].[name]) + ''''  COLLATE SQL_Latin1_General_CP1_CI_AS + @vbCrLf + 'GO'  COLLATE SQL_Latin1_General_CP1_CI_AS ,'')
  FROM [sys].[columns] [colz]
    INNER JOIN [sys].[objects] [objz]
      ON [objz].[object_id] = [colz].[object_id]
    INNER JOIN [sys].[sql_modules] AS [MODS]
      ON [colz].[rule_object_id] = [MODS].[object_id]
  WHERE [colz].[rule_object_id] <> 0
    AND [colz].[object_id] = @TABLE_ID;
--##############################################################################
--TRIGGERS
--##############################################################################
  SET @TRIGGERSTATEMENT = '';
  SELECT
    @TRIGGERSTATEMENT = @TRIGGERSTATEMENT +  @vbCrLf + [MODS].[definition] + @vbCrLf + 'GO'
  FROM [sys].[sql_modules] AS [MODS]
  WHERE [MODS].[object_id] IN(SELECT
                         [objz].[object_id]
                       FROM [sys].[objects] AS [objz]
                       WHERE [objz].[type] = 'TR'
                       AND [objz].[parent_object_id] = @TABLE_ID);
  IF @TRIGGERSTATEMENT <> ''  COLLATE SQL_Latin1_General_CP1_CI_AS
    SET @TRIGGERSTATEMENT = @vbCrLf + 'GO'  COLLATE SQL_Latin1_General_CP1_CI_AS + @vbCrLf + @TRIGGERSTATEMENT;
--##############################################################################
--NEW SECTION QUERY ALL EXTENDED PROPERTIES
--##############################################################################
  SET @EXTENDEDPROPERTIES = '';
  SELECT  @EXTENDEDPROPERTIES =
          @EXTENDEDPROPERTIES + @vbCrLf +
         'EXEC sys.sp_addextendedproperty
          @name = N'''  COLLATE SQL_Latin1_General_CP1_CI_AS + [name] + ''', @value = N'''  COLLATE SQL_Latin1_General_CP1_CI_AS + REPLACE(CONVERT(VARCHAR(MAX),[value]),'''','''''') + ''',
          @level0type = N''SCHEMA'', @level0name = '  COLLATE SQL_Latin1_General_CP1_CI_AS + QUOTENAME(@SCHEMANAME) + ',
          @level1type = N''TABLE'', @level1name = '  COLLATE SQL_Latin1_General_CP1_CI_AS + QUOTENAME(@TBLNAME) + ';'
 --SELECT objtype, objname, name, value
  FROM [sys].[fn_listextendedproperty] (NULL, 'schema', @SCHEMANAME, 'table', @TBLNAME, NULL, NULL);
  --OMacoder suggestion for column extended properties http://www.sqlservercentral.com/Forums/FindPost1651606.aspx
   ;WITH [obj] AS (
	SELECT [split].[a].[value]('.', 'VARCHAR(20)') AS [name]
	FROM (
		SELECT CAST ('<M>' + REPLACE('column,constraint,index,trigger,parameter', ',', '</M><M>') + '</M>' AS XML) AS [data]
		) AS [A]
		CROSS APPLY [data].[nodes] ('/M') AS [split]([a])
	)
  SELECT
  @EXTENDEDPROPERTIES =
		 @EXTENDEDPROPERTIES + @vbCrLf + @vbCrLf +
         'EXEC sys.sp_addextendedproperty
         @name = N''' COLLATE SQL_Latin1_General_CP1_CI_AS
         + [lep].[name]
         + ''', @value = N''' COLLATE SQL_Latin1_General_CP1_CI_AS
         + REPLACE(CONVERT(VARCHAR(MAX),[lep].[value]),'''','''''') + ''',
         @level0type = N''SCHEMA'', @level0name = ' COLLATE SQL_Latin1_General_CP1_CI_AS
         + QUOTENAME(@SCHEMANAME)
         + ',
         @level1type = N''TABLE'', @level1name = ' COLLATE SQL_Latin1_General_CP1_CI_AS
         + QUOTENAME(@TBLNAME)
         + ',
         @level2type = N''' COLLATE SQL_Latin1_General_CP1_CI_AS
         + UPPER([obj].[name])
         + ''', @level2name = ' COLLATE SQL_Latin1_General_CP1_CI_AS
         + QUOTENAME([lep].[objname]) + ';' COLLATE SQL_Latin1_General_CP1_CI_AS
  --SELECT objtype, objname, name, value
  FROM [obj]
	CROSS APPLY [sys].[fn_listextendedproperty] (NULL, 'schema', @SCHEMANAME, 'table', @TBLNAME, [obj].[name], NULL) AS [lep];

  IF @EXTENDEDPROPERTIES <> '' COLLATE SQL_Latin1_General_CP1_CI_AS
    SET @EXTENDEDPROPERTIES = @vbCrLf + 'GO' COLLATE SQL_Latin1_General_CP1_CI_AS + @vbCrLf + @EXTENDEDPROPERTIES;
--##############################################################################
--FINAL CLEANUP AND PRESENTATION
--##############################################################################
--at this point, there is a trailing comma, or it blank
--WITH statment has a trailing comma

IF @WithStatement > ''
  SET @WithStatement='WITH (' + SUBSTRING(@WithStatement,1,LEN(@WithStatement) -1)  + ')'
  SELECT
    @FINALSQL = @FINALSQL
                + @TemporalStatement
                + @CONSTRAINTSQLS
                + @CHECKCONSTSQLS
                + @FKSQLS;
--note that this trims the trailing comma from the end of the statements
  SET @FINALSQL = SUBSTRING(@FINALSQL,1,LEN(@FINALSQL) -1) ;
  SET @FINALSQL = @FINALSQL + ')' COLLATE SQL_Latin1_General_CP1_CI_AS + @vbCrLf + @WithStatement + @vbCrLf + 'GO' + @vbCrLf COLLATE SQL_Latin1_General_CP1_CI_AS +  @vbCrLf ;

  SET @input = @vbCrLf
       + @FINALSQL
       + @INDEXSQLS
       + @RULESCONSTSQLS
       + @TRIGGERSTATEMENT
       + @EXTENDEDPROPERTIES
  --ten years worth of days from todays date:
   ;WITH [E01]([N]) AS (SELECT 1 UNION ALL SELECT 1 UNION ALL
                    SELECT 1 UNION ALL SELECT 1 UNION ALL
                    SELECT 1 UNION ALL SELECT 1 UNION ALL
                    SELECT 1 UNION ALL SELECT 1 UNION ALL
                    SELECT 1 UNION ALL SELECT 1), --         10 or 10E01 rows
         [E02]([N]) AS (SELECT 1 FROM [E01] AS [a], [E01] AS [b]),  --        100 or 10E02 rows
         [E04]([N]) AS (SELECT 1 FROM [E02] AS [a], [E02] AS [b]),  --     10,000 or 10E04 rows
         [E08]([N]) AS (SELECT 1 FROM [E04] AS [a], [E04] AS [b]),  --100,000,000 or 10E08 rows
         --E16(N) AS (SELECT 1 FROM E08 a, E08 b),  --10E16 or more rows than you'll EVER need,
         [Tally]([N]) AS (SELECT ROW_NUMBER() OVER (ORDER BY [E08].[N]) FROM [E08]),
       [ItemSplit](
                 [ItemOrder],
                 [Item]
                ) AS (
                      SELECT [Tally].[N],
                        SUBSTRING(@vbCrLf + @input + @vbCrLf,[Tally].[N] + DATALENGTH(@vbCrLf),CHARINDEX(@vbCrLf,@vbCrLf + @input + @vbCrLf,[Tally].[N] + DATALENGTH(@vbCrLf)) - [Tally].[N] - DATALENGTH(@vbCrLf))
                      FROM [Tally]
                      WHERE [Tally].[N] < DATALENGTH(@vbCrLf + @input)
                      --WHERE N < DATALENGTH(@vbCrLf + @input) -- REMOVED added @vbCrLf
                        AND SUBSTRING(@vbCrLf + @input + @vbCrLf,[Tally].[N],DATALENGTH(@vbCrLf)) = @vbCrLf --Notice how we find the delimiter
                     )
  SELECT
    --row_number() over (order by ItemOrder) as ItemID,
    [ItemSplit].[Item]
  FROM [ItemSplit];
  RETURN;
--##############################################################################
-- END Normal Table Processing
--##############################################################################

--simple, primitive version to get the results of a TEMP table from the TEMP db.
--##############################################################################
-- NEW Temp Table Logic
--##############################################################################
TEMPPROCESS:
  SELECT @TABLE_ID = OBJECT_ID('tempdb..' COLLATE SQL_Latin1_General_CP1_CI_AS + @TBLNAME);
--##############################################################################
-- Valid temp Table, Continue Processing
--##############################################################################
SELECT @FINALSQL =
     CASE
       WHEN [tabz].[history_table_id] IS NULL
       THEN ''
       ELSE 'ALTER TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME([tabz].[object_id]) ) + '.' + QUOTENAME(OBJECT_NAME([tabz].[object_id])) + ' SET (SYSTEM_VERSIONING = OFF);' + @vbCrLf
            +  'IF OBJECT_ID(''' + QUOTENAME(OBJECT_SCHEMA_NAME([tabz].[history_table_id]) ) + '.' + QUOTENAME(OBJECT_NAME([tabz].[history_table_id])) + ''') IS NOT NULL ' + @vbCrLf
              + 'DROP TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME([tabz].[history_table_id])) + '.' + QUOTENAME(OBJECT_NAME([tabz].[history_table_id])) + ' ' + @vbCrLf + 'GO' + @vbCrLf
       END
    + 'IF OBJECT_ID(''' + QUOTENAME(OBJECT_SCHEMA_NAME([tabz].[object_id]) ) + '.' + QUOTENAME(OBJECT_NAME([tabz].[object_id])) + ''') IS NOT NULL ' + @vbCrLf
              + 'DROP TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME([tabz].[object_id])) + '.' + QUOTENAME(OBJECT_NAME([tabz].[object_id])) + ' ' + @vbCrLf + 'GO' + @vbCrLf
              + 'CREATE TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME([tabz].[object_id])) + '.' + QUOTENAME(OBJECT_NAME([tabz].[object_id])) + ' ( '
FROM [sys].[tables] [tabz] WHERE [tabz].[object_id] = OBJECT_ID(@TABLE_ID)
  --removed invalid code here which potentially selected wrong table--thansk David Grifiths @SSC!
  SELECT
    @STRINGLEN = MAX(LEN([colz].[name])) + 1
  FROM [tempdb].[sys].[objects] AS [objz]
    INNER JOIN [tempdb].[sys].[columns] AS [colz]
      ON  [objz].[object_id] = [colz].[object_id]
      AND [objz].[object_id] = @TABLE_ID;
--##############################################################################
--Get the hash index definitions for memory optimized tables, if any.
--##############################################################################

--##############################################################################
--Get the columns, their definitions and defaults.
--##############################################################################
  SELECT
    @FINALSQL = @FINALSQL
    + CASE
        WHEN [colz].[is_computed] = 1
        THEN @vbCrLf
             + QUOTENAME([colz].[name])
             + ' '
             + SPACE(@STRINGLEN - LEN([colz].[name]))
             + 'AS ' + ISNULL([CALC].[definition],'')
              + CASE
                 WHEN [CALC].[is_persisted] = 1
                 THEN ' PERSISTED'
                 ELSE ''
               END
        ELSE @vbCrLf
             + QUOTENAME([colz].[name])
             + ' '
             + SPACE(@STRINGLEN - LEN([colz].[name]))
             + UPPER(TYPE_NAME([colz].[user_type_id]))
             + CASE
-- data types with precision and scale  IE DECIMAL(18,3), NUMERIC(10,2)
               WHEN TYPE_NAME([colz].[user_type_id]) IN ('decimal','numeric')
               THEN '('
                    + CONVERT(VARCHAR,[colz].[precision])
                    + ','
                    + CONVERT(VARCHAR,[colz].[scale])
                    + ') '
                    + SPACE(6 - LEN(CONVERT(VARCHAR,[colz].[precision])
                    + ','
                    + CONVERT(VARCHAR,[colz].[scale])))
                    + SPACE(7)
                    + SPACE(16 - LEN(TYPE_NAME([colz].[user_type_id])))
                    + CASE
                        WHEN [colz].[is_identity] = 1
                        THEN ' IDENTITY(1,1)'
                        ELSE ''
                        ----WHEN COLUMNPROPERTY ( @TABLE_ID , COLS.[name] , 'IsIdentity' ) = 1
                        ----THEN ' IDENTITY('
                        ----       + CONVERT(VARCHAR,ISNULL(IDENT_SEED('tempdb..' + @TBLNAME),1) )
                        ----       + ','
                        ----       + CONVERT(VARCHAR,ISNULL(IDENT_INCR('tempdb..' + @TBLNAME),1) )
                        ----       + ')'
                        ----ELSE ''
                        END
                    + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                    + CASE
                        WHEN [colz].[is_nullable] = 0
                        THEN ' NOT NULL'
                        ELSE '     NULL'
                      END
-- data types with scale  IE datetime2(7),TIME(7)
               WHEN TYPE_NAME([colz].[user_type_id]) IN ('datetime2','datetimeoffset','time')
               THEN CASE
                      WHEN [colz].[scale] < 7 THEN
                      '('
                      + CONVERT(VARCHAR,[colz].[scale])
                      + ') '
                    ELSE
                      '    '
                    END
                    + SPACE(4)
                    + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                    + '        '
                    + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                    + CASE [colz].[generated_always_type]
                        WHEN 0 THEN ''
                        WHEN 1 THEN ' GENERATED ALWAYS AS ROW START'
                        WHEN 2 THEN ' GENERATED ALWAYS AS ROW END'
                        ELSE ''
                      END
                    + CASE WHEN [colz].[is_hidden] = 1 THEN ' HIDDEN' ELSE '' END
                    + CASE
                        WHEN [colz].[is_nullable] = 0
                        THEN ' NOT NULL'
                        ELSE '     NULL'
                      END
--data types with no/precision/scale,IE  FLOAT
               WHEN  TYPE_NAME([colz].[user_type_id]) IN ('float') --,'real')
               THEN
               --addition: if 53, no need to specifically say (53), otherwise display it
                    CASE
                      WHEN [colz].[precision] = 53
                      THEN SPACE(11 - LEN(CONVERT(VARCHAR,[colz].[precision])))
                           + SPACE(7)
                           + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                           + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN [colz].[is_nullable] = 0
                               THEN ' NOT NULL'
                               ELSE '     NULL'
                             END
                      ELSE '('
                           + CONVERT(VARCHAR,[colz].[precision])
                           + ') '
                           + SPACE(6 - LEN(CONVERT(VARCHAR,[colz].[precision])))
                           + SPACE(7) + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                           + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN [colz].[is_nullable] = 0
                               THEN ' NOT NULL'
                               ELSE '     NULL'
                             END
                      END
--ie VARCHAR(40)
--##############################################################################
-- COLLATE STATEMENTS in tempdb!
-- personally i do not like collation statements,
-- but included here to make it easy on those who do
--##############################################################################
               WHEN  TYPE_NAME([colz].[user_type_id]) IN ('char','varchar','binary','varbinary')
               THEN CASE
                      WHEN  [colz].[max_length] = -1
                      THEN  '(max)'
                            + SPACE(6 - LEN(CONVERT(VARCHAR,[colz].[max_length])))
                            + SPACE(7) + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                            ----collate to comment out when not desired
                            --+ CASE
                            --    WHEN COLS.collation_name IS NULL
                            --    THEN ''
                            --    ELSE ' COLLATE ' + COLS.collation_name
                            --  END
                            + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                            + CASE
                                WHEN [colz].[is_nullable] = 0
                                THEN ' NOT NULL'
                                ELSE '     NULL'
                              END
                      ELSE '('
                           + CONVERT(VARCHAR,[colz].[max_length])
                           + ') '
                           + SPACE(6 - LEN(CONVERT(VARCHAR,[colz].[max_length])))
                           + SPACE(7) + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                           ----collate to comment out when not desired
                           --+ CASE
                           --     WHEN COLS.collation_name IS NULL
                           --     THEN ''
                           --     ELSE ' COLLATE ' + COLS.collation_name
                           --   END
                           + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN [colz].[is_nullable] = 0
                               THEN ' NOT NULL'
                               ELSE '     NULL'
                             END
                    END
--data type with max_length ( BUT DOUBLED) ie NCHAR(33), NVARCHAR(40)
               WHEN TYPE_NAME([colz].[user_type_id]) IN ('nchar','nvarchar')
               THEN CASE
                      WHEN  [colz].[max_length] = -1
                      THEN '(max)'
                           + SPACE(5 - LEN(CONVERT(VARCHAR,([colz].[max_length] / 2))))
                           + SPACE(7)
                           + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                           -- --collate to comment out when not desired
                           --+ CASE
                           --     WHEN COLS.collation_name IS NULL
                           --     THEN ''
                           --     ELSE ' COLLATE ' + COLS.collation_name
                           --   END
                           + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN [colz].[is_nullable] = 0
                               THEN  ' NOT NULL'
                               ELSE '     NULL'
                             END
                      ELSE '('
                           + CONVERT(VARCHAR,([colz].[max_length] / 2))
                           + ') '
                           + SPACE(6 - LEN(CONVERT(VARCHAR,([colz].[max_length] / 2))))
                           + SPACE(7)
                           + SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                           -- --collate to comment out when not desired
                           --+ CASE
                           --     WHEN COLS.collation_name IS NULL
                           --     THEN ''
                           --     ELSE ' COLLATE ' + COLS.collation_name
                           --   END
                           + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                           + CASE
                               WHEN [colz].[is_nullable] = 0
                               THEN ' NOT NULL'
                               ELSE '     NULL'
                             END
                    END
--  other data type 	IE INT, DATETIME, MONEY, CUSTOM DATA TYPE,...
               WHEN TYPE_NAME([colz].[user_type_id]) IN ('datetime','money','text','image','real')
               THEN SPACE(18 - LEN(TYPE_NAME([colz].[user_type_id])))
                    + '              '
                    + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                    + CASE
                        WHEN [colz].[is_nullable] = 0
                        THEN ' NOT NULL'
                        ELSE '     NULL'
                      END
--IE INT
               ELSE SPACE(@ObjectDataTypeLen - LEN(TYPE_NAME([colz].[user_type_id])))
                            + CASE
                                WHEN [colz].[is_identity] = 1
                                THEN ' IDENTITY(1,1)'
                                ELSE '              '
                                ----WHEN COLUMNPROPERTY ( @TABLE_ID , COLS.[name] , 'IsIdentity' ) = 1
                                ----THEN ' IDENTITY('
                                ----     + CONVERT(VARCHAR,ISNULL(IDENT_SEED('tempdb..' + @TBLNAME),1) )
                                ----     + ','
                                ----     + CONVERT(VARCHAR,ISNULL(IDENT_INCR('tempdb..' + @TBLNAME),1) )
                                ----     + ')'
                                ----ELSE '              '
                              END
                            + SPACE(2)
                            + CASE  WHEN [colz].[is_sparse] = 1 THEN ' sparse' ELSE '       ' END
                            + CASE
                                WHEN [colz].[is_nullable] = 0
                                THEN ' NOT NULL'
                                ELSE '     NULL'
                              END
               END
             + CASE
                 WHEN [colz].[default_object_id] = 0
                 THEN ''
                 ELSE ' DEFAULT '  + ISNULL([DEF].[definition] ,'')
                 --optional section in case NAMED default cosntraints are needed:
                 --ELSE ' CONSTRAINT [' + DEF.name + '] DEFAULT '+ REPLACE(REPLACE(ISNULL(DEF.[definition] ,''),'((','('),'))',')')
                        --i thought it needed to be handled differently! NOT!
               END  --CASE cdefault
      END --iscomputed
    + ','
    FROM [tempdb].[sys].[columns] AS [colz]
      LEFT OUTER JOIN  [tempdb].[sys].[default_constraints]  AS [DEF]
        ON [colz].[default_object_id] = [DEF].[object_id]
      LEFT OUTER JOIN [tempdb].[sys].[computed_columns] AS [CALC]
         ON  [colz].[object_id] = [CALC].[object_id]
         AND [colz].[column_id] = [CALC].[column_id]
    WHERE [colz].[object_id]=@TABLE_ID
    ORDER BY [colz].[column_id];
--##############################################################################
--used for formatting the rest of the constraints:
--##############################################################################
  SELECT
    @STRINGLEN = MAX(LEN([objz].[name])) + 1
  FROM [tempdb].[sys].[objects] AS [objz];
--##############################################################################
--PK/Unique Constraints and Indexes, using the 2005/08 INCLUDE syntax
--##############################################################################
  DECLARE @Results2  TABLE (
                    [SCHEMA_ID]             INT,
                    [SCHEMA_NAME]           VARCHAR(255),
                    [OBJECT_ID]             INT,
                    [OBJECT_NAME]           VARCHAR(255),
                    [index_id]              INT,
                    [index_name]            VARCHAR(255),
                    [ROWS]                  BIGINT,
                    [SizeMB]                DECIMAL(19,3),
                    [IndexDepth]            INT,
                    [TYPE]                  INT,
                    [type_desc]             VARCHAR(30),
                    [fill_factor]           INT,
                    [is_unique]             INT,
                    [is_primary_key]        INT ,
                    [is_unique_constraint]  INT,
                    [index_columns_key]     VARCHAR(MAX),
                    [index_columns_include] VARCHAR(MAX),
                    [has_filter] BIT ,
                    [filter_definition] VARCHAR(MAX),
                    [currentFilegroupName]  VARCHAR(128),
                    [CurrentCompression]    VARCHAR(128));
  INSERT INTO @Results2
    SELECT
      [SCH].[schema_id], [SCH].[name] AS [SCHEMA_NAME],
      [objz].[object_id], [objz].[name] AS [OBJECT_NAME],
      [IDX].[index_id], ISNULL([IDX].[name], '---') AS [index_name],
      [partitions].[ROWS], [partitions].[SizeMB], INDEXPROPERTY([objz].[object_id], [IDX].[name], 'IndexDepth') AS [IndexDepth],
      [IDX].[type], [IDX].[type_desc], [IDX].[fill_factor],
      [IDX].[is_unique], [IDX].[is_primary_key], [IDX].[is_unique_constraint],
      ISNULL([Index_Columns].[index_columns_key], '---') AS [index_columns_key],
      ISNULL([Index_Columns].[index_columns_include], '---') AS [index_columns_include],
      [IDX].[has_filter],
      [IDX].[filter_definition],
      [filz].[name],
      ISNULL([p].[data_compression_desc],'')
    FROM [tempdb].[sys].[objects] AS [objz]
      INNER JOIN [tempdb].[sys].[schemas] AS [SCH] ON [objz].[schema_id]=[SCH].[schema_id]
      INNER JOIN [tempdb].[sys].[indexes] AS [IDX] ON [objz].[object_id]=[IDX].[object_id]
      INNER JOIN [sys].[filegroups] AS [filz] ON [IDX].[data_space_id] = [filz].[data_space_id]
      INNER JOIN [sys].[partitions] AS [p]     ON  [IDX].[object_id] =  [p].[object_id]  AND [IDX].[index_id] = [p].[index_id]
      INNER JOIN (
                  SELECT
                    [statz].[object_id], [statz].[index_id], SUM([statz].[row_count]) AS [ROWS],
                    CONVERT(NUMERIC(19,3), CONVERT(NUMERIC(19,3), SUM([statz].[in_row_reserved_page_count]+[statz].[lob_reserved_page_count]+[statz].[row_overflow_reserved_page_count]))/CONVERT(NUMERIC(19,3), 128)) AS [SizeMB]
                  FROM [tempdb].[sys].[dm_db_partition_stats] AS [statz]
                  GROUP BY [statz].[object_id], [statz].[index_id]
                 ) AS [partitions]
        ON  [IDX].[object_id]=[partitions].[object_id]
        AND [IDX].[index_id]=[partitions].[index_id]
    CROSS APPLY (
                 SELECT
                   LEFT([Index_Columns].[index_columns_key], LEN([Index_Columns].[index_columns_key])-1) AS [index_columns_key],
                  LEFT([Index_Columns].[index_columns_include], LEN([Index_Columns].[index_columns_include])-1) AS [index_columns_include]
                 FROM
                      (
                       SELECT
                              (
                              SELECT QUOTENAME([colz].[name]) + CASE WHEN [IXCOLS].[is_descending_key] = 0 THEN ' asc' ELSE ' desc' END + ',' + ' '
                               FROM [tempdb].[sys].[index_columns] AS [IXCOLS]
                                 INNER JOIN [tempdb].[sys].[columns] AS [colz]
                                   ON  [IXCOLS].[column_id]   = [colz].[column_id]
                                   AND [IXCOLS].[object_id] = [colz].[object_id]
                               WHERE [IXCOLS].[is_included_column] = 0
                                 AND [IDX].[object_id] = [IXCOLS].[object_id]
                                 AND [IDX].[index_id] = [IXCOLS].[index_id]
                               ORDER BY [IXCOLS].[key_ordinal]
                               FOR XML PATH('')
                              ) AS [index_columns_key],
                             (
                             SELECT QUOTENAME([colz].[name]) + ',' + ' '
                              FROM [tempdb].[sys].[index_columns] AS [IXCOLS]
                                INNER JOIN [tempdb].[sys].[columns] AS [colz]
                                  ON  [IXCOLS].[column_id]   = [colz].[column_id]
                                  AND [IXCOLS].[object_id] = [colz].[object_id]
                              WHERE [IXCOLS].[is_included_column] = 1
                                AND [IDX].[object_id] = [IXCOLS].[object_id]
                                AND [IDX].[index_id] = [IXCOLS].[index_id]
                              ORDER BY [IXCOLS].[index_column_id]
                              FOR XML PATH('')
                             ) AS [index_columns_include]
                      ) AS [Index_Columns]
                ) AS [Index_Columns]
    WHERE [SCH].[name]  LIKE CASE
                                     WHEN @SCHEMANAME = '' COLLATE SQL_Latin1_General_CP1_CI_AS
                                     THEN [SCH].[name]
                                     ELSE @SCHEMANAME
                                   END
    AND [objz].[name] LIKE CASE
                                  WHEN @TBLNAME = ''  COLLATE SQL_Latin1_General_CP1_CI_AS
                                  THEN [objz].[name]
                                  ELSE @TBLNAME
                                END
    ORDER BY
      [SCH].[name],
      [objz].[name],
      [IDX].[name];
--@Results2 table has both PK,s Uniques and indexes in thme...pull them out for adding to funal results:
  SET @CONSTRAINTSQLS = '' COLLATE SQL_Latin1_General_CP1_CI_AS;
  SET @INDEXSQLS      = '' COLLATE SQL_Latin1_General_CP1_CI_AS;
--##############################################################################
--constraints
--##############################################################################
  SELECT @CONSTRAINTSQLS = @CONSTRAINTSQLS
         + CASE
             WHEN [is_primary_key] = 1 OR [is_unique] = 1
             THEN @vbCrLf
                  + 'CONSTRAINT   '  COLLATE SQL_Latin1_General_CP1_CI_AS + QUOTENAME([index_name]) + ' '
                  + SPACE(@STRINGLEN - LEN([index_name]))
                  + CASE
                      WHEN [is_primary_key] = 1
                      THEN ' PRIMARY KEY '  COLLATE SQL_Latin1_General_CP1_CI_AS
                      ELSE CASE
                             WHEN [is_unique] = 1
                             THEN ' UNIQUE      '     COLLATE SQL_Latin1_General_CP1_CI_AS
                             ELSE ''  COLLATE SQL_Latin1_General_CP1_CI_AS
                           END
                    END
                  + [type_desc]
                  + CASE
                      WHEN [type_desc]='NONCLUSTERED'
                      THEN ''  COLLATE SQL_Latin1_General_CP1_CI_AS
                      ELSE '   '
                    END
                  + ' (' + [index_columns_key] + ')'
                  + CASE
                      WHEN [index_columns_include] <> '---'
                      THEN ' INCLUDE (' + [index_columns_include] + ')'
                      ELSE ''  COLLATE SQL_Latin1_General_CP1_CI_AS
                    END
                  + CASE
                      WHEN [has_filter] = 1
                      THEN ' ' + [filter_definition]
                      ELSE ' '
                    END
                  + CASE WHEN [fill_factor] <> 0 OR [CurrentCompression] <> 'NONE'
                  THEN ' WITH (' + CASE
                                    WHEN [fill_factor] <> 0
                                    THEN 'FILLFACTOR = ' + CONVERT(VARCHAR(30),[fill_factor])
                                    ELSE ''  COLLATE SQL_Latin1_General_CP1_CI_AS
                                  END
                                + CASE
                                    WHEN [fill_factor] <> 0  AND [CurrentCompression] <> 'NONE' THEN ',DATA_COMPRESSION = ' + [CurrentCompression] + ' '
                                    WHEN [fill_factor] <> 0  AND [CurrentCompression]  = 'NONE' THEN ''
                                    WHEN [fill_factor]  = 0  AND [CurrentCompression] <> 'NONE' THEN 'DATA_COMPRESSION = ' + [CurrentCompression] + ' '
                                    ELSE ''  COLLATE SQL_Latin1_General_CP1_CI_AS
                                  END
                                  + ')'
                  ELSE ''  COLLATE SQL_Latin1_General_CP1_CI_AS
                  END
             ELSE '' COLLATE SQL_Latin1_General_CP1_CI_AS
           END + ','
  FROM @Results2
  WHERE [type_desc] != 'HEAP'
    AND [is_primary_key] = 1
    OR  [is_unique] = 1
  ORDER BY
    [is_primary_key] DESC,
    [is_unique] DESC;
--##############################################################################
--indexes
--##############################################################################
  SELECT @INDEXSQLS = @INDEXSQLS
         + CASE
             WHEN [is_primary_key] = 0 OR [is_unique] = 0
             THEN @vbCrLf
                  + 'CREATE '  COLLATE SQL_Latin1_General_CP1_CI_AS + [type_desc] + ' INDEX '  COLLATE SQL_Latin1_General_CP1_CI_AS + QUOTENAME([index_name]) + ' ' COLLATE SQL_Latin1_General_CP1_CI_AS
                  + @vbCrLf
                  + '   ON '  COLLATE SQL_Latin1_General_CP1_CI_AS
                  + QUOTENAME([SCHEMA_NAME]) + '.' + QUOTENAME([OBJECT_NAME])
                  + CASE
                        WHEN [CurrentCompression] = 'COLUMNSTORE'  COLLATE SQL_Latin1_General_CP1_CI_AS
                        THEN ' ('  COLLATE SQL_Latin1_General_CP1_CI_AS+ [index_columns_include] + ')'  COLLATE SQL_Latin1_General_CP1_CI_AS
                        ELSE ' ('  COLLATE SQL_Latin1_General_CP1_CI_AS+ [index_columns_key] + ')' COLLATE SQL_Latin1_General_CP1_CI_AS
                    END
                  + CASE
                      WHEN [CurrentCompression] = 'COLUMNSTORE'  COLLATE SQL_Latin1_General_CP1_CI_AS
                      THEN ''  COLLATE SQL_Latin1_General_CP1_CI_AS
                      ELSE
                        CASE
                     WHEN [index_columns_include] <> '---'
                     THEN @vbCrLf + '   INCLUDE ('  COLLATE SQL_Latin1_General_CP1_CI_AS + [index_columns_include] + ')'  COLLATE SQL_Latin1_General_CP1_CI_AS
                     ELSE ''   COLLATE SQL_Latin1_General_CP1_CI_AS
                   END
                    END
                  --2008 filtered indexes syntax
                  + CASE
                      WHEN [has_filter] = 1
                      THEN @vbCrLf + '   WHERE '  COLLATE SQL_Latin1_General_CP1_CI_AS + [filter_definition]
                      ELSE ''  COLLATE SQL_Latin1_General_CP1_CI_AS
                    END
                  + CASE WHEN [fill_factor] <> 0 OR [CurrentCompression] <> 'NONE'  COLLATE SQL_Latin1_General_CP1_CI_AS
                  THEN ' WITH ('  COLLATE SQL_Latin1_General_CP1_CI_AS + CASE
                                    WHEN [fill_factor] <> 0
                                    THEN 'FILLFACTOR = '  COLLATE SQL_Latin1_General_CP1_CI_AS + CONVERT(VARCHAR(30),[fill_factor])
                                    ELSE ''  COLLATE SQL_Latin1_General_CP1_CI_AS
                                  END
                                + CASE
                                    WHEN [fill_factor] <> 0  AND [CurrentCompression] <> 'NONE'  COLLATE SQL_Latin1_General_CP1_CI_AS THEN ',DATA_COMPRESSION = ' COLLATE SQL_Latin1_General_CP1_CI_AS + [CurrentCompression] + ' '
                                    WHEN [fill_factor] <> 0  AND [CurrentCompression]  = 'NONE'  COLLATE SQL_Latin1_General_CP1_CI_AS THEN ''  COLLATE SQL_Latin1_General_CP1_CI_AS
                                    WHEN [fill_factor]  = 0  AND [CurrentCompression] <> 'NONE'  COLLATE SQL_Latin1_General_CP1_CI_AS THEN 'DATA_COMPRESSION = '  COLLATE SQL_Latin1_General_CP1_CI_AS+ [CurrentCompression] + ' '
                                    ELSE ''  COLLATE SQL_Latin1_General_CP1_CI_AS
                                  END
                                  + ')' COLLATE SQL_Latin1_General_CP1_CI_AS
                  ELSE ''  COLLATE SQL_Latin1_General_CP1_CI_AS
                  END
           END
  FROM @Results2
  WHERE [type_desc] != 'HEAP'
    AND [is_primary_key] = 0
    AND [is_unique] = 0
  ORDER BY
    [is_primary_key] DESC,
    [is_unique] DESC;
  IF @INDEXSQLS <> '' COLLATE SQL_Latin1_General_CP1_CI_AS
    SET @INDEXSQLS = @vbCrLf + 'GO'  COLLATE SQL_Latin1_General_CP1_CI_AS+ @vbCrLf + @INDEXSQLS;
--##############################################################################
--CHECK Constraints
--##############################################################################
  SET @CHECKCONSTSQLS = '';
  SELECT
    @CHECKCONSTSQLS = @CHECKCONSTSQLS
    + @vbCrLf
    + ISNULL('CONSTRAINT   ' + QUOTENAME([objz].[name]) + ' '
    + SPACE(@STRINGLEN - LEN([objz].[name]))
    + ' CHECK ' + ISNULL([CHECKS].[definition],'')
    + ',','')
  FROM [tempdb].[sys].[objects] AS [objz]
    INNER JOIN [tempdb].[sys].[check_constraints] AS [CHECKS] ON [objz].[object_id] = [CHECKS].[object_id]
  WHERE [objz].[type] = 'C'
    AND [objz].[parent_object_id] = @TABLE_ID;
--##############################################################################
--FOREIGN KEYS
--##############################################################################
  SET @FKSQLS = '' ;
    SELECT
    @FKSQLS=@FKSQLS
    + @vbCrLf + [MyAlias].[Command] FROM
(
SELECT
  DISTINCT
  --FK must be added AFTER the PK/unique constraints are added back.
  850 AS [ExecutionOrder],
  'CONSTRAINT '
  + QUOTENAME([conz].[name])
  + ' FOREIGN KEY ('
  + [ChildCollection].[ChildColumns]
  + ') REFERENCES '
  + QUOTENAME(SCHEMA_NAME([conz].[schema_id]))
  + '.'
  + QUOTENAME(OBJECT_NAME([conz].[referenced_object_id]))
  + ' (' + [ParentCollection].[ParentColumns]
  + ') '
   +  CASE [conz].[update_referential_action]
                                        WHEN 0 THEN '' --' ON UPDATE NO ACTION '
                                        WHEN 1 THEN ' ON UPDATE CASCADE '
                                        WHEN 2 THEN ' ON UPDATE SET NULL '
                                        ELSE ' ON UPDATE SET DEFAULT '
                                    END
                  + CASE [conz].[delete_referential_action]
                                        WHEN 0 THEN '' --' ON DELETE NO ACTION '
                                        WHEN 1 THEN ' ON DELETE CASCADE '
                                        WHEN 2 THEN ' ON DELETE SET NULL '
                                        ELSE ' ON DELETE SET DEFAULT '
                                    END
                  + CASE [conz].[is_not_for_replication]
                        WHEN 1 THEN ' NOT FOR REPLICATION '
                        ELSE ''
                    END
  + ',' AS [Command]
FROM   [sys].[foreign_keys] AS [conz]
       INNER JOIN [sys].[foreign_key_columns] AS [colz]
         ON [conz].[object_id] = [colz].[constraint_object_id]

       INNER JOIN (--gets my child tables column names
SELECT
 [conz].[name],
 --technically, FK's can contain up to 16 columns, but real life is often a single column. coding here is for all columns
 [ChildColumns] = STUFF((SELECT
                         ',' + QUOTENAME([REFZ].[name])
                       FROM   [sys].[foreign_key_columns] AS [fkcolz]
                              INNER JOIN [sys].[columns] AS [REFZ]
                                ON [fkcolz].[parent_object_id] = [REFZ].[object_id]
                                   AND [fkcolz].[parent_column_id] = [REFZ].[column_id]
                       WHERE [fkcolz].[parent_object_id] = [conz].[parent_object_id]
                           AND [fkcolz].[constraint_object_id] = [conz].[object_id]
                         ORDER  BY
                        [fkcolz].[constraint_column_id]
                       FOR XML PATH(''), TYPE).[value]('.','varchar(max)'),1,1,'')
FROM   [sys].[foreign_keys] AS [conz]
      INNER JOIN [sys].[foreign_key_columns] AS [colz]
        ON [conz].[object_id] = [colz].[constraint_object_id]
 WHERE [conz].[parent_object_id]= @TABLE_ID
GROUP  BY
[conz].[name],
[conz].[parent_object_id],--- without GROUP BY multiple rows are returned
 [conz].[object_id]
    ) AS [ChildCollection]
         ON [conz].[name] = [ChildCollection].[name]
       INNER JOIN (--gets the parent tables column names for the FK reference
                  SELECT
                     [conz].[name],
                     [ParentColumns] = STUFF((SELECT
                                              ',' + [REFZ].[name]
                                            FROM   [sys].[foreign_key_columns] AS [fkcolz]
                                                   INNER JOIN [sys].[columns] AS [REFZ]
                                                     ON [fkcolz].[referenced_object_id] = [REFZ].[object_id]
                                                        AND [fkcolz].[referenced_column_id] = [REFZ].[column_id]
                                            WHERE  [fkcolz].[referenced_object_id] = [conz].[referenced_object_id]
                                              AND [fkcolz].[constraint_object_id] = [conz].[object_id]
                                            ORDER BY [fkcolz].[constraint_column_id]
                                            FOR XML PATH(''), TYPE).[value]('.','varchar(max)'),1,1,'')
                   FROM   [sys].[foreign_keys] AS [conz]
                          INNER JOIN [sys].[foreign_key_columns] AS [colz]
                            ON [conz].[object_id] = [colz].[constraint_object_id]
                           -- AND colz.parent_column_id
                   GROUP  BY
                    [conz].[name],
                    [conz].[referenced_object_id],--- without GROUP BY multiple rows are returned
                    [conz].[object_id]
                  ) AS [ParentCollection]
         ON [conz].[name] = [ParentCollection].[name]
)AS [MyAlias];
--##############################################################################
--RULES
--##############################################################################
  SET @RULESCONSTSQLS = ''  COLLATE SQL_Latin1_General_CP1_CI_AS;
  SELECT
    @RULESCONSTSQLS = @RULESCONSTSQLS
    + ISNULL(
             @vbCrLf
             + 'if not exists(SELECT [name] FROM tempdb.sys.objects WHERE TYPE=''R'' AND schema_id = '  COLLATE SQL_Latin1_General_CP1_CI_AS
             + CONVERT(VARCHAR(30),[objz].[schema_id])
             + ' AND [name] = '''  COLLATE SQL_Latin1_General_CP1_CI_AS
             + QUOTENAME(OBJECT_NAME([colz].[rule_object_id]))
             + ''')'  COLLATE SQL_Latin1_General_CP1_CI_AS
             + @vbCrLf
             + [MODS].[definition]  + @vbCrLf
             + 'GO'  COLLATE SQL_Latin1_General_CP1_CI_AS +  @vbCrLf
             + 'EXEC sp_binderule  '  COLLATE SQL_Latin1_General_CP1_CI_AS
             + QUOTENAME([objz].[name])
             + ', '''  COLLATE SQL_Latin1_General_CP1_CI_AS
             + QUOTENAME(OBJECT_NAME([colz].[object_id]))
             + '.'  COLLATE SQL_Latin1_General_CP1_CI_AS + QUOTENAME([colz].[name])
             + ''''  COLLATE SQL_Latin1_General_CP1_CI_AS
             + @vbCrLf
             + 'GO' ,''  COLLATE SQL_Latin1_General_CP1_CI_AS)
  FROM [tempdb].[sys].[columns] [colz]
    INNER JOIN [tempdb].[sys].[objects] [objz]
      ON [objz].[object_id] = [colz].[object_id]
    INNER JOIN [tempdb].[sys].[sql_modules] AS [MODS]
      ON [colz].[rule_object_id] = [MODS].[object_id]
  WHERE [colz].[rule_object_id] <> 0
    AND [colz].[object_id] = @TABLE_ID;
--##############################################################################
--TRIGGERS
--##############################################################################
  SET @TRIGGERSTATEMENT = '';
  SELECT
    @TRIGGERSTATEMENT = @TRIGGERSTATEMENT +  @vbCrLf + [MODS].[definition] + @vbCrLf + 'GO'
  FROM [tempdb].[sys].[sql_modules] AS [MODS]
  WHERE [MODS].[object_id] IN(SELECT
                         [objz].[object_id]
                       FROM [tempdb].[sys].[objects] AS [objz]
                       WHERE [objz].[type] = 'TR'
                       AND [objz].[parent_object_id] = @TABLE_ID);
  IF @TRIGGERSTATEMENT <> ''  COLLATE SQL_Latin1_General_CP1_CI_AS
    SET @TRIGGERSTATEMENT = @vbCrLf + 'GO'  COLLATE SQL_Latin1_General_CP1_CI_AS + @vbCrLf + @TRIGGERSTATEMENT;
--##############################################################################
--NEW SECTION QUERY ALL EXTENDED PROPERTIES
--##############################################################################
  SET @EXTENDEDPROPERTIES = ''  COLLATE SQL_Latin1_General_CP1_CI_AS;
  SELECT  @EXTENDEDPROPERTIES =
          @EXTENDEDPROPERTIES + @vbCrLf +
         'EXEC tempdb.sys.sp_addextendedproperty
          @name = N'''  COLLATE SQL_Latin1_General_CP1_CI_AS
          + [name]
          + ''', @value = N'''  COLLATE SQL_Latin1_General_CP1_CI_AS
          + REPLACE(CONVERT(VARCHAR(MAX),[value]),'''','''''') + ''',
          @level0type = N''SCHEMA'', @level0name = '  COLLATE SQL_Latin1_General_CP1_CI_AS
          + QUOTENAME(@SCHEMANAME + ',
          @level1type = N''TABLE'', @level1name = ['  COLLATE SQL_Latin1_General_CP1_CI_AS
          + @TBLNAME)
          + '];' COLLATE SQL_Latin1_General_CP1_CI_AS
 --SELECT objtype, objname, name, value
  FROM [sys].[fn_listextendedproperty] (NULL, 'schema', @SCHEMANAME, 'table', @TBLNAME, NULL, NULL);
  --OMacoder suggestion for column extended properties http://www.sqlservercentral.com/Forums/FindPost1651606.aspx
  SELECT @EXTENDEDPROPERTIES =
         @EXTENDEDPROPERTIES + @vbCrLf +
         'EXEC sys.sp_addextendedproperty
         @name = N'''  COLLATE SQL_Latin1_General_CP1_CI_AS
         + [name]
         + ''', @value = N'''  COLLATE SQL_Latin1_General_CP1_CI_AS
         + REPLACE(CONVERT(VARCHAR(MAX),[value]),'''','''''')
         + ''',
         @level0type = N''SCHEMA'', @level0name = '  COLLATE SQL_Latin1_General_CP1_CI_AS
         + QUOTENAME(@SCHEMANAME) + ',
         @level1type = N''TABLE'', @level1name = '  COLLATE SQL_Latin1_General_CP1_CI_AS
         + QUOTENAME(@TBLNAME) + ',
         @level2type = N''COLUMN'', @level2name = '  COLLATE SQL_Latin1_General_CP1_CI_AS
         + QUOTENAME([objname]) + ';' COLLATE SQL_Latin1_General_CP1_CI_AS
  --SELECT objtype, objname, name, value
  FROM [sys].[fn_listextendedproperty] (NULL, 'schema', @SCHEMANAME, 'table', @TBLNAME, 'column', NULL);
  IF @EXTENDEDPROPERTIES <> '' COLLATE SQL_Latin1_General_CP1_CI_AS
    SET @EXTENDEDPROPERTIES = @vbCrLf + 'GO' COLLATE SQL_Latin1_General_CP1_CI_AS + @vbCrLf + @EXTENDEDPROPERTIES;
--##############################################################################
--FINAL CLEANUP AND PRESENTATION
--##############################################################################
--at this point, there is a trailing comma, or it blank
  SELECT
    @FINALSQL = @FINALSQL
                + @CONSTRAINTSQLS
                + @CHECKCONSTSQLS
                + @FKSQLS;
--note that this trims the trailing comma from the end of the statements
  SET @FINALSQL = SUBSTRING(@FINALSQL,1,LEN(@FINALSQL) -1) ;
  SET @FINALSQL = @FINALSQL + ')'  COLLATE SQL_Latin1_General_CP1_CI_AS + @vbCrLf ;
  SET @input = @vbCrLf
       + @FINALSQL
       + @INDEXSQLS
       + @RULESCONSTSQLS
       + @TRIGGERSTATEMENT
       + @EXTENDEDPROPERTIES
--ten years worth of days from todays date:
   ;WITH [E01]([N]) AS (SELECT 1 UNION ALL SELECT 1 UNION ALL
                    SELECT 1 UNION ALL SELECT 1 UNION ALL
                    SELECT 1 UNION ALL SELECT 1 UNION ALL
                    SELECT 1 UNION ALL SELECT 1 UNION ALL
                    SELECT 1 UNION ALL SELECT 1), --         10 or 10E01 rows
         [E02]([N]) AS (SELECT 1 FROM [E01] AS [a], [E01] AS [b]),  --        100 or 10E02 rows
         [E04]([N]) AS (SELECT 1 FROM [E02] AS [a], [E02] AS [b]),  --     10,000 or 10E04 rows
         [E08]([N]) AS (SELECT 1 FROM [E04] AS [a], [E04] AS [b]),  --100,000,000 or 10E08 rows
         --E16(N) AS (SELECT 1 FROM E08 a, E08 b),  --10E16 or more rows than you'll EVER need,
         [Tally]([N]) AS (SELECT ROW_NUMBER() OVER (ORDER BY [E08].[N]) FROM [E08]),
       [ItemSplit](
                 [ItemOrder],
                 [Item]
                ) AS (
                      SELECT [Tally].[N],
                        SUBSTRING(@vbCrLf + @input + @vbCrLf,[Tally].[N] + DATALENGTH(@vbCrLf),CHARINDEX(@vbCrLf,@vbCrLf + @input + @vbCrLf,[Tally].[N] + DATALENGTH(@vbCrLf)) - [Tally].[N] - DATALENGTH(@vbCrLf))
                      FROM [Tally]
                      WHERE [Tally].[N] < DATALENGTH(@vbCrLf + @input)
                      --WHERE N < DATALENGTH(@vbCrLf + @input) -- REMOVED added @vbCrLf
                        AND SUBSTRING(@vbCrLf + @input + @vbCrLf,[Tally].[N],DATALENGTH(@vbCrLf)) = @vbCrLf --Notice how we find the delimiter
                     )
  SELECT
    --row_number() over (order by ItemOrder) as ItemID,
    [ItemSplit].[Item]
  FROM [ItemSplit];

  RETURN;
END; --PROC
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSchemaDDL]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--#################################################################################################
-- Real World DBA Toolkit Version 2019-08-01 Lowell Izaguirre lowell@stormrage.com
--#################################################################################################
CREATE   PROCEDURE [dbo].[sp_GetSchemaDDL]
  @SCHNAME              VARCHAR(255)
AS
BEGIN
SET NOCOUNT ON;
DECLARE @SavedSchema TABLE ( [ScriptDefinition] VARCHAR(max) NULL);
DECLARE @QualifiedObjectName  VARCHAR(260),
        @SchemaName           VARCHAR(128),
        @ObjectName           VARCHAR(128),
        @ObjectType           VARCHAR(128);
DECLARE [c1] CURSOR LOCAL FORWARD_ONLY READ_ONLY FOR
--###############################################################################################
--cursor definition
--###############################################################################################
  SELECT
    QUOTENAME(SCHEMA_NAME([objz].[schema_id])) + '.' + QUOTENAME([objz].[name]) AS [QualifiedObjectName],
    SCHEMA_NAME([objz].[schema_id]) AS [SchemaName],
    [objz].[name] AS [ObjectName],
    [objz].[type_desc]
  FROM [sys].[objects] AS [objz]
  LEFT OUTER JOIN sys.tables AS t ON objz.object_id = t.history_table_id
  WHERE [objz].[type] IN ('S','U')
  AND [objz].[type_desc] IN ('USER_TABLE' )
  AND [objz].[name] <> 'dtproperties'
  AND t.history_table_id IS NULL
  AND SCHEMA_NAME([objz].[schema_id]) = @SCHNAME
  --'SYNONYM','SQL_STORED_PROCEDURE','VIEW','SQL_INLINE_TABLE_VALUED_FUNCTION','SQL_SCALAR_FUNCTION', 'SQL_TABLE_VALUED_FUNCTION'
  ORDER BY [QualifiedObjectName];
--###############################################################################################
--DELETE FROM @SavedSchema;
OPEN [c1];
FETCH NEXT FROM [c1] INTO @QualifiedObjectName,@SchemaName,@ObjectName,@ObjectType;
WHILE @@fetch_status <> -1
  BEGIN
      INSERT INTO @SavedSchema([ScriptDefinition])
        EXECUTE [dbo].[sp_GetDDL] @QualifiedObjectName;
    FETCH NEXT FROM [c1] INTO @QualifiedObjectName,@SchemaName,@ObjectName,@ObjectType;
  END;
CLOSE [c1];
DEALLOCATE [c1];
SELECT * FROM @SavedSchema
END;
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarCanales]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SPActualizarCanales]
(
@IdCanal int,
@Canal varchar(50),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	Canales
				SET Canal=@Canal,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdCanal=@IdCanal
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Canal actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarCategoria]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPActualizarCategoria](
@IdCategoria int,
@Categoria varchar(50),
@Rango varchar(50),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
BEGIN
	begin try
		begin tran ACTUALIZARCATEGORIA
			begin
				update Categorias set  Categoria = @Categoria, Rango = @Rango, ModificadoPor = 'Sistema', FechaModificacion = GETDATE(), Accion = 'A'
				where IdCategoria = @IdCategoria
			end
		commit tran ACTUALIZARCATEGORIA
			SET @INDICADOR = 0
			SET @MENSAJE = 'Éxito: Linea de negocio actualizada éxitosamente'
	end try
	begin catch
		SET @INDICADOR = 1
		SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
		ROLLBACK TRANSACTION ACTUALIZARCATEGORIA
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarClasificacionIndicador]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPActualizarClasificacionIndicador]
(
@IdClasificacion int,
@Clasificacion varchar(100),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	ClasificacionIndicadores
				SET
				Clasificacion=  @Clasificacion,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdClasificacion=@IdClasificacion
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Valor actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarDireccion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SPActualizarDireccion]
(
 @IdDireccion int, 
 @Codigo varchar(30),
 @Direccion varchar(50),
 @INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	Direcciones
				SET Codigo=@Codigo,
				Direccion=@Direccion,
				ModificadoPor = 'SISTEMA',
				FechaModificacion ='08/07/2022',
				Accion = 'A'
				WHERE IdDireccion=@IdDireccion
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Dirección actualizada exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarEstadoAceptacion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SPActualizarEstadoAceptacion]
(
@IdEstadoAceptacion int,
@EstadoAceptacion varchar(50),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	EstadosAceptacion
				SET EstadoAceptacion=@EstadoAceptacion,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdEstadoAceptacion=@IdEstadoAceptacion
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Estado de aceptacion actualizada exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarEstadoHallazgo]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SPActualizarEstadoHallazgo]
(
@IdEstadoHallazgo int,
@EstadoHallazgo varchar(50),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	EstadosHallazgo
				SET EstadoHallazgo=@EstadoHallazgo,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdEstadoHallazgo=@IdEstadoHallazgo
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Estado de hallazgo actualizada exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarEtapaTaller]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPActualizarEtapaTaller]
(
@IdEtapaTaller int,
@EtapaTaller varchar(100),
@IdTipoTaller int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	EtapasTalleres
				SET
				EtapaTaller= @EtapaTaller,
				IdTipoTaller = @IdTipoTaller,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdEtapaTaller=@IdEtapaTaller
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Etapa de taller actualizada exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarFasesCJ]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPActualizarFasesCJ]
(
@IdFaseCJ int,
@FaseCustomerJourney varchar(100),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(150) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	FasesCustomerJorney
				SET
				FaseCustomerJourney=  @FaseCustomerJourney,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdFaseCJ=@IdFaseCJ
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Fase del Customer Journey actualizada exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarFaseServicio]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPActualizarFaseServicio]
(
@IdFase int,
@Fase varchar(50),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	FasesServicios
				SET Fase=@Fase,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdFase=@IdFase
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Fase de Servicio actualizada exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarGradoEsfuerzo]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SPActualizarGradoEsfuerzo]
(
 @IdGradoEsfuerzo int, 
 @Codigo varchar(30),
 @GradoEsfuerzo varchar(50),
 @INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	GradosEsfuerzo
				SET Codigo=@Codigo,
				GradoEsfuerzo=@GradoEsfuerzo,
				ModificadoPor = 'SISTEMA',
				FechaModificacion ='08/07/2022',
				Accion = 'A'
				WHERE IdGradoEsfuerzo=@IdGradoEsfuerzo
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Grado esfuerzo actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarGradoImpacto]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPActualizarGradoImpacto]
(
@IdGradoImpacto int,
@GradoImpacto varchar(50),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	GradosImpacto
				SET GradoImpacto=@GradoImpacto,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdGradoImpacto=@IdGradoImpacto
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Grado de impacto actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarLineaNegocio]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPActualizarLineaNegocio]
(
@IdLinea int,
@LineaNegocio varchar(50),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	LineasNegocio
				SET LineaNegocio=@LineaNegocio,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdLinea=@IdLinea
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Linea de negocio actualizada exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarMacroActividad]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPActualizarMacroActividad]
(
@IdMacro int,
@MacroActividad varchar(100),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	MacrosActividades
				SET
				MacroActividad= @MacroActividad,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdMacro=@IdMacro
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Macro actividad actualizada exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarMetodologiaCX]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPActualizarMetodologiaCX]
(
@IdMetodologia int,
@Metodologia varchar(100),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(200) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	MetodologiasExperienciaCliente
				SET
				Metodologia= @Metodologia,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdMetodologia=@IdMetodologia
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Metodología de experiencia cliente actualizada exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarPeriodicidad]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPActualizarPeriodicidad]
(
@IdPeriodicidad int,
@Periodicidad varchar(50),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	Periodicidad
				SET
				Periodicidad= @Periodicidad,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdPeriodicidad=@IdPeriodicidad
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Periodicidad actualizada exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarSector]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SPActualizarSector]
(
@IdSector int,
@Sector varchar(50),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	Sectores
				SET Sector=@Sector,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdSector=@IdSector
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Sector actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarSegmento]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPActualizarSegmento]
(
@IdSegmento int,
@IdSector int,
@Segmento varchar(100),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	Segmentos
				SET Segmento=@Segmento,
				IdSector=@IdSector,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdSegmento=@IdSegmento
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Segmento actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarServicioLineaNegocio]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPActualizarServicioLineaNegocio]
(
@IdServicio int,
@IdLinea int,
@Servicio varchar(100),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	Servicios
				SET Servicio=@Servicio,
				IdLinea=@IdLinea,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdServicio=@IdServicio
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Servicio actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarServicioSocio]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



Create PROCEDURE [dbo].[SPActualizarServicioSocio]
(
@IdServicioSocio int,
@IdSocio int,
@IdLinea int,
@IdServicio int,
@INDICADOR INT OUT,
@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	ServiciosSocios
				SET 
				IdSocio=@IdSocio,
				IdLinea=@IdLinea,
				IdServicio=@IdServicio,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdServicioSocio=@IdServicioSocio
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: SocioServicio actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarSocios]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SPActualizarSocios]
(
@IdSocio int,
@Nombre varchar(100),
@Cedula varchar(50),
@Correo varchar(50),
@Telefono varchar(30),
@IdTipoPersona int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(150) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	Socios
				SET
				Nombre = @Nombre,
				Cedula = @Cedula,
				Correo = @Correo,
				Telefono = @Telefono,
				IdTipoPersona = @IdTipoPersona,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdSocio=@IdSocio
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Socio actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarTipoContactoEncuesta]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SPActualizarTipoContactoEncuesta]
(
@IdTipoContactoEncuesta int,
@TipoContactoEncuesta varchar(100),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	TipoContactoEncuesta
				SET
				TipoContactoEncuesta=  @TipoContactoEncuesta,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdTipoContactoEncuesta=@IdTipoContactoEncuesta
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Tipo de contacto para aplicacion de encuestas actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarTipoEncuesta]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPActualizarTipoEncuesta]
(
@IdTipoEncuesta int,
@TipoEncuesta varchar(100),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	TiposEncuestas
				SET
				TipoEncuesta=  @TipoEncuesta,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdTipoEncuesta=@IdTipoEncuesta
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Tipo de encuesta actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarTipoIdentificacion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SPActualizarTipoIdentificacion]
(
@IdTipoIdentificacion int,
@TipoIdentificacion varchar(100),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	TipoIdentificacion
				SET
				TipoIdentificacion=  @TipoIdentificacion,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdTipoIdentificacion=@IdTipoIdentificacion
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Tipo de identificacion actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarTipoIndicador]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SPActualizarTipoIndicador]
(

 @IdTipoIndicador int,
 @TipoIndicador varchar(100),
 @Sigla varchar(50),
 @Minimo int,
 @Maximo int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
declare @Current int = (SELECT COUNT(*) FROM ClasificacionIndicadores WHERE IdTipoIndicador=@IdTipoIndicador)+1
declare @Min int = @Minimo
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				if @Maximo>(SELECT COUNT(*) FROM ClasificacionIndicadores WHERE IdTipoIndicador=@IdTipoIndicador)
				BEGIN
					WHILE @Current <= @Maximo
						Begin
						Insert Into ClasificacionIndicadores(Clasificacion,IngresadoPor,FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion,IdTipoIndicador,Valor) Values('','SISTEMA',CURRENT_TIMESTAMP,'SISTEMA',CURRENT_TIMESTAMP,1,'I',@IdTipoIndicador,@Current)
						Set @Current = @Current + 1
						End
				END

				if @Minimo <= (SELECT Minimo FROM TiposIndicadores WHERE IdTipoIndicador=@IdTipoIndicador)
				BEGIN
					WHILE @Min <= (SELECT Minimo FROM TiposIndicadores WHERE IdTipoIndicador=@IdTipoIndicador)
						Begin
						BEGIN
						IF NOT EXISTS (SELECT * FROM ClasificacionIndicadores WHERE IdTipoIndicador = @IdTipoIndicador and Valor = @Min)
						Begin
						Insert Into ClasificacionIndicadores(Clasificacion,IngresadoPor,FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion,IdTipoIndicador,Valor) Values('','SISTEMA',CURRENT_TIMESTAMP,'SISTEMA',CURRENT_TIMESTAMP,1,'I',@IdTipoIndicador,@Min)
						End
						End
						Set @Min = @Min + 1
						End
				END

				BEGIN
				UPDATE	TiposIndicadores
				SET
				TipoIndicador=  @TipoIndicador,
				Sigla=@Sigla,
				Minimo=@Minimo,
				Maximo=@Maximo,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdTipoIndicador=@IdTipoIndicador
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Tipo de Indicador actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarTipoInteraccion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SPActualizarTipoInteraccion]
(
@IdTipoInteraccion int,
@TipoInteraccion varchar(100),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	TipoInteraccion
				SET
				TipoInteraccion=  @TipoInteraccion,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdTipoInteraccion=@IdTipoInteraccion
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Tipo de interaccion actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarTipoMetrica]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SPActualizarTipoMetrica]
(
@IdTipoMetrica int,
@Tipo varchar(50),
@Descripcion varchar(100),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	TiposMetricas
				SET
				Tipo=  @Tipo,
				Descripcion=  @Descripcion,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdTipoMetrica=@IdTipoMetrica
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Tipo de Metrica actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarTipoPerspectivas]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SPActualizarTipoPerspectivas]
(
@IdTipoPerspectiva int,
@TipoPerspectiva varchar(50),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	TipoPerspectiva
				SET
				TipoPerspectiva=  @TipoPerspectiva,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdTipoPerspectiva=@IdTipoPerspectiva
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Tipo de perspectiva actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarTiposPersona]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SPActualizarTiposPersona]
(
@IdTipoPersona int,
@TipoPersona varchar(100),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	TiposPersonas
				SET
				TipoPersona=  @TipoPersona,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdTipoPersona=@IdTipoPersona
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Tipo de persona actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarTipoTaller]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPActualizarTipoTaller]
(
@IdTipoTaller int,
@TipoTaller varchar(100),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN ACTUALIZAR
				BEGIN
				UPDATE	TiposTalleres
				SET
				TipoTaller=  @TipoTaller,
				ModificadoPor = 'SISTEMA',
				FechaModificacion =GETDATE(),
				Accion = 'A'
				WHERE IdTipoTaller=@IdTipoTaller
				END

			COMMIT TRAN ACTUALIZAR
			SET @INDICADOR = 0
			SET @MENSAJE = 'Exito: Tipo de taller actualizado exitosamente'
		END TRY
		BEGIN CATCH
			SET @INDICADOR = 1
			SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
			ROLLBACK TRANSACTION ACTUALIZAR
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarCanales]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPEliminarCanales]
(
@IdCanal int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM Canales WHERE IdCanal = @IdCanal)
					BEGIN
						UPDATE	Canales
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdCanal=@IdCanal
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El canal de comunicacion fue desactivado exitosamente.'
										 ELSE 'El canal de comunicacion fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarCategoria]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPEliminarCategoria](
@IdCategoria int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
DECLARE @ESTADO_ACTUAL BIT
BEGIN
	begin try
		begin tran DESACTIVARCATEGORIA
		SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM Categorias WHERE IdCategoria = @IdCategoria)
			begin

					update Categorias set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdCategoria = @IdCategoria
			end
		commit tran DESACTIVARCATEGORIA
			SET @INDICADOR = 0
			SET @MENSAJE = (
			CASE WHEN @ESTADO_ACTUAL = 1 THEN 'La categoría fue desactivada éxitosamente.'
					ELSE 'La categoría fue reactivada éxitosamente.'
			END
			)
	end try
	begin catch
		SET @INDICADOR = 1
		SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
		ROLLBACK TRANSACTION DESACTIVARCATEGORIA
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarDireccion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   PROCEDURE [dbo].[SPEliminarDireccion]
(
@IdDireccion int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM Direcciones WHERE IdDireccion = @IdDireccion)
					BEGIN
						UPDATE	Direcciones
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdDireccion=@IdDireccion
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'La dirección fue desactivada exitosamente.'
										 ELSE 'La dirección fue reactivada exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarEstadoAceptacion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPEliminarEstadoAceptacion]
(
@IdEstadoAceptacion int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM EstadosAceptacion WHERE IdEstadoAceptacion = @IdEstadoAceptacion)
					BEGIN
						UPDATE	EstadosAceptacion
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdEstadoAceptacion=@IdEstadoAceptacion
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El estado de aceptación  fue desactivada exitosamente.'
										 ELSE 'El estado de aceptación fue reactivada exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarEstadoHallazgo]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPEliminarEstadoHallazgo]
(
@IdEstadoHallazgo int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM EstadosHallazgo WHERE IdEstadoHallazgo = @IdEstadoHallazgo)
					BEGIN
						UPDATE	EstadosHallazgo
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdEstadoHallazgo=@IdEstadoHallazgo
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El estado de HALLAZGO  fue desactivada exitosamente.'
										 ELSE 'El estado de hallazgo fue reactivada exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarEtapaTaller]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SPEliminarEtapaTaller]
(
@IdEtapaTaller int,
@INDICADOR INT OUT,
@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM EtapasTalleres WHERE IdEtapaTaller = @IdEtapaTaller)
					BEGIN
						UPDATE	EtapasTalleres
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdEtapaTaller=@IdEtapaTaller
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'La etapa del taller fue desactivada exitosamente.'
										 ELSE 'La etapa del taller fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarFasesCJ]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPEliminarFasesCJ]
(
@IdFaseCJ int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM FasesCustomerJorney WHERE IdFaseCJ = @IdFaseCJ)
					BEGIN
						UPDATE	FasesCustomerJorney
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdFaseCJ=@IdFaseCJ
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'La fase de Customer Journey fue desactivada exitosamente.'
										 ELSE 'La fase de Customer Journey fue reactivada exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarFaseServicio]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SPEliminarFaseServicio]
(
@IdFase int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM FasesServicios WHERE IdFase = @IdFase)
					BEGIN
						UPDATE	FasesServicios
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdFase=@IdFase
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'La fase de servicio fue desactivada exitosamente.'
										 ELSE 'La fase de servicio fue reactivada exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarGradoEsfuerzo]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   PROCEDURE [dbo].[SPEliminarGradoEsfuerzo]
(
@IdGradoEsfuerzo int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM GradosEsfuerzo WHERE IdGradoEsfuerzo = @IdGradoEsfuerzo)
					BEGIN
						UPDATE	GradosEsfuerzo
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdGradoEsfuerzo=@IdGradoEsfuerzo
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El grado de esfuerzo fue desactivado exitosamente.'
										 ELSE 'El grado de esfuerzo fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarGradoImpacto]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPEliminarGradoImpacto]
(
@IdGradoImpacto int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM GradosImpacto WHERE IdGradoImpacto = @IdGradoImpacto)
					BEGIN
						UPDATE	GradosImpacto
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdGradoImpacto=@IdGradoImpacto
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'Grado de impacto desactivado exitosamente.'
										 ELSE 'Grado de impacto reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarJefaturaPorDireccion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPEliminarJefaturaPorDireccion](
@IdJefatura int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
DECLARE @ESTADO_ACTUAL BIT
BEGIN
begin try
		begin tran DESACTIVARJEFATURA
		SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM Jefaturas WHERE IdJefatura = @IdJefatura)
			begin

					update Jefaturas set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						Fecha_Modificacion = GETDATE(), 
						Modificado_Por = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdJefatura = @IdJefatura
			end
		commit tran DESACTIVARJEFATURA
			SET @INDICADOR = 0
			SET @MENSAJE = (
			CASE WHEN @ESTADO_ACTUAL = 1 THEN 'La jefatura fue desactivada éxitosamente.'
					ELSE 'La jefatura fue reactivada éxitosamente.'
			END
			)
	end try
	begin catch
		SET @INDICADOR = 1
		SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
		ROLLBACK TRANSACTION DESACTIVARJEFATURA
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarLineaNegocio]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPEliminarLineaNegocio]
(
@IdLinea int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM LineasNegocio WHERE IdLinea = @IdLinea)
					BEGIN
						UPDATE	LineasNegocio
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdLinea=@IdLinea
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'La linea de negocio fue desactivada exitosamente.'
										 ELSE 'La linea de negocio fue reactivada exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarMacroActividad]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPEliminarMacroActividad]
(
@IdMacro int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM MacrosActividades WHERE IdMacro = @IdMacro)
					BEGIN
						UPDATE	MacrosActividades
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdMacro=@IdMacro
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'La macro actividad fue desactivada exitosamente.'
										 ELSE 'La macro actividad fue reactivada exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarMetodologiaCX]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPEliminarMetodologiaCX]
(
@IdMetodologia int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(100) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM MetodologiasExperienciaCliente WHERE IdMetodologia = @IdMetodologia)
					BEGIN
						UPDATE	MetodologiasExperienciaCliente
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdMetodologia=@IdMetodologia
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'La metodología de experiencia cliente fue desactivada exitosamente.'
										 ELSE 'La metodología de experiencia cliente fue reactivada exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarPeriodicidad]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPEliminarPeriodicidad]
(
@IdPeriodicidad int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM Periodicidad WHERE IdPeriodicidad = @IdPeriodicidad)
					BEGIN
						UPDATE	Periodicidad
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdPeriodicidad=@IdPeriodicidad
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'Periodicidad desactivada exitosamente.'
										 ELSE 'Periodicidad reactivada exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarSector]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   PROCEDURE [dbo].[SPEliminarSector]
(
@IdSector int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM Sectores WHERE IdSector = @IdSector)
					BEGIN
						UPDATE	Sectores
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdSector=@IdSector
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El sector fue desactivado exitosamente.'
										 ELSE 'El sector fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarSegmento]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[SPEliminarSegmento]
(
@IdSegmento int,
@INDICADOR INT OUT,
@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM Segmentos WHERE IdSegmento = @IdSegmento)
					BEGIN
						UPDATE	Segmentos
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdSegmento=@IdSegmento
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El segmento fue desactivado exitosamente.'
										 ELSE 'El segmento fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarServicioLineaNegocio]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE   PROCEDURE [dbo].[SPEliminarServicioLineaNegocio]
(
@IdServicio INT,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM Servicios WHERE IdServicio= @IdServicio)
					BEGIN
						UPDATE	Servicios
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdServicio=@IdServicio
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El Servicio fue desactivado exitosamente.'
										 ELSE 'El Servico fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarServicioSocios]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE   PROCEDURE [dbo].[SPEliminarServicioSocios]
(
@IdServicioSocio INT,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM ServiciosSocios WHERE IdServicioSocio = @IdServicioSocio)
					BEGIN
						UPDATE	ServiciosSocios
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdServicioSocio=@IdServicioSocio
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El Servico Socio fue desactivado exitosamente.'
										 ELSE 'El Servico Socio fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarSocios]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[SPEliminarSocios]
(
@IdSocio int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM Socios WHERE IdSocio = @IdSocio)
					BEGIN
						UPDATE	Socios
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdSocio=@IdSocio
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El Socio fue desactivado exitosamente.'
										 ELSE 'El Socio fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarTipoContactoEncuesta]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[SPEliminarTipoContactoEncuesta]
(
@IdTipoContactoEncuesta int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM TipoContactoEncuesta WHERE IdTipoContactoEncuesta = @IdTipoContactoEncuesta)
					BEGIN
						UPDATE	TipoContactoEncuesta
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdTipoContactoEncuesta=@IdTipoContactoEncuesta
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El tipo de contacto de encuesta fue desactivado exitosamente.'
										 ELSE 'El tipo de contacto de encuesta fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarTipoEncuesta]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPEliminarTipoEncuesta]
(
@IdTipoEncuesta int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM TiposEncuestas WHERE IdTipoEncuesta = @IdTipoEncuesta)
					BEGIN
						UPDATE	TiposEncuestas
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdTipoEncuesta=@IdTipoEncuesta
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El tipo de encuesta fue desactivado exitosamente.'
										 ELSE 'El tipo de encuesta fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarTipoIdentificacion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE   PROCEDURE [dbo].[SPEliminarTipoIdentificacion]
(
@IdTipoIdentificacion int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM TipoIdentificacion WHERE IdTipoIdentificacion = @IdTipoIdentificacion)
					BEGIN
						UPDATE	TipoIdentificacion
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdTipoIdentificacion=@IdTipoIdentificacion
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El tipo de identificacion fue desactivado exitosamente.'
										 ELSE 'El tipo de identificacion fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarTipoIndicador]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SPEliminarTipoIndicador]
(
@IdTipoIndicador int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM TiposIndicadores WHERE IdTipoIndicador = @IdTipoIndicador)
					BEGIN
						UPDATE	TiposIndicadores
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdTipoIndicador=@IdTipoIndicador
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El tipo de Indicador fue desactivado exitosamente.'
										 ELSE 'El tipo de Indicador fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarTipoInteraccion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE   PROCEDURE [dbo].[SPEliminarTipoInteraccion]
(
@IdTipoInteraccion int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM TipoInteraccion WHERE IdTipoInteraccion = @IdTipoInteraccion)
					BEGIN
						UPDATE	TipoInteraccion
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdTipoInteraccion=@IdTipoInteraccion
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El tipo de interaccion fue desactivado exitosamente.'
										 ELSE 'El tipo de interaccion fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarTipoMetrica]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SPEliminarTipoMetrica]
(
@IdTipoMetrica int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM TiposMetricas WHERE IdTipoMetrica = @IdTipoMetrica)
					BEGIN
						UPDATE	TiposMetricas
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdTipoMetrica=@IdTipoMetrica
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El tipo de Metrica fue desactivado exitosamente.'
										 ELSE 'El tipo de Metrica fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarTipoPerspectivas]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE   PROCEDURE [dbo].[SPEliminarTipoPerspectivas]
(
@IdTipoPerspectiva int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM TipoPerspectiva WHERE IdTipoPerspectiva = @IdTipoPerspectiva)
					BEGIN
						UPDATE	TipoPerspectiva
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdTipoPerspectiva=@IdTipoPerspectiva
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El tipo de perspectiva fue desactivado exitosamente.'
										 ELSE 'El tipo de perspectiva fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarTiposPersona]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE   PROCEDURE [dbo].[SPEliminarTiposPersona]
(
@IdTipoPersona int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM TiposPersonas WHERE IdTipoPersona = @IdTipoPersona)
					BEGIN
						UPDATE	TiposPersonas
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdTipoPersona=@IdTipoPersona
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El tipo de persona fue desactivado exitosamente.'
										 ELSE 'El tipo de persona fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarTipoTaller]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPEliminarTipoTaller]
(
@IdTipoTaller int,
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		DECLARE @ESTADO_ACTUAL BIT
			BEGIN TRY
				BEGIN TRAN DESACTIVAR
				SET @ESTADO_ACTUAL = (SELECT TOP 1 Estado FROM TiposTalleres WHERE IdTipoTaller = @IdTipoTaller)
					BEGIN
						UPDATE	TiposTalleres
						set Estado=CASE WHEN @ESTADO_ACTUAL = 1 THEN 0 ELSE 1 END,
						FechaModificacion = GETDATE(), 
						ModificadoPor = 'SISTEMA', 
						Accion = CASE WHEN @ESTADO_ACTUAL = 1 THEN 'E' ELSE 'A' END
						where IdTipoTaller=@IdTipoTaller
					END
					COMMIT TRAN DESACTIVAR
					SET @INDICADOR = 0
					SET @MENSAJE = (
									CASE WHEN @ESTADO_ACTUAL = 1 THEN 'El tipo de taller fue desactivado exitosamente.'
										 ELSE 'El tipo de taller fue reactivado exitosamente.'
									END
									)
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION DESACTIVAR
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarCanales]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[SPInsertarCanales]
(
 @Canal varchar(50)
 ,@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
 
)
AS
BEGIN
		BEGIN TRY
				BEGIN TRAN INSERTAR
					BEGIN
					INSERT INTO Canales
					(
					Canal,
					IngresadoPor,
					FechaIngreso,
					Estado,
					Accion,
					ModificadoPor,
					FechaModificacion
					)
					values 
					(
					@Canal,
					'SISTEMA',
					GETDATE(),
					1,
					'I',
					'SISTEMA',
					GETDATE()
					);
				END
				COMMIT TRAN INSERTAR
				SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Canal insertado exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarCategoria]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInsertarCategoria](
@Categoria varchar(50),
@Rango varchar(50),
@INDICADOR INT OUT,
@MENSAJE VARCHAR(50) OUT
)
AS
declare @msg varchar(50)
declare @ind int
BEGIN
	begin try
		begin tran INSERTARCATEGORIA
			begin
				if not exists (select 1 from Categorias where Categoria = @Categoria)
				begin
					insert into Categorias (Categoria,Rango,IngresadoPor,FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion)
					values (@Categoria,@Rango,'Sistema',GETDATE(),'Sistema',GETDATE(),1,'I')
					set @msg = 'Éxito: Categoría insertada éxitosamente'
					set @ind = 0
				end
				else
				begin 
					set @msg = 'Error: La categoría insertada ya existe'
					set @ind = 1
				end
			end
		commit tran INSERTARCATEGORIA
			SET @INDICADOR = @ind
			SET @MENSAJE = @msg
	end try
	begin catch
		SET @INDICADOR = 1
		SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
		ROLLBACK TRANSACTION INSERTARCATEGORIA
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarClasificacionIndicador]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[SPInsertarClasificacionIndicador](
 @IdTipoIndicador int,
 @Clasificacion varchar(50),
 @Valor int,
 @INDICADOR INT OUT,
 @MENSAJE VARCHAR(50) OUT
)

AS
declare @msg varchar(50)
declare @ind int 
BEGIN
begin try
		begin tran INSERTARCLASIFICACIONINDICADOR
					insert into ClasificacionIndicadores(
					IdTipoIndicador,
					Clasificacion,
					Valor,
					IngresadoPor,FechaIngreso,ModificadoPor,FechaModificacion,Accion,Estado)
					values (
					@IdTipoIndicador,
					@Clasificacion,
					@Valor,
					'Sistema',GETDATE(),'Sistema',GETDATE(),'I',1)
					set @ind = 0
					set @msg = 'Éxito: Clasificacion de indicador insertado éxitosamente'
		commit tran INSERTARCLASIFICACIONINDICADOR
			SET @INDICADOR = @ind
			SET @MENSAJE = @msg
	end try
	begin catch
		SET @INDICADOR = 1
		SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
		ROLLBACK TRANSACTION INSERTARCLASIFICACIONINDICADOR
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarDirecciones]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SPInsertarDirecciones]

(
 --Aca definimos los parametros que necesitemos, los de salida en mayuscula y los de entrada en camell case
 @Codigo varchar(30),
 @Direccion varchar(50),
 @INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT


)

AS

	BEGIN
			BEGIN TRY
				BEGIN TRAN INSERTAR -- O ACTUALIZAR O ELIMINAR
					BEGIN
					
						insert into Direcciones(Codigo,Direccion,IngresadoPor,FechaIngreso,Accion, Estado )values 
						(@Codigo,@Direccion,'Sistema', GETDATE(),'I', 1)
					END

					COMMIT TRAN INSERTAR
					SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Dirección insertada exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH

	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarEstadoAceptacion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInsertarEstadoAceptacion]
(
 @Codigo varchar(30),
 @EstadoAceptacion varchar(100)
 ,@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
				BEGIN TRAN INSERTAR
					BEGIN
					INSERT INTO EstadosAceptacion
					(
					Codigo,
					EstadoAceptacion,
					IngresadoPor,
					FechaIngreso,
					ModificadoPor,
					FechaModificacion,
					Estado,
					Accion
					)
					values 
					(
					@Codigo,
					@EstadoAceptacion,
					'SISTEMA',
					GETDATE(),
					'SISTEMA',
					GETDATE(),
					1,
					'I'
					);
				END
				COMMIT TRAN INSERTAR
				SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Estado de Aceptación insertado exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarEstadoHallazgo]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInsertarEstadoHallazgo]
(
 
 @EstadoHallazgo varchar(100)
 ,@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
				BEGIN TRAN INSERTAR
					BEGIN
					INSERT INTO EstadosHallazgo
					(
					
					EstadoHallazgo,
					IngresadoPor,
					FechaIngreso,
					ModificadoPor,
					FechaModificacion,
					Estado,
					Accion
					)
					values 
					(
					
					@EstadoHallazgo,
					'SISTEMA',
					GETDATE(),
					'SISTEMA',
					GETDATE(),
					1,
					'I'
					);
				END
				COMMIT TRAN INSERTAR
				SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Estado de Hallazgo insertado exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarEtapasTaller]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE PROCEDURE [dbo].[SPInsertarEtapasTaller]

(
 --Aca definimos los parametros que necesitemos, los de salida en mayuscula y los de entrada en camell case
 @EtapaTaller varchar(100),
  @IdTipoTaller int,
   @INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT

)

AS

	BEGIN
			BEGIN TRY
				BEGIN TRAN INSERTAR -- O ACTUALIZAR O ELIMINAR
					BEGIN
					
						insert into EtapasTalleres(EtapaTaller, IdTipoTaller,IngresadoPor,FechaIngreso,ModificadoPor, FechaModificacion,  Estado, Accion)values 
						(@EtapaTaller,@IdTipoTaller,'SISTEMA', GETDATE(), 'SISTEMA', GETDATE(), 1,'I')
					END

					COMMIT TRAN INSERTAR
					SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Etapa del Taller insertada exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH

	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarFaseDeServicio]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[SPInsertarFaseDeServicio]
(
 @FaseServicio varchar(50)
 ,@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
 
)
AS
BEGIN
		BEGIN TRY
				BEGIN TRAN INSERTAR
					BEGIN
					INSERT INTO FasesServicios
					(
					Fase,
					IngresadoPor,
					FechaIngreso,
					Estado,
					Accion,
					ModificadoPor,
					FechaModificacion
					)
					values 
					(
					@FaseServicio,
					'SISTEMA',
					GETDATE(),
					1,
					'I',
					'SISTEMA',
					GETDATE()
					);
				END
				COMMIT TRAN INSERTAR
				SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Fase de servicio insertada exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarFasesCJ]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[SPInsertarFasesCJ]
(
 @FaseCustomerJourney varchar(100)
 ,@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
				BEGIN TRAN INSERTAR
					BEGIN
					INSERT INTO FasesCustomerJorney
					(
					FaseCustomerJourney,
					IngresadoPor,
					FechaIngreso,
					Estado,
					Accion
					)
					values 
					(
					@FaseCustomerJourney,
					'SISTEMA',
					GETDATE(),
					1,
					'I'
					);
				END
				COMMIT TRAN INSERTAR
				SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: La fase de Customer Journey insertada exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarGradoImpacto]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[SPInsertarGradoImpacto]
(
 @GradoImpacto varchar(100)
 ,@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
				BEGIN TRAN INSERTAR
					BEGIN
					INSERT INTO GradosImpacto
					(
					GradoImpacto,
					IngresadoPor,
					FechaIngreso,
					Estado,
					Accion
					)
					values 
					(
					@GradoImpacto,
					'SISTEMA',
					GETDATE(),
					1,
					'I'
					);
				END
				COMMIT TRAN INSERTAR
				SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Grado de impacto insertado exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarGradosEsfuerzo]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SPInsertarGradosEsfuerzo]

(
 --Aca definimos los parametros que necesitemos, los de salida en mayuscula y los de entrada en camell case
 @Codigo varchar(30),
 @GradoEsfuerzo varchar(50),
 @INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT


)

AS

	BEGIN
			BEGIN TRY
				BEGIN TRAN INSERTAR -- O ACTUALIZAR O ELIMINAR
					BEGIN
					
						insert into GradosEsfuerzo(Codigo,GradoEsfuerzo,IngresadoPor,FechaIngreso,Accion, Estado )values 
						(@Codigo,@GradoEsfuerzo,'Sistema', GETDATE(),'I', 1)
					END

					COMMIT TRAN INSERTAR
					SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Grado de esfuerzo insertado exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH

	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarJefaturaPorDireccion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPInsertarJefaturaPorDireccion](
@IdDireccion int,
@Codigo varchar(30),
@Jefatura varchar(50),
@INDICADOR INT OUT,
@MENSAJE VARCHAR(50) OUT
)
AS
declare @msg varchar(50)
declare @ind int 
BEGIN
begin try
		begin tran INSERTARJEFATURADIRECCION
			begin
				if not exists (select 1 from Jefaturas where Jefatura = @Jefatura)
				begin
					insert into Jefaturas(IdDireccion,Codigo,Jefatura,Ingresado_Por,Fecha_Ingreso,Modificado_Por,Fecha_Modificacion,Estado,Accion)
					values (@IdDireccion,@Codigo,@Jefatura,'Sistema',GETDATE(),'Sistema',GETDATE(),1,'I')
					set @ind = 0
					set @msg = 'Éxito: Jefatura insertada éxitosamente'
				end
				else
				begin 
					set @ind = 1
					set @msg = 'Error: La jefatura insertada ya existe'
				end
			end
		commit tran INSERTARJEFATURADIRECCION
			SET @INDICADOR = @ind
			SET @MENSAJE = @msg
	end try
	begin catch
		
		SET @INDICADOR = 1
		SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
		ROLLBACK TRANSACTION INSERTARJEFATURADIRECCION
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarLineaNegocio]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[SPInsertarLineaNegocio]
(
 @LineaNegocio varchar(50)
 ,@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
				BEGIN TRAN INSERTAR
					BEGIN
					INSERT INTO LineasNegocio
					(
					LineaNegocio,
					IngresadoPor,
					FechaIngreso,
					Estado,
					Accion
					)
					values 
					(
					@LineaNegocio,
					'SISTEMA',
					GETDATE(),
					1,
					'I'
					);
				END
				COMMIT TRAN INSERTAR
				SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Linea de negocio insertada exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarMacroActividad]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[SPInsertarMacroActividad]
(
 @MacroActividad varchar(100)
 ,@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
				BEGIN TRAN INSERTAR
					BEGIN
					INSERT INTO MacrosActividades
					(
					MacroActividad,
					IngresadoPor,
					FechaIngreso,
					Estado,
					Accion
					)
					values 
					(
					@MacroActividad,
					'SISTEMA',
					GETDATE(),
					1,
					'I'
					);
				END
				COMMIT TRAN INSERTAR
				SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Macro actividad insertada exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarMetodologiaCX]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInsertarMetodologiaCX]
(
 @Metodologia varchar(100)
 ,@INDICADOR INT OUT
,@MENSAJE VARCHAR(150) OUT
)
AS
	BEGIN
		BEGIN TRY
				BEGIN TRAN INSERTAR
					BEGIN
					INSERT INTO MetodologiasExperienciaCliente
					(
					Metodologia,
					IngresadoPor,
					FechaIngreso,
					Estado,
					Accion
					)
					values 
					(
					@Metodologia,
					'SISTEMA',
					GETDATE(),
					1,
					'I'
					);
				END
				COMMIT TRAN INSERTAR
				SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Metodología de experiencia cliente insertada exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarPeriodicidad]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInsertarSectores]

(
 --Aca definimos los parametros que necesitemos, los de salida en mayuscula y los de entrada en camell case
 @Sector varchar(30),
 @INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT


)

AS

	BEGIN
			BEGIN TRY
				BEGIN TRAN INSERTAR -- O ACTUALIZAR O ELIMINAR
					BEGIN
					
						insert into Sectores(Sector,IngresadoPor,FechaIngreso,ModificadoPor, FechaModificacion, Accion, Estado )values 
						(@Sector,'Sistema', GETDATE(),'Sistema', GETDATE(),'I', 1)
					END

					COMMIT TRAN INSERTAR
					SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Sector insertado exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH

	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarSegmentos]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO 
CREATE PROCEDURE [dbo].[SPInsertarSegmentos]

(
 --Aca definimos los parametros que necesitemos, los de salida en mayuscula y los de entrada en camell case
 @Segmento varchar(100),
  @IdSector int,
   @INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT

)

AS

	BEGIN
			BEGIN TRY
				BEGIN TRAN INSERTAR -- O ACTUALIZAR O ELIMINAR
					BEGIN
					
						insert into Segmentos(Segmento, IdSector,IngresadoPor,FechaIngreso,ModificadoPor, FechaModificacion, Accion, Estado )values 
						(@Segmento,@IdSector,'Sistema', GETDATE(), 'Sistema', GETDATE(),'I', 1)
					END

					COMMIT TRAN INSERTAR
					SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Segmento insertado exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH

	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarServicioLineaNegocio]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[SPInsertarServicioLineaNegocio](
@IdLinea int,
@Servicio varchar(100),
@INDICADOR INT OUT,
@MENSAJE VARCHAR(50) OUT
)

AS
	BEGIN
			BEGIN TRY
				BEGIN TRAN INSERTARLineaNegocio
					BEGIN
					
						insert into Servicios(IdLinea ,Servicio,IngresadoPor,FechaIngreso,ModificadoPor, FechaModificacion, Accion, Estado )values 
						(@IdLinea,@Servicio,'Sistema', GETDATE(),'Sistema', GETDATE(),'I', 1)
				end
					COMMIT TRAN INSERTARLineaNegocio
					SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Linea negocio insertado exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTARLineaNegocio
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarServicioSocio]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SPInsertarServicioSocio](
@IdSocio int,
@IdLinea int,
@IdServicio int,
@INDICADOR INT OUT,
@MENSAJE VARCHAR(50) OUT
)

AS
declare @msg varchar(50)
declare @ind int 
	BEGIN
			BEGIN TRY
				BEGIN TRAN INSERTARServicioSocio
					BEGIN
					
						insert into ServiciosSocios(IdSocio,IdLinea,IdServicio,IngresadoPor,FechaIngreso,ModificadoPor, FechaModificacion, Accion, Estado )values 
						(@IdSocio,@IdLinea,@IdServicio,'Sistema', GETDATE(),'Sistema', GETDATE(),'I', 1)
				end
					COMMIT TRAN INSERTARServicioSocio
					SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: ServicioSocio insertado exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTARServicioSocio
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarSocios]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SPInsertarSocios](
@Nombre varchar(100),
@Cedula varchar(50),
@Correo varchar(50),
@Telefono varchar(30),
@IdTipoPersona int,
@INDICADOR INT OUT,
@MENSAJE VARCHAR(50) OUT
)

AS
declare @msg varchar(50)
declare @ind int 
BEGIN
begin try
		begin tran INSERTARSOCIO
			begin
				if not exists (select 1 from Socios where Cedula = @Cedula)
				begin
					insert into Socios(Nombre,Cedula,Correo,Telefono,IdTipoPersona,IngresadoPor,FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion)
					values (@Nombre,@Cedula,@Correo,@Telefono,@IdTipoPersona,'Sistema',GETDATE(),'Sistema',GETDATE(),1,'I')
					set @ind = 0
					set @msg = 'Éxito: Socio insertada éxitosamente'
				end
				else
				begin 
					set @ind = 1
					set @msg = 'Error: El socio que intenta insertar ya existe'
				end
			end
		commit tran INSERTARSOCIO
			SET @INDICADOR = @ind
			SET @MENSAJE = @msg
	end try
	begin catch
		
		SET @INDICADOR = 1
		SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
		ROLLBACK TRANSACTION INSERTARSOCIO
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarTipoContactoEncuesta]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  PROCEDURE [dbo].[SPInsertarTipoContactoEncuesta]
(
 @TipoContactoEncuesta varchar(100)
 ,@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
				BEGIN TRAN INSERTAR
					BEGIN
					INSERT INTO TipoContactoEncuesta
					(
					TipoContactoEncuesta,
					IngresadoPor,
					FechaIngreso,
					Estado,
					Accion
					)
					values 
					(
					@TipoContactoEncuesta,
					'SISTEMA',
					GETDATE(),
					1,
					'I'
					);
				END
				COMMIT TRAN INSERTAR
				SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Tipo de contacto de encuesta insertado exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarTipoEncuesta]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SPInsertarTipoEncuesta](
@TipoEncuesta varchar(50),
@INDICADOR INT OUT,
@MENSAJE VARCHAR(50) OUT
)

AS
declare @msg varchar(50)
declare @ind int 
BEGIN
begin try
		begin tran INSERTARTIPOENCUESTA
			begin
				if not exists (select 1 from TiposEncuestas where TipoEncuesta = @TipoEncuesta)
				begin
					insert into TiposEncuestas(TipoEncuesta,IngresadoPor,FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion)
					values (@TipoEncuesta,'Sistema',GETDATE(),'Sistema',GETDATE(),1,'I')
					set @ind = 0
					set @msg = 'Éxito: Tipo de encuesta insertado éxitosamente'
				end
				else
				begin 
					set @ind = 1
					set @msg = 'Error: Tipo de encuesta que intenta insertar ya existe'
				end
			end
		commit tran INSERTARTIPOENCUESTA
			SET @INDICADOR = @ind
			SET @MENSAJE = @msg
	end try
	begin catch
		
		SET @INDICADOR = 1
		SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
		ROLLBACK TRANSACTION INSERTARTIPOENCUESTA
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarTipoIdentificacion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE  PROCEDURE [dbo].[SPInsertarTipoIdentificacion]
(
 @TipoIdentificacion varchar(50)
 ,@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
				BEGIN TRAN INSERTAR
					BEGIN
					INSERT INTO TipoIdentificacion
					(
					TipoIdentificacion,
					IngresadoPor,
					FechaIngreso,
					Estado,
					Accion
					)
					values 
					(
					@TipoIdentificacion,
					'SISTEMA',
					GETDATE(),
					1,
					'I'
					);
				END
				COMMIT TRAN INSERTAR
				SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Tipo de identificacion insertado exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarTipoIndicador]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[SPInsertarTipoIndicador](
 @TipoIndicador varchar(100),
 @Sigla varchar(50),
 @Minimo int,
 @Maximo int,
 @INDICADOR INT OUT,
 @MENSAJE VARCHAR(50) OUT
)

AS
declare @Current int = @Minimo
declare @msg varchar(50)
declare @ind int
BEGIN
begin try
		begin tran INSERTARTIPOINDICADOR
			begin
				if not exists (select 1 from TiposIndicadores where Sigla = @Sigla)
				
				begin
					insert into TiposIndicadores(
					TipoIndicador,
					Sigla,
					Minimo,
					Maximo,
					IngresadoPor,FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion)
					
					values (
					@TipoIndicador,
					@Sigla,
					@Minimo,
					@Maximo,
					'Sistema',GETDATE(),'Sistema',GETDATE(),1,'I')
					WHILE @Current <= @Maximo
					Begin
					Insert Into ClasificacionIndicadores(Clasificacion,IngresadoPor,FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion,IdTipoIndicador,Valor) Values('','SISTEMA',CURRENT_TIMESTAMP,'SISTEMA',CURRENT_TIMESTAMP,1,'I',IDENT_CURRENT('TiposIndicadores'),@Current)
					Set @Current = @Current + 1
					End
					
					set @ind = 0
					set @msg = 'Éxito: Tipo de indicador insertado éxitosamente'

				end
				else
				begin 
					set @ind = 1
					set @msg = 'Error: Tipo de indicador que intenta insertar ya existe'
				end
			end
		commit tran INSERTARTIPOINDICADOR
			SET @INDICADOR = @ind
			SET @MENSAJE = @msg
	end try
	begin catch
		
		SET @INDICADOR = 1
		SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
		ROLLBACK TRANSACTION INSERTARTIPOINDICADOR
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarTipoInteraccion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  PROCEDURE [dbo].[SPInsertarTipoInteraccion]
(
 @TipoInteraccion varchar(100)
 ,@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
				BEGIN TRAN INSERTAR
					BEGIN
					INSERT INTO TipoInteraccion
					(
					TipoInteraccion,
					IngresadoPor,
					FechaIngreso,
					Estado,
					Accion
					)
					values 
					(
					@TipoInteraccion,
					'SISTEMA',
					GETDATE(),
					1,
					'I'
					);
				END
				COMMIT TRAN INSERTAR
				SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Tipo de interaccion insertado exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarTipoMetrica]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[SPInsertarTipoMetrica](
@Tipo varchar(50),
@Descripcion varchar(100),
@INDICADOR INT OUT,
@MENSAJE VARCHAR(50) OUT
)

AS
declare @msg varchar(50)
declare @ind int 
BEGIN
begin try
		begin tran INSERTARTIPOMetrica
			begin
				if not exists (select 1 from TiposMetricas where Descripcion = @Descripcion)
				begin
					insert into TiposMetricas(Tipo,Descripcion, IngresadoPor,FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion)
					values (@Tipo,@Descripcion,'Sistema',GETDATE(),'Sistema',GETDATE(),1,'I')
					set @ind = 0
					set @msg = 'Éxito: Tipo de Metrica insertado éxitosamente'
				end
				else
				begin 
					set @ind = 1
					set @msg = 'Error: Tipo de Metrica que intenta insertar ya existe'
				end
			end
		commit tran INSERTARTIPOMetrica
			SET @INDICADOR = @ind
			SET @MENSAJE = @msg
	end try
	begin catch
		
		SET @INDICADOR = 1
		SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
		ROLLBACK TRANSACTION INSERTARTIPOMetrica
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarTipoPerspectivas]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE  PROCEDURE [dbo].[SPInsertarTipoPerspectivas]
(
 @TipoPerspectiva varchar(100)
 ,@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
				BEGIN TRAN INSERTAR
					BEGIN
					INSERT INTO TipoPerspectiva
					(
					TipoPerspectiva,
					IngresadoPor,
					FechaIngreso,
					Estado,
					Accion
					)
					values 
					(
					@TipoPerspectiva,
					'SISTEMA',
					GETDATE(),
					1,
					'I'
					);
				END
				COMMIT TRAN INSERTAR
				SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Tipo de perspectiva insertado exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarTiposPersona]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE  PROCEDURE [dbo].[SPInsertarTiposPersona]
(
 @TipoPersona varchar(50)
 ,@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
				BEGIN TRAN INSERTAR
					BEGIN
					INSERT INTO TiposPersonas
					(
					TipoPersona,
					IngresadoPor,
					FechaIngreso,
					ModificadoPor,
					FechaModificacion,
					Estado,
					Accion
					)
					values 
					(
					@TipoPersona,
					'SISTEMA',
					GETDATE(),
					'SISTEMA',
					GETDATE(),
					1,
					'I'
					);
				END
				COMMIT TRAN INSERTAR
				SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Tipo de persona insertado exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarTipoTaller]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[SPInsertarTipoTaller]
(
 @TipoTaller varchar(100)
 ,@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT
)
AS
	BEGIN
		BEGIN TRY
				BEGIN TRAN INSERTAR
					BEGIN
					INSERT INTO TiposTalleres
					(
					TipoTaller,
					IngresadoPor,
					FechaIngreso,
					Estado,
					Accion
					)
					values 
					(
					@TipoTaller,
					'SISTEMA',
					GETDATE(),
					1,
					'I'
					);
				END
				COMMIT TRAN INSERTAR
				SET @INDICADOR = 0
					SET @MENSAJE = 'Exito: Tipo de taller insertado exitosamente'
			END TRY
			BEGIN CATCH
				SET @INDICADOR = 1
				SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
				ROLLBACK TRANSACTION INSERTAR
			END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPModificarJefaturaDireccion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPModificarJefaturaDireccion](
@IdJefatura int,
@IdDireccion int,
@Codigo varchar(30),
@Jefatura varchar(50),
@INDICADOR INT OUT
,@MENSAJE VARCHAR(50) OUT)
AS
BEGIN
	begin try
		begin tran ACTUALIZARJEFATURA
			begin
				update Jefaturas set  Jefatura = @Jefatura, Codigo = @Codigo,IdDireccion=@IdDireccion, Modificado_Por = 'Sistema', Fecha_Modificacion = GETDATE(), Accion = 'A'
				where IdJefatura = @IdJefatura
			end
		commit tran ACTUALIZARJEFATURA
			SET @INDICADOR = 0
			SET @MENSAJE = 'Éxito: Jefatura actualizada éxitosamente'
	end try
	begin catch
		SET @INDICADOR = 1
		SET @MENSAJE = 'Error: ' + ERROR_MESSAGE()
		ROLLBACK TRANSACTION ACTUALIZARJEFATURA
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerCanales]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SPObtenerCanales]
AS
    BEGIN
        BEGIN TRY
            BEGIN
              select IdCanal, Canal, IngresadoPor, FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion 
			   from Canales with(NOLOCK) 
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerCanalesPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create  PROCEDURE [dbo].[SPObtenerCanalesPorID]
( @IdCanal INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            select IdCanal, Canal, IngresadoPor, FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion 
			   from Canales with(NOLOCK)   
                WHERE   IdCanal = @IdCanal
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerCategoriaPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerCategoriaPorID](
@IdCategoria int)
AS
BEGIN
	 BEGIN TRY
            BEGIN
           		select a.IdCategoria,a.Categoria,a.Rango,a.Estado from Categorias as a with(nolock)
					where a.IdCategoria = @IdCategoria
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
      END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerCategorias]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerCategorias]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select a.IdCategoria,a.Categoria,a.Rango,a.Estado from Categorias as a with(nolock)
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerClientes]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerClientes]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select c.Rango, a.Cliente,a.IngresadoPor, a.FechaIngreso, a.ModificadoPor, a.FechaModificacion from Clientes a
inner join Categorias c on c.IdCategoria=a.IdCategoria
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerClientesPorId]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerClientesPorId]
@Id varchar (50)
as 
	begin
		begin Try
			begin 
				select c.Rango, a.Cliente,a.IngresadoPor, a.FechaIngreso, a.ModificadoPor, a.FechaModificacion from Clientes a
				inner join Categorias c on c.IdCategoria=a.IdCategoria where IdCliente=@Id
			END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerDirecciones]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SPObtenerDirecciones]

AS
	BEGIN
		BEGIN TRY
			BEGIN
				SELECT IdDireccion, Codigo, Direccion ,Estado
				FROM Direcciones WITH (NOLOCK)
			END
		END TRY
		BEGIN CATCH
			SELECT 1, ERROR_MESSAGE() AS MENSAJE
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerDireccionesActivas]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   PROCEDURE [dbo].[SPObtenerDireccionesActivas]

AS
	BEGIN
		BEGIN TRY
			BEGIN
				SELECT		IdDireccion
							, Codigo
							, Direccion
							,Estado
				FROM Direcciones WITH (NOLOCK) where Estado=1
			END
		END TRY
		BEGIN CATCH
			SELECT 1, ERROR_MESSAGE() AS MENSAJE
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerDireccionPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[SPObtenerDireccionPorID]
( @IdDireccion INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            select IdDireccion, Codigo, Direccion, IngresadoPor, FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion 
			   from Direcciones with(NOLOCK)   
                WHERE   IdDireccion = @IdDireccion
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END

GO
/****** Object:  StoredProcedure [dbo].[SPObtenerEstadoAceptacion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerEstadoAceptacion]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select IdEstadoAceptacion, Codigo, EstadoAceptacion, IngresadoPor, FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion from EstadosAceptacion with(NOLOCK)
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerEstadoAceptacionPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerEstadoAceptacionPorID]
( @IdEstadoAceptacion INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            select IdEstadoAceptacion, Codigo, EstadoAceptacion, IngresadoPor, FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion 
			   from EstadosAceptacion with(NOLOCK)   
                WHERE   IdEstadoAceptacion = @IdEstadoAceptacion
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerEstadoHallazgo]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerEstadoHallazgo]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select IdEstadoHallazgo,  EstadoHallazgo, IngresadoPor, FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion from EstadosHallazgo with(NOLOCK)
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerEstadoHallazgoPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerEstadoHallazgoPorID]
( @IdEstadoHallazgo INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            select IdEstadoHallazgo, EstadoHallazgo, IngresadoPor, FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion 
			   from EstadosHallazgo with(NOLOCK)   
                WHERE   IdEstadoHallazgo = @IdEstadoHallazgo
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerEtapaTipoTaller]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerEtapaTipoTaller]
AS
    BEGIN
        BEGIN TRY
            BEGIN
            SELECT e.IdEtapaTaller, e.EtapaTaller,t.TipoTaller, e.IngresadoPor, e.FechaIngreso,e.ModificadoPor,e.FechaModificacion,e.Estado,e.Accion 
			   from EtapasTalleres e, TiposTalleres t with(NOLOCK)   
                WHERE  t.IdTipoTaller = e.IdTipoTaller
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerEtapaTipoTallerPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SPObtenerEtapaTipoTallerPorID]
( @IdEtapaTaller INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            select IdEtapaTaller, EtapaTaller,IdTipoTaller, IngresadoPor, FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion 
			   from EtapasTalleres with(NOLOCK)   
                WHERE   IdEtapaTaller = @IdEtapaTaller
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerFasesCJ]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerFasesCJ]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               SELECT IdFaseCJ, FaseCustomerJourney,Estado from FasesCustomerJorney with(NOLOCK)
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerFasesCJPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPObtenerFasesCJPorID]
( @IdFaseCJ INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            SELECT IdFaseCJ, FaseCustomerJourney, IngresadoPor, FechaIngreso, ModificadoPor, FechaModificacion, Estado, Accion
                FROM        FasesCustomerJorney   WITH (NOLOCK) 
                WHERE        IdFaseCJ = @IdFaseCJ
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerFaseServicioPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create  PROCEDURE [dbo].[SPObtenerFaseServicioPorID]
( @IdFase INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            select IdFase, Fase, IngresadoPor, FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion 
			   from FasesServicios with(NOLOCK)   
                WHERE   IdFase = @IdFase
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerFaseServicios]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerFaseServicios]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select IdFase, Fase, IngresadoPor, FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion from FasesServicios with(NOLOCK)
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerFormulario]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerFormulario]

AS
    BEGIN
        BEGIN TRY
            BEGIN
              select a.IdUsuario, a.Fecha, f.Fase, s.Servicio, a.IdCliente, e.Sector, g.Segmento,c.Canal, t.Rango, i.LineaNegocio, w.NombreContacto,a.IngresadoPor,
			  a.FechaIngreso, a.ModificadoPor, a.FechaModificacion from Formulario a
			  inner join FasesServicios f on f.IdFase=a.IdFase
			  inner join Servicios s on s.IdServicio=a.IdServicio
			  inner join Sectores e on e.IdSector=a.IdSector
			  inner join Segmentos g on g.IdSegmento=a.IdSegmento
			  inner join Canales c on c.IdCanal=a.IdCanal
			  inner join Categorias t on t.IdCategoria=a.IdCategoria
			  inner join LineasNegocio i on i.IdLinea=a.IdLinea
			  inner join SociosContactos w on w.IdFase=a.IdSocioContacto
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerFormularioPorId]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerFormularioPorId]
@Id varchar (50)
AS
    BEGIN
        BEGIN TRY
            BEGIN
              select a.IdUsuario, a.Fecha, f.Fase, s.Servicio, a.IdCliente, e.Sector, g.Segmento,c.Canal, t.Rango, i.LineaNegocio, w.NombreContacto,a.IngresadoPor,
			  a.FechaIngreso, a.ModificadoPor, a.FechaModificacion from Formulario a
			  inner join FasesServicios f on f.IdFase=a.IdFase
			  inner join Servicios s on s.IdServicio=a.IdServicio
			  inner join Sectores e on e.IdSector=a.IdSector
			  inner join Segmentos g on g.IdSegmento=a.IdSegmento
			  inner join Canales c on c.IdCanal=a.IdCanal
			  inner join Categorias t on t.IdCategoria=a.IdCategoria
			  inner join LineasNegocio i on i.IdLinea=a.IdLinea
			  inner join SociosContactos w on w.IdFase=a.IdSocioContacto
			  where IdConsecutivo=@Id
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerGradoEsfuerzoPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[SPObtenerGradoEsfuerzoPorID]
( @IdGradoEsfuerzo INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            select IdGradoEsfuerzo, Codigo, GradoEsfuerzo, IngresadoPor, FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion 
			   from GradosEsfuerzo with(NOLOCK)   
                WHERE   IdGradoEsfuerzo = @IdGradoEsfuerzo
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerGradoImpacto]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerGradoImpacto]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               SELECT IdGradoImpacto, GradoImpacto,Estado from GradosImpacto with(NOLOCK)
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerGradoImpactoPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPObtenerGradoImpactoPorID]
( @IdGradoImpacto INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            SELECT IdGradoImpacto, GradoImpacto, IngresadoPor, FechaIngreso, ModificadoPor, FechaModificacion, Estado, Accion
                FROM        GradosImpacto   WITH (NOLOCK) 
                WHERE        IdGradoImpacto = @IdGradoImpacto
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerGradosEsfuerzo]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SPObtenerGradosEsfuerzo]

AS
	BEGIN
		BEGIN TRY
			BEGIN
				SELECT IdGradoEsfuerzo, Codigo, GradoEsfuerzo ,Estado
				FROM GradosEsfuerzo WITH (NOLOCK)
			END
		END TRY
		BEGIN CATCH
			SELECT 1, ERROR_MESSAGE() AS MENSAJE
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerJefaturaPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPObtenerJefaturaPorID](
@IdJefatura int)
AS
BEGIN
	 BEGIN TRY
            BEGIN
           		select a.IdJefatura,a.IdDireccion,a.Codigo as 'CodigoJefatura',a.Jefatura from Jefaturas as a with(nolock)
					where a.IdJefatura = @IdJefatura
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
      END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerJefaturasPorDireccion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPObtenerJefaturasPorDireccion]
AS
BEGIN
	BEGIN TRY
            BEGIN
               SELECT a.IdJefatura,b.IdDireccion,a.Codigo AS 'CodigoJefatura', a.Jefatura,b.Codigo AS 'CodigoDireccion', b.Direccion, a.Estado 
			   FROM Jefaturas AS a WITH(NOLOCK)
			   JOIN Direcciones AS b ON a.IdDireccion = b.IdDireccion
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerLineaNegocio]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerLineaNegocio]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select IdLinea, LineaNegocio, estado from LineasNegocio with(NOLOCK)
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerLineaNegocioPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPObtenerLineaNegocioPorID]
( @IdLinea INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            SELECT IdLinea, LineaNegocio, IngresadoPor, FechaIngreso, ModificadoPor, FechaModificacion, Estado, Accion
                FROM        LineasNegocio   WITH (NOLOCK) 
                WHERE        IdLinea = @IdLinea
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerLineasNegocioActivos]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPObtenerLineasNegocioActivos]

AS
	BEGIN
		BEGIN TRY
			BEGIN
				SELECT		IdLinea
							, LineaNegocio
							,Estado
				FROM LineasNegocio WITH (NOLOCK) where Estado=1
			END
		END TRY
		BEGIN CATCH
			SELECT 1, ERROR_MESSAGE() AS MENSAJE
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerMacroActividades]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerMacroActividades]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               SELECT IdMacro, MacroActividad,Estado from MacrosActividades with(NOLOCK)
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerMacroActividadPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPObtenerMacroActividadPorID]
( @IdMacro INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            SELECT IdMacro, MacroActividad, IngresadoPor, FechaIngreso, ModificadoPor, FechaModificacion, Estado, Accion
                FROM        MacrosActividades   WITH (NOLOCK) 
                WHERE        IdMacro = @IdMacro
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerMetodologiaCX]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerMetodologiaCX]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               SELECT IdMetodologia, Metodologia,Estado from MetodologiasExperienciaCliente with(NOLOCK)
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerMetodologiaCXPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPObtenerMetodologiaCXPorID]
( @IdMetodologia INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            SELECT IdMetodologia, Metodologia, IngresadoPor, FechaIngreso, ModificadoPor, FechaModificacion, Estado, Accion
                FROM        MetodologiasExperienciaCliente   WITH (NOLOCK) 
                WHERE        IdMetodologia = @IdMetodologia
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerPeriodicidades]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerPeriodicidades]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               SELECT IdPeriodicidad, Periodicidad,Estado from Periodicidad with(NOLOCK)
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerPeriodicidadPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPObtenerPeriodicidadPorID]
( @IdPeriodicidad INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            SELECT IdPeriodicidad, Periodicidad, IngresadoPor, FechaIngreso, ModificadoPor, FechaModificacion, Estado, Accion
                FROM        Periodicidad   WITH (NOLOCK) 
                WHERE        IdPeriodicidad = @IdPeriodicidad
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerSectores]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPObtenerSectores]

AS
	BEGIN
		BEGIN TRY
			BEGIN
				SELECT		IdSector
							, Sector
							,Estado
				FROM Sectores WITH (NOLOCK)
			END
		END TRY
		BEGIN CATCH
			SELECT 1, ERROR_MESSAGE() AS MENSAJE
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerSectoresActivos]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create   PROCEDURE [dbo].[SPObtenerSectoresActivos]

AS
	BEGIN
		BEGIN TRY
			BEGIN
				SELECT		IdSector
							, Sector
							,Estado
				FROM Sectores WITH (NOLOCK) where Estado=1
			END
		END TRY
		BEGIN CATCH
			SELECT 1, ERROR_MESSAGE() AS MENSAJE
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerSectorPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[SPObtenerSectorPorID]
( @IdSector INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            select IdSector, Sector, IngresadoPor, FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion 
			   from Sectores with(NOLOCK)   
                WHERE   IdSector = @IdSector
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END

GO
/****** Object:  StoredProcedure [dbo].[SPObtenerSegmentoPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[SPObtenerSegmentoPorID]
( @IdSegmento INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            select IdSegmento, Segmento,IdSector, IngresadoPor, FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion 
			   from Segmentos with(NOLOCK)   
                WHERE   IdSegmento = @IdSegmento
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END

GO
/****** Object:  StoredProcedure [dbo].[SPObtenerSegmentos]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[SPObtenerSegmentos]

AS
	BEGIN
		BEGIN TRY
			BEGIN
				SELECT		IdSegmento
							,Segmento,
							Sectores.Sector
						    ,Segmentos.Estado
				FROM  Segmentos WITH (NOLOCK) join Sectores on Sectores.IdSector=Segmentos.IdSector 
				
			END
		END TRY
		BEGIN CATCH
			SELECT 1, ERROR_MESSAGE() AS MENSAJE
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerServicioLineaNegocio]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[SPObtenerServicioLineaNegocio]

AS
    BEGIN
        BEGIN TRY
            BEGIN
            select a.IdServicio,a.Servicio,l.IdLinea, l.LineaNegocio, a.Estado from Servicios a 
			inner join LineasNegocio l on l.IdLinea=a.IdLinea
               
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END

GO
/****** Object:  StoredProcedure [dbo].[SPObtenerServicioLineaNegocioPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[SPObtenerServicioLineaNegocioPorID]
( @IdServicio INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            select IdServicio,IdLinea, Servicio,IngresadoPor, FechaIngreso,ModificadoPor,FechaModificacion,Estado,Accion 
			   from Servicios with(NOLOCK)   
                WHERE   IdServicio = @IdServicio
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerServiciosConectividad]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerServiciosConectividad]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select Servicio from Servicios where IdLinea=1
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerServiciosDigitales]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerServiciosDigitales]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select Servicio from Servicios where IdLinea=2
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerServiciosGestionadas]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerServiciosGestionadas]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select Servicio from Servicios where IdLinea=4
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerServiciosInfraestructura]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerServiciosInfraestructura]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select Servicio from Servicios where IdLinea=3
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerServicioSocioPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[SPObtenerServicioSocioPorID]
( @IdServicioSocio INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            select IdServicioSocio, IdSocio,IdLinea,IdServicio, Estado,Accion, IngresadoPor,ModificadoPor, FechaIngreso,FechaModificacion 
			   from ServiciosSocios with(NOLOCK)   
                WHERE   IdServicioSocio = @IdServicioSocio
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerServiciosSocios]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SPObtenerServiciosSocios]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select a.IdServicioSocio,so.Cedula, so.Nombre, so.IdSocio ,s.Servicio, s.IdServicio , l.LineaNegocio, l.IdLinea, a.Estado from ServiciosSocios a 
               inner join Servicios s on s.IdServicio=a.IdServicio inner join LineasNegocio l on l.IdLinea=a.IdLinea inner join Socios so on so.IdSocio=a.IdSocio
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerServiciosTerritorios]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerServiciosTerritorios]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select Servicio from Servicios where IdLinea=5
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerSocios]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SPObtenerSocios]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select s.IdSocio,s.Cedula, s.Nombre, s.Telefono, s.Correo, t.TipoPersona, s.Estado, s.ModificadoPor,s.FechaIngreso,s.Accion,s.FechaModificacion,s.IngresadoPor from Socios s
			   inner join TiposPersonas  t on t.IdTipoPersona=s.IdTipoPersona
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerSociosPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  PROCEDURE [dbo].[SPObtenerSociosPorID]
( @IdSocio int )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            select s.IdSocio, Nombre,Cedula,Telefono,Correo, s.IdTipoPersona, t.TipoPersona, s.IngresadoPor, s.FechaIngreso, s.ModificadoPor,s.FechaModificacion, s.Estado, s.Accion 
			   from Socios s inner join TiposPersonas  t on t.IdTipoPersona=s.IdTipoPersona
                WHERE   IdSocio = @IdSocio
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerSociosServicioPorId]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerSociosServicioPorId]
@Id varchar (50)
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select l.LineaNegocio, a.Telefono, a.NombreContacto, a.IngresadoPor, a.FechaIngreso, a.ModificadoPor, a.FechaModificacion from SociosServicios a
			   inner join LineasNegocio  l on l.IdLinea=a.IdLinea where IdCliente=@id
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerSociosServicios]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerSociosServicios]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select l.LineaNegocio, a.Telefono, a.NombreContacto, a.IngresadoPor, a.FechaIngreso, a.ModificadoPor, a.FechaModificacion from SociosServicios a
			   inner join LineasNegocio  l on l.IdLinea=a.IdLinea
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTalleres]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   PROCEDURE [dbo].[SPObtenerTalleres]

AS
	BEGIN
		BEGIN TRY
			BEGIN
				SELECT		IdTipoTaller
							, TipoTaller
							,Estado
				FROM TiposTalleres WITH (NOLOCK) 
			END
		END TRY
		BEGIN CATCH
			SELECT 1, ERROR_MESSAGE() AS MENSAJE
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTalleresActivos]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create   PROCEDURE [dbo].[SPObtenerTalleresActivos]

AS
	BEGIN
		BEGIN TRY
			BEGIN
				SELECT		IdTipoTaller
							, TipoTaller
							,Estado
				FROM TiposTalleres WITH (NOLOCK) where Estado=1
			END
		END TRY
		BEGIN CATCH
			SELECT 1, ERROR_MESSAGE() AS MENSAJE
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTipoContactoEncuesta]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[SPObtenerTipoContactoEncuesta]
AS
    BEGIN
        BEGIN TRY
            BEGIN
                SELECT IdTipoContactoEncuesta, TipoContactoEncuesta,Estado from TipoContactoEncuesta
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTipoContactoEncuestaPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[SPObtenerTipoContactoEncuestaPorID]
( @IdTipoContactoEncuesta INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            SELECT IdTipoContactoEncuesta, TipoContactoEncuesta, IngresadoPor, FechaIngreso, ModificadoPor, FechaModificacion, Estado, Accion
                FROM        TipoContactoEncuesta   WITH (NOLOCK) 
                WHERE        IdTipoContactoEncuesta = @IdTipoContactoEncuesta
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTipoEncuestaPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SPObtenerTipoEncuestaPorID]
( @IdTipoEncuesta INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            SELECT IdTipoEncuesta, TipoEncuesta, IngresadoPor, FechaIngreso, ModificadoPor, FechaModificacion, Estado, Accion
                FROM        TiposEncuestas   WITH (NOLOCK) 
                WHERE        IdTipoEncuesta = @IdTipoEncuesta
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTipoIdentificacion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[SPObtenerTipoIdentificacion]
AS
    BEGIN
        BEGIN TRY
            BEGIN
                SELECT IdTipoIdentificacion, TipoIdentificacion,Estado from TipoIdentificacion
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTipoIdentificacionPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE   PROCEDURE [dbo].[SPObtenerTipoIdentificacionPorID]
( @IdTipoIdentificacion INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            SELECT IdTipoIdentificacion, TipoIdentificacion, IngresadoPor, FechaIngreso, ModificadoPor, FechaModificacion, Estado, Accion
                FROM        TipoIdentificacion  WITH (NOLOCK) 
                WHERE        IdTipoIdentificacion = @IdTipoIdentificacion
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTipoIndicadorPorId]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[SPObtenerTipoIndicadorPorId]
( @IdTipoIndicador INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select t.IdTipoIndicador,t.TipoIndicador,t.Sigla,t.Minimo,t.Maximo, t.Estado, t.ModificadoPor, t.FechaIngreso, t.Accion, t.FechaModificacion, t.IngresadoPor from TiposIndicadores t WHERE IdTipoIndicador=@IdTipoIndicador
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTipoInteraccion]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

select * from TiposIndicadores
exec SPObtenerTipoIndicadorPorId 2


CREATE PROCEDURE [dbo].[SPObtenerTipoInteraccion]
AS
    BEGIN
        BEGIN TRY
            BEGIN
                SELECT IdTipoInteraccion, TipoInteraccion,Estado from TipoInteraccion
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTipoInteraccionPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE   PROCEDURE [dbo].[SPObtenerTipoInteraccionPorID]
( @IdTipoInteraccion INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            SELECT IdTipoInteraccion, TipoInteraccion, IngresadoPor, FechaIngreso, ModificadoPor, FechaModificacion, Estado, Accion
                FROM        TipoInteraccion   WITH (NOLOCK) 
                WHERE        IdTipoInteraccion = @IdTipoInteraccion
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTipoMetricaPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[SPObtenerTipoMetricaPorID]
( @IdTipoMetrica INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            SELECT IdTipoMetrica,Tipo,Descripcion, IngresadoPor, FechaIngreso, ModificadoPor, FechaModificacion, Estado, Accion
                FROM        TiposMetricas   WITH (NOLOCK) 
                WHERE        IdTipoMetrica = @IdTipoMetrica
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTipoPerspectivas]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[SPObtenerTipoPerspectivas]
AS
    BEGIN
        BEGIN TRY
            BEGIN
                SELECT IdTipoPerspectiva, TipoPerspectiva,Estado from TipoPerspectiva
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTipoPerspectivasPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE   PROCEDURE [dbo].[SPObtenerTipoPerspectivasPorID]
( @IdTipoPerspectiva INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            SELECT IdTipoPerspectiva, TipoPerspectiva, Estado, Accion, IngresadoPor, FechaIngreso, ModificadoPor, FechaModificacion
                FROM        TipoPerspectiva   WITH (NOLOCK) 
                WHERE        IdTipoPerspectiva = @IdTipoPerspectiva
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTiposEncuestas]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SPObtenerTiposEncuestas]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select t.IdTipoEncuesta,t.TipoEncuesta, t.Estado, t.ModificadoPor, t.FechaIngreso, t.Accion, t.FechaModificacion, t.IngresadoPor from TiposEncuestas t
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTiposIndicadores]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[SPObtenerTiposIndicadores]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select t.IdTipoIndicador,t.TipoIndicador,t.Sigla,t.Minimo,t.Maximo, t.Estado, t.ModificadoPor, t.FechaIngreso, t.Accion, t.FechaModificacion, t.IngresadoPor from TiposIndicadores t 
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTiposMetricas]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SPObtenerTiposMetricas]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select t.IdTipoMetrica,t.Descripcion,t.Tipo, t.Estado, t.ModificadoPor, t.FechaIngreso, t.Accion, t.FechaModificacion, t.IngresadoPor from TiposMetricas t
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTiposPersona]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SPObtenerTiposPersona]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               select t.IdTipoPersona,t.TipoPersona from TiposPersonas t
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTiposPersonaPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE   PROCEDURE [dbo].[SPObtenerTiposPersonaPorID]
( @IdTipoPersona INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            SELECT IdTipoPersona, TipoPersona, IngresadoPor, FechaIngreso, ModificadoPor, FechaModificacion, Estado, Accion
                FROM        TiposPersonas  WITH (NOLOCK) 
                WHERE        IdTipoPersona = @IdTipoPersona
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTiposTalleres]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerTiposTalleres]
AS
    BEGIN
        BEGIN TRY
            BEGIN
               SELECT IdTipoTaller, TipoTaller,Estado from TiposTalleres with(NOLOCK)
            END
        END TRY
        BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
        END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTipoTallerPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SPObtenerTipoTallerPorID]
( @IdTipoTaller INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            SELECT IdTipoTaller, TipoTaller, IngresadoPor, FechaIngreso, ModificadoPor, FechaModificacion, Estado, Accion
                FROM        TiposTalleres   WITH (NOLOCK) 
                WHERE        IdTipoTaller = @IdTipoTaller
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerValoresIndicadorPorID]    Script Date: 6/10/2022 2:50:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  PROCEDURE [dbo].[SPObtenerValoresIndicadorPorID]
( @IdTipoIndicador INT )
AS
    BEGIN
        BEGIN TRY
            BEGIN
            select IdClasificacion,Clasificacion, IdTipoIndicador, Valor, Estado,Accion, IngresadoPor,ModificadoPor, FechaIngreso,FechaModificacion 
			   from ClasificacionIndicadores with(NOLOCK)
                WHERE   IdTipoIndicador = @IdTipoIndicador  and Valor <= (SELECT Maximo FROM TiposIndicadores WHERE IdTipoIndicador=@IdTipoIndicador) and Valor >=(SELECT Minimo FROM TiposIndicadores WHERE IdTipoIndicador=@IdTipoIndicador) ORDER BY Valor
            END
            END TRY
            BEGIN CATCH
            SELECT 1, ERROR_MESSAGE() AS MENSAJE
            END CATCH
    END
GO
