<html>
    <head>
        <title>
            Delete Student
        </title>
    </head>
    <body>

<?php
            $id = $_GET['id'];
            $servername = "localhost";
            $username = "root";
            $password = "mysql";
            $database = "lab";
            $conn = new mysqli($servername, $username, $password, $database);
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }
            echo "<p><font color=\"red\">Connected successfully</font></p>";
			
			$sql = "DELETE FROM student where ID = $id ";
            $result = $conn->query($sql);
            if($result){
                echo "Record deleted successfully!";
				echo "<a href='selectStudent.php'> Click to check result</a>";
			}	else {
				echo "Error: Something went wrong";
				echo "<a href='selectStudent.php'> Click to try again</a>";
            }
?>
    </body>
</html>