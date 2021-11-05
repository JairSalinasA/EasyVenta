-----------------------------------ACTIVAR [EASYVENTA]-------------------------------
USE [EASYVENTA];
GO

------------------------------------Crear Tablas----------------------------------------
CREATE TABLE Licencias(
	IdLicencia VARCHAR (20) PRIMARY KEY,
	LicenciaKey VARCHAR (32),
	TipoLicencia VARCHAR (20),
	DireccionMac VARCHAR (20)
);
GO 

CREATE TABLE LicenciasAdquiridas(
	[UserId] INT,
	[IdLicencia] VARCHAR (20),
	[Activacion] int,
	[FechaCompra] DATE,
	[FechaVigencia] DATE,
	[Estado] VARCHAR (10),
--------------------------------------RELACIONES----------------------------------------
	CONSTRAINT FK_RELACION_A_USERS FOREIGN KEY ([UserId]) REFERENCES [USER]([UserId]),	 
	CONSTRAINT FK_RELACION_A_USERS FOREIGN KEY ([IdLicencia]) REFERENCES [Licencias]([IdLicencia])
);