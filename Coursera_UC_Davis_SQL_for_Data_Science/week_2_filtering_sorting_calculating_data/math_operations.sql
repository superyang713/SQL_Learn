/*
perform basic math calulations using the data.
*/


-- Total units on order multiplied by the unit price to calculate the total
-- order cost.
SELECT
productID
,UnitesOnOrder
,UnitPrice
,UnitsOnOrder * UnitPrice AS Total_Order_Cost
FROM Prodcts;


SELECT
ProductID
,Quantity
,UnitPrice
,Discount
,(UnitPrice - Discount) / Quantity AS Total_Cost
FROM OderDetails;
