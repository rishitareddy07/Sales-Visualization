-- Cleansed DIM_Customers Table --
SELECT 
  [CustomerKey],
  -- ,[GeographyKey]
  -- ,[CustomerAlternateKey]
  -- ,[Title] 
  [FirstName] AS [First Name], 
  -- ,[MiddleName]
  [LastName] AS [Last Name], 
  [FirstName] + ' ' + [LastName] AS [Full Name],   -- Combined First and Last Name
  -- ,[NameStyle]
  -- ,[BirthDate]
  -- ,[MaritalStatus]
  -- ,[Suffix]
  CASE [Gender] When 'M' then 'Male' when 'F' then 'Female' END AS [Gender], 
  -- ,[EmailAddress]
  -- ,[YearlyIncome]
  -- ,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  -- ,[EnglishEducation]
  -- ,[SpanishEducation]
  -- ,[FrenchEducation]
  -- ,[EnglishOccupation] 
  -- ,[SpanishOccupation]
  -- ,[FrenchOccupation]
  -- ,[HouseOwnerFlag]
  -- ,[NumberCarsOwned]
  -- ,[AddressLine1]
  -- ,[AddressLine2]
  -- ,[Phone]
  [DateFirstPurchase], 
  -- ,[CommuteDistance]
  g.City AS [Customer City] -- Joined Customer City from Geography Table
FROM 
  dbo.DimCustomer AS c 
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Order list by CustomerKey
