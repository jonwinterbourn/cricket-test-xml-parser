<?php 
header('Content-type: text/xml');
	$catalog = simplexml_load_file('http://cricket-test.herokuapp.com/courses.xml');
	if (!$catalog) {
		exit('Failed to load xml.');
        } else {
		$xml_doc = new DOMDocument();

		if(array_key_exists('org_unit_id', $_GET)) {
		$org = $_GET['org_unit_id'];
		$uurl = "http://cricket-test.herokuapp.com/courses.xml?org_unit_id=" . $org;
		//echo uurl;
		$xml_doc->load($uurl);
		//$x1 = file_get_contents("http://cricket-test.herokuapp.com/courses.xml");
		//$xml_doc->load("courses.xml");
		}
		else { 
		$xml_doc->load("http://cricket-test.herokuapp.com/courses.xml");
		}
		// XSL
		$xsl_doc = new DOMDocument();
		$xsl_doc->load("ind.xsl");	
	
		// Proc
		$proc = new XSLTProcessor();
		$proc->importStylesheet($xsl_doc);
		//$newdom = $proc->transformToDoc($xml_doc);

		//print $newdom->saveXML();
		$newXml = $proc->transformToXML($xml_doc);	
		echo $newXml;
		//$newdom = $proc->transformToDoc($xml_doc);
	
	
		/*
		$xslDoc = new DOMDocument();
		$xslDoc->load("collection.xsl");

		$xmlDoc = new DOMDocument();
		$xmlDoc->load("collection.xml");

	        $proc = new XSLTProcessor;
	        $proc->importStyleSheet($xslDoc); // attach the xsl rules

	        $newXml = $proc->transformToXML($xmlDoc);
	        echo $newXml;
		*/

	} 
	?>

