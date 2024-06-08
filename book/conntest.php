<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Database Connection</title>
</head>
<body>
    
<?php

// 設定主機、資料庫名稱、權限帳密
require_once('dbconfig.php');

try {
    $conn = new PDO("mysql:host=$hostname;dbname=$database;charset=UTF8", $dbuser, $dbpass);

    // 設定錯誤處理模式 set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    echo "連線成功 Connected successfully";

} catch(PDOException $e) {

    echo "連線失敗 Connection failed: " . $e->getMessage();

}

// 關閉連線
$conn = null;
?>


</body>
</html>