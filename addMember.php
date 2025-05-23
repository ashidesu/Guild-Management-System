<?php

    
    $username = $_POST['username'];
    $ign = $_POST['ign'];
    $password = $_POST['password'];
    $role = $_POST['role'];

    $conn = new mysqli('localhost', 'root', '','guildfiles');

    $query = "INSERT INTO member (username, ign, password, role) VALUES ('$username','$ign','$password','$role')";
    $stmt = $conn->prepare($query);
    
    
    $stmt->execute();
    $conn->close();
    header('location:Council%20Page.html');
    exit();
?>