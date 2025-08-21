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
           ('P001',	'Xiaomi Power Bank 20000mAh 18W', 'Cargador portátil de alta capacidad y carga rápida', 75.00),
           ('P002', 'Amazon Echo Dot 5ta Gen', 'Parlante inteligente con Alexa y control de hogar', 219.00),
           ('P003', 'JBL Partybox Stage 320', 'Parlante Bluetooth potente para fiestas',	2099.00),
           ('P004', 'Lenovo Audífonos Bluetooth LP40 Pro', 'Auriculares TWS con buena autonomía y diseño compacto', 39.90),
           ('P005', 'Xiaomi Redmi Buds 6 Play BT5.4', 'Audífonos inalámbricos con 36 horas de batería', 49.00)
GO

