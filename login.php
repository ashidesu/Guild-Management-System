<?php

    
    $username = $_POST['username'];
    $password = $_POST['password'];

    $conn = new mysqli('localhost', 'root', '','guildfiles');

    $query = "SELECT * FROM member WHERE username = '$username' AND password = '$password'";

    $result = $conn->query($query);

    if($result -> num_rows == 1){
        header("location:Member%20Page.html");
        exit();
    } else{

        exit();
    }

    $con->close();



?>