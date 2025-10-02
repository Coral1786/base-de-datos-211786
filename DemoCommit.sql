CREATE OR ALTER PROCEDURE usp_InsertProduct
    @ProductAlternateKey NVARCHAR(25),
    @EnglishProductName NVARCHAR(50),
    @StandardCost MONEY,
    @ListPrice MONEY
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO AdventureWorksDW2022.dbo.DimProduct
        (
            ProductAlternateKey,
            ProductSubcategoryKey,
            WeightUnitMeasureCode,
            SizeUnitMeasureCode,
            EnglishProductName,
            SpanishProductName,
            FrenchProductName,
            StandardCost,
            FinishedGoodsFlag,
            Color,
            SafetyStockLevel,
            ReorderPoint,
            ListPrice,
            DealerPrice,
            Size,
            SizeRange,
            Weight,
            DaysToManufacture,
            ProductLine,
            Class,
            Style,
            ModelName,
            EnglishDescription,
            FrenchDescription,
            StartDate,
            Status
        )
        VALUES
        (
            @ProductAlternateKey,
            1,
            'LB',
            'CM',
            @EnglishProductName,
            'Producto de prueba',
            'Produit de test',
            @StandardCost,
            1,
            'Black',
            500,
            250,
            @ListPrice,
            @ListPrice - 5,
            'M',
            'Medium',
            2.5,
            3,
            'S',
            'H',
            'U',
            'Test Model',
            'English description',
            'Description en français',
            GETDATE(),
            'Current'
        );

        COMMIT TRANSACTION;
        PRINT 'Insert successful. Transaction committed.';
    END TRY

    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        PRINT 'Error occurred. Transaction rolled back.';
        THROW;
    END CATCH
END;
GO
