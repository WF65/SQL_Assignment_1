--1
select p.ProductID, p.Name, p.Color, p.ListPrice
from Production.Product p

--2
select p.ProductID, p.Name, p.Color, p.ListPrice
from Production.Product p
where p.ListPrice = 0

--3
select p.ProductID, p.Name, p.Color, p.ListPrice
from Production.Product p
where p.Color is null

--4
select p.ProductID, p.Name, p.Color, p.ListPrice
from Production.Product p
where p.Color is not null

--5
select p.ProductID, p.Name, p.Color, p.ListPrice
from Production.Product p
where p.Color is not null and p.ListPrice > 0

6
select p.Name, p.Color 
from Production.Product p
where p.Color is not null
Group by p.Name, p.Color

--7
select 'NAME:',p.Name,' -- COLOR: ', p.Color 
from Production.Product p
Group by p.Name, p.Color

--8
select p.ProductID, p.Name
from Production.Product p
where p.ProductID between 400 and 500

--9
select p.ProductID, p.Name, p.Color
from Production.Product p
where p.Color in ('black', 'blue')

--10
select p.Name
from Production.Product p
where p.Name like 's%'

--11
select p.Name, p.ListPrice
from Production.Product p
order by p.Name

--12
select p.Name, p.ListPrice
from Production.Product p
where p.Name like '[A, S]%'
order by p.Name

--13
select p.Name, p.ListPrice
from (
	select p.Name, p.ListPrice
	from Production.Product p
	where p.Name like 'SPO_%'
) p
where p.Name not like 'SPOK%'
order by p.Name

--14
select p.Color
from Production.Product p
GROUP By p.Color
Order by p.color desc

--15
select p.ProductSubcategoryID, p.Color
from Production.Product p
where p.ProductSubcategoryID is not null and p.Color is not null
group by p.ProductSubcategoryID, p.Color
order by p.ProductSubcategoryID, p.Color

--16
SELECT ProductSubCategoryID
      , LEFT([Name],35) AS [Name]
      , Color, ListPrice 
FROM Production.Product
WHERE Color IN ('Red','Black') 
      AND ListPrice BETWEEN 1000 AND 2000 
      OR ProductSubCategoryID = 1
ORDER BY ProductID

--17
select p.ProductSubcategoryID, p.Name, p.Color, p.ListPrice
from Production.Product p
where p.ProductSubcategoryID is not null and p.Name is not null and p.Color is not null and p.ListPrice is not null
group by p.ProductSubcategoryID,p.Name, p.Color,p.ListPrice
order by p.ProductSubcategoryID desc

