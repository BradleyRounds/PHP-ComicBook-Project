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
?>
<form action="" method="post">

		<select name="publisher">
			<?php
				$SQLstring = "SELECT * FROM publisher_list ORDER BY value";
				$QueryResult = @mysql_query($SQLstring, $DBConnect);
				if ($QueryResult === FALSE)
					echo "<p>Unable to execute the query.</p>" . "<p>Error code " . mysql_errno($DBConnect) . ": " . mysql_error($DBConnect) . "</p>";

				while (($Row = mysql_fetch_assoc($QueryResult)) !== FALSE) {
					echo "<option value='" . $Row['value'] . "'>" . $Row['value'] . "</option>";
				}
			?>
		</select>

		<input type="text" name="title" value="Dreadstar" placeholder="Title" required/>
		<input type="number" name="issuenum" placeholder="Issue Number" required autofocus />
		<input type="checkbox" name="annual" value="1"/>
		<label for="annual">Annual </label>
		<input type="date" name="date" placeholder="Date" required/>

		<select name="condition">
			<?php
				$SQLstring = "SELECT * FROM condition_list ORDER BY ID";
				$QueryResult = @mysql_query($SQLstring, $DBConnect);
				if ($QueryResult === FALSE)
					echo "<p>Unable to execute the query.</p>" . "<p>Error code " . mysql_errno($DBConnect) . ": " . mysql_error($DBConnect) . "</p>";

				while (($Row = mysql_fetch_assoc($QueryResult)) !== FALSE) {
					echo "<option value='" . $Row['value'] . "'>" . $Row['value'] . "</option>";
				}
			?>
		</select>

		<input type="number" name="listprice" step=".01" placeholder="List Price"/>
		<input type="text" name="storyline" placeholder="Storyline"/>

		<br><br>

  	<input type="submit" name="Submit" value="Submit">
  	<input type="reset">
  	<br><br>
	</form>
<?php
	mysql_free_result($QueryResult);
	mysql_close($DBConnect);
?>
