/* */

select c.Customerid, c.Companyname, c.Country, c.City
from Customers as c


select p.ProductID, p.ProductName, p.UnitPrice
from Products as p


select c.customerid, o.orderid, p.ProductID, (d.UnitPrice * d.quantity) as PrecioVenta
from Customers as c
inner join Orders as o on o.CustomerID = c.CustomerID
inner join [Order Details] as d on d.OrderID = o.OrderID
inner join Products as p on p.ProductID = d.ProductID


select o.OrderID, o.OrderDate
from Orders as o