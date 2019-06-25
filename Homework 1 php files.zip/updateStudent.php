<html>
    <head>
        <title>
            Update Student
        </title>
    </head>
    <body>

<?php
            $id = $_POST['id'];
            $name = $_POST["username"];
            $dept_name = $_POST["dept_name"];
            $tot_cred = $_POST["tot_cred"];
            
            //echo $sql;
            $servername = "localhost";
            $username = "root";
            $password = "mysql";
            $database = "lab";
            $conn = new mysqli($servername, $username, $password, $database);
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }
            echo "<p><font color=\"red\">Connected successfully</font></p>";
			
			$sql = "UPDATE student SET name = \"$name\", dept_name = \"$dept_name\", tot_cred = \"$tot_cred\" where ID = $id";
            $result = $conn->query($sql);
            if($result){
                echo "Record updated successfully!";
				echo "<a href='selectStudent.php'> Click to check result</a>";
			}	else {
				echo "Error: Something went wrong";
				echo "<a href='selectStudent.php'> Click to try again</a>";
            }
?>
    </body>
</html>