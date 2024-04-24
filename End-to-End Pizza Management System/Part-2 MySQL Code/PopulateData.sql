USE PIZZA;

INSERT INTO `Topping`
(`ToppingName`,
`ToppingPrice`,
`ToppingCostPerUnit`,
`ToppingMinInvLvl`,
`ToppingCurrentInvLvl`,
`ToppingUnitsForSmall`,
`ToppingUnitsForMedium`,
`ToppingUnitsForLarge`,
`ToppingUnitsForXtraLarge`)
VALUES
('Pepperoni', 1.25, 0.2, 100, 100, 2, 2.75, 3.5, 4.5),
('Sausage', 1.25, 0.15, 100, 100, 2.5, 3, 3.5, 4.25),
('Ham', 1.5, 0.15, 78, 78, 2, 2.5, 3.25, 4)
,('Chicken', 1.75, 0.25, 56, 56, 1.5, 2, 2.25, 3)
,('Green Pepper', 0.5, 0.02, 79, 79, 1, 1.5, 2, 2.5)
,('Onion', 0.5, 0.02, 85, 85, 1, 1.5, 2, 2.75)
,('Roma Tomato', 0.75, 0.03, 86, 86, 2, 3, 3.5, 4.5)
,('Mushrooms', 0.75, 0.1, 52, 52, 1.5, 2, 2.5, 3)
,('Black Olives', 0.6, 0.1, 39, 39, 0.75, 1, 1.5, 2)
,('Pineapple', 1, 0.25, 15, 15, 1, 1.25, 1.75, 2)
,('Jalapenos', 0.5, 0.05, 64, 64, 0.5, 0.75, 1.25, 1.75)
,('Banana Peppers', 0.5, 0.05, 36, 36, 0.6, 1, 1.3, 1.75)
,('Regular Cheese', 1.5, 0.12, 250, 250, 2, 3.5, 5, 7)
,('Four Cheese Blend', 2, 0.15, 150, 150, 2, 3.5, 5, 7)
,('Feta Cheese', 2, 0.18, 75, 75, 1.75, 3, 4, 5.5)
,('Goat Cheese', 2, 0.2, 54, 54, 1.6, 2.75, 4, 5.5)
,('Bacon', 1.5, 0.25, 89, 89, 1, 1.5, 2, 3);

INSERT INTO  `Discount`
(`DiscountName`, 
`DiscountPercentageOff`, 
`DiscountDollarOff`)
VALUES
('Employee', 15, 0),
('Lunch Special Medium', 0, 1.00),
('Lunch Special Large' ,0, 2.00),
('Specialty Pizza', 0, 1.50),
('Gameday Special', 20, 0);

INSERT INTO `BasePrice`
(`BaseSize`, 
`BaseCrustType`, 
`BaseCustomerPrice`, 
`BaseBusinessCost`)
VALUES
("small" ,"Thin", 3, 0.5 ),
("small", "Original", 3, 0.75),
("small", "Pan", 3.5, 1),
('small' ,'Gluten-Free' ,4 ,2),
('medium', 'Thin', 5, 1),
('medium', 'Original', 5, 1.5),
('medium', 'Pan', 6, 2.25),
('medium', 'Gluten-Free', 6.25, 3),
('large', 'Thin', 8 ,1.25),
('large', 'Original', 8, 2),
('large' ,'Pan', 9 ,3),
('large', 'Gluten-Free', 9.5 ,4),
('x-large', 'Thin', 10, 2),
('x-large', 'Original', 10, 3),
('x-large', 'Pan', 11.5, 4.5),
('x-large', 'Gluten-Free', 12.5, 6);

/*order1*/ 

INSERT INTO `Customer`
(CustomerID, CustomerFName, CustomerLName, CustomerPhoneNo)
VALUES
(1, 'Dummy1','Dummy2','Dummy3');

