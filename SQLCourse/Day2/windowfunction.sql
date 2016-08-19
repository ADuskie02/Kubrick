select
 color
 ,name
 ,productnumber	
 ,[weight]						--allows us to show columns other than those being sorted by
 ,count(*) over (partition by color)
 ,count(*) over (partition by [weight])
 from production.product
 where weight is not null



