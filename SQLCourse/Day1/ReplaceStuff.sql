declare @haystack varchar(100) = 'Kubrick--group-training-course'
select @haystack
select replace(replace(@haystack,'-',' '),'i','I')
select stuff(@haystack,1,7,'Amazing') 