INSERT INTO `Order`
(OrderID, OrderCustomerID, OrderDate, OrderCustomerPrice, OrderBusinessPrice, OrderType, OrderStatus, CustomerID)
VALUES
(101, 1, '2023-03-05 12:03:00',13.50, 3.68, 'Dine-In','Completed By Kitchen',1);

INSERT INTO `DineIn`
(DineInOrderID, DineInTableNo)
VALUES
(101, 14);

INSERT INTO `Pizza`
(PizzaID, PizzaCrustType, PizzaSize, PizzaOrderID,PizzaOrderDate, PizzaCustomerPrice, PizzaBusinessCost, PizzaState)
VALUES
(1001, 'Thin', 'large', 101,'2023-03-05 12:03:00', 13.50, 3.68, 'Completed');

INSERT INTO `PizzaTopping`
(PizzaToppingPizID,PizzaToppingTopID, PizzaExtraTopping)
VALUES
(1001,13, TRUE),
(1001,1, FALSE),
(1001,2, FALSE);

INSERT INTO `DiscountForOrder`
(DiscountOrderDiscountID, DiscountOrderOrderID)
VALUES
(3, 101);

/*Order2*/
INSERT INTO `Customer`
(CustomerID,CustomerFName, CustomerLName, CustomerPhoneNo)
VALUES
(2, 'Dummy4','Dummy5','Dummy6' );

INSERT INTO `Order`
(OrderID, OrderCustomerID, OrderDate, OrderCustomerPrice, OrderBusinessPrice, OrderType, OrderStatus,CustomerID)
VALUES
(102, 2, '2023-03-03 12:05:00',17.35, 4.63, 'Dine-In','Completed By Kitchen',2);

INSERT INTO `DineIn`
(DineInOrderID, DineInTableNo)
VALUES
(102, 4);

INSERT INTO `Pizza`
(PizzaID, PizzaCrustType, PizzaSize, PizzaOrderID, PizzaOrderDate, PizzaCustomerPrice, PizzaBusinessCost, PizzaState)
VALUES
(1002, 'Pan', 'medium', 102, '2023-03-03 12:05:00', 10.60, 3.23, 'Completed'),
(1003, 'Original','small',102, '2023-03-03 12:05:00', 6.75,1.40, 'Completed');

INSERT INTO `PizzaTopping`
(PizzaToppingPizID,PizzaToppingTopID, PizzaExtraTopping)
VALUES
(1002, 15, FALSE),
(1002, 9, FALSE),
(1002, 7, FALSE),
(1002, 8, FALSE),
(1002, 12, FALSE),
(1003, 13, FALSE),
(1003, 4, FALSE),
(1003, 12, FALSE);


INSERT INTO `DiscountForPizza`
(DiscountPizzaDiscountID , DiscountPizzaPizzaID)
VALUES
(2, 1002),
(4, 1002);

/*Order 3*/

INSERT INTO `Customer`
(CustomerID, CustomerFName, CustomerLName, CustomerPhoneNo)
VALUES
(3, 'Ellis','Beck',864-254-5861);

INSERT INTO `Order`
(OrderID, OrderCustomerID, OrderDate, OrderCustomerPrice, OrderBusinessPrice, OrderType, OrderStatus, CustomerID)
VALUES
(103, 3, '2023-03-03 21:30:00', 64.5, 19.80, 'PickUp', 'Completed By Kitchen',3);

INSERT INTO `Pizza`
(PizzaID, PizzaCrustType, PizzaSize, PizzaOrderID, PizzaOrderDate, PizzaCustomerPrice, PizzaBusinessCost, PizzaState)
VALUES
(1004, 'Original', 'large', 103, '2023-03-03 21:30:00', 10.75, 3.30, 'Completed'),
(1005, 'Original', 'large', 103,'2023-03-03 21:30:00', 10.75, 3.30, 'Completed'),
(1006, 'Original', 'large', 103,'2023-03-03 21:30:00', 10.75, 3.30, 'Completed'),
(1007, 'Original', 'large', 103,'2023-03-03 21:30:00', 10.75, 3.30, 'Completed'),
(1008, 'Original', 'large', 103,'2023-03-03 21:30:00', 10.75, 3.30, 'Completed'),
(1009, 'Original', 'large', 103, '2023-03-03 21:30:00', 10.75, 3.30, 'Completed');

