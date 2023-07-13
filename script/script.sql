/****** Object:  User [alumno]    Script Date: 13/7/2023 15:41:56 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 13/7/2023 15:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidato](
	[idCandidato] [int] IDENTITY(1,1) NOT NULL,
	[idPartido] [int] NOT NULL,
	[Apellido] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[FechaNacimiento] [date] NULL,
	[Foto] [varchar](max) NULL,
	[Postulacion] [varchar](50) NULL,
 CONSTRAINT [PK_Candidato] PRIMARY KEY CLUSTERED 
(
	[idPartido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partido]    Script Date: 13/7/2023 15:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partido](
	[idPartido] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Logo] [varchar](50) NULL,
	[SitioWeb] [varchar](50) NULL,
	[FechaFundacion] [date] NULL,
	[CantidadDiputados] [int] NULL,
	[CantidadSenadores] [int] NULL,
 CONSTRAINT [PK_Partido] PRIMARY KEY CLUSTERED 
(
	[idPartido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Candidato] ON 

INSERT [dbo].[Candidato] ([idCandidato], [idPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (2, 1, N'Massa', N'Sergio', CAST(N'1972-04-28' AS Date), N'https://www.lavoz.com.ar/resizer/i_5YVb6gvZWhiVGCqYzHTJQGobg=/980x640/smart/filters:quality(75):format(webp)/cloudfront-us-east-1.images.arcpublishing.com/grupoclarin/4H4W7QAFAFFALCAXTABLUMESGE.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([idCandidato], [idPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (4, 2, N'Milei', N'Javier', CAST(N'1970-10-22' AS Date), N'https://media.lacapital.com.ar/p/480053468be89877b4421fdb0a5cc343/adjuntos/204/imagenes/100/803/0100803761/paso-milei-precandidatos-1jpg.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([idCandidato], [idPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (9, 3, N'Larreta', N'Horacio', CAST(N'1965-10-29' AS Date), NULL, N'Presidente')
SET IDENTITY_INSERT [dbo].[Candidato] OFF
GO
INSERT [dbo].[Partido] ([idPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (1, N'Unión por la Patria ', NULL, NULL, NULL, 118, 31)
INSERT [dbo].[Partido] ([idPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (2, N'La Libertad Avanza', NULL, NULL, CAST(N'2021-07-14' AS Date), 3, 0)
INSERT [dbo].[Partido] ([idPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (3, N'Juntos por el cambio', NULL, NULL, CAST(N'2019-06-12' AS Date), 116, 33)
GO
ALTER TABLE [dbo].[Partido]  WITH CHECK ADD  CONSTRAINT [FK_Partido_Candidato] FOREIGN KEY([idPartido])
REFERENCES [dbo].[Candidato] ([idPartido])
GO
ALTER TABLE [dbo].[Partido] CHECK CONSTRAINT [FK_Partido_Candidato]
GO
