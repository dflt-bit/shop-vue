<?php

function connectToDb(){
    $DB_HOST = 'localhost';
    $DB_USER = 'root';
    $DB_PASS = '';
    $DB_NAME = 'ignat_';

    $link = mysqli_connect(
        $DB_HOST,
        $DB_USER,
        $DB_PASS,
        $DB_NAME
    );

    return $link;
}


function login($db, $login, $password){
    $sql = "SELECT * FROM users WHERE LOGIN='$login' AND PASSWORD='$password';";

    $result = mysqli_query($db, $sql);
    
    $results = [];
    
    if($user = mysqli_fetch_assoc($result)){
        $results['name'] = $user['NAME'];
    }
    else{
        $results['error'] = 'Пользователь не найден!';
    }

    return $results;
}

function registration($db, $name, $lastName, $login, $password, $repeatPassword){

    $result = [];

    if(!!$name && !!$lastName && !!$login && !!$password && !!$repeatPassword){

        if($password === $repeatPassword){

            $sql = "INSERT INTO users(`NAME`, `LOGIN`, `PASSWORD`, `LAST_NAME`) 
            VALUES ('$name', '$login', '$password', '$lastName');";

            $res = mysqli_query($db, $sql);

            // var_dump($res);

            // $result = [];

            if(!!$res){
                $id = mysqli_insert_id($db);

                $sql = "INSERT INTO results(`USER_ID`, `CROSS_WIN`, `ZERO_WIN`) VALUES($id, 0, 0);";    

                mysqli_query($db, $sql);

                if(!!$res){
                    $result = login($db, htmlspecialchars($login), htmlspecialchars($password));
                }
            }
        }else{
            $result['error'] = 'Пароли не совпадают!';
        }
    }else{
        $result['error'] = 'Не все поля заполнены!';
    }

    

    return $result;
}