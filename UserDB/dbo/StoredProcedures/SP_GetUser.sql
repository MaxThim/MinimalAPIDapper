CREATE PROCEDURE [dbo].[SP_GetUser]
	@Id INT
AS
BEGIN
	SELECT Id, FirstName, LastName
	FROM [dbo].[User]
	WHERE Id = @Id
END
