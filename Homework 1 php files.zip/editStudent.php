<html>
    <head>
        <title>
            Edit Student
        </title>
    </head>

    <body>
        Edit student:
        <form name="queryInput" action="updateStudent.php" method="POST"><br> 
			<!--cant edit id-->
            <input type="hidden" name="id" value="<?php echo $_GET['id'] ?>" />
			<!---->
            Name: <input type="text" name="username"><br> 
            Department: <select name="dept_name">
                <option value="Biology">Biology</option>
                <option value="Comp. Sci.">Comp</option>
                <option value="Elec. Eng.">Elec</option>
                <option value="Finance">Finance</option>
                <option value="History">History</option>
                <option value="Music">Music</option>
                <option value="Physics">Physics</option>
            </select><br />
            Credit: <input type="text" name="tot_cred"><br> 
            <input type="submit" value="submit">
    </form>

    </body>
</html>