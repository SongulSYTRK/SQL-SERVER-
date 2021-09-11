use ShoppingMall


----USER DEFÝNED FUNCTÝON------
 
 go
  Create Function KDVhesapla(@fiyat money)   -- parameter(one or more ) + type 
 
  returns money   --  can be return type 
  begin
   return @fiyat*1.08
    end;
go

-- go go : you can removes redness if your cade successfully

select ProductName,
       CategoryName,
	   UnitPrice, 
	  dbo.KDVhesapla( UnitPrice) as [KDV]     -- IF you write function . you should write ' dbo'
from Products P
join Categories C on p.CategoryID=c.ID
order by 4




go

Create function Age (@birthdate datetime) 
 returns int  
 begin 
    return DateDiff (YY,@birthdate,getdate())
 end;

 go

 select FirstName+''+LastName as [Full name ] ,dbo.Age( BirthDate) as age
 from Customers
 order by age desc

 --TABLE FUNCTÝON--

create function CustomerInformation(@customerID int)
returns table 
return select * from Customers where ID= @customerID

select * from CustomerInformation(5)






create function stock (@started int , @finished int )
returns table 
return select * from Products where UnitInStock between @started and  @finished
select * from stock(50,100)

  -- if you will update anywhere of  function, you can use ""ALTER "
Alter  function stock (@started smallint , @finished smallint )
returns table 
return select * from Products where UnitInStock between @started and  @finished
select * from stock(50,100)






Create function GetStartWord(@Firstword nVarchar(1) )
returns table 
return select * from Customers 
where LEFT(FirstName ,1) =@Firstword
select * from GetStartWord('R')


-