<?php
include 'function.php';

$db = connectToDb();
$data = json_decode(file_get_contents('php://input'), true);

$sql = "SELECT * FROM goods WHERE VENDORCODE IN(" . implode(',', array_column($data, 'vcode', 'vcode')) . ") GROUP BY VENDORCODE;";

























?>