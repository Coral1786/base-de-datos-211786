USE [Tienda]
GO

/****** Object:  Table [dbo].[Productos]    Script Date: 19/08/2025 22:38:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Productos](
	[ID_PRODUCTO] [nchar](4) NOT NULL,
	[Producto] [nchar](50) NULL,
	[Descripción] [nchar](200) NULL,
	[Precio] [money] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ID_PRODUCTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [dbo].[Productos]
           ([ID_PRODUCTO]
           ,[Producto]
           ,[Descripción]
           ,[Precio])
     VALUES
           ('C001',	'María Fernanda López', 'maria.lopez@gmail.com', 987654321),
           ('C002', 'Jorge Ramírez', 'jorge.ramirez@outlook.com', 912345678),
           ('C003', 'Andrea Paredes', 'andrea.paredes@hotmail.com',	998877665),
           ('C004', 'José Luis Chávez', 'jl.chavez@gmail.com', 955443322),
           ('C005', 'Fiorella Ríos', 'fiorella.rios@hotmail.com', 964321789)
GO


