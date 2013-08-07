	<?php 
	$catalog = simplexml_load_file('http://cricket-test.herokuapp.com/courses.xml');
	if (!$catalog) {
		exit('Failed to load xml.');
        } else {
               	$result = $catalog->xpath('//course[contains(subject,"Medicine")]');
		foreach ($result as $course) {
			echo '<li><a href="', $course->url, '">', $course->title, '</a></li>', PHP_EOL;
		} 
	}
	?>

