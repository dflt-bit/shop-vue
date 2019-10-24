<?php
include 'function.php';

$db = connectToDb();
$data = json_decode(file_get_contents('php://input'), true);

// echo '<pre>'; var_dump($data); echo '</pre>';

if(!empty($data)){
    $sql = "SELECT * FROM goods WHERE VENDORCODE IN(" . implode(',', array_column($data, 'vcode', 'vcode')) . ") GROUP BY VENDORCODE;";

    $resDb = mysqli_query($db, $sql);

    $res = [];

    while($item = mysqli_fetch_assoc($resDb)){
        $res[] = $item;
    }
}


mysqli_close($db);

die(json_encode($res));
?>

























?>