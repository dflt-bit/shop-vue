<?php
include 'function.php';

$db = connectToDb();

$sql = "SELECT ID, IMG, NAME, DESCRIPTION, VENDORCODE, PRICE, GROUP_CONCAT(SIZE) AS SIZES, SUBCATEGORY FROM goods WHERE VENDORCODE='".htmlspecialchars($_GET['VCODE'])."' GROUP BY VENDORCODE LIMIT 1;";
$resDb = mysqli_query($db, $sql);

$item = mysqli_fetch_assoc($resDb);

$item['SIZES'] = explode(',',$item['SIZES']);

$sql = "SELECT ID, NAME FROM size WHERE SUBCATEGORY={$item['SUBCATEGORY']};";
$resDb = mysqli_query($db, $sql);

$sizes = [];
while($size = mysqli_fetch_assoc($resDb)){
    $sizes[$size['ID']] = $size['NAME'];
}

mysqli_close($db);

$res = [
    'item' => $item,
    'sizes' => $sizes
];

die(json_encode($res));
// echo '<pre>'; var_dump($item); echo '</pre>';
















?>