<?php
include 'function.php';

$db = connectToDb();

// $data = json_decode(file_get_contents('php://input'), true);

$sql = "SELECT IMG, NAME, PRICE, VENDORCODE, GROUP_CONCAT(SIZE) AS SIZES, SUBCATEGORY FROM goods WHERE SUBCATEGORY=" . htmlspecialchars($_GET['SUBCID']) . " GROUP BY VENDORCODE;";
$resDB = mysqli_query($db, $sql);

$res = [];

while($item = mysqli_fetch_assoc($resDB)){
    $item['SIZES'] = explode(',',$item['SIZES']);
    $res[] = $item;
}

mysqli_close($db);

die(json_encode($res));
?>