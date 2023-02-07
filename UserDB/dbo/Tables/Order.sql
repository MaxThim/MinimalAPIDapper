CREATE TABLE [dbo].[Order]
(
	[Id] UNIQUEIDENTIFIER NOT NULL , 
    [Order_Date] DATE NOT NULL, 
    [Total_Amount] DECIMAL(18, 2) NOT NULL, 
    [Payment_Status] NVARCHAR(50) NULL, 
    [CustomerID] UNIQUEIDENTIFIER NULL, 
    PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_Order_Customer] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer]([Id]) 
)
