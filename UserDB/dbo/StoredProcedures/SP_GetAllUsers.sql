CREATE PROCEDURE [dbo].[SP_GetAllUsers]
AS
begin
	SELECT *
	FROM [dbo].[User]
end
