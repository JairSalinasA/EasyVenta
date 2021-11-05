-----------------------------------ACTIVAR MASTER-------------------------------
USE master
-----------------------------------CREAR BASE DE DATOS-------------------------------
GO
IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'EASYVENTA')
  BEGIN
    CREATE DATABASE [EASYVENTA]
  END
GO
-----------------------------------ACTIVAR [EASYVENTA]-------------------------------
USE [EASYVENTA];

GO
------------------------------------Crear Tablas----------------------------------------
CREATE TABLE [ROLE](
	[RoleId] INT IDENTITY (1,1) PRIMARY KEY,
	[RolName] VARCHAR (50),
);
 

CREATE TABLE [USER] (
    [UserId] INT PRIMARY KEY IDENTITY (1, 1),
	[Email] VARCHAR (50) NOT NULL,
	[Password] VARCHAR (50) NOT NULL,
	[PasswordConfirm] VARCHAR (50) NOT NULL,	
	[UserName] VARCHAR (50) NOT NULL,
	[Pin] INT   NOT NULL, 
	[IdRole] INT,

	--------------RELACIONES--------------------------------------------------------------
	CONSTRAINT FK_RELACION_A_ROLES FOREIGN KEY ([IdRole]) REFERENCES [ROLE]([RoleId])
 );
 
---------------------------------------------Inserccion de datos--------------------------



--SELECT * FROM [ROLE]
INSERT INTO [ROLE] VALUES ('Good');
INSERT INTO [ROLE] VALUES ('Admin');
INSERT INTO [ROLE] VALUES ('Gerente');
INSERT INTO [ROLE] VALUES ('Contador');
INSERT INTO [ROLE] VALUES ('Vendedor');
INSERT INTO [ROLE] VALUES ('Intendente'); 

--SELECT * FROM [USER]
INSERT INTO [USER] VALUES ('good@mail.com','Password1.','Password1.','Switchmx',130216,1); 
go


----------CREATE-----------
--CREATE PROC ADDUSER
--	@userid int,
--	@email VARCHAR (50),
--	@password VARCHAR (50),
--	@passwordconfirm VARCHAR (50),
--	@userName VARCHAR (50),
--	@pin INT,
--	@idrole INT	
--AS
--	INSERT INTO [USERS] VALUES (@userid, @email, @password, @passwordconfirm, @userName, @pin,@idrole)
--GO
--------READ-------------
--CREATE PROC READROL
--	AS
--		SELECT *FROM [ROLE] ORDER BY [RolName] ASC
--	GO
--------UPDATE-----------
--CREATE PROC UPDATEUSER
--	@userid int,
--	@email VARCHAR (50),
--	@password VARCHAR (50),
--	@passwordconfirm VARCHAR (50),
--	@userName VARCHAR (50),
--	@pin INT,
--	@idrole INT	
--AS
--	UPDATE [USERS] SET Email=@email, Password=@password,  PasswordConfirm=@passwordconfirm,  UserName=@userName,  Pin=@pin,  IdRole=@idrole WHERE UserId=@userid;
--GO
--------DELETE-----------
--CREATE PROC DELETEUSER
-- @userid int
--AS
--	DELETE [USERS] WHERE UserId=@userid;
--GO

 