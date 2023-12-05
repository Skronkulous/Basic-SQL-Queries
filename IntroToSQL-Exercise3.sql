USE northwind;
-- 01_suppliers_list
SELECT
	COUNT(SupplierID)
FROM
	suppliers;
-- 02_salary_sum_list
SELECT
	SUM(Salary)
FROM
	employees;
-- 03_cheapest_list
SELECT
	MIN(UnitPrice)
FROM
	products;
-- 04_avg_price_list
SELECT
	AVG(UnitPrice)
FROM
	products;
-- 05_expensive_list
SELECT
	MAX(UnitPrice)
FROM
	products;
-- 06_supplier_list
SELECT
	SupplierID, COUNT(SupplierID)
FROM
	products
GROUP BY
	SupplierID;
-- 07_category_list
SELECT
	CategoryID, AVG(UnitPrice)
FROM
	products
GROUP BY
	CategoryID;
-- 08_supplier_list2
SELECT
	SupplierID, COUNT(SupplierID)
FROM
	products
GROUP BY
	SupplierID
HAVING 
COUNT(SupplierID) 
	>= 5;
-- 09_product_sort_list
SELECT
	p.ProductId, p.ProductName, p.UnitPrice * p.UnitsInStock
AS 
	InventoryValue
FROM
	products p
ORDER BY
	InventoryValue DESC, ProductName ASC;