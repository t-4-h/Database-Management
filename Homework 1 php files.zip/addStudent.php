<?php
			$id = $_POST['id'];
			$name = $_POST['username'];
			$dept = $_POST['dept'];
			$credit = $_POST['credit'];
	
        // Create connection
            $servername = "localhost";
            $username = "root";
            $password = "mysql";
            $database = "lab";
            $conn = new mysqli($servername, $username, $password, $database);
            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            } 
            echo "<p><font color=\"red\">Connected successfully!</font></p>";
			 

$sql = " ";
if ($dept == Biology) {
     $sql = "INSERT INTO lab.student (ID, name, dept_name, tot_cred)
VALUES ('$id' , '$name' , 'Biology', '$credit')";
} elseif ($dept == Comp) {
     $sql = "INSERT INTO lab.student (ID, name, dept_name, tot_cred)
VALUES ('$id' , '$name' , 'Comp. Sci.', '$credit')";
} elseif ($dept == Elec) {
     $sql = "INSERT INTO lab.student (ID, name, dept_name, tot_cred)
VALUES ('$id' , '$name' , 'Elec. Eng.', '$credit')";
} elseif ($dept == Finance) {
     $sql = "INSERT INTO lab.student (ID, name, dept_name, tot_cred)
VALUES ('$id' , '$name' , 'Finance', '$credit')";
} elseif ($dept == History) {
     $sql = "INSERT INTO lab.student (ID, name, dept_name, tot_cred)
VALUES ('$id' , '$name' , 'History', '$credit')";
} elseif ($dept == Music) {
     $sql = "INSERT INTO lab.student (ID, name, dept_name, tot_cred)
VALUES ('$id' , '$name' ,'Music', '$credit')";
} elseif ($dept == Physics) {
     $sql = "INSERT INTO lab.student (ID, name, dept_name, tot_cred)
VALUES ('$id' , '$name' , 'Physics', '$credit')";
} 
//default to music so script runs
else $sql = "INSERT INTO lab.student (ID, name, dept_name, tot_cred)
VALUES ('$id' , '$name' ,'Music', '$credit')";



if ($conn->query($sql) === TRUE) {
    echo "New record created successfully!";
	echo "<a href='selectStudent.php'> Click to check result</a>";
} else {
	echo "Error: Something went wrong";
	echo "<a href='addStudent.html'> Click to try again</a>";
}

$conn->close();
?>

	</body>
</html>