select len('hello world') --11
select datalength('hello world    ') --15
select datalength(ltrim(rtrim('hello world     '))) --11