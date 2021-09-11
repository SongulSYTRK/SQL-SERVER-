use ShoppingMall




------------Stored procedure(SP)--- '


Create Procedure sp_GetCustomerList --You can created procedure
    as 
Begin 
   select FirstName+SPACE()+ LastName as [fullname]  
from Customers
end;

execute sp_GetCustomerList  


create procedure sp_urunbycategory @id int  --Ýf you need parameter , you should write type
     as
   begin
     select ProductName,
            CategoryName
      from Categories C 
      join Products P on c.ID=p.CategoryID
where c.ID=@id
end

 execute sp_urunbycategory @id=8

 
  create procedure sp_Fullname @name nVarchar(50), @surname nVarchar(50)
  as 
  begin
  select FirstName, LastName from Customers 
  where  FirstName= @name and Lastname=@surname
  end 

  execute sp_Fullname @name='Matt' ,@surname= 'Kev '
 --   execute sp_Fullname 'Matt' ,'Kev'


	ALTER procedure sp_Fullname @name nVarchar(50), @surname nVarchar(50) --updated
  as 
  begin
  select FirstName, LastName, Phone from Customers 
  where  FirstName= @name and Lastname=@surname
  end 

  execute sp_Fullname @name='Matt' ,@surname= 'Kev '

	
--
