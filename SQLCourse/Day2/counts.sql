select
 color
 ,count(color)					--counts all the rows excluding nulls, can only see columns you are aggregating and grouping by
 from production.product

 group by
 production.product.color

/* color	(No column name)
NULL	0
Black	93
Blue	26
Grey	1
Multi	8
Red	38
Silver	43
Silver/Black	7
White	4
Yellow	36 */

select
 color							--counts all the rows inclusing nulls
 ,count(*)
 from production.product

 group by
 production.product.color

 /*color	(No column name)
NULL	248
Black	93
Blue	26
Grey	1
Multi	8
Red	38
Silver	43
Silver/Black	7
White	4
Yellow	36 */

