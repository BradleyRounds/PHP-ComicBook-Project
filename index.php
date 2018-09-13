<!doctype html>
<html>
<head>
	<title>Rounds Comics</title>

	<link href="_css/styles.css" type="text/css" rel="stylesheet">
	<meta charset="utf-8">
	<meta name="language" content="english">
	<meta http-equiv="content-type" content="text/html">
	<meta name="author" content="Bradley Rounds">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<?php
	/*THIS SECTION IS NOT NEEDED IF THE SITE IS ONLINE, IT CREATE A LOCAL DATABASE WITH BOOK DATA*/
	$DBConnect = @mysql_connect("localhost", "root", "");
	if ($DBConnect === FALSE)
		$error .= "<p>Unable to connect to the database server.</p>" . "<p>Error code " . mysql_errno() . ": " . mysql_error() . "</p>";
	else {
		$DBName = "comicbooks";
		if (!@mysql_select_db($DBName, $DBConnect)) {
			$SQLstring = "CREATE DATABASE $DBName";
			$QueryResult = @mysql_query($SQLstring, $DBConnect);
			if ($QueryResult === FALSE)
				$error .= "<p>Unable to execute the query.</p>" . "<p>Error code " . mysql_errno($DBConnect) . ": " . mysql_error($DBConnect) . "</p>";
		}
		mysql_select_db($DBName, $DBConnect);

		$TableName = "books";
		$SQLstring = "SHOW TABLES LIKE '$TableName'";
		$QueryResult = @mysql_query($SQLstring, $DBConnect);

		if (mysql_num_rows($QueryResult) == 0) {
			$commands = file_get_contents('books.sql');

			//delete comments
			$lines = explode("\n",$commands);
			$commands = '';
			foreach($lines as $line){
					$line = trim($line);
					if( $line && !startsWith($line,'-- ') ){
							$commands .= $line . "\n";
					}
			}
			//convert to array
			$commands = explode(";", $commands);

			//run commands
			$total = $success = 0;
			foreach($commands as $command){
					if(trim($command)){
							$success += (@mysql_query($command)==false ? 0 : 1);
							$total += 1;
					}
			}
			$output = "success = $success, total = $total";
			 echo "<script>console.log('Books Table Commands: " . $output . "');</script>";
		} else
			echo "<script>console.log('Database Ready');</script>";
	}
	function startsWith($haystack, $needle){
			$length = strlen($needle);
			return (substr($haystack, 0, $length) === $needle);
	}
	/*CREATE LIST TABLES FOR ADMIN DATA ENTRY USAGE*/
	/*Condition list*/
	$TableName = "condition_list";
	$SQLstring = "SHOW TABLES LIKE '$TableName'";
	$QueryResult = @mysql_query($SQLstring, $DBConnect);
	if (mysql_num_rows($QueryResult) == 0) {
		$SQLstring = "CREATE TABLE $TableName (
			ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
			value varchar(32),
			active TINYINT(1)
		)";
		$QueryResult = @mysql_query($SQLstring, $DBConnect);
		if ($QueryResult === FALSE)
			$error .= "<p>Unable to execute the query.</p>" . "<p>Error code " . mysql_errno($DBConnect) . ": " . mysql_error($DBConnect) . "</p>";

		$SQLstring = "INSERT INTO $TableName VALUES(NULL, 'Near Mint', '1')";
		@mysql_query($SQLstring, $DBConnect);
		$SQLstring = "INSERT INTO $TableName VALUES(NULL, 'Very Fine', '1')";
		@mysql_query($SQLstring, $DBConnect);
		$SQLstring = "INSERT INTO $TableName VALUES(NULL, 'Fine', '1')";
		@mysql_query($SQLstring, $DBConnect);
		$SQLstring = "INSERT INTO $TableName VALUES(NULL, 'Very Good', '1')";
		@mysql_query($SQLstring, $DBConnect);
		$SQLstring = "INSERT INTO $TableName VALUES(NULL, 'Good', '1')";
		@mysql_query($SQLstring, $DBConnect);
		$SQLstring = "INSERT INTO $TableName VALUES(NULL, 'Fair', '1')";
		@mysql_query($SQLstring, $DBConnect);
	}

	/*Publisher list*/
	$TableName = "publisher_list";
	$SQLstring = "SHOW TABLES LIKE '$TableName'";
	$QueryResult = @mysql_query($SQLstring, $DBConnect);
	if (mysql_num_rows($QueryResult) == 0) {
		$SQLstring = "CREATE TABLE $TableName (
			ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
			value varchar(32),
			active TINYINT(1)
		)";
		$QueryResult = @mysql_query($SQLstring, $DBConnect);
		if ($QueryResult === FALSE)
			$error .= "<p>Unable to execute the query.</p>" . "<p>Error code " . mysql_errno($DBConnect) . ": " . mysql_error($DBConnect) . "</p>";

		$SQLstring = "INSERT INTO $TableName VALUES(NULL, 'Marvel', '1')";
		@mysql_query($SQLstring, $DBConnect);
		$SQLstring = "INSERT INTO $TableName VALUES(NULL, 'DC', '1')";
		@mysql_query($SQLstring, $DBConnect);
		$SQLstring = "INSERT INTO $TableName VALUES(NULL, 'Epic Comics', '1')";
		@mysql_query($SQLstring, $DBConnect);
		$SQLstring = "INSERT INTO $TableName VALUES(NULL, 'First Comics', '1')";
		@mysql_query($SQLstring, $DBConnect);
		$SQLstring = "INSERT INTO $TableName VALUES(NULL, 'Marvel / Epic Comics', '1')";
		@mysql_query($SQLstring, $DBConnect);
	}
