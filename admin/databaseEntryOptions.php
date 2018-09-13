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

	//echo "<pre>",	print_r($_POST), "</pre>";

	if (isset($_POST['delAction'])) {
		$SQLstring = 'DELETE FROM ' . $_POST['tablename'] . ' WHERE ID = ' . $_POST['id'];
	}
	if (isset($_POST['addAction'])) {
		$SQLstring = "INSERT INTO " . $_POST['tablename'] . " VALUES(NULL, '" . $_POST['newOption'] . "', 1)";
	}
	if (isset($SQLstring)) {
		$QueryResult = @mysql_query($SQLstring, $DBConnect);
		if ($QueryResult === FALSE)
			echo "<p>Unable to execute the query.</p>" . "<p>Error code " . mysql_errno($DBConnect) . ": " . mysql_error($DBConnect) . "</p>";
	}
?>
<!doctype html>
<html>
<head>
	<title>PHP Project - ADMIN WORKSPACE</title>
	<style type="text/css">
		body {background-color: rgba( 80,118,135,1);}
		form {width: 50vw; margin: 0 auto; text-align: center;}
		fieldset {text-align: left;}
		footer {position: fixed; left: 20vw; top: 0; padding: 15px;}
	</style>

	<link href="../_css/styles.css" type="text/css" rel="stylesheet">
	<meta charset="utf-8">
	<meta name="language" content="english">
	<meta http-equiv="content-type" content="text/html">
	<meta name="author" content="Bradley Rounds">
</head>
<body>
<form action="" method="post">
	<fieldset id="contionChange">
		<legend>Condition</legend>
		<input type="hidden" name="tablename" value="condition_list">
		<table>
			<tr>
				<th>ID</th>
				<th>Condition</th>
				<th>Action</th>
			</tr>
			<?php
				$SQLstring = "SELECT * FROM condition_list ORDER BY ID";
				$QueryResult = @mysql_query($SQLstring, $DBConnect);
				if ($QueryResult === FALSE)
					echo "<p>Unable to execute the query.</p>" . "<p>Error code " . mysql_errno($DBConnect) . ": " . mysql_error($DBConnect) . "</p>";

				while (($Row = mysql_fetch_assoc($QueryResult)) !== FALSE) {
					echo "<tr>";
					echo "<td>{$Row['ID']}<input type='hidden' value='{$Row['ID']}' name='id'></td>";
					echo "<td>{$Row['value']}</td>";
					echo "<td><input type='submit' name='delAction' value='Delete'></td>";
					echo "</tr>";
				}
			?>
			<tr>
				<td></td>
				<td><input type="text" name="newOption"></td>
				<td><input type="submit" name="addAction" value="Add"></td>
			</tr>
		</table>
	</fieldset>
</form>
<form method="post">
	<fieldset id="publisherChange">
		<legend>Publisher</legend>
		<input type="hidden" name="tablename" value="publisher_list">
		<table>
			<tr>
				<th>ID</th>
				<th>Publisher</th>
				<th>Action</th>
			</tr>
			<?php
				$SQLstring = "SELECT * FROM publisher_list ORDER BY value";
				$QueryResult = @mysql_query($SQLstring, $DBConnect);
				if ($QueryResult === FALSE)
					echo "<p>Unable to execute the query.</p>" . "<p>Error code " . mysql_errno($DBConnect) . ": " . mysql_error($DBConnect) . "</p>";

				while (($Row = mysql_fetch_assoc($QueryResult)) !== FALSE) {
					echo "<tr>";
					echo "<td>{$Row['ID']}<input type='hidden' value='{$Row['ID']}' name='id'></td>";
					echo "<td>{$Row['value']}</td>";
					echo "<td><input type='submit' name='delAction' value='Delete'></td>";
					echo "</tr>";
				}
				mysql_free_result($QueryResult);
				mysql_close($DBConnect);
			?>
			<tr>
				<td></td>
				<td><input type="text" name="newOption"></td>
				<td><input type="submit" name="addAction" value="Add"></td>
			</tr>
		</table>
	</fieldset>
	<fieldset style="text-align: center;">
		<a href="databaseEntry.php">Back To Form Entry</a>
	</fieldset>
</form>
</body>
</html>
