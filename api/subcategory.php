<?php
include 'function.php';

$db = connectToDb();

$sql = 'SELECT * FROM subcategory;';
$resDb = mysqli_query($db, $sql);

$subcategorys = [];

while($item = mysqli_fetch_assoc($resDb)){
    $subcategorys[] = $item;
}

mysqli_close($db);

$res = [
    [
        'name' => $subcategorys[2]['NAME'],
        'subname' => 'NEW ARRIVAL',
        'img' => $subcategorys[2]['IMG'],
        'id' => $subcategorys[2]['ID']
    ],

    [
        'img' => $subcategorys[3]['IMG'],
        'id' => $subcategorys[3]['ID']
    ],

    [
        'desc' => 'каждый сезон мы подготавливаем для Вас исключительно лучшую модную одежду. Следите за нашими новинками'
    ],

    [
        'name' => $subcategorys[1]['NAME'],
        'subname' => 'от 3200 руб.',
        'img' => $subcategorys[1]['IMG'],
        'id' => $subcategorys[1]['ID']
    ],

    [
        'name' => $subcategorys[3]['NAME'],
        'id' => $subcategorys[3]['ID']
    ],

    [
        'img' => $subcategorys[0]['IMG'],
        'id' => $subcategorys[0]['ID']
    ],

    [
        'desc' => 'Самые низкие цены в Москве. Нашли дешевле? Вернём разницу.'
    ],

    [
        'name' => $subcategorys[4]['NAME'],
        'subname' => 'от 590 руб.',
        'img' => $subcategorys[4]['IMG'],
        'id' => $subcategorys[4]['ID']
    ],

    [
        'name' => $subcategorys[0]['NAME'],
        'subname' => 'БОТИНКИ, КРОССОВКИ',
        'id' => $subcategorys[0]['ID']
    ],

    [
        'name' => $subcategorys[5]['NAME'],
        'subname' => 'NEW ARRIVAL',
        'img' => $subcategorys[5]['IMG'],
        'id' => $subcategorys[5]['ID']
    ]
];

die(json_encode($res));

?>