USE northwind;
-- 01_table_name
SELECT
	*
FROM
	products;
-- 02_product_list
SELECT
	ProductID, ProductName, UnitPrice
FROM
	products;
-- 03_asc_product_list
SELECT
	ProductID, ProductName, UnitPrice
FROM
	products
ORDER BY
	UnitPrice
ASC;
-- 04_filter_price_list
SELECT
	*
FROM
	products
WHERE
	UnitPrice
<=
	7.50;
-- 05_desc_filter_units_list
SELECT
	*
FROM
	products
WHERE
	UnitsInStock
>= 
	100
ORDER BY
	UnitsInStock
DESC;
-- 06_desc_filter_units_list2
SELECT
	*
FROM
	products
WHERE
	UnitsInStock
>=
	100
ORDER BY
	UnitsInStock
DESC,
	ProductName
ASC;
-- 07_backorder_product_list
SELECT
	*
FROM
	products
WHERE
	UnitsInStock
=
	0
AND
	UnitsOnOrder
>=
	1;
-- 08_table_name2
SELECT
	*
FROM
	categories;
-- 09_categories_sort_list
SELECT
	CategoryID
FROM
	categories
WHERE
	CategoryName
=
	'Seafood';
-- 10_seafood_sort_list
SELECT
	*
FROM
	products
WHERE
	CategoryID
=
	8;
-- 11_first_last_sort_list
SELECT
	FirstName, LastName
FROM
	employees;
-- 12_manager_sort_list
SELECT
	*
FROM
	employees
WHERE
	Title
LIKE
	'%Manager%';
-- 13_distinct_title_list
SELECT DISTINCT
	Title
FROM
	employees;
-- 14_salary_sort_list
SELECT
	*
FROM
	employees
WHERE
	salary
BETWEEN
	200 AND 2500;
-- 15_suppliers_list
SELECT
	*
FROM
	suppliers;
-- 16_tokyo_traders_list
SELECT
	*
FROM
	products
WHERE
	SupplierID
=
	4;