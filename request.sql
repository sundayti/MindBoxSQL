CREATE TABLE Products (Id INT PRIMARY KEY, "ProductName" TEXT);
CREATE TABLE Categories (Id INT PRIMARY KEY, "CategoryName" TEXT);
CREATE TABLE ProductsAndCategories (ProductId INT, CategoryId INT);

INSERT INTO Products
VALUES
	(1, 'First Product'),
	(2, 'Second Product'),
	(3, 'Fourth Product');

INSERT INTO Categories
VALUES
	(1, 'First Category'),
	(2, 'Second Category');

INSERT INTO ProductsAndCategories
VALUES
	(1, 1),
	(1, 2),
	(2, 1);

SELECT p."ProductName", c."CategoryName"
FROM Products p
LEFT JOIN ProductsAndCategories pac ON p.Id = pac.ProductId
LEFT JOIN Categories c ON pac.CategoryId = c.Id;