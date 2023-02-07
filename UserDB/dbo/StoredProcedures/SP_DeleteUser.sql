CREATE PROCEDURE [dbo].[SP_DeleteUser]
	@Id INT
AS
BEGIN
	DELETE FROM [dbo].[User]
	WHERE Id = @Id
END
