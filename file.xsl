<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="xml"/>
 <xsl:template match="/">
	<courses>
		<xsl:for-each select="courses/course">
        		<course><xsl:value-of select="name"/></course>
 		</xsl:for-each>
	</courses>
 </xsl:template>
</xsl:stylesheet>
