-----------------------------------ACTIVAR [EASYVENTA]-------------------------------
USE [EASYVENTA];
GO

------------------------------------Crear Tablas----------------------------------------
CREATE TABLE [Persona](
	[IdPersona] INT PRIMARY KEY IDENTITY (1, 1), 	
	[Name] VARCHAR (50),
    [First_name] VARCHAR (50),
    [Last_name] VARCHAR (50), 
    [Phone] VARCHAR(20), 
    [Address] VARCHAR(20),
	[Photo] IMAGE,
	[Status] BIT, 
    [UserId] INT, 
	--------------RELACIONES--------------------------------------------------------------
	CONSTRAINT FK_RELACION_A_USERS FOREIGN KEY ([UserId]) REFERENCES [USER]([UserId]) 
	 
);