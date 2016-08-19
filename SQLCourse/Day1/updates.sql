select
	*
from [Production].[Product]
where productID = 1

begin tran


update [Production].[Product]
set color = 'Green'
where ProductID = 1


commit tran

