CREATE TABLE [dbo].[USERS]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Username] VARCHAR(50) NOT NULL, 
    [Password] VARCHAR(50) NOT NULL, 
    [Address] NVARCHAR(MAX) NOT NULL, 
    [Email] VARCHAR(50) NOT NULL, 
    [Phone] NCHAR(10) NOT NULL
)
