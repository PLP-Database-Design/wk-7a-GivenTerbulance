-- Question 1: Achieving 1NF
SELECT
  OrderID,
  CustomerName,
  TRIM(value) AS Product
FROM
  ProductDetail,
  LATERAL STRING_SPLIT(Products, ',');

-- Question 2:Achieving 2NF 
-- Create Orders table
SELECT DISTINCT
  OrderID,
  CustomerName
INTO Orders
FROM OrderDetails;

-- Create OrderProducts table
SELECT
  OrderID,
  Product,
  Quantity
INTO OrderProducts
FROM OrderDetails;

