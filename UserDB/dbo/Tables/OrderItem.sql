CREATE TABLE [dbo].[OrderItem]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [OrderID] UNIQUEIDENTIFIER NOT NULL, 
    [ProductID] UNIQUEIDENTIFIER NOT NULL, 
    [Quantity] INT NOT NULL, 
    [Price] NUMERIC(18, 2) NOT NULL, 
    CONSTRAINT [FK_OrderItem_Order] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Order]([Id]), 
    CONSTRAINT [FK_OrderItem_Product] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product]([Id])
)
