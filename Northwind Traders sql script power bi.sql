select 
[Northwind Traders]. dbo.orders.orderID,
 [Northwind Traders]. dbo.orders.orderDate,
 [Northwind Traders]. dbo.customers.companyName AS 'customer',
 [Northwind Traders]. dbo.customers.city,
 [Northwind Traders]. dbo.customers.country,
 [Northwind Traders]. dbo.employees.employeeName,
 [Northwind Traders]. dbo.shippers.companyName,
SUM ([Northwind Traders]. dbo.order_details.quantity) AS 'total_units',
SUM([Northwind Traders]. dbo.order_details.quantity*[Northwind Traders]. dbo.order_details.unitPrice-[Northwind Traders]. dbo.order_details.discount) AS 'Revenue',
Sum([Northwind Traders].dbo.order_details.discount) As 'Discounts',
SUM([Northwind Traders].dbo.orders.freight) as 'Shipping charges',
[Northwind Traders]. dbo.products.productName,
[Northwind Traders]. dbo.categories.categoryName
from[Northwind Traders].dbo.orders
join [Northwind Traders].dbo.customers
on [Northwind Traders].dbo.orders.customerID =[Northwind Traders].dbo.customers.customerID
join [Northwind Traders].dbo.employees 
on [Northwind Traders].dbo.employees.employeeID= [Northwind Traders]. dbo.orders.employeeID
join [Northwind Traders]. dbo.shippers 
on [Northwind Traders]. dbo.shippers.shipperID=[Northwind Traders]. dbo.orders.shipperID
join [Northwind Traders]. dbo.order_details 
on [Northwind Traders]. dbo.orders.orderID=[Northwind Traders]. dbo.order_details.orderID
join [Northwind Traders]. dbo.products 
on [Northwind Traders]. dbo.products.productID=[Northwind Traders]. dbo.order_details.productID
join [Northwind Traders]. dbo.categories
on [Northwind Traders]. dbo.categories.categoryID=[Northwind Traders]. dbo.products.categoryID
Group by
 [Northwind Traders]. dbo.orders.orderID,
 [Northwind Traders]. dbo.orders.orderDate,
 [Northwind Traders]. dbo.customers.companyName,
 [Northwind Traders]. dbo.customers.city,
 [Northwind Traders]. dbo.customers.country,
 [Northwind Traders]. dbo.employees.employeeName,
 [Northwind Traders]. dbo.shippers.companyName,
 [Northwind Traders]. dbo.products.productName,
[Northwind Traders]. dbo.categories.categoryName
;