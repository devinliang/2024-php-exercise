<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Book List</title>
</head>
<body>

    <div class="container">
        <h1 class="text-center">公告內容</h1>


<?php

if (isset($_GET["key"])) {

include_once('dbconfig.php');

try {
    $conn = new PDO("mysql:host=$hostname;dbname=$database;charset=UTF8", $dbuser, $dbpass);

    // 設定錯誤處理模式 set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $key = $_GET['key'];

    // 送出SQL語法給資料庫
    $sql = "SELECT * FROM $dbtable WHERE `id`=".$key;
    $stmt = $conn->query($sql);

    // 設定資料取出的方式
    $stmt->setFetchMode(PDO::FETCH_ASSOC);

    // 取出資料集
    $row = $stmt->fetch();
?>
    <table class="table">
        <tr>
            <th>公告標題</th>
            <td><?= $row['title'] ?></td>
        </tr>
        <tr>
            <th>公告分類</th>
            <td><?= $row['category'] ?></td>
        </tr>
        <tr>
            <th>公告日期</th>
            <td><?= $row['anndate'] ?></td>
        </tr>
        <tr>
            <th>公告內容</th>
            <td><?= nl2br($row['content']) ?></td>
        </tr>
    </table>
    
<?php  
} catch(PDOException $e) {

    echo "連線失敗 Connection failed: " . $e->getMessage();

} finally {
    $conn = null;
}


} else {

    header('Location: index.php');
    exit;

}
?>
        
    </div>
    <hr>
    <p class="text-center">1111xxx name &copy; 2024 Wenzao DCAM</p> 
</body>
</html>