<html>
    <head>
        <title>
           Homework 4
        </title>
    </head>
    <body>

<?php
$INPUT = $_POST['INPUT'];
$sql = "SELECT b.name,r.text 
FROM business as b 
JOIN review as r on b.id = r.business_id 
WHERE r.text LIKE '%$INPUT%' LIMIT 50";
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
	echo "Successful!  <a href=\"portal.html\">Go Back to Portal</a>";
	echo "<table border=1px>";
	echo "<tr><td></td><td>Business Name</td><td>Review Text</td></tr>";
	
	
	while ($row = $result->fetch_assoc()) {
		$value = $row["name"];
		echo "<tr>";
		echo "<td><a href=\"detail.php?name=$value\">More Details</a></td>";
		
		foreach ($row as $key => $value) {
			echo "<td>$value</td>";
		}
		
		echo "</tr>";
	}
	echo "</table>";
} else {
	echo "Something Wrong!<a href=\"callprocedures.html\">Try again</a>";
}
?>
    </body>
</html>