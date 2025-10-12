SELECT 
    p.EnglishProductName,
    d.EnglishDayNameOfWeek
FROM AdventureWorksDW2022.dbo.DimProduct AS p
CROSS JOIN AdventureWorksDW2022.dbo.DimDate AS d
WHERE d.CalendarYear = 2022
  AND p.ProductSubcategoryKey IS NOT NULL;