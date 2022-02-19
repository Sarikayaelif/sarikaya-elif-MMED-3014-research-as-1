<?php

class Database {

    private $host = '127.0.0.1';
    private $username = 'root';
    private $password = '';
    private $database = 'math';

    private $options = [
           PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
           PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
           PDO::ATTR_EMULATE_PREPARES   => false,
       ];

    function getConnection() {
        $pdo = new PDO($this->host, $this->username, $this->password, $this->options);

        if ($pdo->connect_error) {
            echo "Connection failed" .$pdo->connect_error. "<br>";
        } 
        else {
            return $pdo;
        }
    }


    
       
       
       
}