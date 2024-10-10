SELECT o.orderid, o.orderdate, c.custid, o.empid 
FROM Sales.Customers c 
INNER JOIN Sales.Orders o ON o.custid = c.custid 
WHERE o.orderdate = ( 
SELECT MAX(o.orderdate) 
FROM Sales.Orders o 
WHERE o.custid = c.custid);
