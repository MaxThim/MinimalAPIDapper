CREATE TABLE [dbo].[Category]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(255) NULL, 
    [Description] NVARCHAR(MAX) NULL
)
