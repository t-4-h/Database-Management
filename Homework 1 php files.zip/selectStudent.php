<html>
    <head>
        <title>
           Select Student
        </title>
    </head>
    <body
        <?php
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
			
			echo "<a href='addStudent.html'> Click to add student</a>";
         
		    // Generate sql
            $all = "SELECT * from student";
            $total = "SELECT count(*) AS 't' FROM student";
            $avg = "SELECT AVG(tot_cred) AS 'a' FROM student";
			
            // Run a sql
            $result = $conn->query($all);
            $result2 = $conn->query($total);
            $result3 = $conn->query($avg);
            if ($result)
            {
                echo "<table border=1px>";
                while($row = $result->fetch_assoc())
                {
                    $value = $row["ID"];
                    echo "<tr>"; 
                    echo "<td><a href=\"deleteStudent.php?id=$value\">Delete</a></td>";
                    echo "<td><a href=\"editStudent.php?id=$value\">Edit</a></td>";
                    foreach($row as $key=>$value)
                    {   
                        echo "<td>$value</td>";
                    }
                    echo "</tr>";
                }
                echo "</table>";
            }
            $result->free();
           if ($result2){
               $row = $result2->fetch_assoc();
               $output = $row['t']; 
               echo "<p>Total students: $output </p>";
            } 
            $result2 ->free(); 
            if ($result3){
                $row = $result3->fetch_assoc();
                $output = $row['a']; 
                echo "<p>Average grade: $output </p>";
                
            } 
            $result3->free();
            // Close connection
            mysqli_close($conn);
        ?>
    </body>
</html>