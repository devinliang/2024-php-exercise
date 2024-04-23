<?php

if (isset($_GET["key"])) {
    
    // 設定主機、資料庫名稱、權限帳密
    $hostname = 'localhost';
    $database = 'school';
    $dbuser = 'root';
    $dbpass = '';

    try {
        $conn = new PDO("mysql:host=$hostname;dbname=$database;charset=UTF8", $dbuser, $dbpass);

        // 設定錯誤處理模式 set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $key = $_GET['key'];

        // 送出SQL語法給資料庫
        $sql = "DELETE FROM `book` WHERE `book`.`id` = ".$key;
        $stmt = $conn->query($sql);

    } catch(PDOException $e) {

        echo "連線失敗 Connection failed: " . $e->getMessage();

    }

    $conn = null;

} 

header('Location: booklist.php');
exit;

?>
