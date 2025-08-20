USE [Tienda]
GO

/****** Object:  Table [dbo].[Clientes]    Script Date: 19/08/2025 22:55:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Clientes](
	[ID_CLIENTE] [nchar](4) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Tel�fono] [numeric](9, 0) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ID_CLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [Tienda]
GO

INSERT INTO [dbo].[Clientes]
           ([ID_CLIENTE]
           ,[Nombre]
           ,[Email]
           ,[Tel�fono])
     VALUES
           ('C001', 'Mar�a Fernanda L�pez', 'maria.lopez@gmail.com', 987654321),
           ('C002', 'Jorge Ram�rez', 'jorge.ramirez@outlook.com', 912345678),
           ('C003', 'Andrea Paredes', 'andrea.paredes@hotmail.com', 998877665),
           ('C004', 'Jos� Luis Ch�vez', 'jl.chavez@gmail.com', 955443322),
           ('C005', 'Fiorella R�os', 'fiorella.rios@hotmail.com', 964321789)
GO


