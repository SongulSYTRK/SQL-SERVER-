use ShoppingMall

--Trigger---

-
CREATE Trigger trg_GetInsertedOrder on orders  -- CREATED TRÝGGER
      After insert 
      As 
Begin
      Declare  @quantity Int, @orderId int;   --you defined parameter and type
	  select @orderId=ID, @quantity=Quantity from inserted
	  Update Products
	   Set UnitInStock=UnitInStock- @quantity
	   where ID=@orderId
End 
Insert [Orders] (Id,Quantity,OrderID, Unitprice) values (10,5,10248,10)  


select ProductID,UnitsInStock from Products where ProductID=10



Create trigger trg_GetstockBackÝnsert on orders
     after delete 
      as 
begin
     declare  @quantity Int, @productId int;
 select @productId=ProductID, @quantity=Quantity from deleted
	Update Products
	 Set UnitsInStock =UnitsInStock+@adet  --Unýtýnstok +=@adet
	 where ProductID=@UrünId
end                                                         
Delete from Orders where OrderID=21 AND ProductID=2 

select ProductID,UnitsInStock from Products where ProductID=3 




create trigger trg_Lateststock on orders
after update
as 
  begin 
        declare @lastquantity int, @newquatity int, @productýd int;
        select @lastquantity= quantity from deleted 
        select @newquatity=quantity from inserted

        update Products
         set UnitsInStock+= @lastquantity-@newquatity
        where ProductID=@productýd
   end

update Orders set Quantity=22 where OrderID=11 and ProductID=3




Alter trigger trg_Lateststock on orders  -- trigger updated 
after update
as 
  begin 
        declare @lastquantity int, @newquatity int, @productýd int;
        select @lastquantity= quantity from deleted 
        select @newquatity=quantity from inserted

        update Products
         set UnitsInStock = @newquatity-@lastquantity
        where ProductID=@productýd
   end

update Orders set Quantity=22 where OrderID=11 and ProductID=3





create  trigger trg_GetNumberChanged on customers
instead of insert
as
  begin 
      declare @customername nVarchar(50), @customerno nVarchar(50);
	  select @customername= FirstName, @customerno = phone  from inserted
	 declare @NewCustomerNo nVarchar(50);
	 set @NewCustomerNo=LEFT(@customerno,1)+'('+SUBSTRING(@customerno,2,3)+')'+SUBSTRING(@customerno,5,3)+'-'+SUBSTRING(@customerno,8,2)+'-'+right (@customerno,2)
	 insert Customers(FirstName,Phone) values (@customername,@NewCustomerNo)
  END

	insert into Customers  values ('Victor ','02129661425')






