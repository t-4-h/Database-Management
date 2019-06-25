<?php
$servername = "localhost";
$username = "root";
$password = "mysql";
$database = "yelp_db";
$conn = new mysqli($servername, $username, $password, $database);
// Check connection
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}
$sql = "";
switch ($_GET[action]) {
case 'month_rev':$sql = 
"SELECT MONTH(r.date) as n, 
COUNT(*) as m 
FROM review as r 
WHERE YEAR(date) = '2017' 
GROUP BY n;";
	break;
case 'annual_rev':$sql = 
"SELECT YEAR(r.date) as n, 
COUNT(*) as m 
FROM review as r 
GROUP BY n;";
	break;
default: $sql = 
"SELECT MONTH(r.date) as n,
COUNT(*) as m 
FROM review as r 
JOIN business as b 
ON b.id = r.business_id 
WHERE YEAR(r.date) = '2017' AND b.name = '$_GET[action]' 
GROUP BY n;";
}

$result = $conn->query($sql);
$output = "letter\tfrequency\n";
if ($result) {
	while ($row = $result->fetch_assoc()) {
		$output .= $row['n'] . "\t" . $row['m'] . "\n";
	}
}
$result->free();
echo $output;
// Close connection
mysqli_close($conn);
?>