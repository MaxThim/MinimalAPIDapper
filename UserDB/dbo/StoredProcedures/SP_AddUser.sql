CREATE PROCEDURE [dbo].[SP_AddUser]
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
BEGIN
	INSERT into [dbo].[User] (FirstName, LastName)
	VALUES (@FirstName, @LastName);
END
