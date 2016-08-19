--select
--	[firstname]

-- from [Person].[Person] where  [firstname] = soundex('bahb')
select 

	[firstname]
	,[title]
	,[lastname]
	,[middlename]
	,difference([firstname],'Bob') DifferenceScore

from [Person].[Person]
where 1=1
	order by DifferenceScore desc
	top 