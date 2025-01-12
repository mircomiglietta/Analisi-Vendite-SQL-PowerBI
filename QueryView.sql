USE [SalesAnalysis]
GO

/****** Object:  View [dbo].[AnalisiVendite]    Script Date: 12/01/2025 19:24:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[AnalisiVendite] AS 
SELECT [SaleID]
      ,[SaleDate]
      ,p.ProductName
      ,c.CustomerName
      ,[Quantity]
      ,[TotalAmount]
  FROM [SalesAnalysis].[dbo].[Sales] s
 INNER JOIN 
	Products p ON p.ProductID = s.ProductID
 INNER JOIN 
	Customers c ON c.CustomerID = s.CustomerID
GO


