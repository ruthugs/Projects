DROP SCHEMA IF EXISTS PIZZA;
CREATE SCHEMA PIZZA;
USE PIZZA;

CREATE TABLE `Customer` (
    `CustomerID` INT NOT NULL,
    `CustomerFName` VARCHAR(50) NOT NULL,
    `CustomerLName` VARCHAR(50) NOT NULL,
    `CustomerPhoneNo` VARCHAR(20) NOT NULL,
    PRIMARY KEY ( `CustomerID`)
);

CREATE TABLE `Order` (
  `OrderID` INT NOT NULL,
  `OrderCustomerID` INT NOT NULL,
  `OrderDate` DATETIME NOT NULL,
  `OrderStatus` VARCHAR(20) NOT NULL,
  `OrderCustomerPrice` DECIMAL(5,2) NOT NULL,
  `OrderBusinessPrice` varchar(20) NOT NULL,
  `OrderType` VARCHAR(20) NOT NULL,
  `CustomerID` INT NOT NULL,
   PRIMARY KEY (`OrderID`),
   FOREIGN KEY (`OrderCustomerID`) REFERENCES `Customer` (`CustomerID`)
);

CREATE TABLE `DineIn` (
  `DineInOrderID` INT NOT NULL,
  `DineInTableNo` INT NOT NULL,
   PRIMARY KEY (`DineInOrderID`),
   FOREIGN KEY (`DineInOrderID`) REFERENCES `Order` (`OrderID`)
);

CREATE TABLE `PickUp` (
  `PickUpOrderID` INT NOT NULL,
  `PickUpStat` VARCHAR(20) NOT NULL,
   PRIMARY KEY (`PickUpOrderID`),
   FOREIGN KEY (`PickUpOrderID`) REFERENCES `Order` (`OrderID`)
);

CREATE TABLE `Delivery` (
  `DeliveryOrderID` INT NOT NULL,
  `DeliveryHouseNo` VARCHAR(10) NOT NULL,
  `DeliveryStreet` VARCHAR(50) NOT NULL,
  `DeliveryCity` VARCHAR(50) NOT NULL,
  `DeliveryState` VARCHAR(50) NOT NULL,
  `DeliveryZipCode` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`DeliveryOrderID`),
  FOREIGN KEY (`DeliveryOrderID`) REFERENCES `Order` (`OrderID`)
);

CREATE TABLE `BasePrice` (
  `BaseCrustType` VARCHAR(15) NOT NULL,
  `BaseSize` VARCHAR(15) NOT NULL,
  `BaseCustomerPrice` DECIMAL(5,2) NOT NULL,
  `BaseBusinessCost` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`BaseCrustType`, `BaseSize`)
);

CREATE TABLE `Pizza` (
  `PizzaID` INT NOT NULL,
  `PizzaCrustType` VARCHAR(15) NOT NULL,
  `PizzaSize` VARCHAR(15) NOT NULL,
  `PizzaOrderID` INT NOT NULL,
  `PizzaOrderDate` DATETIME NOT NULL,
  `PizzaCustomerPrice` DECIMAL(5,2) NOT NULL,
  `PizzaBusinessCost` DECIMAL(5,2) NOT NULL,
  `PizzaState` VARCHAR(15) NOT NULL,
  PRIMARY KEY(`PizzaID` ),
  FOREIGN KEY (`PizzaCrustType`,`PizzaSize`) REFERENCES `BasePrice` (`BaseCrustType`,`BaseSize`),
  FOREIGN KEY (`PizzaOrderID`) REFERENCES `Order` (`OrderID`)
);

CREATE TABLE `Topping` (
  `ToppingID` int NOT NULL AUTO_INCREMENT,
  `ToppingName` varchar(20) NOT NULL,
  `ToppingPrice` decimal(3,2) NOT NULL,
  `ToppingCostPerUnit` decimal(3,2) NOT NULL,
  `ToppingMinInvLvl` int NOT NULL,
  `ToppingCurrentInvLvl` int NOT NULL,
  `ToppingUnitsForSmall` decimal(5,2) NOT NULL,
  `ToppingUnitsForMedium` decimal(5,2) NOT NULL,
  `ToppingUnitsForLarge` decimal(5,2) NOT NULL,
  `ToppingUnitsForXtraLarge` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ToppingID`)
) ;

CREATE TABLE `PizzaTopping` (
  `PizzaToppingPizID` int NOT NULL,
  `PizzaToppingTopID` INT  NOT NULL,
  `PizzaExtraTopping` BOOL NOT NULL,
  PRIMARY KEY (`PizzaToppingPizID`,`PizzaToppingTopID`),
  FOREIGN KEY (`PizzaToppingPizID`) REFERENCES `Pizza` (`PizzaID`),
  FOREIGN KEY (`PizzaToppingTopID`) REFERENCES `Topping` (`ToppingID`)
  );

 
 
 CREATE TABLE `Discount` (
  `DiscountID` INT NOT NULL AUTO_INCREMENT,
  `DiscountName` VARCHAR(50) NOT NULL,
  `DiscountPercentageOff` INT NOT NULL,
  `DiscountDollarOff` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`DiscountID`)
);

CREATE TABLE `DiscountForOrder` (
  `DiscountOrderDiscountID` INT NOT NULL,
  `DiscountOrderOrderID` INT NOT NULL,
  PRIMARY KEY (`DiscountOrderDiscountID`, `DiscountOrderOrderID`),
  FOREIGN KEY (`DiscountOrderDiscountID`) REFERENCES `Discount` (`DiscountID`),
  FOREIGN KEY (`DiscountOrderOrderID`) REFERENCES `Order` (`OrderID`)
);

CREATE TABLE `DiscountForPizza` (
  `DiscountPizzaDiscountID` INT NOT NULL,
  `DiscountPizzaPizzaID` INT NOT NULL,
  PRIMARY KEY (`DiscountPizzaDiscountID`, `DiscountPizzaPizzaID`),
  FOREIGN KEY (`DiscountPizzaDiscountID`) REFERENCES `Discount` (`DiscountID`),
  FOREIGN KEY (`DiscountPizzaPizzaID`) REFERENCES `Pizza` (`PizzaID`)
);

