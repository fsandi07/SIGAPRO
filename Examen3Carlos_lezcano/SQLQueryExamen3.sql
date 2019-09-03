create database Examen3

alter Procedure SPEncuenta
@opcion int,
@NumeroEncuesta int=null,
@Nombre varchar(50)=null,
@Apellido varchar(50)=null,
@Fecha_Nacimiento date= null,
@Edad int=null,
@Email varchar(max)=null,
@Carro varchar(10)=null,
@Axml xml=null
--convert(varbinary(max)
as
if @opcion=1
begin
insert into Encuesta values(@NumeroEncuesta,@Nombre,@Apellido,@Fecha_Nacimiento,@Edad,@Email,@Carro,@Axml)
end

alter TRIGGER Encuestas_INGRESADAS
ON Encuesta
AFTER INSERT

AS

DECLARE @NumeroEncuesta  INT
DECLARE @Nombre VARCHAR(max)
DECLARE @Apellido VARCHAR(max)
DECLARE @Fecha_Nacimiento date
DECLARE @Edad INT
DECLARE @Email VARCHAR(max)
DECLARE @Carro VARCHAR(max)
DECLARE @xml xml

	BEGIN
		SET @NumeroEncuesta = (SELECT NumeroEncuesta FROM inserted)
		SET @Nombre = (SELECT Nombre FROM inserted)
		SET @Apellido = (SELECT Apellido FROM inserted)
		SET @Fecha_Nacimiento= (SELECT Fecha_Nacimiento FROM inserted)
	  	SET @Edad = (SELECT Edad FROM inserted)
	    SET @Email= (SELECT Email FROM inserted)
	    SET @Carro = (SELECT Carro FROM inserted)
		--SET @xml = (SELECT  FROM inserted)


		INSERT INTO BITACORA VALUES (@NumeroEncuesta, @Nombre, @Apellido, @Fecha_Nacimiento, @Edad,@Email,@Carro, GETDATE(), 'INSERTADO', 'ENCUESTA')
	END


	select * from Encuesta
    delete from Encuesta where Carro='SI'
	delete from Bitacora where Carro='SI'
	select*from Bitacora

	DBCC CHECKIDENT (Bitacora, RESEED, 0)

	select * from Encuesta

	--declare @Axml2 as varchar(max)
alter procedure SPExtraccion_De_Xml
@opcion int,
@Axml xml =null
as 

if @opcion=1 
begin 
   
     declare @fecha_de_emison datetime
	 declare @numero_factura varchar(max)
	 declare @nombre_comercio varchar(max)
	 declare @cedula_juridica varchar(max)
	declare @Plazo_credito varchar(max)
	declare @total_IVA varchar(max)
	declare @total_pagar varchar(max)
	

	;WITH XMLNAMESPACES('https://cdn.comprobanteselectronicos.go.cr/xml-schemas/v4.3/facturaElectronica' as b)
SELECT 
      @fecha_de_emison=x.u.value('b:FechaEmision[1]', 'varchar(100)')
from 
    @Axml.nodes('/b:FacturaElectronica') x(u)

	;WITH XMLNAMESPACES('https://cdn.comprobanteselectronicos.go.cr/xml-schemas/v4.3/facturaElectronica' as b)
SELECT 
     @numero_factura= x.u.value('b:NumeroConsecutivo[1]', 'varchar(100)')
from 
  @Axml .nodes('/b:FacturaElectronica') x(u)

  ;WITH XMLNAMESPACES('https://cdn.comprobanteselectronicos.go.cr/xml-schemas/v4.3/facturaElectronica' as b)
SELECT 
     @nombre_comercio=x.u.value('b:Nombre[1]', 'varchar(100)') 
from 
    @Axml.nodes('/b:FacturaElectronica/b:Emisor') x(u)

	;WITH XMLNAMESPACES('https://cdn.comprobanteselectronicos.go.cr/xml-schemas/v4.3/facturaElectronica' as b)
SELECT 
     @cedula_juridica=x.u.value('b:Numero[1]', 'varchar(100)')
from 
    @Axml.nodes('/b:FacturaElectronica/b:Emisor/b:Identificacion') x(u)

	;WITH XMLNAMESPACES('https://cdn.comprobanteselectronicos.go.cr/xml-schemas/v4.3/facturaElectronica' as b)
SELECT 
     @Plazo_credito=x.u.value('b:PlazoCredito[1]', 'varchar(100)')
from 
    @Axml.nodes('/b:FacturaElectronica') x(u)

	;WITH XMLNAMESPACES('https://cdn.comprobanteselectronicos.go.cr/xml-schemas/v4.3/facturaElectronica' as b)
SELECT 
     @total_IVA =x.u.value('b:TotalImpuesto[1]', 'varchar(100)')
from 
    @Axml.nodes('/b:FacturaElectronica/b:ResumenFactura') x(u)

	;WITH XMLNAMESPACES('https://cdn.comprobanteselectronicos.go.cr/xml-schemas/v4.3/facturaElectronica' as b)
SELECT 
    @total_pagar= x.u.value('b:TotalComprobante[1]', 'varchar(100)')
from 
    @Axml.nodes('/b:FacturaElectronica/b:ResumenFactura') x(u)



insert into Extraccion_DE_Datos values(@fecha_de_emison,@numero_factura,@nombre_comercio,@cedula_juridica,@Plazo_credito,@total_IVA,@total_pagar)


end



select * from Extraccion_DE_Datos




select * from Encuesta



	delete  from Extraccion_DE_Datos