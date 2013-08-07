<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="xml"/>
 <xsl:template match="/">
	<Root>
	<School_Name>
	<Table aid:tcols="7" aid:trows="3" aid:table="table" xmlns:aid="http://ns.adobe.com/AdobeInDesign/4.0/">
	<Cell aid:table="cell" aid:ccolwidth="" aid:ccols="1" aid:crows="1" aid:theader="">Course Title</Cell>
	<Cell aid:table="cell" aid:ccolwidth="" aid:ccols="1" aid:crows="1" aid:theader="">UCAS Code</Cell>
	<Cell aid:table="cell" aid:ccolwidth="" aid:ccols="1" aid:crows="1" aid:theader="">Duration</Cell>
	<Cell aid:table="cell" aid:ccols="1" aid:crows="1" aid:theader="">Typical Offer A Level</Cell>
	<Cell aid:table="cell" aid:ccols="1" aid:crows="1" aid:theader="">Typical Offer IB</Cell>
	<Cell aid:table="cell" aid:ccolwidth="" aid:ccols="1" aid:crows="1" aid:theader="">Places in 2013</Cell>
	<Cell aid:table="cell" aid:ccolwidth="" aid:ccols="1" aid:crows="1" aid:theader="">Applicants 2013</Cell>
		<xsl:for-each select="courses/course">
			<Cell aid:table="cell" aid:ccolwidth="" aid:ccols="1" aid:crows="1"><xsl:value-of select="name"/></Cell>
			<Cell aid:table="cell" aid:ccolwidth="" aid:ccols="1" aid:crows="1"><xsl:value-of select="fields/g7fb0ebf0-5b9a-45ef-a53e-072a1fcfd924/UCAS-Code"/></Cell>
			<Cell aid:table="cell" aid:ccolwidth="" aid:ccols="1" aid:crows="1"><xsl:value-of select="fields/j017fbfe5-a8f4-4733-acd1-046092acfdd1/Duration"/></Cell>
			<Cell aid:table="cell" aid:ccolwidth="" aid:ccols="1" aid:crows="1"><xsl:value-of select="fields/xd42f1821-516e-46dd-97e3-f6b5be0722f5/Typical-offer-A-level"/></Cell>
			<Cell aid:table="cell" aid:ccolwidth="" aid:ccols="1" aid:crows="1"><xsl:value-of select="fields/h38465150-55ab-4476-b805-404a7be18811/Typical-offer-IB"/></Cell>
			<Cell aid:table="cell" aid:ccolwidth="" aid:ccols="1" aid:crows="1"><xsl:value-of select="fields/b7d89c9ae-3200-4cd8-b6e4-6d91bba8cd05/Places"/></Cell>
			<Cell aid:table="cell" aid:ccolwidth="" aid:ccols="1" aid:crows="1"><xsl:value-of select="fields/i7635767d-160a-4cfa-8af0-f1d341ebaec5/Applicants"/></Cell>
 		</xsl:for-each>
	</Table>
	</School_Name>
	</Root>
 </xsl:template>
</xsl:stylesheet>
