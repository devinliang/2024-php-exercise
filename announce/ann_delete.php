<?php

if (isset($_GET["key"])) {
    
    include_once('dbconfig.php');

    try {
        $conn = new PDO("mysql:host=$hostname;dbname=$database;charset=UTF8", $dbuser, $dbpass);

        // 設定錯誤處理模式 set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $key = $_GET['key'];

        // 送出SQL語法給資料庫
        $sql = "DELETE FROM `$dbtable` WHERE `$dbtable`.`id` = ".$key;
        $stmt = $conn->query($sql);

    } catch(PDOException $e) {

        echo "連線失敗 Connection failed: " . $e->getMessage();

    } finally {
        $conn = null;
    }

} 

header('Location: index.php');
exit;

?>
