<html>
    <head>
        <title>
            Homework 4
        </title>
    </head>
    <body>

        <?php
$ORTHO = $_POST["ORTHO"];
$PATOP = $_POST["PATOP"];
if ($ORTHO == "" && $PATOP == "") {
	die("<font color=\"red\">Please enter information.</font>");
}
// Generate sql
$sql1 = "CALL GetTopOrtho2('$ORTHO')";
$sql2 = "CALL GetTopInPA('$PATOP')";
// Create connection
$servername = "localhost";
$username = "root";
$password = "mysql";
$database = "yelp_db";
$conn = new mysqli($servername, $username, $password, $database);
// Check connection
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}
echo "<p><font color=\"red\">Connected successfully</font></p>";
if ($ORTHO != "") {
	// Run a sql
	$result = $conn->query($sql1);
	if ($result) {
		echo "Successful! <a href=\"portal.html\">Go Back to Portal</a>";
		echo "<table border=1px>";
		while ($row = $result->fetch_assoc()) {
			$value = $row["name"];
			echo "<tr>";
			echo "<td><a href=\"detail.php?name=$value\">See Details</a></td>";
			foreach ($row as $key => $value) {
				echo "<td>$value</td>";
			}
			echo "</tr>";
		}
		echo "</table>";
	} else {
		echo "Something went wrong!<a href=\"callprodedures.html\">Try again!</a>";
	}
} else {
	// Run a sql
	$result = $conn->query($sql2);
	if ($result) {
		echo "Successful! <a href=\"portal.html\">Go Back to Portal</a>";
		echo "<table border=1px>";
		while ($row = $result->fetch_assoc()) {
			

			$value = $row["name"];
			echo "<tr>";
			echo "<td><a href=\"detail.php?name=$value\">See Details </a></td>";
			foreach ($row as $key => $value) {
				echo "<td>$value</td>";
			}
			echo "</tr>";
		}
			
		echo "</table>";
	
	} else {
		echo "Something went wrong!<a href=\"callprocedures.html\">Try again!</a>";
	}
}
// Close connection
mysqli_close($conn);
?>
    </body>
</html>