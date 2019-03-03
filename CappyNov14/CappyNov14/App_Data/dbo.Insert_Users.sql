CREATE PROCEDURE [dbo].[Insert_Users]
	@Username NVARCHAR(20),
	@Password NVARCHAR(20),
	@Email NVARCHAR(50)

AS
Begin
	set nocount on;
	if exists(Select UserId from Users where Username = @Username)
	begin
	select -1
	end
	else if exists(Select UserId from Users where Email = @Email)
	begin
	select -2

	end
	else 
	begin
	insert into [Users]
	([Username],[Password],[Email],[FirstName],[LastName],[Address]
	,[State],[Zip],[City],[Age])
	values
	(@Username,@Password,@Email)
	select SCOPE_IDENTITY()

	end
End