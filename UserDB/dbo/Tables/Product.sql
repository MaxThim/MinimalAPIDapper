CREATE TABLE [dbo].[Product]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(255) NOT NULL, 
    [Description] NVARCHAR(MAX) NOT NULL, 
    [Image_url] NVARCHAR(MAX) NULL, 
    [Price] DECIMAL(18, 2) NOT NULL, 
    [CategoryID] UNIQUEIDENTIFIER NULL, 
    CONSTRAINT [FK_Product_Category] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Category]([Id])
)
