USE [Examen3]
GO
/****** Object:  Trigger [dbo].[Encuestas_INGRESADAS]    Script Date: 02/09/2019 20:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[Encuestas_INGRESADAS]
ON [dbo].[Encuesta]
AFTER INSERT

AS

DECLARE @NumeroEncuesta  INT
DECLARE @Nombre VARCHAR(max)
DECLARE @Apellido xml
DECLARE @Fecha_Nacimiento date
DECLARE @Edad INT
DECLARE @Email VARCHAR(max)
DECLARE @Carro VARCHAR(max)

	BEGIN
		SET @NumeroEncuesta = (SELECT NumeroEncuesta FROM inserted)
		SET @Nombre = (SELECT Nombre FROM inserted)
		SET @Apellido = (SELECT Apellido FROM inserted)
		SET @Fecha_Nacimiento= (SELECT Fecha_Nacimiento FROM inserted)
	  	SET @Edad = (SELECT Edad FROM inserted)
	    SET @Email= (SELECT Email FROM inserted)
	    SET @Carro = (SELECT Carro FROM inserted)


		INSERT INTO BITACORA VALUES (@NumeroEncuesta, @Nombre, @Apellido, @Fecha_Nacimiento, @Edad,@Email,@Carro, GETDATE(), 'INSERTADO', 'ENCUESTA')
	END