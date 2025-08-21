USE [Tienda]
GO

/****** Object:  Table [dbo].[Pedidos]    Script Date: 19/08/2025 23:03:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Pedidos](
	[ID_PEDIDO] [nchar](5) NOT NULL,
	[ID_CLIENTE] [nchar](4) NULL,
	[Fecha] [date] NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[ID_PEDIDO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Clientes] FOREIGN KEY([ID_CLIENTE])
REFERENCES [dbo].[Clientes] ([ID_CLIENTE])
GO

ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Clientes]
GO


USE [Tienda]
GO

INSERT INTO [dbo].[Pedidos]
           ([ID_PEDIDO]
           ,[ID_CLIENTE]
           ,[Fecha])
     VALUES
           ('PD001', 'C001', '2025-08-15'),
           ('PD002', 'C002', '2025-08-19'),
           ('PD003', 'C003', '2025-08-21'),
           ('PD004', 'C004', '2025-08-25'),
           ('PD005', 'C005', '2025-08-28')
GO


