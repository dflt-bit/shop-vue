<?php
include 'function.php';

$json = file_get_contents('php://input');
$data = json_decode($json, true);

$res = [];

if(!empty( $data['email']) && (strpos($data['email'], "@") && strpos($data['email'], ".")) ){
    $db = connectToDb();

    $sql = "INSERT INTO subscribe(`EMAIL`) VALUES('{$data['email']}');";

    $result = mysqli_query($db, $sql);

    if(!!$result){
        $res['success'] = true;
    }else{
        $res['error'] = 'Подписка не удалась!';
    }
    mysqli_close($db);
}else{
    $res['error'] = 'E-mail не корректный!';
}

die(json_encode($res));
?>