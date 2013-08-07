<?php

   $xslDoc = new DOMDocument();
   $xslDoc->load("collection.xsl");

   $xmlDoc = new DOMDocument();
   $xmlDoc->load("collection.xml");

	$proc = new XSLTProcessor;
	$proc->importStyleSheet($xslDoc); // attach the xsl rules

	$newXml = $proc->transformToXML($xmlDoc);
	echo $newXml;
?>
