﻿CREATE PROCEDURE [dbo].[SP_UpdateUser]
	@Id INT,
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
BEGIN
	UPDATE [dbo].[User]
	SET FirstName = @FirstName, LastName = @LastName
	WHERE Id = @Id
END
