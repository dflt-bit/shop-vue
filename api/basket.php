<?php
include 'function.php';
// error_reporting(E_ERROR);

$data = json_decode(file_get_contents('php://input'), true);
// echo '<pre>'; var_dump($data); echo '</pre>';

if(!empty($data)){
    $db = connectToDb();

    $sql = "SELECT ID, NAME FROM size";
    $resDb = mysqli_query($db, $sql);

    $sizes = [
    ];
    while($size = mysqli_fetch_assoc($resDb)){
        $sizes[$size['ID']] = $size['NAME'];
    }
    
    $sql = "SELECT ID,NAME,DESCRIPTION,IMG,SIZE,PRICE,COUNT,SUBCATEGORY,VENDORCODE FROM goods WHERE VENDORCODE IN('" . implode("','", array_column($data, 'vcode', 'vcode')) . "');";
    $resDb = mysqli_query($db, $sql);

    $items = [];
    while($item = mysqli_fetch_assoc($resDb)){
        $items[] = $item;
    }

    foreach($items as $key => $val){
        $items[$key]['SIZE'] = $sizes[$items[$key]['SIZE']];
    }
    $res = [
        'items' => $items
    ];
    mysqli_close($db);

    die(json_encode($res));
}
?>