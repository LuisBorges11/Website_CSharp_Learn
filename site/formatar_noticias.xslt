<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">

		<center>
			<h3></h3>
		</center>
		<br />
		<table border="1" style="border-collapse:collapse" width="99%">
			<tr>
				<td>
					<b>Titulo</b>
				</td>
				<td>
					<b>Categorias e Data</b>
				</td>
				<td>
					<b>Link</b>
				</td>
			</tr>

			<xsl:for-each select="/rss/channel/item">
				<tr>
					<td>
						<xsl:value-of select="title" disable-output-escaping="yes"/>
					</td>
					<td>
						<xsl:value-of select="category" disable-output-escaping="yes"/>
					</td>
					<td>
						<xsl:value-of select="pubDate" disable-output-escaping="yes"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
    </xsl:template>
</xsl:stylesheet>