INSERT INTO `PickUp`
(PickUpOrderID, PickUpStat)
VALUES
(103, 'Ready');

INSERT INTO `PizzaTopping`
(PizzaToppingPizID,PizzaToppingTopID, PizzaExtraTopping)
VALUES
(1004, 13, FALSE), 
(1004,1, FALSE), 
(1005, 13, FALSE), 
(1005, 1, FALSE),
(1006, 13, FALSE),
(1006, 1, FALSE),
(1007, 13, FALSE),
(1007, 1, FALSE),
(1008, 13, FALSE),
(1008,1, FALSE),
(1009, 13, FALSE), 
(1009,1, FALSE); 

/*Order4*/

INSERT INTO `Customer`
(CustomerID, CustomerFName, CustomerLName, CustomerPhoneNo)
VALUES
(4, 'Ellis','Beck',864-254-5861);

INSERT INTO `Order`
(OrderID, OrderCustomerID, OrderDate, OrderCustomerPrice, OrderBusinessPrice, OrderType, OrderStatus, CustomerID)
VALUES
(104, 4, '2023-03-05 19:11:00', 45.5, 16.86, 'Delivery', 'Completed By Kitchen', 4);

INSERT INTO `Pizza`
(PizzaID, PizzaCrustType, PizzaSize, PizzaOrderID, PizzaOrderDate, PizzaCustomerPrice, PizzaBusinessCost, PizzaState)
VALUES
(1010,'Original', 'x-large', 104,'2023-03-05 19:11:00', 14.5, 5.59 , 'Completed'),
(1011,'Original', 'x-large', 104, '2023-03-05 19:11:00', 17.0, 5.59 , 'Completed'),
(1012,'Original', 'x-large', 104, '2023-03-05 19:11:00', 14.0, 5.68 , 'Completed');

INSERT INTO `PizzaTopping`
(PizzaToppingPizID,PizzaToppingTopID, PizzaExtraTopping)
VALUES
(1010, 2, FALSE), 
(1010, 1, FALSE), 
(1010, 14, FALSE),
(1011, 3, TRUE), 
(1011, 10, TRUE), 
(1011, 14, FALSE),
(1012, 11, FALSE), 
(1012, 17, FALSE), 
(1012, 14, FALSE);

INSERT INTO `DiscountForPizza`
(DiscountPizzaDiscountID, DiscountPizzaPizzaID)
VALUES
(4, 1011);

INSERT INTO `DiscountForOrder`
(DiscountOrderDiscountID, DiscountOrderOrderID)
VALUES
(5, 104);

INSERT INTO `Delivery`
(DeliveryOrderID, DeliveryHouseNo, DeliveryStreet, DeliveryCity, DeliveryState, DeliveryZipCode)
VALUES
(104, '115', 'Party Blvd', 'Anderson', 'SC', '29621');


/*Order 5*/

INSERT INTO `Customer`
(CustomerID, CustomerFName, CustomerLName, CustomerPhoneNo)
VALUES
(5, 'Kurt', 'McKinney', 864-474-9953);

INSERT INTO `Order`
(OrderID, OrderCustomerID, OrderDate, OrderCustomerPrice, OrderBusinessPrice, OrderType, OrderStatus, CustomerID)
VALUES
(105, 5, '2023-03-02 17:30:00', 16.85, 7.85, 'PickUp', 'Completed By Kitchen',5);

INSERT INTO `Pizza`
(PizzaID, PizzaCrustType, PizzaSize, PizzaOrderID, PizzaOrderDate, PizzaCustomerPrice, PizzaBusinessCost, PizzaState)
VALUES
(1013, 'Gluten-Free', 'x-large', 105, '2023-03-02 17:30:00',  16.85, 7.85, 'Completed');

