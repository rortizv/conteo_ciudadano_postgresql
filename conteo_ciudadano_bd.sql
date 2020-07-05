USE [conteo_ciudadano_bd]
GO
/****** Object:  Table [dbo].[censo_derecho]    Script Date: 4/07/2020 9:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[censo_derecho](
	[id_censo_derecho] [int] IDENTITY(1,1) NOT NULL,
	[fecha_registro] [date] NULL,
	[direccion] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_censo_derecho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[censo_distrital_derecho]    Script Date: 4/07/2020 9:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[censo_distrital_derecho](
	[id_censo_derecho_dis] [int] IDENTITY(100,1) NOT NULL,
	[id_fecha_registro] [date] NOT NULL,
	[fk_id_censo_derecho] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_censo_derecho_dis] ASC,
	[id_fecha_registro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[censo_distrital_hecho]    Script Date: 4/07/2020 9:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[censo_distrital_hecho](
	[id_censo_hecho_dis] [int] IDENTITY(200,2) NOT NULL,
	[id_fecha_registro_hecho] [date] NOT NULL,
	[fk_id_censo_hecho] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_censo_hecho_dis] ASC,
	[id_fecha_registro_hecho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[censo_hecho]    Script Date: 4/07/2020 9:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[censo_hecho](
	[id_censo_hecho] [int] IDENTITY(1,1) NOT NULL,
	[fecha_inicio_residencia] [date] NULL,
	[direccion] [varchar](30) NULL,
	[pais_residencia] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_censo_hecho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[distrito]    Script Date: 4/07/2020 9:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[distrito](
	[cod_distrito] [int] IDENTITY(1,1) NOT NULL,
	[nombre_distrito] [varchar](30) NULL,
	[fk_cod_municipio] [int] NULL,
	[fk_id_distrito_der] [int] NOT NULL,
	[fk_id_distrito_hec] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_distrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 4/07/2020 9:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[municipio](
	[cod_municipio] [int] IDENTITY(1,1) NOT NULL,
	[nombre_municipio] [varchar](30) NULL,
	[fk_cod_provincia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_municipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 4/07/2020 9:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persona](
	[numero_doc] [int] NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[apellidos] [varchar](30) NOT NULL,
	[fecha_nacimiento] [datetime] NOT NULL,
	[tipo_doc] [varchar](20) NOT NULL,
	[edad] [varchar](20) NULL,
	[estatura] [varchar](30) NOT NULL,
	[situacion_militar] [varchar](20) NOT NULL,
	[sexo] [varchar](3) NOT NULL,
	[nivel_de_estudios] [varchar](20) NOT NULL,
	[fk_persona_cod_municipio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[numero_doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[provincia]    Script Date: 4/07/2020 9:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[provincia](
	[cod_provincia] [int] IDENTITY(1,1) NOT NULL,
	[nombre_provincia] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 4/07/2020 9:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[id] [int] NULL,
	[usuario] [nvarchar](20) NULL,
	[status] [nvarchar](50) NULL,
	[password] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios_login]    Script Date: 4/07/2020 9:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios_login](
	[id] [int] NULL,
	[usuarios] [nvarchar](20) NULL,
	[nombre] [nvarchar](50) NULL,
	[clave] [nvarchar](20) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[censo_distrital_derecho]  WITH CHECK ADD  CONSTRAINT [fk_id_censo_derecho] FOREIGN KEY([fk_id_censo_derecho])
REFERENCES [dbo].[censo_derecho] ([id_censo_derecho])
GO
ALTER TABLE [dbo].[censo_distrital_derecho] CHECK CONSTRAINT [fk_id_censo_derecho]
GO
ALTER TABLE [dbo].[censo_distrital_hecho]  WITH CHECK ADD  CONSTRAINT [fk_id_censo_hecho] FOREIGN KEY([fk_id_censo_hecho])
REFERENCES [dbo].[censo_hecho] ([id_censo_hecho])
GO
ALTER TABLE [dbo].[censo_distrital_hecho] CHECK CONSTRAINT [fk_id_censo_hecho]
GO
ALTER TABLE [dbo].[distrito]  WITH CHECK ADD FOREIGN KEY([fk_id_distrito_der])
REFERENCES [dbo].[municipio] ([cod_municipio])
GO
ALTER TABLE [dbo].[distrito]  WITH CHECK ADD FOREIGN KEY([fk_id_distrito_hec])
REFERENCES [dbo].[censo_derecho] ([id_censo_derecho])
GO
ALTER TABLE [dbo].[distrito]  WITH CHECK ADD FOREIGN KEY([fk_id_distrito_der])
REFERENCES [dbo].[municipio] ([cod_municipio])
GO
ALTER TABLE [dbo].[distrito]  WITH CHECK ADD FOREIGN KEY([fk_id_distrito_hec])
REFERENCES [dbo].[censo_derecho] ([id_censo_derecho])
GO
ALTER TABLE [dbo].[distrito]  WITH CHECK ADD FOREIGN KEY([fk_id_distrito_der])
REFERENCES [dbo].[municipio] ([cod_municipio])
GO
ALTER TABLE [dbo].[distrito]  WITH CHECK ADD FOREIGN KEY([fk_id_distrito_hec])
REFERENCES [dbo].[censo_derecho] ([id_censo_derecho])
GO
ALTER TABLE [dbo].[distrito]  WITH CHECK ADD FOREIGN KEY([fk_id_distrito_der])
REFERENCES [dbo].[municipio] ([cod_municipio])
GO
ALTER TABLE [dbo].[distrito]  WITH CHECK ADD FOREIGN KEY([fk_id_distrito_hec])
REFERENCES [dbo].[censo_derecho] ([id_censo_derecho])
GO
ALTER TABLE [dbo].[distrito]  WITH CHECK ADD FOREIGN KEY([fk_id_distrito_der])
REFERENCES [dbo].[municipio] ([cod_municipio])
GO
ALTER TABLE [dbo].[distrito]  WITH CHECK ADD FOREIGN KEY([fk_id_distrito_hec])
REFERENCES [dbo].[censo_derecho] ([id_censo_derecho])
GO
ALTER TABLE [dbo].[distrito]  WITH CHECK ADD FOREIGN KEY([fk_id_distrito_der])
REFERENCES [dbo].[municipio] ([cod_municipio])
GO
ALTER TABLE [dbo].[distrito]  WITH CHECK ADD FOREIGN KEY([fk_id_distrito_hec])
REFERENCES [dbo].[censo_derecho] ([id_censo_derecho])
GO
ALTER TABLE [dbo].[distrito]  WITH CHECK ADD  CONSTRAINT [fk_cod_municipio] FOREIGN KEY([fk_cod_municipio])
REFERENCES [dbo].[municipio] ([cod_municipio])
GO
ALTER TABLE [dbo].[distrito] CHECK CONSTRAINT [fk_cod_municipio]
GO
ALTER TABLE [dbo].[municipio]  WITH CHECK ADD FOREIGN KEY([fk_cod_provincia])
REFERENCES [dbo].[provincia] ([cod_provincia])
GO
ALTER TABLE [dbo].[municipio]  WITH CHECK ADD FOREIGN KEY([fk_cod_provincia])
REFERENCES [dbo].[provincia] ([cod_provincia])
GO
ALTER TABLE [dbo].[municipio]  WITH CHECK ADD FOREIGN KEY([fk_cod_provincia])
REFERENCES [dbo].[provincia] ([cod_provincia])
GO
ALTER TABLE [dbo].[municipio]  WITH CHECK ADD FOREIGN KEY([fk_cod_provincia])
REFERENCES [dbo].[provincia] ([cod_provincia])
GO
ALTER TABLE [dbo].[municipio]  WITH CHECK ADD FOREIGN KEY([fk_cod_provincia])
REFERENCES [dbo].[provincia] ([cod_provincia])
GO
ALTER TABLE [dbo].[municipio]  WITH CHECK ADD FOREIGN KEY([fk_cod_provincia])
REFERENCES [dbo].[provincia] ([cod_provincia])
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [fk_persona_cod_municipio] FOREIGN KEY([fk_persona_cod_municipio])
REFERENCES [dbo].[municipio] ([cod_municipio])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [fk_persona_cod_municipio]
GO
