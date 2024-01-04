<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
		<b>Última atualização: </b>
		<xsl:value-of select="/report/forecast/@updateTime"/>

		<br />
		<br />
		<h1>Info Lisboa</h1>
		<b>Temp. Max:</b>
		<xsl:value-of select="/report/forecast/land[@name = 'Lisboa']/landWeather/temp/tempMax"/>ºC 
		<br />
		<b>Temp. Min:</b>
		<xsl:value-of select="/report/forecast/land[@name = 'Lisboa']/landWeather/temp/tempMin"/>ºC 
		<br />
		<b>Temp. Atual:</b>
		<xsl:value-of select="/report/forecast/land[@name = 'Lisboa']/landWeather/currentWeather[@symbolID = '2']"/>


		<br />
		<br />
		<h1>Info Faro</h1>
		<b>Temp. Max:</b>
		<xsl:value-of select="/report/forecast/land[@name = 'Faro']/landWeather/temp/tempMax"/>ºC 
		<b>Temp. Min:</b>
		<xsl:value-of select="/report/forecast/land[@name = 'Faro']/landWeather/temp/tempMin"/>ºC 
		<b>Velocidade do Vento:</b>
		<xsl:value-of select="/report/forecast/land[@name = 'Faro']/landWeather/wind/windSpeed"/>
	</xsl:template>
</xsl:stylesheet>
