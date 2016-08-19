select
	 avg(sod.LineTotal) AverageSpend
	--,stdev(sod.linetotal) StDevSpend
	--,min(sod.linetotal) minSpend
	--,max(sod.linetotal) maxSpend
	--,datename(qq,soh.OrderDate) Qtr
	,datename(qq,soh.orderdate) + datename(yy,soh.OrderDate) YrQtr
from [Sales].[SalesOrderDetail] sod with (nolock)
join [production].[product] p with (nolock)
	on sod.[productid] = p.[productid]
inner join [sales].[salesorderheader] soh with(nolock)
	on sod.[salesorderid]= soh.[salesorderid]
group by
	datename(qq,soh.orderdate) + datename(yy,soh.OrderDate)