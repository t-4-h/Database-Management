<html>
    <head>
        <title>
           Homework 4
        </title>
    </head>
    <body>

<?php
$name = $_GET['name'];
$sql = "SELECT * from business where name = \"$name\"";
$servername = "localhost";
$username = "root";
$password = "mysql";
$database = "yelp_db";
$conn = new mysqli($servername, $username, $password, $database);
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}
echo "<p><font color=\"red\">Connected successfully</font></p>";
$result = $conn->query($sql);
if ($result) {
	echo "Successful!<a href=\"portal.html\">Go Back to Portal</a>";
	echo "<table border=1px>";
	while ($row = $result->fetch_assoc()) {
		echo "<tr>";
		foreach ($row as $key => $value) {
			echo "<td>$value</td>";
		}
		echo "</tr>";
	}
	echo "</table>";
} else {
	echo "<p>Something went wrong!<a href=\"callprocedures.html \">Try again!<a></p>";
}
?>
    </body>
</html>