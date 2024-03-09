CREATE TABLE AJAR(
		ProductTitle varchar(70),
        ProductUrL varchar(30),
		ProductId varchar(20),
		ProductPrice varchar(45),
		ProductSize varchar(20),
		ProductStc varchar,
		ProductType varchar(20),
		ProductImg varchar(30),
		RetailerId varchar(20),
		RetailerName varchar(30)
	
)

INSERT INTO Products
SELECT
Record.Product.query('ProductTitle').value('.', 'varchar(70)') AS ProductTitle,
Record.Product.query('ProductUrL').value('.', 'varchar(30)') AS ProductUrL,
Record.Product.query('ProductId').value('.', 'varchar(20)') AS ProductId,
Record.Product.query('ProductPrice').value('.', 'varchar(45)') AS ProductPrice,
Record.Product.query('ProductSize').value('.', 'varchar(20)') AS ProductSize,
Record.Product.query('ProductStc').value('.', 'int') AS ProductStc,
Record.Product.query('ProductType').value('.', 'varchar(20)') AS ProductType,
Record.Product.query('ProductImg').value('.', 'varchar(30)') AS ProductImg,
Record.Product.query('RetailerId').value('.', 'varchar(20)') AS RetailerId,
Record.Product.query('RetailerName').value('.', 'varchar(30)') AS RetailerName

FROM (SELECT CAST (products as xml)
FROM OPENROWSET(BULK 'C:\Users\David Angelo Mendoza\Desktop\RAJA WEBSITE FINAL\products.xml', SINGLE_BLOB) AS
T(products)) AS T(products)
CROSS APPLY products.nodes('Products/Product') AS Record (Product);