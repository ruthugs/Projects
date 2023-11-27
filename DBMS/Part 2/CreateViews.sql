
USE PIZZA;

CREATE VIEW ToppingPopularity AS
SELECT ToppingName AS 'Topping', COUNT(ToppingName) + SUM(PizzaExtraTopping) AS 'ToppingCount'
FROM Topping JOIN PizzaTopping ON ToppingID = PizzaToppingTopID GROUP BY ToppingID
ORDER BY ToppingCount DESC;

SELECT * FROM ToppingPopularity;



CREATE VIEW ProfitByPizza AS 
SELECT PizzaCrustType AS 'PizzaCrust', PizzaSize,
SUM(PizzaCustomerPrice-PizzaBusinessCost) AS 'Profit',
MAX(DATE_FORMAT(`PizzaOrderDate`,'%M-%e-%Y')) AS 'LastOrderDate'
FROM `PIZZA`.`Pizza` p, `PIZZA`.`Order` o
WHERE p.PizzaOrderID = o.OrderID
GROUP BY PizzaCrustType, PizzaSize
ORDER BY Profit DESC;

SELECT * FROM ProfitByPizza;

CREATE VIEW ProfitByOrderType AS 
SELECT OrderType AS `CustomerType`,OrderDate, OrderCustomerPrice AS `TotalOrderPrice`, 
OrderBusinessPrice AS `TotalOrderCost`, 
ROUND((OrderCustomerPrice - OrderBusinessPrice),2) AS Profit 
FROM `Order` UNION 
SELECT '','GrandTotal',  SUM(OrderCustomerPrice),SUM(OrderBusinessPrice), SUM(OrderCustomerPrice - OrderBusinessPrice) AS Profit
FROM `Order`;

SELECT * FROM ProfitByOrderType;



 



