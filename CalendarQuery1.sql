/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [DateKey]
      ,[FullDateAlternateKey] as Date
    --  ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] as Day
     -- ,[SpanishDayNameOfWeek]
     -- ,[FrenchDayNameOfWeek]
     -- ,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] as WeekNo
      ,[EnglishMonthName] as Month
	  ,left(EnglishMonthName,3) as ShortMonth
     -- ,[SpanishMonthName]
    --  ,[FrenchMonthName]
      ,[MonthNumberOfYear]as Month_no
      ,[CalendarQuarter] as quarter
      ,[CalendarYear]    as year
    --  ,[CalendarSemester]
     -- ,[FiscalQuarter]
    --  ,[FiscalYear]
     -- ,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  where CalendarYear >=2019