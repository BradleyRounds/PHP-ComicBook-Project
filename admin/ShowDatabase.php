<!doctype html>
<html>
<head>
	<title>PHP Project</title>
</head>
<body>
	<?php
		$DBConnect = @mysql_connect("localhost", "root", "");
		$DBName = "comicbooks";
		mysql_select_db($DBName, $DBConnect);

		$SQLstring = "SELECT * FROM books";
		$QueryResult = @mysql_query($SQLstring, $DBConnect);

		echo "<table width='100%' border='1' style='text-align:center;'>";
		echo "<tr><th>ID</th><th>Publisher</th><th>Title</th><th>Issue #</th><th>Annual</th><th>Date</th><th>Condition</th><th>List Price</th><th>Demand</th></tr>";
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
			echo "</tr>";
		}
		mysql_free_result($QueryResult);
		mysql_close($DBConnect);
	?>
</body>
</html>
