--select
--	 Name
--	,listprice
--	,Name +' '+ cast(listprice as varchar) Concatenation
--	,case 
--		when cast(listprice as int) = 0 then 'free'
--		when cast(listprice as int) between 1 and 100 then 'cheap'
--		when cast(listprice as int) between 101 and 500 then 'not cheap'
--		when cast(listprice as int) between 501 and 1000 then 'expensive'
--		when cast(listprice as int) >1001 then 'ridiculous'
--	end as PriceDescription

--from [production].[product]

--select
--	FirstName
--	,MiddleName
--	,LastName
--	,FirstName +' '+isnull(MiddleName,'')+' '+Lastname FullName
		
--from [person].[person]

select
	middlename 
	,isnull(nullif(middlename,'B'),'badname')
from person.Person

