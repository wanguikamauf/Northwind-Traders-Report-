select 
dbo.orders.orderID,
dbo.orders.orderDate,
dbo.customers.companyName AS 'customer',
dbo.customers.city,
dbo.customers.country,
dbo.employees.employeeName,
dbo.shippers.companyName,
SUM (dbo.order_details.quantity) AS 'total_units',
SUM(dbo.order_details.quantity*dbo.order_details.unitPrice-dbo.order_details.discount) AS 'Revenue',
dbo.products.productName,
dbo.categories.categoryName
from dbo.orders
join dbo.customers
on dbo.orders.customerID =dbo.customers.customerID
join dbo.employees on dbo.employees.employeeID=dbo.orders.employeeID
join dbo.shippers 
on dbo.shippers.shipperID=dbo.orders.shipperID
join dbo.order_details 
on dbo.orders.orderID=dbo.order_details.orderID
join dbo.products 
on dbo.products.productID=dbo.order_details.productID
join dbo.categories
on dbo.categories.categoryID=dbo.products.categoryID
Group by
dbo.orders.orderID, 
dbo.orders.orderDate,
dbo.customers.companyName,
dbo.customers.city,
dbo.customers.country,
dbo.employees.employeeName,
dbo.shippers.companyName,
dbo.products.productName,
dbo.categories.categoryName

;
    