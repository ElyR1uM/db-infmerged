<?php
    $pdo=new PDO("mysql:dbname=WP10_04;host=10.9.194.80:8889","WP10_04","GpLkNbC1J98s");
    $stmt = $pdo->query("show tables;");
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($results);
?>