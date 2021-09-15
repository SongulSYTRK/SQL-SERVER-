USE ShoppingMall

--example  = you create orderlist
create view orderlist 
  as
  select c.CustomerID, 
          c.ContactName,
		  o.orderýd, 
		  o.OrderDate,
		 
  from Orders o 
  join Customers C on o.CustomerID=c.CustomerID
  select * from orderlist

  


  go
  create view GetStoreToproduct
  as
  select s.StoreName, 
         s.Id, 
		 p.Id, 
		 p.CategoryId ,
		 p.Id, p.ProductName
     from Stores S 
    join Products p on S.ProductId=p.Id
    join Categories C on c.Id=p.CategoryId
	go 


	 go
  create view GetStoreToproduct
  as
  select s.StoreName, 
         s.Id, 
		 p.Id, 
		 p.CategoryId ,
		 p.Id, p.ProductName
     from Stores S 
    join Products p on S.ProductId=p.Id
    join Categories C on c.Id=p.CategoryId
	go


		 go
  create view GEtStoreProductgroup
  as
  select s.StoreName, 
         s.Id, 
		 p.Id, 
		 p.CategoryId ,
		 p.Id, p.ProductName
     from Stores S 
    join Products p on S.ProductId=p.Id
    join Categories C on c.Id=p.CategoryId
	 where s.StoreName  Like 'A%' or s.StoreName  Like '%E'
	 go
