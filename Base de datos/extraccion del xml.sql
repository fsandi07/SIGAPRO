Use NORTHWND
go

declare @mydoc xml

set @mydoc= '<?xml version="1.0" encoding="ISO-8859-1"?>
<FacturaElectronica xmlns="https://cdn.comprobanteselectronicos.go.cr/xml-schemas/v4.3/facturaElectronica" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<Clave>50627071900310128649300500001010000495774100000001</Clave>
<CodigoActividad>502008</CodigoActividad>
<NumeroConsecutivo>00500001010000495774</NumeroConsecutivo>
<FechaEmision>2019-07-27T13:02:05</FechaEmision>
<Emisor>
<Nombre>Riteve SyC, SA.</Nombre>
<Identificacion>
<Tipo>02</Tipo>
<Numero>3101286493</Numero>
</Identificacion>
<NombreComercial>Riteve SyC, SA.</NombreComercial>
<Ubicacion>
<Provincia>4</Provincia>
<Canton>01</Canton>
<Distrito>04</Distrito>
<OtrasSenas>150 Este de la bomba Uno Barreal de Heredia</OtrasSenas>
</Ubicacion>
<Telefono>
<CodigoPais>506</CodigoPais>
<NumTelefono>22092000</NumTelefono>
</Telefono>
<CorreoElectronico>facturaelectronica@rtv.co.cr</CorreoElectronico>
</Emisor>
<Receptor>
<Nombre>FABIO RICARDO SANDI SANCHEZ</Nombre>
<Identificacion>
<Tipo>01</Tipo>
<Numero>113170673</Numero>
</Identificacion>
<NombreComercial>FABIO RICARDO SANDI SANCHEZ</NombreComercial>
</Receptor>
<CondicionVenta>01</CondicionVenta>
<PlazoCredito>0 dias</PlazoCredito>
<MedioPago>02</MedioPago>
<DetalleServicio>
<LineaDetalle>
<NumeroLinea>1</NumeroLinea>
<CodigoComercial>
<Tipo>01</Tipo>
<Codigo>801</Codigo>
</CodigoComercial>
<Cantidad>1</Cantidad>
<UnidadMedida>St</UnidadMedida>
<Detalle>RTV Peri�dica obligatoria</Detalle>
<PrecioUnitario>13745.0000</PrecioUnitario>
<MontoTotal>13745.0000</MontoTotal>
<Descuento>
<MontoDescuento>0.0000</MontoDescuento>
<NaturalezaDescuento>Sin descuento</NaturalezaDescuento>
</Descuento>
<SubTotal>13745.0000</SubTotal>
<BaseImponible>13745.0000</BaseImponible>
<Impuesto>
<Codigo>01</Codigo>
<CodigoTarifa>08</CodigoTarifa>
<Tarifa>13.00</Tarifa>
<FactorIVA>13.00</FactorIVA>
<Monto>1786.8500</Monto>
</Impuesto>
<ImpuestoNeto>1786.8500</ImpuestoNeto>
<MontoTotalLinea>15531.8500</MontoTotalLinea>
</LineaDetalle>
</DetalleServicio>
<ResumenFactura>
<CodigoTipoMoneda>
<CodigoMoneda>CRC</CodigoMoneda>
<TipoCambio>1</TipoCambio>
</CodigoTipoMoneda>
<TotalServGravados>13745.0000</TotalServGravados>
<TotalServExentos>0</TotalServExentos>
<TotalMercanciasGravadas>0</TotalMercanciasGravadas>
<TotalMercanciasExentas>0</TotalMercanciasExentas>
<TotalGravado>13745.0000</TotalGravado>
<TotalExento>0</TotalExento>
<TotalVenta>13745.0000</TotalVenta>
<TotalDescuentos>0.0000</TotalDescuentos>
<TotalVentaNeta>13745.0000</TotalVentaNeta>
<TotalImpuesto>1786.8500</TotalImpuesto>
<TotalComprobante>15531.8500</TotalComprobante>
</ResumenFactura>
<Otros>
<OtroTexto>FBN107 KL1CM6CDXFC809636 B12D1375394KD3 KL1CM6CDXFC809636 GACHEVROLET SPARK LT 250 Oeste y 100 Norte del restaurante El Quijongo, el Tejar del Guarco </OtroTexto>
</Otros>
<ds:Signature Id="Signature-1425098632" xmlns:ds="http://www.w3.org/2000/09/xmldsig#">
<ds:SignedInfo>
<ds:CanonicalizationMethod Algorithm="http://www.w3.org/2001/10/xml-exc-c14n#"/>
<ds:SignatureMethod Algorithm="http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"/>
<ds:Reference URI="">
<ds:Transforms>
<ds:Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature"/>
</ds:Transforms>
<ds:DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>
<ds:DigestValue>sS8YU7ZPEaxbn38QTkGS2Zlk2zpNsRgQlGPQt2FA1Rs=</ds:DigestValue>
</ds:Reference>
<ds:Reference URI="#SignedProperties-191633085" Type="http://uri.etsi.org/01903#SignedProperties">
<ds:DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>
<ds:DigestValue>kJOl4itN9ggos0jvE/QJ8hn2Z4tQ4YpPibhYrsZRmRQ=</ds:DigestValue>
</ds:Reference>
</ds:SignedInfo>
<ds:SignatureValue>oPfl285C8AbdLq2/n8CYwBIjtIzJ5RyHEfEstDQ1x86bR9/cQKSWk2TjFloxFEWRnoYBP8E8J0slWcTaZhbJbedSqDT16i211SdHNkvONB6dCHBztra+v7ky+Zlg33n/A7OZv3/wkmUTrRlOEWR4KRarKaUMTEzzfzXjqVpKzkTbhvsHxTz64au1xeyrRApWX796oASU8F7nji8SG7a9hXgAsdLiDl7Pan+rhfrbOhQemEyPUR+Vpmn9neun8g8FSFZm7Jw2i/zmGMuBo7VgessQPl13xk2/Y/etagn3+7ul8VR7xQ4N5rhdxD/goqY61PJHapij2CRp02kroBZlNg==</ds:SignatureValue>
<ds:KeyInfo>
<ds:KeyValue>
<ds:RSAKeyValue>
<ds:Modulus>o53AlYQgYMp2NjJ4SIVOZfjybFjcN+jSE9kSKUJTQGWRCJlAUZ+Li2xwCV7xSgcTscRNwS/iTkIq5CurXZrNt828CZHONcG8Tuf26cMouqw3g8gwLiiHTrKMlw4dBvC9HhoX1c+DMRiyBepJ3gsWlBv997QLQX98PhUIPxMZzESIeIfD9roCXsF+gyRiDEMHhFPF+OT/oKIG/nPuN3BX6yQ1y1IRy+R9DAwJtabkoGes4lm7XnEm9hC7mbcAwaC6FvjWq7Lv/T9e6betwIu9hnEf5/e5FRcESUdpTXzPHUg5XlbrbsPyMNaNFXYw1jNifkqEg8XCY3NuqXX+cll01Q==</ds:Modulus>
<ds:Exponent>AQAB</ds:Exponent>
</ds:RSAKeyValue>
</ds:KeyValue>
<ds:X509Data>
<ds:X509IssuerSerial>
<ds:X509IssuerName>CN=CA PERSONA JURIDICA, OU=DGT, O=MINISTERIO DE HACIENDA, C=CR</ds:X509IssuerName>
<ds:X509SerialNumber>1562683485471</ds:X509SerialNumber>
</ds:X509IssuerSerial>
<ds:X509SubjectName>CN=RITEVE SYC SOCIEDAD ANONIMA, OU=CPJ, O=PERSONA JURIDICA, C=CR, 2.5.4.5=#131043504A2D332D3130312D323836343933</ds:X509SubjectName>
<ds:X509Certificate>MIIFHDCCAwSgAwIBAgIGAWvXMa0fMA0GCSqGSIb3DQEBCwUAMFoxCzAJBgNVBAYTAkNSMR8wHQYDVQQKDBZNSU5JU1RFUklPIERFIEhBQ0lFTkRBMQwwCgYDVQQLDANER1QxHDAaBgNVBAMME0NBIFBFUlNPTkEgSlVSSURJQ0EwHhcNMTkwNzA5MTQ0NDQ1WhcNMjEwNzA4MTQ0NDQ1WjB3MRkwFwYDVQQFExBDUEotMy0xMDEtMjg2NDkzMQswCQYDVQQGEwJDUjEZMBcGA1UECgwQUEVSU09OQSBKVVJJRElDQTEMMAoGA1UECwwDQ1BKMSQwIgYDVQQDDBtSSVRFVkUgU1lDIFNPQ0lFREFEIEFOT05JTUEwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCjncCVhCBgynY2MnhIhU5l+PJsWNw36NIT2RIpQlNAZZEImUBRn4uLbHAJXvFKBxOxxE3BL+JOQirkK6tdms23zbwJkc41wbxO5/bpwyi6rDeDyDAuKIdOsoyXDh0G8L0eGhfVz4MxGLIF6kneCxaUG/33tAtBf3w+FQg/ExnMRIh4h8P2ugJewX6DJGIMQweEU8X45P+gogb+c+43cFfrJDXLUhHL5H0MDAm1puSgZ6ziWbtecSb2ELuZtwDBoLoW+Narsu/9P17pt63Ai72GcR/n97kVFwRJR2lNfM8dSDleVutuw/Iw1o0VdjDWM2J+SoSDxcJjc26pdf5yWXTVAgMBAAGjgcowgccwHwYDVR0jBBgwFoAUO21X9dZ86Z4QAiBB470azM+zTpUwHQYDVR0OBBYEFKojkGyuOwJIC+dZoftdxEUDQQlIMAsGA1UdDwQEAwIGwDATBgNVHSUEDDAKBggrBgEFBQcDBDBjBggrBgEFBQcBAQRXMFUwUwYIKwYBBQUHMAKGR2h0dHBzOi8vcGtpLmNvbXByb2JhbnRlc2VsZWN0cm9uaWNvcy5nby5jci9wcm9kL2ludGVybWVkaWF0ZS1wai1wZW0uY3J0MA0GCSqGSIb3DQEBCwUAA4ICAQACJMsVhuh3pvHuwg5QTqq2ltU/k+DiL2fc+1DZLzFVDtLMn2euPNrkM7IGx+miecHBqQi+m68zHa6fPED4tcGh2FCzMKcRr4ABCUfwEcKfgBSl5o7ZvDwPLEUOeOdVHcR0/g5pvR4gcZBg7CJsv+FGDQXnhfzUwmvh8UX0WLQjkiNZcim45LJd5A7PKgDSZDwNOIBF20iMZC2cHw6vCDW+IilZpZm294JTLCd9UAIm3o0KBec89cLkRmzbsR19Jsshn/zcZpruf/BW9pZJw2jyceiiKJYUr6yl4j5gMJgldj9q+9ac/4pmnZBwUVy2dkjYN7Bl5Nm8DLPBhzN1CQt+PhrUAX8XIgCAwc74DMVLulD2T6OAQgLQC/gK3akzFcyLaibUI8ZHVElcdJB6Iiup7WRQrmTRu1UdB1KJB/LP/MxmYURWqHJz3kGkroHjvVxQPHFbD3nc/zA6Mbf6l1LWC6lYCbK4xyqvYeO8mFYrOAP6fzeuW7YMHBpmgdCpFhnK8v12kEbjBRr9WXbvhKpDk5JGQDiZN3QvJfyDN90KMIxcgPiw/Y73pg1YmBBlBRlEXXbMRV+Nr02Jo1rA80J1Adqjepr2x7qzO0X8KFtMXwh8zajN4y4+MYNE4C8K1X+ECo4m4ZQWK/BBcPycV5qm2+LUWp+5uvTrnZGALpKhXg==</ds:X509Certificate>
</ds:X509Data>
</ds:KeyInfo>
<ds:Object>
<xades:QualifyingProperties Target="#Signature-1425098632" xmlns:xadesv141="http://uri.etsi.org/01903/v1.4.1#" xmlns:xades="http://uri.etsi.org/01903/v1.3.2#">
<xades:SignedProperties Id="SignedProperties-191633085">
<xades:SignedSignatureProperties>
<xades:SigningTime>2019-07-27T13:02:13.994Z</xades:SigningTime>
<xades:SigningCertificate>
<xades:Cert>
<xades:CertDigest>
<ds:DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>
<ds:DigestValue>SvF6dmw4g7GytBSdU0/z7gcUzw9mZqpvlaB2EfXhdqc=</ds:DigestValue>
</xades:CertDigest>
<xades:IssuerSerial>
<ds:X509IssuerName>CN=CA PERSONA JURIDICA, OU=DGT, O=MINISTERIO DE HACIENDA, C=CR</ds:X509IssuerName>
<ds:X509SerialNumber>1562683485471</ds:X509SerialNumber>
</xades:IssuerSerial>
</xades:Cert>
</xades:SigningCertificate>
<xades:SignaturePolicyIdentifier>
<xades:SignaturePolicyId>
<xades:SigPolicyId>
<xades:Identifier Qualifier="OIDAsURI">https://www.hacienda.go.cr/ATV/ComprobanteElectronico/docs/esquemas/2016/v4.3/ResolucionComprobantesElectronicosDGT-R-48-2016_4.3.pdf</xades:Identifier>
<xades:Description>Pol�tica de Firma FacturaE v4.3</xades:Description>
</xades:SigPolicyId>
<xades:SigPolicyHash>
<ds:DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>
<ds:DigestValue>eUGBLxo7SaqxaR+CGU5DCjUc514GOiOU9S0Smy5W7HE=</ds:DigestValue>
</xades:SigPolicyHash>
</xades:SignaturePolicyId>
</xades:SignaturePolicyIdentifier>
</xades:SignedSignatureProperties>
</xades:SignedProperties>
</xades:QualifyingProperties>
</ds:Object>
</ds:Signature>
</FacturaElectronica>'

