-- esempio di Transact-SQL (T-SQL); � specifico di SQL Server
declare @a int

set @a = 11

if @a > 10
begin
	print 'maggiore'
	select * from ricetta
end
else
begin
	print 'non � maggiore'
	select * from cuoco
end