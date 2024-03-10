-- Cleansed DIM_Products Table --
SELECT 
  [ProductKey], 
  [ProductAlternateKey] AS ProductItemCode, 
  -- [ProductSubcategoryKey], 
  -- [WeightUnitMeasureCode], 
  -- [SizeUnitMeasureCode], 
  [EnglishProductName] AS [Product Name],
  pc.EnglishProductCategoryName AS [Product Category], -- Joined from DimProductCategory table
  ps.EnglishProductSubcategoryName AS [Sub Category],  -- Joined from DimProductSubcategory table
  -- [SpanishProductName], 
  -- [FrenchProductName], 
  -- [StandardCost], 
  -- [FinishedGoodsFlag], 
  [Color] AS [Product Color], 
  -- [SafetyStockLevel], 
  -- [ReorderPoint], 
  -- [ListPrice], 
  [Size] AS [Product Size], 
  -- [SizeRange], 
  -- [Weight], 
  -- [DaysToManufacture], 
  [ProductLine] AS [Product Line], 
  -- [DealerPrice], 
  -- [Class], 
  -- [Style], 
  [ModelName] AS [Product Model Name], 
  -- [LargePhoto], 
  [EnglishDescription] AS [Product Description], 
  -- [FrenchDescription], 
  -- [ChineseDescription], 
  -- [ArabicDescription], 
  -- [HebrewDescription], 
  -- [ThaiDescription], 
  -- [GermanDescription], 
  -- [JapaneseDescription], 
  -- [TurkishDescription], 
  -- [StartDate], 
  -- [EndDate], 
  ISNULL (p.Status,'Outdated') AS [Product Status]
FROM 
  dbo.DimProduct as p
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey=p.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey=pc.ProductCategoryKey
order by
  p.ProductKey asc
