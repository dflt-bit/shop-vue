<?php

include 'function.php';

$db = connectToDb();

$sql = "SELECT ID, NAME FROM subcategory;";
$resDB = mysqli_query($db, $sql);

$res = [
    'subcategory' => [],
    'size' => [],
    'price' => []
];

while($item = mysqli_fetch_assoc($resDB)){
    $res['subcategory'] [] = $item;
}

$sql = "SELECT ID, NAME FROM size;";
$resDB = mysqli_query($db, $sql);

while($item = mysqli_fetch_assoc($resDB)){
    $res['size'][] = $item;
}

$sql = "SELECT MIN(PRICE) AS MINPRICE, MAX(PRICE) AS MAXPRICE FROM goods;";
$resDB = mysqli_query($db, $sql);

$min = 0;
$max = 0;

while($item = mysqli_fetch_assoc($resDB)){
    $res['price'][] = $item;
    $min = floatval($item['MINPRICE']);
    $max = floatval($item['MAXPRICE']);
}

$delta = ($max - $min) / 4;

for($i = $min; $i < $max; $i += $delta){
    $res['price'][] = [
        'min' => $i,
        'max' => $i+ $delta
    ];
}

mysqli_close($db);

die(json_encode($res));

?>