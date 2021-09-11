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


