<?php

    $conn = new mysqli('localhost', 'root', '','guildfiles');
    


    $query = "SELECT *
    FROM deathLogs
    INNER JOIN member on deathLogs.user_id = member.id";
    
    $result = $conn->query($query);
    if($result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            echo "<tr><td>".$row["dLogid"]."</td>";
            echo "<td>".$row["username"]."</td>";
            echo "<td>".$row["role"]."</td>";
            echo "<td>".$row["Head"]."</td>";
            echo "<td>".$row["Chest"]."</td>";
            echo "<td>".$row["Boots"]."</td>";
            echo "<td>".$row["mainWeapon"]."</td>";
            echo "<td>".$row["offHand"]."</td>";
            echo "<td>".$row["Status"]."</td></tr>";
        }
        echo"</table>";
    }



?>