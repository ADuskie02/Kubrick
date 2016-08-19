select
	name
	,isnull(color,'NA') color
	,listprice
	,RANK() over (partition by [color] order by [listprice] asc) rnk --counts the different prices, no represents how many were before it
	,Row_number() over (partition by [color] order by [listprice] asc) rownumber
	,DENSE_RANK() over (partition by [color] order by [listprice] asc) drnk -- counts the different prices within the colors, is always incremental
	,ntile(10) over (order by [listprice] asc) nt
from [production].[product]
order by 2, 3