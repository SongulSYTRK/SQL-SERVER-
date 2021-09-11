use ShoppingMall
--Create Table [dbo].[Products]
--(
--[Id] INT Identity (1,1) Not Null,
--[ProductName] nVarchar(20) Not Null,
--[Unitprice] money Not Null,
--[UnitInStock] int Not Null

--);
 Alter Table [Products]
add[CategoryId] int not null
 Alter Table [Products]
add[StoreId] int not null

Create Table [dbo].[Categories]
(
[Id] INT Identity (1,1) Not Null,
[CategoryName] nVarchar(30) Not Null

);

Create Table [dbo].[Customers]
(
[Id] INT Identity (1,1) Not Null,
[FirstName] nVarchar(30) Not Null,
[LastName] nVarchar(30) Not Null,
[Phone]  nVarchar(30) Not Null

);

--Create Table [dbo].[Stores]
--(
--[Id] INT Identity (1,1) Not Null,
--[StoreName] nVarchar(30) Not Null,
--[ContactName] nVarchar(30) Not Null,
--[Phone]  nVarchar(30) Not Null, 
--[Adress] nVarchar(30) Not Null

--);
 Alter Table [Stores]
add[ProductId] int not null

Alter Table Stores
         drop column [ProductId]

Create Table [dbo].[Orders]
(
[Id] INT Identity (1,1) Not Null,
[Quantity] int Not Null
);

Create Table AssignedorderToCustomers(
  [Id] int identity(1,1) not null,
  [OrderId] int not null,
  [CustomerId] int not null ,
  [StoreId] int not null
 );

 use ShoppingMall --We will use sql dataase

select * from Products --You can find all value

select StoreName,ContactName  from Stores

select StoreName,
	   ContactName, 
	   Phone 
from Stores 
where storeýd= 1   --"WHERE"  does the filtering 


select 
	   ProductName, 
	   UnitPrice, 	   
from Products 
where UnitsInStock > 100 
	and UnitsInStock < 200  --If you have 2 or more value you can use "AND "


select Id, ContactName, Phone, Adress
from Stores
where Id= 2 
	or ID = 5     -- If you have 2 or more option . you can use "OR"


 select FirstName+' '+LastName as [Full namer],  YEAR( GETDATE())- YEAR( BirthDate)) as Age   from Customers where   DATEDIFF( YEAR, BirthDate, GETDATE())>60

 
  --NULL  
  select * from Customers where Phone is  null

  --Not null  
 select * from Customers where Phone is  not null
  

 select * from Employees where EmployeeID >2 order by FirstName ASC
 
 select +FirstName+' '+LastName as [Full namer],
 BirthDate, 
 TitleOfCourtesy
    HireDate   
	from Employees order by 3 desc   -- Ýf you want to arrangement You can use "order by"


  select  FirstName+' '+LastName as Name  ,
   from Customers where YEAR( BirthDate) between 1992 and 1990 order by 1 desc  -- if you need range you can use "Between And"


  select +FirstName+' '+LastName as [Fullname ]from Customers
  where YEAR(Birthday) In(1990,1994,1992.)   -- If you have 2 or more option . you can use "OR"

 
 
  select Top 2 FirstName, LastName, DATEDIFF(YY, BirthDate, GetDate()) as Age 
  from Customers 
  order by age desc   -- you need best or worst value , you can use "TOP "

   

   --Like--

 select FirstName, LastName 
 from Customers
 where FirstName Like 'A%' -- you can find the word that starts with the letter 'A'
 
select FirstName, LastName 
 from Customers
 where FirstName Like  '%N' -- you can find the word that stops with the letter 'N'
 
select FirstName, LastName 
 from Customers
 where FirstName Like  '%E%'  --  you can find the word that anywhere with the letter 'N'


 select FirstName, LastName 
 from Customers
 where FirstName Like  '[AL]%'  --you can find the word that starts with the letter 'A' or 'L'


select FirstName, LastName 
 from Customers
 where FirstName Like  '%[RN]%'  you can find the word that anywhere with the letter 'N' or 'R'


select FirstName, LastName 
 from Customers
 where FirstName Like '%[^T]' --  you can find the word that not stops with the letter 'T'




 -- STRÝNG FUNCTÝON
 select ASCII('A') as [ASCII CODE ] -- You can find numberic value
 select CHAR(65) as letter  -- you can find word value
 select CHARINDEX('@', 'songul@gmail.com') as Location   -- You can find  location of first parameter
 select LEFT('Songul soyturk ', 4) as [number of characters from the left]


 select Right('songulsoyturk', 4) as [number of characters from the right]

 select Len('songul soyturk ') as [number of characters]
 
 select lower('SONGUL SOYTURK') as [all small ]

 
 select upper('songul soyturk') as [all big  ]

 
 select LTRIM('              songul sytrk') as [deletes spaces on the left ]


 select RTRIM('songul soyturk            ') as [deletes spaces on the right ]

 select LTRIM( RTRIM('     soongul '    )) as [deletes spaces on the everywhere ]

 select REPLACE('birbir','bir','iki') as [Replaces texts with new ones]

 select SUBSTRING('songul soyturk',3,6) as [Subtitle ]

 select REPLICATE('Bilge',5) --Repeats the specified text as many times as the value in the 2nd parameter


 --Aggrate functions
 select COUNT(*) from Products -- it can find number of lines
 
   select SUM(UnitPrice) as [Total price ] from Products  -- Sum() : sums all numbers


   select AVG(UnitPrice) from Products -- it can be find average  

  
 select  MIN(UnitPrice) as [ cheapest] from Products
 
  select  Max(UnitPrice) as [most expensive] from Products

  -- GROUP BY 
 select ProductName, count(*) as [UnýInstock ] 
 from Products 
 where UnitInStock < 100
 group by ProductName  -- you can group the same 

 --HAVÝNG --
 select CategoryID,sum(UnitsInStock) as [stok miktarý toplam ]
 from Products 
 group by CategoryID 
 having sum(UnitsInStock) <400  -- "Having"  does the filtering  for group
 order by 2 desc 

 --DML(Data Manipulating Language) : can made update, delete , insert 
 
 --insert: 
 insert Products(ProductName, UnitInStock) values ('shoes', '100')
--Update 
  update Products set Phone ='2222222' where ID =4 
  --Delete
  delete FROM Products  WHERE ID=7
  select * from Products

--Join=inner join -----
   
   select c.CategoryName,p.ProductName 
   from Categories C
   join Products P on c.ID=p.ID  -- If you will use 2 table you can use join . You should secondary key 
  
  select 
	       C.CategoryName,
	       S.CompanyName  ,
		   C.FirstName+''+C.LastName as [customername ],
		   P.ProductName, 
		   P.UnitPrice, 
		   P.Quantity,
		  
	                 from Categories C
					 join Products P on P.CategoryID=c.ID
                     join Stores S on P.StoreId=S.ID
		order by 1 asc 
   
   
  select p.ProductName ,
        CategoryId.OrderID,
		P.Quantity
		P.UnitPrice  
 from Products P  
 left join categories D on p.categoryID=C.ID 
 order by o.OrderID
 