# WHAT İS SQL SERVER ?
SQL Server is a relational database management system,  developed and marketed by Microsoft.
<BR> SQL Server is built on top of SQL, a standard programming language for interacting with the relational databases. SQL server is tied to  T-SQL, the Microsoft’s implementation of SQL that adds a set of proprietary programming constructs.
 
 ## What Can You Do With Microsoft SQL Server?

* Data processing and storage

* Data indexing and querying

* Database management

* Data flow optimization

* Data reporting Policy-based data access
 
 ## Function 

 Functions allow us to access the sql queries we repeat constantly from a single point in order to make our work easier.This gives us the opportunity to have a fast access, a fast error control mechanism, quick intervention, and not repeating the query.Functions can return any value type. You can return an INT, VARCHAR value as well as a table.
 
<br>` create function GetUsersInformation(@UsersID int)`
<br>`returns table `
 <br>`return select * from Users where UserID= @UserID`

<br>`select * from GetUsersInformation(5) `
 

 
 

 ## Stored Procedures

Stored procedures are Transact-SQL statements maintained on SQL Server. They are structured to perform a specific task.
They are compiled on SQL Server. They are used by calling them from within the program, according to the conditions we have determined.
Stored procedures written with Transact-SQL statements are compiled only the first time they are run.
They are not compiled on subsequent runs. In this way, the work is accelerated. It helps us to avoid code duplication and run our code wherever we want with the parameters we want.
 
 
 <br> `create procedure sp_totalyshopping @id int `
	<br>`as`
	<br> `begin`
	<br> `select CompanyName, SUM(D.Quantity )from Customers C join Orders O on o.CustomerID=c.CustomerID`
	<br>`join [Order Details] D on o.OrderID=D.OrderID where c.CustomerID = @id group by CompanyName`
	<br>`end `

   <br> `execute sp_totalyshopping @id=2`
 
 ## Trigger 
 
 It is used when an operation (insert, update, delete) takes place on the table and another operation is desired.
 ### DML (Data Manipulation Language) Triggers:
 DML is a type of SQL command that helps retrieve and manage data in relational databases.DML expressions used for reading and manipulating data such as INSERT, UPDATE, and DELETE.DML triggers are fired whenever data is changed using the INSERT, UPDATE, and DELETE events.
 
### After & Instead of Triggers
* AFTER : The trigger will run after the condition is successful.

* INSTEAD OF : When the event mentioned in the trigger will occur, it takes place instead of that action.
 
 <br> `Create  trigger trg_numaraagiriss on Shippers`
<br> `instead of insert`
<br> `as`
  <br> `begin `
  <br> ` declare @kargoname nVarchar(50), @kargono nVarchar(50);`
<br> `	select @kargoname= CompanyName, @kargono = phone  from inserted`
	<br> `declare @yenino nVarchar(50);`
	 <br> `set @yenino=LEFT(@kargono,1)+'('+SUBSTRING(@kargono,2,3)+')'+SUBSTRING(@kargono,5,3)+'-'+SUBSTRING(@kargono,8,2)+'-'+right (@kargono,2)`
	<br>`insert Shippers(CompanyName,Phone) values (@kargoname,@yenino)`
      
<br>	`END`

	<br> `insert into Shippers  values ('aras ','02129661425')`