?>
<body>
	<div class="intro">
		<h1>Rounds Comics</h1>
		<ul>
			<li>Welcome, click on the book in the table row to add it to your cart.</li>
			<li>Blank rows are the quantity duplicates of the row directly above.</li>
			<li>To view your selected items hover over the cart icon.</li>
		</ul>
	</div>
	<article id="showcase">
		<div id="book1"><img src="images/ROM-01.jpg" 					alt="Cover of ROM Issue 1"></div>
		<div id="book2"><img src="images/Thor-256.jpg" 				alt="Cover of Thor Issue 256"></div>
		<div id="book3"><img src="images/XMen-138.jpg" 				alt="Cover of X-Men Issue 138"></div>
		<div id="book4"><img src="images/Hulk-272.jpg" 				alt="Cover of Hulk Issue 272"></div>
		<div id="book5"><img src="images/PPSpiderMan-50.jpg"	alt="Cover of Peter Parker the Spectacular Spider Man Issue 50"></div>
		<div id="book6"><img src="images/SilverSurfer-1.jpg" 	alt="Cover of Silver Surfer Issue 1"></div>
		<div id="book7"><img src="images/Sable-01.jpg" 				alt="Cover of Sable Issue 1"></div>
		<div id="book8"><img src="images/GreenArrow-01.jpg" 	alt="Cover of Green Arrow Issue 1"></div>
		<div id="book9"><img src="images/Dreadstar-01.jpg" 		alt="Cover of Dreadstar Issue 1"></div>
	</article>
	<button id="viewAll">View All Comic Books</button>
	<article id="modal">
		<div id="interior"></div>
		<div id=modalContainer>
			<table>
				<thead>
					<tr>
						<th></th>
						<th></th>
						<th>Quantity</th>
						<th>Title</th>
						<th>Publisher</thd>
						<th>Issue #</th>
						<th>Date</th>
						<th>Condition</th>
						<th>Price ($)</th>
						<th>Storyline</th>
					</tr>
				</thead>
				<tbody>
					<?php
						/*Retreve the data from the database*/
						$SQLString = "SELECT * FROM books ORDER BY title";
						$QueryResult = @mysql_query($SQLString, $DBConnect);

						/*Assoc Array for formulating the price*/
						$Quality = array("Near Mint" => "10.00",
														 "Very Fine" => "8.00",
														 "Fine"			 => "6.00",
														 "Very Good" => "4.00",
														 "Good"			 => "3.00",
														 "Fair"			 => "1.00");

						/*Format a num into a currency*/
						function number_to_money($value, $decimals = 2) {
							return ($value < 0 ? '-' : '') . number_format(abs($value), $decimals);
						}

						/*Create the table from the query data*/
						while (($Row = mysql_fetch_assoc($QueryResult)) !== FALSE) {
							$Listprice = $Row['listprice'];

							$Price = $Listprice * $Row['demand'] * $Quality[$Row['condition_list']];
							$Price = number_to_money($Price);

							/*
								ROW 0:  Table Row
								ROW 1:  Checkbox for the JavaScipt and form
								ROW 2:  If the book is an 'anual issue'
								ROW 3:  Quantity of the book (If there is a duplicate issue_no and condition)
								ROW 4:  Title of the book (series)
								ROW 5:  Publisher
								ROW 6:  Issue Number
								ROW 7:  Date released
								ROW 8:  Condition decided when entered into database
								ROW 9:  Formulated Price
								ROW 10: The ID from the database (Incase needed in JavaScript)
								ROW 0:  End Table Row
							*/

							echo "<tr>";
							echo "<td><input type='checkbox'></td>";
							echo "<td>{$Row['annual']}</td>";
							echo "<td>1</td>";
							echo "<td>{$Row['title']}</td>";
							echo "<td>{$Row['publisher']}</td>";
							echo "<td>{$Row['issue_no']}</td>";
							echo "<td>{$Row['date']}</td>";
							echo "<td>{$Row['condition_list']}</td>";
							echo "<td>$Price</td>";
							echo "<td>{$Row['storyline']}</td>";
							echo "</tr>";
						}
						mysql_free_result($QueryResult);
					?>
				</tbody>
			</table>
			<footer>
				<button id='clear'>Clear Selections</button>
				<button id="buy">Buy Selected</button>
			</footer>
		</div>
	</article>
	<article id="buypage">
		<form method="post">
			<ul>
				<li>
					<label for="name">Name</label>
					<input type="text" name="name" maxlength="100">
					<span>Enter your full name here</span>
				</li>
				<li>
					<label for="email">Email</label>
					<input type="email" name="email">
					<span>Enter your email here</span>
				</li>
				<li>
					<fieldset id="formDisabled">
					</fieldset>
				</li>
				<li id="priceArea">
				</li>
				<li>
					<input type="submit" name="Submit" value="Submit Order">
					<button id="formBack">Go Back</button>
				</li>
			</ul>
		</form>
		<?php
			$errors = 0;
		  //$error = '';
			/*Reusable function for input validation*/
			function validate($data, $type) {
				global $errors;
				global $error;

				if ($type === 'email') {
					/*IF EMAIL TYPE*/
					$pattern = '/^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/';
					if (preg_match($pattern, $data) == 0) {
						$error .= "<p>\"$data\" is not a valid e-mail address.</p>";
						++$errors;
					} else
						return $data;
				} else {
					/*IF ANY OTHER TYPE*/
					$pattern = "/^[A-Za-z .'-]+$/";
					if (strlen($data) > 0) {
						if (preg_match($pattern, $data) == 0) {
							$error .= "<p>Name field cannot contain any numbers.</p>";
							++$errors;
						} else
							return $data;
					} else {
						$error .= "<p>Name is a required field.</p>";
						++$errors;
					}
				}
			}
			/*When the user clicks submit*/
			if ((isset($_POST['Submit'])) && (!empty($_POST['Submit']))) {
				$Name = validate(stripslashes($_POST['name']),'text');
				$Email = validate(stripslashes($_POST['email']),'email');
				$Books = '';

				if ($errors > 0)
					$error .= "<p>Data Not Submited<br>Field Error</p>";
				/*Add an entry to the order table in the database*/
				else {
					$TableName = "orders";
					$SQLstring = "SHOW TABLES LIKE '$TableName'";
					$QueryResult = @mysql_query($SQLstring, $DBConnect);
					if (mysql_num_rows($QueryResult) == 0) {
						$SQLstring = "CREATE TABLE $TableName (
							ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
							name varchar(64),
							email varchar(64),
							books varchar(256)
						)";
						$QueryResult = @mysql_query($SQLstring, $DBConnect);
						if ($QueryResult === FALSE)
							$error .= "<p>Unable to execute the query.</p>" . "<p>Error code " . mysql_errno($DBConnect) . ": " . mysql_error($DBConnect) . "</p>";
					}

					foreach ($_POST['Books'] as $element) {
						$Books .= ($element . ", ");
					}

					$SQLstring = "INSERT INTO $TableName VALUES(NULL, '$Name', '$Email', '$Books')";
					$QueryResult = @mysql_query($SQLstring, $DBConnect);
					if ($QueryResult === FALSE)
						$error .= "<p>Unable to execute the query.</p>" . "<p>Error code " . mysql_errno($DBConnect) . ": " . mysql_error($DBConnect) . "</p>";
					else
						$error = "<h1>Your order has been submitted!</h1>\n<p>I'll get back to you soon.";

					mysql_close($DBConnect);

					//If site goes online Emails to both the shopper and to me the admin
					//sendMail($Name, $Email, $Email, $Books, true);
					//sendMail($Name, 'rounds.bradley@gmail.com', $Email, $Books, false);
				}
			}

			function sendMail($name, $email_to, $email, $books, $errMsg) {
				$email_subject = "Your book order has been submitted";
				$error_message = "I\'m sorry, but there appears to be a problem with the submission</p>";


				$email_message = "
					<h1>Order Request has been Sumbited</h1>
					<p><strong>Name: </strong>".$name."</p>
					<p><strong>Email: </strong>".$email."</p>
					<p><strong>Books Requested: </strong>".$books."</p><br>
					<p>I will contact you ASAP to complete your order</p><br>
					<p>Bradley Rounds<br>Rounds Comics</p>
				";

				$headers  = "MIME-Version: 1.0".PHP_EOL;
				$headers .= "Content-type: text/html; charset=UTF-8".PHP_EOL;
				$headers .= "From:".$name." <".$email_to.">".PHP_EOL;


				$sent = mail($email_to, $email_subject, $email_message, $headers);

				/*
				echo "<script>console.log('Sent: $sent');</script>";
				echo "<script>console.log('Name: $name');</script>";
				echo "<script>console.log('Email To: $email_to');</script>";
				echo "<script>console.log('Email: $email');</script>";
				echo "<script>console.log('Books: $books');</script>";
				echo "<script>console.log('Error: $errMsg');</script>";
				*/

				if(!$sent) {
					$error_message = "Server could not send the email messages<br>I will get in contact with you from the information you provided, You may not get a confirmation message.</p>";
				} else {
					$error_message = "And emails Sent! Thanks for your order.</p>";
				}
				if ($errMsg) {
					echo $error_message;
				}
			}
		?>
	</article>
	<img id="cartTrigger" src="images/cart.svg" alt="Shopping Cart Icon">
	<aside id="cart"><p class="temp">Cart Empty</p></aside>
	<?php if (isset($error)) { ?>
	<section><?php echo $error; ?></section>
	<?php } ?>
	<footer id="admin"><a href="admin/databaseEntry.php">&pi;</a></footer>
	<script src="scripts/showcase.js"></script>
</body>
</html>
