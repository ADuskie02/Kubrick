--LAG and LEAD


select
	 [salesorderid]
	,[salesorderdetailid]
	,lead([salesorderdetailid]) over (partition by [salesorderid] order by [salesorderdetailid] asc) NextOrder
	,lag([salesorderdetailid]) over (partition by [salesorderid] order by [salesorderdetailid] asc) Previousorder
	,first_value([salesorderdetailid]) over (partition by [salesorderid] order by [salesorderdetailid] asc) firstorder
	,last_value([salesorderdetailid]) over (partition by [salesorderid] order by [salesorderdetailid] asc Rows between unbounded preceding and unbounded following) lastOrder
	,[linetotal]
	,[productid]
from [sales].[salesorderdetail]
order by 1, 2