INSERT INTO `PizzaTopping`
(PizzaToppingPizID,PizzaToppingTopID, PizzaExtraTopping)
VALUES
(1013, 5, FALSE),
(1013, 6, FALSE),
(1013, 7, FALSE),
(1013, 8, FALSE),
(1013, 9, FALSE),
(1013, 16, FALSE);

INSERT INTO `DiscountForPizza`
(DiscountPizzaDiscountID, DiscountPizzaPizzaID)
VALUES
(4, 1013);

INSERT INTO `PickUp`
(PickUpOrderID, PickUpStat)
VALUES
(105, 'Ready');

/*Order6*/

INSERT INTO `Customer`
(CustomerID, CustomerFName, CustomerLName, CustomerPhoneNo)
VALUES
(6, 'Calivn', 'Sanders', 864-232-8944);

INSERT INTO `Order`
(OrderID, OrderCustomerID, OrderDate, OrderCustomerPrice, OrderBusinessPrice, OrderType, OrderStatus,CustomerID)
VALUES
(106, 6, '2023-03-02 18:17:00', 13.25, 3.20, 'Delivery', 'Completed By Kitchen',6);

INSERT INTO `Pizza`
(PizzaID, PizzaCrustType, PizzaSize, PizzaOrderID, PizzaOrderDate, PizzaCustomerPrice, PizzaBusinessCost, PizzaState)
VALUES
(1014, 'Thin', 'large', 106,'2023-03-02 18:17:00', 13.25, 3.20, 'Completed');

INSERT INTO `PizzaTopping`
(PizzaToppingPizID,PizzaToppingTopID, PizzaExtraTopping)
VALUES
(1014, 5, FALSE),
(1014, 6, FALSE), 
(1014, 4, FALSE), 
(1014, 8, FALSE),
(1014, 14, TRUE);

INSERT INTO `Delivery`
(DeliveryOrderID, DeliveryHouseNo, DeliveryStreet, DeliveryCity, DeliveryState, DeliveryZipCode)
VALUES
(106, '6745', 'Wessex St', 'Anderson', 'SC', '29621');

/*Order7*/

INSERT INTO `Customer`
(CustomerID, CustomerFName, CustomerLName, CustomerPhoneNo)
VALUES
(7, 'Lance', 'Bento', 864-878-5679);

INSERT INTO `Order`
(OrderID, OrderCustomerID, OrderDate, OrderCustomerPrice, OrderBusinessPrice, OrderType, OrderStatus,CustomerID)
VALUES
(107, 7, '2023-03-06 20:32:00', 24, 6.3, 'Delivery', 'Completed By Kitchen',7);

INSERT INTO `Pizza`
(PizzaID, PizzaCrustType, PizzaSize, PizzaOrderID, PizzaOrderDate, PizzaCustomerPrice, PizzaBusinessCost, PizzaState)
VALUES
(1015, 'Thin', 'large', 107, '2023-03-06 20:32:00', 12, 3.75, 'Completed'),
(1016, 'Thin', 'large', 107,'2023-03-06 20:32:00', 12, 2.55, 'Completed');

INSERT INTO `PizzaTopping`
(PizzaToppingPizID,PizzaToppingTopID, PizzaExtraTopping)
VALUES
(1015, 14, TRUE),
(1016, 13, FALSE),
(1016, 1, TRUE);

INSERT INTO `DiscountForOrder`
(DiscountOrderDiscountID, DiscountOrderOrderID)
VALUES
(1, 107);

INSERT INTO `Delivery`
(DeliveryOrderID, DeliveryHouseNo, DeliveryStreet, DeliveryCity, DeliveryState, DeliveryZipCode)
VALUES
(107, '8879', 'Suburban Home', 'Anderson', 'SC', '29621');




