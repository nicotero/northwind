# 1.Consulta que devuelva los datos del pedido 10250
	SELECT * 
	FROM `orders` 
	WHERE orderid = 10250;
# 2.Consulta que devuelva el CUSTOMERID (orders), el EMPLOYEEID (orders), la QUANTITY (order detailis) y el 
# UNITPRICE (order details) de cada uno de los productos del pedido 10250
	SELECT orders.CustomerID,orders.EmployeeID,orderdetails.Quantity,order_details.UnitPrice
	FROM orders, order_details
	WHERE OrderID = 10250;
# 3.Consulta que devuelva el CUSTOMERID (orders), el EMPLOYEEID (orders), y el precio (Quantity * UnitPrice) 
# de cada uno de los productos del pedido 10250
	SELECT orders.CustomerID,orders.EmployeeID, (order_details.Quantity * order_details.UnitPrice) AS precio
	FROM orders, order_details
	WHERE OrderID = 10250;
# 4.Consulta que devuelva el CONTACTNAME (customers), el EMPLOYEEID (orders), y el precio (Quantity * UnitPrice) 
# de cada uno de los productos del pedido 10250
	SELECT customers.ContactName, orders.EmployeeID, (order_details.Quantity * order_details.UnitPrice) AS precio
	FROM customers,orders,order_details
	WHERE OrderID = 10250;
# 5.Consulta que devuelva los pedidos que fueron entregados (SHIPPEDDATE) después del momento esperado (REQUIREDDATE).
	SELECT * 
	FROM orders
	WHERE ShippedDate > RequiredDate;
# 6.Consulta que devuelva el tiempo que pasó entre el SHIPPEDDATE (orders) y el ORDERDATE (orders). Función DATEDIFF
	SELECT datediff(ShippedDate,OrderDate)
	FROM orders;
# 7.Consulta que devuelva los pedidos que fueron entregados (SHIPPEDDATE) después del momento esperado (REQUIREDDATE) 
# vendidos por “Michael Suyama”. (Consulta con subconsulta)
	SELECT datediff(ShippedDate,OrderDate) AS diferencia
	FROM orders
	WHERE EmployeeID IN 
		(SELECT *
		FROM employees
		WHERE LastName = "suyama");