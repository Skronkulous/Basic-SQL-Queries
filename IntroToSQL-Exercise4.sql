USE northwind;
-- 01_category_products_list
SELECT 
	p.ProductId, p.ProductName, c.UnitPrice, c.CategoryName
FROM
	Products AS p
INNER JOIN
	Categories AS c
ON
	p.CategoryID = c.CategoryID
ORDER BY CategoryName, ProductName;
-- 02_cost_products_list
SELECT
	p.ProductID, p.ProductName, p.UnitPrice, s.CompanyName
FROM
	Products AS p
INNER JOIN
	Suppliers AS s
ON
	p.SupplierID = s.SupplierID
WHERE
	p.UnitPrice > 75
ORDER BY
	p.ProductName;
-- 03_product_sort_list
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName, s.CompanyName
FROM
	Products AS p
INNER JOIN
	Categories AS c
ON
	p.CategoryID = c.CategoryID
INNER JOIN
	Suppliers AS s
ON
    p.SupplierID = s.SupplierID
ORDER BY
	p.ProductName;
-- 04_max_products_list
SELECT p.ProductName, c.CategoryName
FROM
	Products AS p
INNER JOIN
	Categories AS c
ON
	p.CategoryID = c.CategoryID
WHERE
	p.UnitPrice = 
    (SELECT
		MAX(p.UnitPrice)
	FROM
		Products AS p
    );
-- 05_germany_products_list
SELECT
	o.OrderID, o.ShipName, o.ShipAddress, s.CompanyName
FROM
	Orders AS o
INNER JOIN
	Shippers AS s
ON
	o.ShipVia = s.ShipperID
WHERE
	o.ShipCountry LIKE "Germany"
ORDER BY s.CompanyName, o.ShipName;
-- 06_sasquach_list
SELECT
	o.OrderID, o.OrderDate, o.ShipName, o.ShipAddress
FROM
	Orders AS o
INNER JOIN
	`Order Details` AS od
ON
	o.OrderID = od.OrderID
INNER JOIN
	Products AS p
ON
	od.ProductID = p.ProductID
WHERE
	p.ProductName = "Sasquatch Ale"
ORDER BY
	o.OrderDate, o.ShipName;
