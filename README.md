# USE DATABASE --you can be this database
<br> select * from users -- you can take all parameters of users
<br> select name, surname from users -- you get the parameter you need
<br> select name+''+suname as [fullname]  from users where year(birthdate)<=1995 -- if you wantto filtering you can use "WHERE"
<br> select name, datediff(YY,birthdate,gatdate()) as [age] from users where age is not null -- Meaning of null dont have parameter
<br> select name+''+suname as [fullname]  from users where year(birthdate)<1995 and year(birthday)>1990 -- if We need more value We can use 'AND'
 <br> select firstname, lastname from users where year(birtdate) between 1990 and 1995  --you can be control range "between and "
 <br> select name+''+suname as [fullname]  from users where year(birthdate)=1995 OR  year(birtday)=1990 --the value should provide any  'OR'
  <br> select firstname, lastname from users where year(birtdate) in ( 1990 ,1994,1995)   --If you have more 'OR' you can use 'in '
 <br> select name+''+suname as [fullname]  from users where year(birthdate)<=1995  order by 1 asc  -- 'order by' does the sorting 
 <br> select firstname, lastname from users where year(birtdate) between 1990 and 1995  --you can be control range "between and "
  <br> select top1 firstname, lastname from users where year(birtdate) between 1990 and 1995  --you can find best or worst value 
  <br> select firstname, lastname from users where year(birtdate) between 1990 and 1995  --you can be control range "between and "
  
 # How Can Write in String ?
  <br> select FirstName, LastName from users where FirstName Like 'A%' -- You can find that starting letter 
  <br> select FirstName, LastName from users where FirstName Like '%A' -- You can find that stopping letter 
  <br> select FirstName, LastName from users where FirstName Like '%A%' -- You can find that anywhere letter 
  <br> select FirstName, LastName from users where FirstName Like '[AL]%'-- you can find that starting letter  with first or secondar letter 
  <br> select FirstName, LastName from users where FirstName Like '[A__L]'-- You can find that distance of first letter and second letter  have 
   letter
   <br> select FirstName, LastName from users where FirstName  Not Like '%A' -- you find that not stopping letter 
   <br> select FirstName, LastName from users where FirstName Like '%A%'
<br> select ASCII('A') as [ASCII Kodu ] -- you can find numberic value for letter 
<br> select CHAR(65) as Karakter   -- you can find letter value for numberic
<br> select CHARINDEX('@', 'songulsytrk@gmail.com') as location -- you can find first parameter location 
<br> select LEFT('Songul soyturk ', 4) as [number of characters from the left]
<br> select Right('songul soyturk', 4) as [number of characters from the right]
<br> select Len('songul ') as [number of characters ]
 <br> select lower('SonGUL SOYTurk') as [All Small ]
<br> select upper('SonGUL SOYTurk') as [All Big ]
<br> select LTRIM('              songül') as [Deleted from the left ]
<br> select RTRIM('Songül            ') as [Deleted from the right ]
<br> select LTRIM( RTRIM('     songul soyturk'    )) as [deleted everywhere ]
<br>select REPLACE('birbirlerine','bir','iki') as [you change with thirt parameter]
<br> select SUBSTRING('Songül Soytürk',3,6) as [subtext] 

 # Aggrate Function
 


