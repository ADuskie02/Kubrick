--select
--	*
--	from [sales].[customer] with (nolock)
	

---- looking for a table to link sales.salesorderheader and sales.customer using primary key personid

--select 
--	*
--	from sales.SalesOrderHeader with (nolock)

--select top 10
--	*
--	from [AdventureWorks2014].[sales].[salesorderdetail] -- we will join production.product with this one we want, name, listprice, standardcost,color from that table
--	--and we want carriertrackingnumber, orderqty, linetotal and unitprice from salesorderdetail


select
	 p.Name ProductName
	,p.listprice
	,cast(p.standardcost as decimal(10,2)) StandardCost --puts the standardcast to 2 decimal places
	,p.color
	,sod.carriertrackingnumber
	,sod.orderqty
	,sod.unitprice
	,sod.linetotal
	,cast(soh.orderdate as date) OrderDate
	,cast(soh.duedate as date) DueDate
	,cast(soh.shipdate as date) ShipDate
	,dateadd(month,datediff(month,0,soh.orderdate),0)-1 --gives last day of previous month take away the -1 to get first day of current month
/*
from [sales].[salesorderdetail], [production].[product]
where sales.salesorderdetail.productid=production.product.productid
*/
from [Sales].[SalesOrderDetail] sod with (nolock)
join [production].[product] p with (nolock)
	on sod.[productid] = p.[productid]
inner join [sales].[salesorderheader] soh with(nolock)
	on sod.[salesorderid]= soh.[salesorderid]

--	and datediff(yy,cast(soh.orderdate as date),getdate()) <=2 --shows all the orders placed in the last 2 years getdate() puts in the current date

