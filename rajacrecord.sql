CREATE TABLE AJARCUSTOMER(
		CustomerName varchar(70),
        CustomerId varchar(30),
		CustomerContact int,
		CustomerEmail varchar(45),
		CustomerAddress varchar(20),
	
)

INSERT INTO Products
SELECT
Record.Product.query('CustomerName').value('.', 'varchar(70)') AS ProductTitle,
Record.Product.query('CustomerId').value('.', 'varchar(30)') AS ProductUrL,
Record.Product.query('CustomerContact').value('.', 'int') AS ProductId,
Record.Product.query('CutomerEmail').value('.', 'varchar(45)') AS ProductPrice,
Record.Product.query('CustomerAddress').value('.', 'varchar(20)') AS ProductSize,

FROM (SELECT CAST (crecord as xml)
FROM OPENROWSET(BULK 'C:\Users\David Angelo Mendoza\Desktop\RAJA WEBSITE FINAL\crecord.xml', SINGLE_BLOB) AS
T(crecord)) AS T(crecord)
CROSS APPLY products.nodes('Accounts/Customers/Customer') AS Record (Customer);