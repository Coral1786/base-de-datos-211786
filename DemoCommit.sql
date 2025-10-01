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
            EnglishProductName,
            StandardCost,
            ListPrice,
            FinishedGoodsFlag,
            SafetyStockLevel,
            ReorderPoint,
            DaysToManufacture,
            StartDate,
            Status
        )
        VALUES
        (
            @ProductAlternateKey,
            @EnglishProductName,
            @StandardCost,
            @ListPrice,
            1,          
            100,        
            50,         
            1,          
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
