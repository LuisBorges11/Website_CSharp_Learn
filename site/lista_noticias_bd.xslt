<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">

		<xsl:for-each select="NewDataSet/Table">
			<b>
				<xsl:value-of select="num_noticias"/>
			</b>
			<br />
			<xsl:value-of select="titulo"/>
			<br />
			<xsl:value-of select="categoria"/>
			<br />
			<xsl:value-of select="resumo"/>
			<br />
			<xsl:value-of select="data"/>
			
			
		</xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
