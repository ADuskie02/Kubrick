select top 1 with ties -- this ensures that values with the same listprice are not ignored
	*
from production.product
order by listprice desc