/****** Script for SelectTopNRows command from SSMS  ******/
SELECT   p.[ProductKey]
      ,p.[ProductAlternateKey] as code_item
      ,p.[ProductSubcategoryKey],ps.[ProductCategoryKey]
    --  ,[WeightUnitMeasureCode]
     -- ,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] as product_name
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,p.[Color]
      --,[SafetyStockLevel]
     -- ,[ReorderPoint]
      --,[ListPrice]
      --,[Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine]
      --,[DealerPrice]
      ,[Class]
      ,[Style]
      ,[ModelName]
      ,[LargePhoto]
      ,[EnglishDescription] as description
     -- ,[FrenchDescription]
     -- ,[ChineseDescription]
     -- ,[ArabicDescription]
     -- ,[HebrewDescription]
--,[ThaiDescription]
     -- ,[GermanDescription]
     -- ,[JapaneseDescription]
     -- ,[TurkishDescription]
     -- ,[StartDate]
     -- ,[EndDate]
      ,coalesce(p.Status,'outdated') as status
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] p left join [dbo].[DimProductSubcategory] ps 
  on p.[ProductSubcategoryKey]=ps.[ProductSubcategoryKey] left join [dbo].[DimProductCategory] pc
  on ps.[ProductCategoryKey]=pc.[ProductCategoryKey]
  order by p.[ProductKey]