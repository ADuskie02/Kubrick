go
select distinct
	 [ProductID]
	,substring([Name],1,3)
	,Right ([Name],3)
	,substring (reverse(name),2,3)
	,reverse(substring (reverse(name),2,3))
	,[Name] [Product Name]
	,[Size] [Product Size]
	,[Class] [Product Class]
	,[StandardCost]
	,[ListPrice]
	,[ListPrice]-[StandardCost] as [Profit]
from AdventureWorks2014.[Production].[Product];
go