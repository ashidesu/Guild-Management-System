<?php

    
    $username = $_POST['username'];
    $password = $_POST['password'];

    $conn = new mysqli('localhost', 'root', '','guildfiles');

    $query = "SELECT * FROM council WHERE username = '$username' AND password = '$password'";

    $result = $conn->query($query);

    

    if($result -> num_rows == 1){
        header("location:Council%20Page.html");
        exit();
    } else{

        exit();
    }

    $con->close();



?>