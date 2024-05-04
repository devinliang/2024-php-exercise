<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>課程公告</title>
    <style>
        a {
            text-decoration: none;
        }
        a:hover {
            background: lightpink;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1 class="text-center">最新消息公告</h1>

<?php

include_once('dbconfig.php');

try {
    $conn = new PDO("mysql:host=$hostname;dbname=$database;charset=UTF8", $dbuser, $dbpass);

    // 設定錯誤處理模式 set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // 送出SQL語法給資料庫
    $sql = "SELECT * FROM " . $dbtable;
    $stmt = $conn->query($sql);

    // 設定資料取出的方式
    $stmt->setFetchMode(PDO::FETCH_ASSOC);

    // 取出資料集
    $rows = $stmt->fetchAll();

    // 以表格形式呈現資料
    echo "<table class='table table-hover table-striped'>";
    echo '<tr> <td>類別</td> <td>日期</td> <td>標題</td>
     <td>[<a href="./ann_add.php">新增資料</a>]</td></tr>';

    foreach ($rows as $row) {
        echo "<tr>";
        echo "<td>". $row['category'] ."</td>\n";

        echo "<td>". $row['anndate']   ."</td>\n";

        
        echo "<td>";

        echo '<a href=./ann_show.php?key='.$row['id'].'>';
        echo $row['title'];
        echo "</a>";

        echo "</td>\n";

        
        echo "<td>";

        echo '<a href=./ann_edit.php?key='.$row['id'].'>';
        echo "edit";
        echo "</a> | ";

        echo '<a href=./ann_delete.php?key='.$row['id'].' onClick="return confirm(\'確定要刪除此筆資料?\');">';
        echo "delete";
        echo "</a>";

        echo "</td>";

        echo "</tr>";
    }

    echo "</table>";

} catch(PDOException $e) {

    echo "連線失敗 Connection failed: " . $e->getMessage();

} finally {
    $conn = null;
}

?>
        
    </div>

    <hr>
    <p class="text-center">1111xxx name &copy; 2024 Wenzao DCAM</p>
</body>
</html>