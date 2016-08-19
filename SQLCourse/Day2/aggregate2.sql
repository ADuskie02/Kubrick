select
	p.productnumber
	,count(*) SaleCount --counts the number of times this appear in the table
	



from [Sales].[SalesOrderDetail] sod with (nolock)
join [production].[product] p with (nolock)
	on sod.[productid] = p.[productid]
inner join [sales].[salesorderheader] soh with(nolock)
	on sod.[salesorderid]= soh.[salesorderid]
where
	p.color = 'Red'

group by 
	p.productnumber
--having count(*) >=2000
order by SaleCount desc