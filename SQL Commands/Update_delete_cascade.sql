
-- ON update and delete casecade 

-- Drop existing tables (if they exist)

IF OBJECT_ID('Orderss', 'U') IS NOT NULL
    DROP TABLE Orderss;

IF OBJECT_ID('OrderDetails', 'U') IS NOT NULL
    DROP TABLE OrderDetails;

-- Create tables with ON DELETE CASCADE and ON UPDATE CASCADE
CREATE TABLE Orderss (
    OrderID INT PRIMARY KEY,
    OrderNumber VARCHAR(20)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductName VARCHAR(50),
    Quantity INT,
    CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY (OrderID)
        REFERENCES Orderss(OrderID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Inserting some data
INSERT INTO Orderss (OrderID, OrderNumber) VALUES (1, 'ORD001');
INSERT INTO Orderss (OrderID, OrderNumber) VALUES (2 ,'ORD002');
INSERT INTO Orderss (OrderID, OrderNumber) VALUES (3, 'ORD003');
INSERT INTO Orderss (OrderID, OrderNumber) VALUES (4, 'ORD004');
INSERT INTO Orderss (OrderID, OrderNumber) VALUES (5, 'ORD005');

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductName, Quantity) VALUES (101, 1, 'Product A', 2);
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductName, Quantity) VALUES (102, 1, 'Product B', 3);
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductName, Quantity) VALUES (103, 2, 'Product c', 4);
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductName, Quantity) VALUES (104, 3, 'Product d', 5);


Select  * from Orderss a
Left join OrderDetails b
on a.OrderID=b.OrderID

-- IT will delete all records from orderss as well as order details table who having orderid=1

DELETE FROM Orderss WHERE OrderID = 1;

-- Updating the OrderID in Orders table

UPDATE Orderss SET OrderID = 100 WHERE OrderID = 1;


-- if forgot to add update and delete cascade we can add in this way

ALTER TABLE OrderDetails
DROP CONSTRAINT FK_OrderDetails_Orders;

ALTER TABLE OrderDetails
ADD CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
