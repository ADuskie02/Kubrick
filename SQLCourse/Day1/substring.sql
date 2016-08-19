go
select
	  [BusinessEntityID]
	 ,[EmailAddressID]
	 ,[EmailAddress]
	 ,substring(EmailAddress,1,CharIndex('@',EmailAddress) - 1) As [User Name] --+1 and -1 are present as they are putting @ as the start and end points and we want either one before or one after that point
	 ,substring(EmailAddress,charindex('@',emailaddress)+1,len(EmailAddress)) as [Domain Name]
	 ,len(substring(EmailAddress,charindex('@',emailaddress)+1,len(EmailAddress)))
From AdventureWorks2014.[Person].[EmailAddress] 