-----------------------------------------------------------------------esta es la que funciona----------------------------------------------------------------
;WITH XMLNAMESPACES('https://cdn.comprobanteselectronicos.go.cr/xml-schemas/v4.3/facturaElectronica' as b)
SELECT 
        x.u.value('b:FechaEmision[1]', 'varchar(100)') as [Fecha de Emision]
from 
    @mydoc.nodes('/b:FacturaElectronica') x(u)

;WITH XMLNAMESPACES('https://cdn.comprobanteselectronicos.go.cr/xml-schemas/v4.3/facturaElectronica' as b)
SELECT 
      	x.u.value('b:NumeroConsecutivo[1]', 'varchar(100)') as [Numero de Factura]
from 
    @mydoc.nodes('/b:FacturaElectronica') x(u)

;WITH XMLNAMESPACES('https://cdn.comprobanteselectronicos.go.cr/xml-schemas/v4.3/facturaElectronica' as b)
SELECT 
        x.u.value('b:Nombre[1]', 'varchar(100)') as [Nombre]
from 
    @mydoc.nodes('/b:FacturaElectronica/b:Emisor') x(u)

;WITH XMLNAMESPACES('https://cdn.comprobanteselectronicos.go.cr/xml-schemas/v4.3/facturaElectronica' as b)
SELECT 
        x.u.value('b:Numero[1]', 'varchar(100)') as [Cedula Juridica]
from 
    @mydoc.nodes('/b:FacturaElectronica/b:Emisor/b:Identificacion') x(u)

;WITH XMLNAMESPACES('https://cdn.comprobanteselectronicos.go.cr/xml-schemas/v4.3/facturaElectronica' as b)
SELECT 
        x.u.value('b:PlazoCredito[1]', 'varchar(100)') as [Plazo Credito]
from 
    @mydoc.nodes('/b:FacturaElectronica') x(u)

;WITH XMLNAMESPACES('https://cdn.comprobanteselectronicos.go.cr/xml-schemas/v4.3/facturaElectronica' as b)
SELECT 
        x.u.value('b:TotalImpuesto[1]', 'varchar(100)') as [Total IVA]
from 
    @mydoc.nodes('/b:FacturaElectronica/b:ResumenFactura') x(u)
	
;WITH XMLNAMESPACES('https://cdn.comprobanteselectronicos.go.cr/xml-schemas/v4.3/facturaElectronica' as b)
SELECT 
        x.u.value('b:TotalComprobante[1]', 'varchar(100)') as [Total a Pagar]
from 
    @mydoc.nodes('/b:FacturaElectronica/b:ResumenFactura') x(u)
