<!doctype html>
<html>
<head>
	<title>PHP Project - ADMIN WORKSPACE</title>
	<style type="text/css">
		body {background-color: rgba( 80,118,135,1);}
		form input {margin: 0 2px;}
		form select {padding: 1px 0;}
		footer {padding: 15px;}
	</style>

	<link href="../_css/styles.css" type="text/css" rel="stylesheet">
	<meta charset="utf-8">
	<meta name="language" content="english">
	<meta http-equiv="content-type" content="text/html">
	<meta name="author" content="Bradley Rounds">
</head>
<body>
	<?php
		$DBConnect = @mysql_connect("localhost", "root", "");
		$DBName = "comicbooks";
		mysql_select_db($DBName, $DBConnect);

		if ($DBConnect === FALSE)
			echo "<p>Unable to connect to the database server.</p>" . "<p>Error code " . mysql_errno() . ": " . mysql_error() . "</p>";
		else
			if (!@mysql_select_db($DBName, $DBConnect)) {
				echo "<p>Unable to connect to the database.</p>" . "<p>Error code " . mysql_errno() . ": " . mysql_error() . "</p>";
			}

		if ((isset($_POST['Submit'])) && (!empty($_POST['Submit']))) {
			if (empty($_POST['publisher']) || empty($_POST['title']) || empty($_POST['issuenum']) || empty($_POST['date']) || empty($_POST['condition']) || empty($_POST['listprice']))
				echo "<p>Field Error</p>";
			else {
				$TableName 	 = "books";
				$SQLstring 	 = "SHOW TABLES LIKE '$TableName'";
				$QueryResult = @mysql_query($SQLstring, $DBConnect);

				$publisher 	= stripslashes($_POST['publisher']);
				$title 			= stripslashes($_POST['title']);
				$issuenum		= stripslashes($_POST['issuenum']);
				$annual			= (isset($_POST['annual'])) ? 1 : 0;
				$date				= stripslashes($_POST['date']);
				$condition 	= stripslashes($_POST['condition']);
				$listprice	= stripslashes($_POST['listprice']);
				$demand 		= '2';
				$storyline	= stripslashes($_POST['storyline']);



				$SQLstring = "INSERT INTO $TableName VALUES(NULL, '$publisher', '$title', '$issuenum', '$annual', '$date', '$condition', '$listprice', '$demand', '$storyline')";
				$QueryResult = @mysql_query($SQLstring, $DBConnect);
				if ($QueryResult === FALSE)
					echo "<p>Unable to execute the query.</p>" . "<p>Error code " . mysql_errno($DBConnect) . ": " . mysql_error($DBConnect) . "</p>";
				else
					echo "<h1>Data has been entered!</h1>";
			}
		} else
			echo "<h1>Submit Not Clicked</h1>";

		$SQLstring = "SELECT * FROM books ORDER BY ID DESC LIMIT 20";
		$QueryResult = @mysql_query($SQLstring, $DBConnect);

		echo "<table width='100%' border='1' style='text-align:center;'>";
		echo "<tr><th>ID</th><th>Publisher</th><th>Title</th><th>Issue #</th><th>Annual</th><th>Date</th><th>Condition</th><th>List Price</th><th>Demand</th><th>Storyline</th></tr>";
		while (($Row = mysql_fetch_assoc($QueryResult)) !== FALSE) {
			echo "<tr>";
			echo "<td>{$Row['ID']}</td>";
			echo "<td>{$Row['publisher']}</td>";
			echo "<td>{$Row['title']}</td>";
			echo "<td>{$Row['issue_no']}</td>";
			echo "<td>{$Row['annual']}</td>";
			echo "<td>{$Row['date']}</td>";
			echo "<td>{$Row['condition_list']}</td>";
			echo "<td>{$Row['listprice']}</td>";
			echo "<td>{$Row['demand']}</td>";
			echo "<td>{$Row['storyline']}</td>";
			echo "</tr>";
		}
		mysql_free_result($QueryResult);
		mysql_close($DBConnect);
	?>
	<?php include("databaseEntryForm.php") ?>
	<footer>
		<a href="databaseEntryOptions.php">Form Options</a><br>
		<a href="../index.php">Home Page</a>
	</footer>
</body>
</html>
